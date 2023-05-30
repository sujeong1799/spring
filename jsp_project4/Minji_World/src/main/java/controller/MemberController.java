package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import service.MemberService;
import service.MemberServiceImpl;


@WebServlet("/mem/*")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static final Logger log = LoggerFactory.getLogger(MemberController.class);
    private RequestDispatcher rdp;
    private MemberService msv;
    private int isOk;
    private String destPage; // 목적지주소

    public MemberController() {
    	msv = new MemberServiceImpl();
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String uri = request.getRequestURI(); // 전체 요청경로
		log.info(">>> uri > " + uri);
		
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> path >" + path);
		
		switch(path) {
		case "login":
			destPage = "/member/login.jsp";
			break;
		
	      case "login_auth":
			try {
				// 해당 아이디 db에 있는지 체크 
				String mId = request.getParameter("mId");
				String mPassword = request.getParameter("mPassword");
				
				MemberVO mvo = new MemberVO(mId, mPassword) ;
				log.info("로그인요청 >>" + mvo.getmId()+mvo.getmPassword());
				MemberVO loginMvo = msv.login(mvo);
				
				if(loginMvo != null) { // 값이 있으면
					
					HttpSession ses = request.getSession();
					ses.setAttribute("ses", loginMvo);
					ses.setMaxInactiveInterval(10*60);
					
				}else {
					request.setAttribute("msg_login", 0);
				}
				
			}catch (Exception e) {
				log.info("에러낫슈");
				e.printStackTrace();
				
			}
			destPage="/";
			break;
			
		case "join":
			destPage = "/member/join.jsp";
			break;
		
		case "register":
			try {
				String mId = request.getParameter("mId");
				String mPassword = request.getParameter("mPassword");
				String mPhone = request.getParameter("mPhone");
				int mBirth = Integer.parseInt(request.getParameter("mBirth"));
				
				MemberVO mvo = new MemberVO(mId, mPassword, mPhone, mBirth);
				log.info(">> register mvo >" + mvo);
				isOk = msv.register(mvo);
				log.info(">> 회원가입 > " + (isOk > 0 ? "성공":"실패"));
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			destPage = "/";
			break;
			
		case "logout":
			try {
				HttpSession ses = request.getSession();
				MemberVO mvo = (MemberVO) ses.getAttribute("ses");
				String mId = mvo.getmId();
				log.info(">>> login id :" +mId);
				
				isOk = msv.logout(mId);
				log.info(">>> logout >"+(isOk > 0 ? "성공":"실패"));
				
				ses.invalidate();
				destPage = "/";
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "list":
			try {
				List<MemberVO> list = new ArrayList<>();
				list = msv.list();
				request.setAttribute("list", list);
				log.info(">>> 리스트 출력 완료");
				destPage ="/member/list.jsp";
			} catch (Exception e) {
				// TODO: handle exception
			}
			break;
			
		case "modify":
				destPage ="/member/modify.jsp";
			break;
			
		case "edit":
			try {
				String mId = request.getParameter("mId");
				String mPassword = request.getParameter("mPassword");
				String mPhone = request.getParameter("mPhone");
				int mBirth = Integer.parseInt(request.getParameter("mBirth"));
				
				MemberVO mvo = new MemberVO(mId, mPassword, mPhone, mBirth);
				isOk = msv.edit(mvo);
				log.info(">>> edit > "+ (isOk > 0 ? "성공" : "실패"));
				log.info(">>> modify 완료, session 변경시작");
				msv.login(mvo);
				HttpSession ses = request.getSession();
				ses.setAttribute("ses", mvo);
				log.info(mvo.getmId()+mvo.getmPassword());
				log.info(">>> session 변경 완료");

			destPage = "login_auth";
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			break;
		}
		
		
		rdp = request.getRequestDispatcher(destPage);
		rdp.forward(request, response);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		service(request, response);

	}

}

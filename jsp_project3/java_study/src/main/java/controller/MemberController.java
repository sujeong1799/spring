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
    //log 설정
   //private static final Logger log = LoggerFactory.getLogger(클래스명.class);
   private static final Logger log = LoggerFactory.getLogger(MemberController.class);
   private RequestDispatcher rdp;
   private MemberService msv;
   private int isOk; //확인
   private String destPage; //목적지주소
   
   
  
    public MemberController() {
        msv = new MemberServiceImpl(); //멤버의 서비스를 구현한 객체
    }


   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // charactorEncoding 설정 / contentType / uri경로 확인
      request.setCharacterEncoding("utf-8");
      response.setCharacterEncoding("utf-8"); 
      response.setContentType("text/html; charset=utf-8");
      
      String uri = request.getRequestURI(); //전체 요청경로
      System.out.println(">>> uri  " + uri);
      String path = uri.substring(uri.lastIndexOf("/")+1);
      log.info(">>path: " +path);
      
      
      switch(path) {
      case "join":
    	  destPage = "/member/join.jsp";
         break;
         
      case "register":
    	  try {
    		  String id = request.getParameter("id");
    		  String password = request.getParameter("password");
    		  String email = request.getParameter("email");
    		  int birth = Integer.parseInt(request.getParameter("birth")) ;
    		  //파라미터로 mvo객체 생성
    		  MemberVO mvo = new MemberVO(id,password, email,birth);
    		  log.info(">>>>> mvo "+mvo);
    		  isOk = msv.register(mvo);
    		  log.info(">>> JOIN > " + (isOk > 0 ? "성공" : "실패"));
		} catch (Exception e) {
			// TODO: handle exception
		}
         destPage = "/"; //이렇게만 적어도 index페이지로 이동
         break;
         
      case "login":
    	  destPage="/member/login.jsp";
    	  break;
         
      case "login_auth":
    	  try {
    		  // 해당 id, password가 DB상에 있는지 체크
    		  String id = request.getParameter("id");
    		  String password = request.getParameter("password");
    		  
    		  MemberVO mvo = new MemberVO(id, password);
    		  log.info(">>> login 요청 " + mvo);
    		  
    		  MemberVO loginMvo = msv.login(mvo);
    		  
    		  if(loginMvo !=null) {
    			  
    			  HttpSession ses = request.getSession();
    			  ses.setAttribute("ses", loginMvo);
    			  ses.setMaxInactiveInterval(10*60);
    		  }else {
    			  request.setAttribute("msg_login", 0);
    		  }
    		  
		} catch (Exception e) {
			e.printStackTrace();
		}
    	  destPage="/";
    	  break;
    	  
      case "logout":
    	  try {
			//현재 연결되어 있는 세션이 있다면 가져오기
    		  HttpSession ses = request.getSession();
    		  // 현재 접속중인 객체를 가져와라
    		  MemberVO mvo = (MemberVO) ses.getAttribute("ses");
    		  // id와 일치하는지 확인
    		  String id = mvo.getId();
    		  log.info(">>> login id : "+id);
    		  
    		  isOk = msv.logout(id);
    		  log.info(">>> logout > " + (isOk > 0 ? "성공":"실패"));
    		  //권한해제
    		  ses.invalidate();
		} catch (Exception e) {
			e.printStackTrace();
		}
    	  break;
    	  
      case "list":
    	  try {
			List<MemberVO> list = new ArrayList<MemberVO>();
			list = msv.list();
			request.setAttribute("list", list);
			log.info(">>> list 출력 완료");
			destPage = "/member/list.jsp";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	  
    	  break;
      case "modify":
    	  try {
    			log.info(">>> modify page 접근");
    			// 지금 로그인 되어있는 값 가져와서 뿌리기
      			HttpSession ses = request.getSession();
      			MemberVO mvo = (MemberVO)ses.getAttribute("ses");

		} catch (Exception e) {
			e.printStackTrace();
		}
    	  destPage="/member/modify.jsp";
    	  break;
    	  
      case "edit":
    	  try {
    		String id = request.getParameter("id");
			String password = request.getParameter("password");
			String email = request.getParameter("email");
			int birth = Integer.parseInt(request.getParameter("birth"));
			
			MemberVO mvo = new MemberVO(id, password, email, birth);
			isOk = msv.edit(mvo);
			log.info(">>> edit > "+ (isOk > 0 ? "성공" : "실패"));
			log.info(">>> modify 완료, session 변경시작");
			msv.login(mvo);
			HttpSession ses = request.getSession();
			ses.setAttribute("ses", mvo);
			log.info(">>> session 변경 완료");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	  destPage = "/";
    	  break;
      }
      
      
      rdp = request.getRequestDispatcher(destPage);
      rdp.forward(request, response);
      
   }


   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      service(request, response);
   }


   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      // TODO Auto-generated method stub
      service(request, response);
   }

}
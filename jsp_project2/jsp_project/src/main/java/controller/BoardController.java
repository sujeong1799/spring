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

import domain.BoardVO;
import domain.MemberVO;
import domain.PagingVO;
import handler.PagingHandler;
import service.BoardService;
import service.BoardServiceImpl;


@WebServlet("/brd/*")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	private RequestDispatcher rdp; // 웹의 목적지 주소로 객체를 전달해주는 객체
	private String destPage; // 목적지 주소를 저장해주는 변수
	private int isOk; // db의 insert, update, delete의 결과를 받는 변수
	private BoardService bsv; // 인터페이스 만들기
	
    public BoardController() {
    	bsv = new BoardServiceImpl(); // 클래스만들기

    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//캐릭터 인코딩 설정, 컨텐츠 타입 설정
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String uri = request.getRequestURI();
		log.info(">>> uri > " + uri);
		String path = uri.substring(uri.lastIndexOf("/")+1);
		log.info(">>> path > " + path);
		
		switch(path) {
		case "insert":
			try {
				String title = request.getParameter("title");
				String writer = request.getParameter("writer");
				String content = request.getParameter("content");
				BoardVO bvo = new BoardVO(title, writer, content);
				isOk = bsv.insert(bvo);
				log.info(">>> 글 등록 > " + (isOk > 0 ? "성공" : "실패"));
				destPage="list";
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
			
		case "list":
			try {
				List<BoardVO> list = new ArrayList<BoardVO>();
				list = bsv.list();
				log.info(">>> list.size"+list.size());
				log.info(">>> list"+list);
				request.setAttribute("list", list);
				log.info(">>> list 출력 완료");
				
				destPage = "/board/list.jsp";
			} catch (Exception e) {
				// TODO: handle exception
			}
			break;
	
		case "page":
			try {
				int pageNo = 1;
				int qty = 10;
				if(request.getParameter("pageNo") != null) {
					pageNo = Integer.parseInt(request.getParameter("pageNo"));
					qty = Integer.parseInt(request.getParameter("qty"));
				}
				
				// 1, 10을 넣어도 안넣어도 상관없음.
				PagingVO pgvo = new PagingVO(pageNo, qty);
				// 전체 페이지 개수를 db에가서 구해와야함
				int totCount = bsv.total();
				log.info("전체 페이지 개수 > "+totCount);
				// limit를 이용한 select List를 호출 (startPage, qty
				// 한페이지에 나와야 하는 리스트
				List<BoardVO> list = bsv.PageList(pgvo);
				log.info(">>> list : "+list.size());// 당장 내용이 필요한게 아니면 일단 사이즈만 확인
				PagingHandler ph = new PagingHandler(pgvo, totCount);
				// begin < 0 오류가 나왔을때 로그 찍어보고 PagingHandler 수정하기.
				log.info(">>>> start "+ ph.getStartPage());
				log.info(">>>> start "+ ph.getEndPage());
				request.setAttribute("pgh", ph);
				request.setAttribute("list", list);
				log.info("pageList 성공");
				destPage ="/board/list.jsp";
			} catch (Exception e) {
				e.printStackTrace();
				}
			break;
			
		case "detail":
			try {
				int bno = Integer.parseInt(request.getParameter("bno"));
				BoardVO bvo = new BoardVO();
				bvo = bsv.detail(bno);
				request.setAttribute("bvo", bvo);
				log.info(">>> detail 출력 완료");
				
				
			} catch (Exception e) {
				log.info("controller오류");
				e.printStackTrace();
			}
			destPage = "/board/detail.jsp";
			break;
			
		case "modify":
			try {
				int bno = Integer.parseInt(request.getParameter("bno"));
				BoardVO bvo = new BoardVO();
				bvo = bsv.modify(bno);
				request.setAttribute("bvo", bvo);
				log.info(">>> detail 출력 완료");
				
				
			} catch (Exception e) {
				log.info("controller오류");
				e.printStackTrace();
			}
			destPage = "/board/modify.jsp";
			break;
			
		case "edit":
			try {
				
				BoardVO bvo = new BoardVO(
						Integer.parseInt(request.getParameter("bno")),
						request.getParameter("title"),
						request.getParameter("content"));
				
				isOk = bsv.edit(bvo); // 리턴값 1개의 행이 등록
				log.info(">>> edit > " + (isOk > 0 ? "성공" : "실패"));

				if(isOk > 0) {
				request.setAttribute("bvo", bvo);
				}				
			} catch (Exception e) {
				e.printStackTrace();
			}
			destPage="/brd/list";
	    	  
	    	break;
	    	
		case "remove":
			try {
				int bno = Integer.parseInt(request.getParameter("bno"));
				BoardVO bvo = new BoardVO();
				bvo = bsv.remove(bno);
				log.info(">>> remove > " + (isOk > 0 ? "성공" : "실패"));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			destPage="/brd/list";
			break;
		}
		
		rdp=request.getRequestDispatcher(destPage);
		rdp.forward(request, response);
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		service(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		service(request, response);
	}

}

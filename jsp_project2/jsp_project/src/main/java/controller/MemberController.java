package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import domain.MemberVO;
import service.MemberService;
import service.MemberServiceImpl;


@WebServlet("/mem/*") //'/*'를 붙이는 이유는 하위 경로때문
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
      // uri = mem/join -> 요청에 대한 path만  남길래!
      String path = uri.substring(uri.lastIndexOf("/")+1);
      log.info(">>path: " +path);
      
      
      switch(path) {
      case "join":
         destPage = "/member/join.jsp";
         break;
         
      case "register":
         String id = request.getParameter("id");
         String password = request.getParameter("password");
         String email = request.getParameter("email");
         int age = Integer.parseInt(request.getParameter("age")) ;
         //파라미터로 mvo객체 생성
         MemberVO mvo = new MemberVO(id,password, email,age);
         
         isOk = msv.register(mvo);
         log.info(">>> JOIN > " + (isOk > 0 ? "성공" : "실패"));
         destPage = "/"; //이렇게만 적어도 index페이지로 이동
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
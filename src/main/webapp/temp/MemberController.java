//package kh.com.semi.Controller;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.HashMap;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import kh.com.semi.DAO.FreeBoardDAO;
//import kh.com.semi.DTO.FreeBoardDTO;
//import kh.com.semi.service.MyPageService;
//
//@WebServlet("*.mem")
//public class MemberController extends HttpServlet {
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		actionDo(request, response);
//	}
//
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		actionDo(request, response);
//	}
//	
//	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	
//		//공통설정
//		request.setCharacterEncoding("utf-8");
//		HttpSession session = request.getSession();
//		String uri = request.getRequestURI();
//		String ctxPath = request.getContextPath();
//		String cmd = uri.substring(ctxPath.length());
//		System.out.println("요청 URL : "+ cmd);
//		
//		
//		
//		if(cmd.equals("/toLogin.mem")) { // 로그인 페이지 이동
//			System.out.println("들어가는지 테스트");
//			response.sendRedirect("/member/login.jsp"); // member폴더 내부 login.jsp 이동	
//		}else if(cmd.equals("/toSignup.mem")) { //회원가입 선택 페이지 이동
//			System.out.println("이건 또 뭘까 테스트");
//			response.sendRedirect("/member/selectSignup.jsp");
//		}else if(cmd.equals("/generalSignupProc.mem")){ //일반회원 가입 페이지 이동
//			System.out.println("이게 맞나 테스트;;");
//			response.sendRedirect("/member/generalSignup.jsp"); //
//		}else if(cmd.equals("/toMy.mem")) {
//			FreeBoardDAO dao = new FreeBoardDAO();	
//			MyPageService service = new MyPageService();
//			
//			System.out.println("마이페이지 잘 됐나 테스트"); // 내가 쓴 글 불러오기
//			String id = "aaa123";
//			int currentPage = Integer.parseInt(request.getParameter("currentPage"));
//			HashMap<String,Object> naviMap = service.getPageNavi(currentPage);
//			
//			ArrayList<FreeBoardDTO> list = service.getFreeList(currentPage, id);
//
//			//System.out.println("list : " + list);
//			request.setAttribute("list", list);
//			request.setAttribute("naviMap", naviMap);
//			RequestDispatcher rd = request.getRequestDispatcher("/member/myPage.jsp");
//			rd.forward(request, response);
//			
//			
//		}
//	}
//}

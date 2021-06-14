package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.dao.*;
import com.mvc.dto.UserDataDto;

@WebServlet("/selectService")
public class selectService extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//DB에 저장된 file정보를 모두 검색해서 jsp로 전송
		UserDataDao dao = new UserDataDao();
		
		//여러개의 데이터여서 List로 받음
		try {
			ArrayList<UserDataDto> list = dao.selectAllContent();
			
			if(list!=null) {
				request.setAttribute("list", list);
			}else {
				System.out.println("비었습니다");
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("Board.jsp");
			dis.forward(request, response);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

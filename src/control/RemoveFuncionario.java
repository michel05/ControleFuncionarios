package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FuncionarioDao;
import model.Funcionario;


@WebServlet("/removefuncionario")
public class RemoveFuncionario extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		Funcionario funcionario = new Funcionario();
		FuncionarioDao dao = new FuncionarioDao();
		funcionario.setId((long) Integer.parseInt(request.getParameter("id")));
		
		dao.remove(funcionario);
		
		RequestDispatcher rd = request.getRequestDispatcher("/listaadmin.jsp");
        rd.forward(request,response);
	}

}

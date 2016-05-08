package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Funcionario;
import dao.FuncionarioDao;

/**
 * Servlet implementation class ListaFuncionario
 */
@WebServlet("/listafuncionario")
public class ListaFuncionario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String lotacao = request.getParameter("lotacao");
		
		FuncionarioDao dao = new FuncionarioDao();
		List<Funcionario> funcionarios = new ArrayList<Funcionario>();
		funcionarios = dao.listagemLotacao(lotacao);
		
		
		request.setAttribute("listaLotacao", funcionarios);
		
		if("true".equals(request.getParameter("aux"))){
			RequestDispatcher view = request.getRequestDispatcher("/listaadmin.jsp");
			view.forward(request, response);
		}
		else{
			RequestDispatcher view = request.getRequestDispatcher("/listauser.jsp"); 
			view.forward(request, response);
		}
		
		
	}

}

package control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Autenticacao
 */
@WebServlet("/autenticacao")
public class Autenticacao extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pagina = "";
		if("admin".equals(request.getParameter("login")) && "GO##2010".equals(request.getParameter("senha"))){
			pagina = "listaadmin.jsp";
		}
		else{
			pagina = "telaerro.jsp";
		}
		
		RequestDispatcher view = request.getRequestDispatcher(pagina);
		view.forward(request, response);
	}

}

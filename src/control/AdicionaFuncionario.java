package control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.text.StyledEditorKit.BoldAction;

import dao.FuncionarioDao;
import model.Funcionario;

@WebServlet("/adicionafuncionario")
public class AdicionaFuncionario extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
        
        // pegando os parâmetros do request
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        Integer ramal = Integer.parseInt(request.getParameter("ramal"));
        String lotacao = request.getParameter("lotacao");
        Boolean estagiario = Boolean.parseBoolean(request.getParameter("estagiario"));
       
        
        // fazendo a conversão da data
        
       
        
        // monta um objeto contato
        Funcionario funcionario = new Funcionario();
        funcionario.setNome(nome);
        funcionario.setRamal(ramal);
        funcionario.setEmail(email);
        funcionario.setLotacao(lotacao);
        funcionario.setEstagiario(estagiario);
        
        // salva o contato
        FuncionarioDao dao = new FuncionarioDao();
        dao.adiciona(funcionario);
        //System.out.println(nome + email + ramal + lotacao);
        
        RequestDispatcher rd = request.getRequestDispatcher("listaadmin.jsp");
        rd.forward(request,response);
		
	}

}

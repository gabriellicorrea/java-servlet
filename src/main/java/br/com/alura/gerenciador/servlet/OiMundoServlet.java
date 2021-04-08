package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/oi")//define o nome do servlet (que vai ser chamado na url do navegador)
public class OiMundoServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException  {
		
		PrintWriter out = resp.getWriter(); //objeto para devolver caracteres
		out.println("<html>");
		out.println("<body>");
		out.println("Oi mundo, parabens você escreveu o primeiro codigo servlet");
		out.println("</body>");
		out.println("</html>");
		
		System.out.println("O servlet Oimundo foi chamado");
	}

}

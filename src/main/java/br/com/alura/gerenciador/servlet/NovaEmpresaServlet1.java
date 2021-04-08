package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novaEmpresa1")
public class NovaEmpresaServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	System.out.println("cadastrando empresa");
    	
    	String novaEmpresa = request.getParameter("nome");
    	
    	PrintWriter out = response.getWriter();
    	out.println(  novaEmpresa + " cadastrada");
    	
    	System.out.println("empresa " + novaEmpresa + "cadastrada.");
	}

}

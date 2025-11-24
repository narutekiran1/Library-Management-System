package com.qsp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.library.entity.BookEntity;
@WebServlet("/books")
public class Book extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("method executed");
		
	String title=	req.getParameter("title");
	String author = req.getParameter("author");
    String publisher = req.getParameter("publisher");
    String category = req.getParameter("category");
    String isbn = req.getParameter("isbn");
    
     BookEntity bookEntity=new BookEntity();
     
     bookEntity.addBook(title, publisher, author, isbn, category);
     System.out.println("method done");
	}
	
	

}

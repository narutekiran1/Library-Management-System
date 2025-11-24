package com.library.entity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.library.db.DbConnection;

public class BookEntity {
	
	public void addBook(String title,String publisher,String author,String isbn,String category) {
		
	Connection connection=	DbConnection.DbConnection();
	try {
	PreparedStatement ps=	connection.prepareStatement("INSERT INTO books (title, author, publisher, category, isbn) VALUES (?, ?, ?, ?, ?)");
	
	 ps.setString(1, title);
     ps.setString(2, author);
     ps.setString(3, publisher);
     ps.setString(4, category);
     ps.setString(5, isbn);
     
    int i= ps.executeUpdate();
    System.out.println(i);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}

}

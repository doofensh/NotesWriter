package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Notes;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			// title, content fetch

			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Notes notes = new Notes(title, content, new Date());
			System.out.println(notes.getId() + " : " + notes.getTitle() + " : " + notes.getContent() + " : "
					+ notes.getAddedDate());

			// saving data through hibernate

			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();

			session.save(notes);

			tx.commit();
			session.close();

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center'>Note added Successfully.</h1>");
			out.println("<h1 style='text-align:center'><a href='all_notes.jsp'>View All Notes.</a></h1>");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

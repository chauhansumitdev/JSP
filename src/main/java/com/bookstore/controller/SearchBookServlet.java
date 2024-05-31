package com.bookstore.controller;

import com.bookstore.model.Book;
import com.bookstore.repository.BookRepository;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.*;

@WebServlet("/searchBook")
public class SearchBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");

        List<Book> books = BookRepository.searchBooks(title);

        req.setAttribute("books", books);

        req.getRequestDispatcher("searchResult.jsp").forward(req,resp);
    }
}

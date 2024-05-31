<%@ page import="java.util.List" %>
<%@ page import="com.bookstore.model.Book" %>
<%@ page import="com.bookstore.repository.BookRepository" %>


<!DOCTYPE html>
<html>
<head>
    <title>Online Book Store</title>
</head>
<body>
    <h2>Book List</h2>
    <form action="searchBook" method="get">
        Search by title: <input type="text" name="title">
        <input type="submit" value="Search">
    </form>
    <br>
    <a href="addBook.jsp">Add a New Book</a>
    <ul>
        <%
            List<Book> books = (List<Book>)BookRepository.getAllBooks();
            for (Book book : books) {
        %>
            <li><%= book.getTitle() %> by <%= book.getAuthor() %> - $<%= book.getPrice() %></li>
        <%
            }
        %>
    </ul>
</body>
</html>

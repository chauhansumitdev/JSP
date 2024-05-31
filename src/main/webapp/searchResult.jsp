<%@ page import="java.util.List" %>
<%@ page import="com.bookstore.model.Book" %>

<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
</head>
<body>
    <h2>Search Results</h2>
    <a href="index.jsp">Back to Book List</a>
    <ul>
        <%
            List<Book> books = (List<Book>) request.getAttribute("books");
            if (books != null) {
                for (Book book : books) {
        %>
            <li><%= book.getTitle() %> by <%= book.getAuthor() %> - $<%= book.getPrice() %></li>
        <%
                }
            }
        %>
    </ul>
</body>
</html>

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>

<%
    out.println("<script>alert('Are you sure you want to log out?');</script>");
    if(session.getAttribute("unme") != null){
        session.invalidate();
        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
    }
%>
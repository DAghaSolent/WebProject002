<%-- 
    Document   : University
    Created on : 2 Nov 2022, 17:10:36
    Author     : Danny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mycompany.webproject002.Student"%>
<%@page import="com.mycompany.webproject002.Undergraduate"%>
<%@page import="com.mycompany.webproject002.Masters"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Student Details</h1>
        <% 
            String formID = request.getParameter("studentID");
            ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students");
            for(Student student: students)
            {
                
                String current_id = student.getId();
                if(formID.equals(current_id))
                {
                    %>
                    <%=student%>
                    <%
                }
            }
        %>
        
            
    
</html>

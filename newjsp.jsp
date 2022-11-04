<%-- 
    Document   : newjsp
    Created on : 26 Oct 2022, 17:31:32
    Author     : Danny
--%>

<%@page import="com.mycompany.webproject002.University"%>
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
    <body>
        <%
        String sID = request.getParameter("studentID");
        String sName = request.getParameter("studentName");
        String sCourse = request.getParameter("studentCourse");
        String sMark = request.getParameter("studentMark");
        String sType = request.getParameter("studentType");
        %>
        
        
        <%  
            if(session.getAttribute("students") == null)
            {
                session.setAttribute("students", new ArrayList<Student>());
                
                
            }
            
            ArrayList<Student> students = (ArrayList<Student>) session.getAttribute("students");
            Student student1 = null;
            if(sType.equals("Undergraduate"))
            {
                student1 = new Undergraduate(sID, sName, sCourse);
                double nMark = Double.parseDouble(sMark);
                student1.setMark(nMark);
            }
            else if(sType.equals("Masters"))
            {
                student1 = new Masters(sID, sName, sCourse);
                double nMark = Double.parseDouble(sMark);
                student1.setMark(nMark);
            }
            students.add(student1); 
            
            for(Student student: students)
            {
                %>
                <p>Name:<%=student.getName()%></p>
                <form action = "University.jsp" method="get">
                <input type ="hidden" name="studentID" value="<%=student.getId()%>"/>
                <input type ="submit" value="View More Details!"/>
                </form>
                <%
            }

        %>
        
    
        
        
    </body>
</html>

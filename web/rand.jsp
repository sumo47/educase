<%-- 
    Document   : rand
    Created on : Dec 26, 2019, 9:49:35 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Result</title>
    </head>
    <body>
    <center>
        <p style="font-size: 32px">Here is your unique application number</p>
        
      <%
            try{
            HttpSession hs=request.getSession();
            String z = hs.getAttribute("ref").toString();
            System.out.println(z);
                %>
                <strong style="font-size: 32px"><%=z%></strong><br><br><br>
                
                <%
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
                %>
                <a style="font-size: 20px" href="result.jsp"/>GENERATE PDF</a><br><br>
    <button onclick="location.href = 'index.html';" id="button1" class="btn btn-outline-primary btn-lg" >HOME</button>&nbsp;&nbsp;
    <p style="font-size: 40px; color:red ">NOTE : Use your Email id to Login and update your 12th marks.</p><br>
    
</center>
    </body>
</html>

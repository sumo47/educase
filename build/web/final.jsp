<%-- 
    Document   : final
    Created on : Dec 30, 2019, 8:05:31 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Report</title>    
    <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    </head>
    <body>
    <center>
<b><font color="#024174" size=5>REPORT OF ADMISSION ENQUIRY 2020</font></b><br><br>
      <%
            try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
            PreparedStatement stmt = (PreparedStatement)con.prepareStatement("...");
            String sql="SELECT count(`fname`) as total FROM `vel`";
            ResultSet rs=stmt.executeQuery(sql);
            while(rs.next()){
                String a=rs.getString("total");
            
            %>
<table class="table table-striped" style="width:60%;font-weight:600;">
    <tr><td>TOTAL NUMBER OF ENQUIRIES</td>
    <td><%=a%></td></tr>
<%
    }
    ResultSet rs1=stmt.executeQuery("SELECT count(`fname`)as total FROM `vel` WHERE `choice`='regular'");
            while(rs1.next()){
                String b=rs1.getString("total");
            
%> 
             <tr><td>TOTAL NUMBER OF REGULAR ENQUIRIES;</td>
             <td><%=b%></td></tr>
                 
<%
    }
    ResultSet rs2=stmt.executeQuery("SELECT count(`fname`)as total FROM `vel` WHERE `choice`='lateral'");
            while(rs2.next()){
                String c=rs2.getString("total");
            
%> 
             <tr><td> TOTAL NUMBER OF LATERAL ENQUIRIES</td>
             <td> <%=c%></td></tr>

<%
    }
    ResultSet rs3=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE `vel`='Yes'");
            while(rs3.next()){
                String d=rs3.getString("total");
            
%> 
             <tr><td>TOTAL NUMBER OF VELAMMAL STUDENT ENQUIRIES</td>
             <td><%=d%></td></tr>                 

<%
    }
    ResultSet rs4=stmt.executeQuery("SELECT count(`fname`)as total FROM `vel` WHERE `state`='Tamil Nadu'");
            while(rs4.next()){
                String e=rs4.getString("total");
            
%> 
             <tr><td>TOTAL NUMBER OF ENQUIRIES FROM TAMIL NADU REGION</td>
                 <td><%=e%></td></tr>
<%
    }
    ResultSet rs5=stmt.executeQuery("SELECT count(`fname`)as total FROM `vel` WHERE `state`='Andhra Pradesh'");
            while(rs5.next()){
                String f=rs5.getString("total");
            
%> 
             <tr><td>TOTAL NUMBER OF ENQUIRIES FROM ANDHRA PRADESH REGION</td>
             <td><%=f%></td></tr>
</table><br><br>

<p style="font-weight: bold;font-family: Times New Roman"> STUDENT'S EXPECTED 12TH % </p><br>
    <table  class="table table-striped" style="width:60%;font-weight: 600;">
           <tr><td>90% - 100%</td>
           <td>80% - 90%</td>
           <td>60% - 80%</td>
           <td>60% - 60%</td>
           <td>50% - 60%</td></tr>
    <%
    }
    ResultSet rs6=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE `expected` >89");
            while(rs6.next()){
                String q=rs6.getString("total");
        %>       
           <tr><td><%=q%></td>
          <%
               }
    ResultSet rs7=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`expected` >79) and (`expected` <90)");
            while(rs7.next()){
                String r=rs7.getString("total");
        %>     
               <td><%=r%></td>
    <%
               }
    ResultSet rs8=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`expected` >69) and (`expected` <80)");
            while(rs8.next()){
                String t=rs8.getString("total");
        %>     
               <td><%=t%></td>
               <%
               }
    ResultSet rs9=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`expected` >59) and (`expected` <70)");
            while(rs9.next()){
                String u=rs9.getString("total");
        %>    
               <td><%=u%></td>
    <%
               }
    ResultSet rs10=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`expected` >49) and (`expected` <60)");
            while(rs10.next()){
                String v=rs10.getString("total");
        %>               
               <td><%=v%></td><tr>
</table><br><br>

<p style="font-weight: bold;font-family: Times New Roman"> STUDENT'S 10TH %</p><br>
    <table  class="table table-striped" style="width:60%;font-weight: 600;">
           <tr><td>90% - 100%</td>
           <td>80% - 90%</td>
           <td>60% - 80%</td>
           <td>60% - 60%</td>
           <td>50% - 60%</td></tr>
    <%
    }
    ResultSet rs11=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE `tenth` >89");
            while(rs11.next()){
                String w=rs11.getString("total");
        %>       
           <tr><td><%=w%></td>
          <%
               }
    ResultSet rs12=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`tenth` >79) and (`tenth` <90)");
            while(rs12.next()){
                String x=rs12.getString("total");
        %>     
               <td><%=x%></td>
    <%
               }
    ResultSet rs13=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`tenth` >69) and (`tenth` <80)");
            while(rs13.next()){
                String y=rs13.getString("total");
        %>     
               <td><%=y%></td>
               <%
               }
    ResultSet rs14=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`tenth` >59) and (`tenth` <70)");
            while(rs14.next()){
                String z=rs14.getString("total");
        %>    
               <td><%=z%></td>
    <%
               }
    ResultSet rs15=stmt.executeQuery("SELECT count(*) as total FROM `vel` WHERE (`tenth` >49) and (`tenth` <60)");
            while(rs15.next()){
                String ab=rs15.getString("total");
        %>               
               <td><%=ab%></td><tr>
</table><br><br>


<p style="font-weight: bold;font-family: Times New Roman">TOTAL NO OF STUDENT'S FIRST PREFERENCE </p>
<table  class="table table-striped" style="width:60%;font-weight: 600;">
    <tr><td>IT</td>
           <td>CSE</td>
           <td>EEE</td>
           <td>ECE</td>
           <td>MECH</td></tr>
    
        <%
            }
            ResultSet rs16=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE fpre='IT'");
            while(rs16.next()){
                String l=rs16.getString("total");
%>
            <tr><td><%=l%></td>
<%
}
ResultSet rs17=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE fpre='CSE'");
            while(rs17.next()){
                String m=rs17.getString("total");
        %>
        <td><%=m%></td>
        <%
}
ResultSet rs18=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE fpre='EEE'");
            while(rs18.next()){
                String n=rs18.getString("total");
        %>
        <td><%=n%></td>
        <%
}
ResultSet rs19=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE fpre='ECE'");
            while(rs19.next()){
                String o=rs19.getString("total");
        %>
        <td><%=o%></td>
        <%
}
ResultSet rs20=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE fpre='MECH'");
            while(rs20.next()){
                String p=rs20.getString("total");
        %>
        <td><%=p%></td></tr>
</table><br><br>

<p style="font-weight: bold;font-family: Times New Roman">TOTAL NO OF STUDENT'S SECOND PREFERENCE</p>
<table class="table table-striped" style="width:60%;font-weight: 600;">
    <tr><td>IT</td>
           <td>CSE</td>
           <td>EEE</td>
           <td>ECE</td>
           <td>MECH</td></tr> 
    <%
            }
            ResultSet rs21=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE spre='IT'");
            while(rs21.next()){
                String g=rs21.getString("total");
%>
<tr><td><%=g%></td>
<%
    }
    ResultSet rs22=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE spre='CSE'");
            while(rs22.next()){
                String h=rs22.getString("total");
        %>
        <td><%=h%></td>
        <%
    }
    ResultSet rs23=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE spre='EEE'");
            while(rs23.next()){
                String i=rs23.getString("total");
        %>
        <td><%=i%></td>
        <%
    }
    ResultSet rs24=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE spre='ECE'");
            while(rs24.next()){
                String j=rs24.getString("total");
        %>
        <td><%=j%></td>
        <%
    }
    ResultSet rs25=stmt.executeQuery("SELECT count(*)as total FROM `vel` WHERE spre='MECH'");
            while(rs25.next()){
                String k=rs25.getString("total");
        %>
        <td><%=k%></td></tr>
</table>

        
<%
            }
con.close();
}
catch(Exception exp)
{
    System.out.println(exp);
}
%>

<button onclick="window.print()" class="btn btn-outline-primary btn-lg">Print</button><br><br> 
     </center>
</body>
</html>


<%-- 
    Document   : result
    Created on : Dec 26, 2019, 9:51:02 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@ page import="java.sql.*" import="java.lang.Math"%> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>My page</title>
  <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style>
    table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  width: 95%;
}
th, td {
  padding: 5px;
  text-align: left;    
}

    </style>
</head>
<body>
<center><h1><img src="img/vitlogo.png" width="70%"/></h1></center>            
<center><h2 style="font-family:Times New Roman">APPLICATION FORM</h2></center><br>
<center>
             <table class="tg" style="table-layout: fixed; width:90%">
        <thead>              
       <tr>
         <td style="font-weight: bold;text-align: center">DESCRIPTION</td>
         <td style="font-weight: bold ;text-align: center" colspan="2">DETAILS</td>
       </tr>
       </thead>
       <tbody>
                     <%
                 HttpSession hs=request.getSession();
                 String tech = (String)hs.getAttribute("fname");
                 System.out.println(tech);
                 try{  
                 Class.forName("com.mysql.jdbc.Driver");  
                 Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                 PreparedStatement stmt=(PreparedStatement)con.prepareStatement("select ref,fname,lname,dob,email,num,anum,living,pname,poccu,mtongue,tenth,address,district,state,pincode,fpre,spre,gender,choice,filename,regno,school,grou,vel,bos,mediu,gro,expected,diploma,mark,pregno,college,dept,doj,med,registered from vel where fname ='"+tech+"'");
                 ResultSet rs=stmt.executeQuery();
                 while(rs.next()){
                     String z=rs.getString("ref");
                     String f=rs.getString("fname");
                     String l=rs.getString("lname");
                     String d=rs.getString("dob");
                     String e=rs.getString("email");
                     String n=rs.getString("num");
                     String a=rs.getString("anum");
                     String i=rs.getString("living");
                     String p=rs.getString("pname");
                     String o=rs.getString("poccu");
                     String m=rs.getString("mtongue");
                     String t=rs.getString("tenth");
                     String r=rs.getString("address");
                     String di=rs.getString("district");
                     String s=rs.getString("state");
                     String pi=rs.getString("pincode");
                     String fp=rs.getString("fpre");
                     String sp=rs.getString("spre");
                     String g=rs.getString("gender");
                     String c=rs.getString("choice");
                     String k=rs.getString("filename");
                     String re=rs.getString("regno");
                     String sc=rs.getString("school");
                     String gr=rs.getString("grou");
                     String ve=rs.getString("vel");
                     String bo=rs.getString("bos");
                     String me=rs.getString("mediu");
                     String go=rs.getString("gro");
                     String exp=rs.getString("expected");
                     String lo=rs.getString("diploma");
                     String ma=rs.getString("mark");
                     String pr=rs.getString("pregno");
                     String co=rs.getString("college");
                     String de=rs.getString("dept");
                     String dj=rs.getString("doj");
                     String we=rs.getString("med");
                     String reg=rs.getString("registered");
                    %>
                    
 <tr>
    <td style="font-weight: bold">APPLICATION NUMBER</td>
    <td><strong><%=z%></strong></td>
    <td rowspan="4" style="font-size:18px"><image src="images/<%=k%>" width="150" height="150"/></td>
  </tr>
  <tr>
    <td style="font-weight: bold">FIRST NAME</td>
    <td style="font-size:18px" cellpadding="7px"><%=f%></td>
  </tr>
  <tr>
    <td style="font-weight: bold">LAST NAME</td>
    <td style="font-size:18px" cellpadding="7px"><%=l%></td>
  </tr>
  <tr>
    <td style="font-weight: bold">DATE OF BIRTH</td>
    <td style="font-size:18px" cellpadding="7px"><%=d%></td>
  </tr>
  <tr>
         <td style="font-weight: bold">CONTACT NUMBER</td>
         <td  style="font-size:18px" colspan="2"><%=n%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">ALTERNATE NUMBER</td>
         <td  style="font-size:18px"colspan="2"><%=a%></td>
       </tr>
  <tr>
    <td style="font-weight: bold">EMAIL ID</td>
    <td style="font-size:18px" colspan="2"><%=e%></td>
  </tr>
  
       <tr>
         <td style="font-weight: bold">LIVING WITH<br></td>
         <td  style="font-size:18px"colspan="2"><%=i%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">PARENT/GUARDIAN NAME</td>
         <td style="font-size:18px"colspan="2"><%=p%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">PARENT/GUARDIAN OCCUPATION</td>
         <td  style="font-size:18px"colspan="2"><%=o%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">MOTHER TONGUE</td>
         <td  style="font-size:18px"colspan="2"><%=m%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">10th PERCENTAGE</td>
         <td  style="font-size:18px"colspan="2"><%=t%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">ADDRESS</td>
         <td  style="font-size:18px"colspan="2"><%=r%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">DISTRICT</td>
         <td  style="font-size:18px"colspan="2"><%=di%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">STATE</td>
         <td  style="font-size:18px"colspan="2"><%=s%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">PINCODE</td>
         <td  style="font-size:18px"colspan="2"><%=pi%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">FIRST PREFERENCE</td>
         <td  style="font-size:18px"colspan="2"><%=fp%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">SECOND PREFERENCE</td>
         <td  style="font-size:18px"colspan="2"><%=sp%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">GENDER</td>
         <td  style="font-size:18px"colspan="2"><%=g%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">CHOICE</td>
         <td  style="font-size:18px"colspan="2"><%=c%></td>
       </tr>
       <% if("Regular".equals(c)){ %>
       <tr>
         <td style="font-weight: bold">12th Registration Number</td>
         <td  style="font-size:18px"colspan="2"><%=re%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th School Name</td>
         <td  style="font-size:18px"colspan="2"><%=sc%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th Group</td>
         <td  style="font-size:18px"colspan="2"><%=gr%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Are you from Velammal Group</td>
         <td  style="font-size:18px"colspan="2"><%=ve%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Board Of Study</td>
         <td  style="font-size:18px"colspan="2"><%=bo%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Medium Of Instruction</td>
         <td  style="font-size:18px"colspan="2"><%=me%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Group</td>
         <td  style="font-size:18px"colspan="2"><%=go%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th Expected Mark</td>
         <td  style="font-size:18px"colspan="2"><%=exp%></td>
       </tr>
       <% } else if("Lateral".equals(c)) { %>
       <tr>
         <td style="font-weight: bold">Qualifying Exam Type</td>
         <td  style="font-size:18px"colspan="2"><%=lo%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th Mark (In % If Applicable)</td>
         <td  style="font-size:18px"colspan="2"><%=ma%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Registration Number (Diploma)</td>
         <td  style="font-size:18px"colspan="2"><%=pr%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">College</td>
         <td  style="font-size:18px"colspan="2"><%=co%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Department in Diploma</td>
         <td  style="font-size:18px"colspan="2"><%=de%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Date of Joining (Diploma)</td>
         <td  style="font-size:18px"colspan="2"><%=dj%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Medium Of Instruction</td>
         <td  style="font-size:18px"colspan="2"><%=we%></td>
       </tr>
       <% } %>
       <tr>
         <td style="font-weight: bold">Where you registered?</td>
         <td  style="font-size:18px"colspan="2"><%=reg%></td>
       </tr>
       
     <%
         
                 }
     con.close();
     }
     catch(Exception e)
     {
         System.out.println(e);
     }
     %>
     </tbody>
     </table><br><br>
     <center>
       <p style="font-weight:bold;">For Further Details Contact || Mobile:9087420153 || Email:vitechadmission2020@gmail.com</p>
       </center>
     </center>
     <center>
         <button type="button" value="Print" onClick="window.print()" class="btn-outline-primary btn-lg" >Print</button>
         
     </center>
         </body>
</html>


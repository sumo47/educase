<%-- 
    Document   : last
    Created on : Jan 1, 2020, 11:07:47 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Updated PDF</title>
  <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.20.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style>
    table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  font-family: Times New Roman;
  font-size: 20px;
  
}
th, td {
  padding: 5px;
  text-align: left;    
}

    </style>
</head>
<body>
<center><h1><img src="img/vitlogo.png" width="50%"/></h1></center>            
<center><h3 style="color: red ">APPLICATION FORM</h3></center>
<center>
             <table class="tg" style="table-layout: fixed; width:80%">
        <thead>              
       <tr>
         <td style="font-weight: bold;text-align: center">DESCRIPTION</td>
         <td style="font-weight: bold ;text-align: center" colspan="2">DETAILS</td>
       </tr>
       </thead>
       <tbody>
                     <%
                 HttpSession hss=request.getSession();
                 String te = (String)hss.getAttribute("email");
                 System.out.println(te);
                 try{  
                 Class.forName("com.mysql.jdbc.Driver");  
                 Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
                 PreparedStatement stmt=(PreparedStatement)con.prepareStatement("select ref,fname,lname,dob,email,num,anum,living,pname,poccu,mtongue,tenth,address,district,state,pincode,fpre,spre,gender,choice,filename,regno,school,grou,vel,bos,mediu,gro,expected,diploma,mark,pregno,college,dept,doj,med,registered,cmat,cphy,cche,smat,sphy,sche,amata,amatb,aphy,ache,apphy,apche,scutoff from vel where email='"+te+"'");
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
                    //String bd=rs.getString("bosd");
                    String pr=rs.getString("pregno");
                    String co=rs.getString("college");
                    String de=rs.getString("dept");
                    String dj=rs.getString("doj");
                    String we=rs.getString("med");
                   // String to=rs.getString("toeq");
                    String reg=rs.getString("registered");
                    String m1=rs.getString("cmat");
                    String c1=rs.getString("cche");
                    String p1=rs.getString("cphy");
                    String m2=rs.getString("smat");
                    String c2=rs.getString("sche");
                    String p2=rs.getString("sphy");
                    String m3=rs.getString("amata");
                    String m4=rs.getString("amatb");
                    String c3=rs.getString("apche");
                    String c4=rs.getString("ache");
                    String p3=rs.getString("apphy");
                    String p4=rs.getString("aphy");
                    String maths=" ";
                    String chemistry=" ";
                    String physics=" ";
                    String scut=rs.getString("scutoff");
                   if(m1!=null)
                       maths=m1;
                   else if(m2!=null)
                       maths=m2;
                   else
                       maths=m3+m4;
                    if(c1!=null)
                       chemistry=c1;
                   else if(c2!=null)
                       chemistry=c2;
                   else
                       chemistry=c3+c4;
                     if(p1!=null)
                       physics=p1;
                   else if(p2!=null)
                       physics=p2;
                   else
                       physics=p3+p4;
                    %>
                    
 <tr>
    <td style="font-weight: bold">APPLICATION NUMBER</td>
    <td><strong><%=z%></strong></td>
    <td rowspan="4" ><image src="images/<%=k%>" width="200" height="150"/></td>
  </tr>
  <tr>
    <td style="font-weight: bold">FIRST NAME</td>
    <td  cellpadding="7px"><%=f%></td>
  </tr>
  <tr>
    <td style="font-weight: bold">LAST NAME</td>
    <td  cellpadding="7px"><%=l%></td>
  </tr>
  <tr>
    <td style="font-weight: bold">DATE OF BIRTH</td>
    <td  cellpadding="7px"><%=d%></td>
  </tr>
  <tr>
         <td style="font-weight: bold">CONTACT NUMBER</td>
         <td   colspan="2"><%=n%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">ALTERNATE NUMBER</td>
         <td  colspan="2"><%=a%></td>
       </tr>
  <tr>
    <td style="font-weight: bold">EMAIL ID</td>
    <td  colspan="2"><%=e%></td>
  </tr>
  
       <tr>
         <td style="font-weight: bold">LIVING WITH<br></td>
         <td  colspan="2"><%=i%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">PARENT/GUARDIAN NAME</td>
         <td colspan="2"><%=p%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">PARENT/GUARDIAN OCCUPATION</td>
         <td  colspan="2"><%=o%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">MOTHER TONGUE</td>
         <td  colspan="2"><%=m%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">10th PERCENTAGE</td>
         <td  colspan="2"><%=t%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">ADDRESS</td>
         <td  colspan="2"><%=r%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">DISTRICT</td>
         <td  colspan="2"><%=di%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">STATE</td>
         <td  colspan="2"><%=s%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">PINCODE</td>
         <td  colspan="2"><%=pi%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">FIRST PREFERENCE</td>
         <td  colspan="2"><%=fp%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">SECOND PREFERENCE</td>
         <td  colspan="2"><%=sp%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">GENDER</td>
         <td  colspan="2"><%=g%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">CHOICE</td>
         <td  colspan="2"><%=c%></td>
       </tr>
       <% if("Regular".equals(c)){%>
       <tr>
         <td style="font-weight: bold">12th Registration Number</td>
         <td  colspan="2"><%=re%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th School Name</td>
         <td  colspan="2"><%=sc%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th Group</td>
         <td  colspan="2"><%=gr%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Are you from Velammal Group</td>
         <td  colspan="2"><%=ve%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Board Of Study</td>
         <td  colspan="2"><%=bo%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Medium Of Instruction</td>
         <td  colspan="2"><%=me%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Group</td>
         <td  colspan="2"><%=go%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th Expected Mark</td>
         <td  colspan="2"><%=exp%></td>
       </tr>
       <%}else if("Lateral".equals(c)){%>
       <tr>
         <td style="font-weight: bold">Qualifying Exam Type</td>
         <td  colspan="2"><%=lo%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">12th Mark (In % If Applicable)</td>
         <td  colspan="2"><%=ma%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Registration Number (Diploma)</td>
         <td  colspan="2"><%=pr%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">College</td>
         <td  colspan="2"><%=co%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Department in Diploma</td>
         <td  colspan="2"><%=de%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Date of Joining (Diploma)</td>
         <td  colspan="2"><%=dj%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Medium Of Instruction</td>
         <td  colspan="2"><%=we%></td>
       </tr>
       <% } %>
       <tr>
         <td style="font-weight: bold">Where you registered?</td>
         <td  colspan="2"><%=reg%></td>
       </tr>
       <tr>         <td style="font-weight: bold">Maths Marks</td>
         <td  colspan="2"><%=maths%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Physics marks</td>
         <td  colspan="2"><%=physics%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Chemistry marks</td>
         <td  colspan="2"><%=chemistry%></td>
       </tr>
       <tr>
         <td style="font-weight: bold">Cutoff</td>
         <td  colspan="2"><%=scut%></td>
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
             </table><br>
     </center>
<center>
       <p style="font-weight:bold;">For Further Details Contact || Mobile:9087420153 || Email:vitechadmission2020@gmail.com</p>
       </center>
     <center>
         <button type="button" value="Print" onClick="window.print()" class="btn-outline-primary btn-lg" >Print</button> 
     </center>
</body>
</html>

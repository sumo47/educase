<%-- 
    Document   : report
    Created on : Dec 29, 2019, 4:33:05 PM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Report</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
    <link rel="stylesheet" type="text/css" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.jqueryui.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
</head>
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.20/js/dataTables.jqueryui.min.js"></script>
        <script>
                $(document).ready(function() {
                    $('#example').DataTable();
                } );
        </script>
    <body>
        <table id="example" class="display">
        <thead>
            <tr>
                <th>Reference Number</th>
                <th>First Name</th>
                <th>Last Name</th>
<!--                <th>Date Of Birth</th>-->
                <th>Email Address</th>
                <th>Contact Number</th>
                <th>Alternate Number</th>
<!--                <th>Living With</th>
                <th>Parent/Guardian Name</th>
                <th>Parent/Guardian Occupation</th>
                <th>Mother Tongue</th>
                <th>10th %</th>
                <th>Address</th>
                <th>District</th>
                <th>State</th>
                <th>Pincode</th>-->
                <th>First Preference</th>
                <th>Second Preference</th>
                <th>From Velammal Group</th>
<!--                <th>Gender</th>
                <th>Type</th>
                <th>12th Registration Number</th>
                <th>12th School Name</th>
                <th>Type</th>
                
                <th>Board Of Study</th>
                <th>Medium</th>
                <th>12th Group</th>
                <th>12th Expected</th>
                <th>12th Mark (In % If Applicable)</th>
                <th>Registration Number (Diploma)</th>
                <th>College</th>
                <th>Department in Diploma</th>
                <th>Date of Joining (Diploma)</th>
                <th>From Where Registered</th>
                <th>Medium Of Instruction</th>-->

            </tr>
        </thead>
        <tbody>
         <%
            try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
            PreparedStatement stmt=(PreparedStatement)con.prepareStatement("select ref,fname,lname,email,num,anum,fpre,spre,vel from vel");
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                     String z=rs.getString("ref");
                     String f=rs.getString("fname");
                     String l=rs.getString("lname");
                     String e=rs.getString("email");
                     String n=rs.getString("num");
                     String a=rs.getString("anum");
                     String fp=rs.getString("fpre");
                     String sp=rs.getString("spre");
                     String v=rs.getString("vel");
            %>
            <tr>
            <td><%=z%></td>
            <td><%=f%></td>
            <td><%=l%></td>
            <td><%=e%></td>
            <td><%=n%></td>
            <td><%=a%></td>
            <td><%=fp%></td>
            <td><%=sp%></td>
            <td><%=v%></td>
            </tr>
            
<%
            }
con.close();
}
catch(Exception ex)
{
    System.out.println(ex);
}
%>
            </tbody>
            <tfoot>
                <th>Reference Number</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email Address</th>
                <th>Contact Number</th>
                <th>Alternate Number</th>
                <th>First Preference</th>
                <th>Second Preference</th>
                <th>From Velammal Group</th>
            </tfoot>
    </table><br><br>
    </body>
    <center>
        <button onclick="location.href = 'final.jsp';" id="button1" class="btn btn-outline-success btn-lg" >Report</button>&nbsp;&nbsp;
        <button onclick="location.href = 'excel.jsp';" id="button1" class="btn btn-outline-success btn-lg" >Excel</button>
    </center>
    </html>

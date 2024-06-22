<%-- 
    Document   : excel.jsp
    Created on : Dec 31, 2019, 1:04:23 PM
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
    <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <style>
        *{
            color:#2b2b2b;
            font-family:"Roboto Condensed";
        }
        th{
            text-align: left;
            color: #4679bd;
        }
        tbody > tr:nth-of-type(even){
            background-color: #daeaff;
        }
        button{
            cursor: pointer;
            margin-top: 1rem;
        }
    </style>
</head>
        <script>
    function exportTableToExcel(example, excel = ''){
    var downloadLink;
    var dataType = 'application/vnd.ms-excel';
    var tableSelect = document.getElementById(example);
    var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
    // Specify file name
    excel = excel?excel+'.xls':'excel_data.xls';
    
    // Create download link element
    downloadLink = document.createElement("a");
    
    document.body.appendChild(downloadLink);
    
    if(navigator.msSaveOrOpenBlob){
        var blob = new Blob(['\ufeff', tableHTML], {
            type: dataType
        });
        navigator.msSaveOrOpenBlob( blob, excel);
    }else{
        // Create a link to the file
        downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
        // Setting the file name
        downloadLink.download = excel;
        
        //triggering the function
        downloadLink.click();
    }
}
        </script>
    <body>
        <table id="example" class="table table-bordered" style="border: 1px solid black;">
        <thead>
            <tr>
                <th>Reference Number</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date Of Birth</th>
                <th>Email Address</th>
                <th>Contact Number</th>
                <th>Alternate Number</th>
                <th>Living With</th>
                <th>Parent/Guardian Name</th>
                <th>Parent/Guardian Occupation</th>
                <th>Mother Tongue</th>
                <th>10th %</th>
                <th>Address</th>
                <th>District</th>
                <th>State</th>
                <th>Pincode</th>
                <th>First Preference</th>
                <th>Second Preference</th>
                <th>Gender</th>
                <th>Type</th>
                <th>12th Registration Number</th>
                <th>12th School Name</th>
                <th>Type</th>
                <th>Velammal Group</th>
                <th>Board Of Study</th>
                <th>Medium</th>
                <th>12th Group</th>
                <th>12th Expected</th>
                <th>Diploma</th>
                <th>12th Mark (If Applicable)</th>
                <th>Registration Number</th>
                <th>College</th>
                <th>Department in Diploma</th>
                <th>Date of Joining (Diploma)</th>
                <th>Medium Of Instruction</th>
                <th>From Where Registered</th>
                <th>State Board Maths</th>
                <th>State Board Physics</th>
                <th>State Board Chemistry</th>
                <th>AP Maths A</th>
                <th>AP Maths B</th>
                <th>AP Physics</th>
                <th>AP Practical Physics</th>
                <th>AP Chemistry</th>
                <th>AP Practical Chemistry</th>
                <th>CBSE Maths</th>
                <th>CBSE Physics</th>
                <th>CBSE Chemistry</th>
                <th>Cutoff</th>
                
            </tr>
        </thead>
        <tbody>
         <%
            try{  
            Class.forName("com.mysql.jdbc.Driver");  
            Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/velammal","root","root");
            PreparedStatement stmt=(PreparedStatement)con.prepareStatement("select ref,fname,lname,dob,email,num,anum,living,pname,poccu,mtongue,tenth,address,district,state,pincode,fpre,spre,gender,choice,regno,school,grou,vel,bos,mediu,gro,expected,diploma,mark,pregno,college,dept,doj,med,registered,smat,sphy,sche,amata,amatb,aphy,apphy,ache,apche,cmat,cphy,cche,scutoff from vel");
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
                     //String to=rs.getString("toeq");
                     String reg=rs.getString("registered");
                     String sm=rs.getString("smat");
                     String sph=rs.getString("sphy");
                     String sch=rs.getString("sche");
                     String ama=rs.getString("amata");
                     String amb=rs.getString("amatb");
                     String aph=rs.getString("aphy");
                     String apph=rs.getString("apphy");
                     String ac=rs.getString("ache");
                     String apc=rs.getString("apche");
                     String cm=rs.getString("cmat");
                     String cp=rs.getString("cphy");
                     String ccc=rs.getString("cche");
                     String cut=rs.getString("scutoff");
            %>
            <tr>
                     <td><%=z%></td>
                     <td><%=f%></td>
                     <td><%=l%></td>
                     <td><%=d%></td>
                     <td><%=e%></td>
                     <td><%=n%></td>
                     <td><%=a%></td>
                     <td><%=i%></td>
                     <td><%=p%></td>
                     <td><%=o%></td>
                     <td><%=m%></td>
                     <td><%=t%></td>
                     <td><%=r%></td>
                     <td><%=di%></td>
                     <td><%=s%></td>
                     <td><%=pi%></td>
                     <td><%=fp%></td>
                     <td><%=sp%></td>
                     <td><%=g%></td>
                     <td><%=c%></td>
                     <td><%=re%></td>
                     <td><%=sc%></td>
                     <td><%=gr%></td>
                     <td><%=ve%></td>
                     <td><%=bo%></td>
                     <td><%=me%></td>
                     <td><%=go%></td>
                     <td><%=exp%></td>
                     <td><%=lo%></td>
                     <td><%=ma%></td>
                    
                     <td><%=pr%></td>
                     <td><%=co%></td>
                     <td><%=de%></td>
                     <td><%=dj%></td>
                     <td><%=we%></td>
                     
                     <td><%=reg%></td>
                      <td><%=sm%></td>
                       <td><%=sp%></td>
                        <td><%=sc%></td>
                         <td><%=ama%></td>
                          <td><%=amb%></td>
                           <td><%=aph%></td>
                            <td><%=apph%></td>
                             <td><%=ac%></td>
                              <td><%=apc%></td>
                               <td><%=cm%></td>
                                <td><%=cp%></td>
                                 <td><%=ccc%></td>
                                 <td><%=cut%></td>
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
        </table>
    <center><button type="button" onclick="exportTableToExcel('example')" class="btn btn-outline-success">Generate Excel</button></center>
        </body>
</html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <style>
            
            .b{
                position: relative;
                width:35%;
                border: 1px solid slateblue;
                height: 480px;
                margin-left: 450px;
                margin-top: 110px;
                display: block;
            }
            .btn {
  background-color:#007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}
.aa{
    background-color:white;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;top:270px;left:170px;
  cursor: pointer;
  position: absolute;
}
#ii1{
    background-color:#007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;border-radius: 4px;
}
#ai1{
    background-color:#007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;border-radius: 4px;
}
#ii2{
    background-color:#007bff;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;border-radius: 4px;;
}
.a {
  position: absolute;
  display: inline-block;
  margin-left: 200px;margin-top:190px;
}

.z{
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 140px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.z h4 {
  color: black;
  padding: 6px 16px;
  text-decoration: none;
  display: block;
}

.z h4:hover {background-color: #f1f1f1}

.a:hover .z {
  display: block;
}

.a:hover .btn{
  background-color: #e94412;
}

#box form{
 display:none;
 border-radius: 4px;
 background-color:white;
 border:1px solid gainsboro;
 position: absolute;
top:110px;left:450px;
padding-top: 80px;padding-left: 40px;;
 width:33%;height: 400px;
 border-radius:10px ;
    box-shadow: 0px 0px 15px 0px #000;
} 
#l{
    display:none;
 border-radius: 4px;
background-color:white;
 border:1px solid gainsboro;
 position: absolute;
color:white;
font-size: 18px;
font-family: 'Times New Roman', Times, serif;
top:110px;left:450px;
padding-top: 80px;padding-left: 40px;;
 width:33%;height: 400px;
} 
#li{
    display:none;
 border-radius: 4px;
background-color:white;
 border:1px solid gainsboro;
 position: absolute;
color:white;
font-size: 18px;
font-family: 'Times New Roman', Times, serif;
top:110px;left:450px;
padding-top: 80px;padding-left: 40px;;
 width:33%;height: 400px;
} 
#lii{
    display:none;
 border-radius: 4px;
background-color:white;
 border:1px solid gainsboro;
 position: absolute;
color:white;
font-size: 18px;
font-family: 'Times New Roman', Times, serif;
top:110px;left:450px;
padding-top: 80px;padding-left: 40px;;
 width:33%;height: 400px;
} 
#iii{
    border-radius: 4px;
    border:1px solid blue;
    background-color: red;}
p{
    margin-left: 130px;
    margin-top:20px;
}
#l1{
    background-color:floralwhite;
    border:1px solid cyan;
    border-radius: 4px;
    width:72px;height: 30px;
    padding: 10px 0px 0px 20px;
    position: absolute;
    left:220px;top:170px;
    color:black;
}
#li1{
    background-color:floralwhite;
    border:1px solid cyan;
    border-radius: 4px;
    width:72px;height: 30px;
    padding: 10px 0px 0px 20px;
    position: absolute;
    left:220px;top:170px;
    color:black;
}
#lii3{
    background-color:floralwhite;
    border:1px solid cyan;
    border-radius: 4px;
    width:72px;height: 30px;
    padding: 10px 0px 0px 20px;
    position: absolute;
    left:220px;top:170px;
    color:black;
}
#lii2{
    background-color:floralwhite;
    border:1px solid cyan;
    border-radius: 4px;
    width:72px;height: 30px;
    padding: 10px 0px 0px 20px;
    position: absolute;
    left:220px;top:170px;
    color:black;
}
#lii1{
    background-color:floralwhite;
    border:1px solid cyan;
    border-radius: 4px;
    width:72px;height: 30px;
    padding: 10px 0px 0px 20px;
    position: absolute;
    left:220px;top:170px;
    color:black;
}
#l2{
    position: absolute;
    left:210px;top:110px;
    color:black;
}
#li2{
    position: absolute;
    left:210px;top:110px;
    color:black;
}
#li3{
    position: absolute;
    left:210px;top:110px;
    color:black;
}
        </style>
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <%HttpSession ddd=request.getSession();
    String hah=(String)ddd.getAttribute("ssss");%>
<script type="text/javascript">
     
    function state(m1,p1,c1,zz){
         var z=0,t=0,x=0;
         z=(z+m1)/2.0;
         t=(t+p1)/4.0;
         x=(x+c1)/4.0;
         z+=t+x;
         if(z!==0 && p1!==0 && m1!==0 && c1!==0){
            var dd=document.getElementById("xx");
            var dd1=document.getElementById("cf");
         dd.value=zz;dd1.value=z;
        $(document).ready(function(){
            
        document.getElementById("lii1").innerHTML=z;
        $("#ii1").click(function(){
        $("#ill").slideUp("fast");
        $("#l").slideDown("fast");
      });
              $("#btt1").click(function(){
                   $(".state").submit();
              });
          
    });}
    else if(m1===0){
        alert("Enter Your Maths Mark");
    }
    else if(p1===0){
        alert("Enter Your Physics Mark");
    }
    else if(c1===0){
        alert("Enter Your Chemistry Mark");
    }
     else{
            alert("Enter Your Marks");
        }
    }
        function cbse(m1,p1,c1,zz){
         var z=0,t=0,x=0;
         z=(z+m1)/2.0;
         t=(t+p1)/4.0;
         x=(x+c1)/4.0;
         z+=t+x;
         if(z!==0 && p1!==0 && m1!==0 && c1!==0){
            var dd=document.getElementById("xxxx");
            var dd2=document.getElementById("cf2");
         dd.value=zz;dd2.value=z;
        $(document).ready(function(){
            $("#btt3").click(function(){
                  $(".cbse").submit();
            });
        });
        document.getElementById("lii3").innerHTML=z;
        $("#ii2").click(function(){
        $("#i22").slideUp("fast");
        $("#lii").slideDown("fast");
    });return true;
    }
    else if(m1===0){
        alert("Enter Your Maths Mark");
    }
    else if(p1===0){
        alert("Enter your physics Mark");
    }
    else if(c1===0){
        alert("Enter Your Chemistry Mark");
    }
    else{
        alert("Enter Your Marks");
    }}
    function andhra(a,b,pt,pp,ct,cp,zz){
       var m=(parseFloat(a)+parseFloat(b))*(2.0/3.0);
        var p=(parseFloat(pt)+parseFloat(pp))*(5.0/9.0);
        var c=(parseFloat(ct)+parseFloat(cp))*(5.0/9.0);
        var d=0.0;
        d=parseFloat(c+p+m);
        if(d!==0){
            var f=d;
            var d1=f.toFixed(2);
            var dd=document.getElementById("xxx");
            var dd3=document.getElementById("cf1");
            dd.value=zz;dd3.value=d1;
         $(document).ready(function(){
            
        document.getElementById("lii2").innerHTML=d1;
        $("#z").click(function(){
        $("#all").slideUp("fast");
        $("#li").slideDown("fast");
      });
              
          
    });}
        else if(a===0 || b===0|| pt===0 || pp===0 || ct===0 || cp===0 ){
            alert("Enter all fields..");
            location.reload();
        }
   
    }
      $(document).ready(function(){
    $("#btt2").click(function(){
                   $(".andhra").submit();
              });});
    //here scriptlet code for the respective value to get from servlet and use ss variable to store values using Session()
    
        
    function foo(){
        var ss='<%=hah%>';
   $(document).ready(function(){
       if(ss==="state"){
            $("#i11").show();
            return false;}
            else if(ss==="cbse"){
                $("#i22").show();
                return false;
            }
            else if(ss==="andhra"){
                $("#a11").show();
                return false;
            }});}
</script>
    <body onload="foo()">
       
           
          <div id="box" >
            <form action="mark" id="i11" name="n1" class="state"  method="post">
                <center><p><h3>Enter Your Marks</h3></p></center>
                <p>Maths:<input type="text" placeholder="out off 100" name="m1" id="1t3" style="  border-radius: 6px;
                    padding:7px 8px;margin-left: 36px;"/></p>
                <p>Physics:<input type="text" placeholder="out off 100" name="p1" id="1t4" style="  border-radius: 6px;
                    padding:7px 8px;margin-left: 30px;"/></p>
                <p>Chemistry:<input type="text" placeholder="out off 100" name="c1" id="1t5" style="  border-radius: 6px;
                    padding:7px 8px;margin-left: 13px;"/></p>
                     <input type="hidden" name="myf" id="xx" value="" />
                     <input type="hidden" name="scutoff" id="cf" value="" />
                <p><input type="button" value="Submit" onclick="state(n1.m1.value,n1.p1.value,n1.c1.value,'state')"  style="margin-left:50px;" id="ii1" /></p>
              </form></div>    
              <div id="box" style="padding-left: 13px;;">
                  <form action="mark" id="a11" name="a1" class="andhra"  method="post">
                    <center><p><h3>Enter Your Marks</h3></p></center>
                    <p>Maths A:<input type="text" placeholder="out off 75" name="m1" id="1t3" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 30px;width:170px;"/></p>
                         <p>Maths B:<input type="text" placeholder="out off 75" name="mb1" id="1t6" style="  border-radius: 6px;
                            padding:7px 8px;margin-left: 27px;width:170px;" /></p>
                    <p>Physics:<input type="text" placeholder="Theory" name="p1" id="1t4" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 30px;width:80px;"/><input type="text" placeholder="Practical" name="pp1" id="1t4" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 10px;width:80px;"required/></p>
                    <p>Chemistry:<input type="text" placeholder="Theory" name="c1" id="1t5" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 10px;width:80px;"/><input type="text" placeholder="Practical" name="pc1" id="1t4" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 10px;width:80px;"required/></p>
                   
                    <input type="hidden" name="myf" id="xxx" value="" />
                    <input type="hidden" name="scutoff" id="cf1" value="" />
                    <p><input type="button" value="Submit" onclick="andhra(a1.m1.value,a1.mb1.value,a1.p1.value,a1.pp1.value,a1.c1.value,a1.pc1.value,'andhra')"  style="margin-left:50px;" id="apa" /> </p>
                  </form></div>           
              <div id="box" style="padding-top:30px;">
                <form action="mark" id="i22" name="n2" class="cbse" method="POST">
                    <center><p><h3>Enter Your Marks</h3></p></center>
                    <p>Maths:<input type="text" placeholder="out off 100" name="m1" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 36px;"/></p>
                    <p>Physics:<input type="text" placeholder="out off 100" name="p1" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 30px;"/></p>
                    <p>Chemistry:<input type="text" placeholder="out off 100" name="c1" style="  border-radius: 6px;
                        padding:7px 8px;margin-left: 13px;"/></p><input type="hidden" name="myf" id="xxxx" value="" />
                    <input type="hidden" name="scutoff" id="cf2" value="" />
                    <p><input type="button" value="Submit" onclick="cbse(n2.m1.value,n2.p1.value,n2.c1.value,'cbse')" style="margin-left:50px;" id="ii2" /> </p>
                  </form></div>  
                  <div id="l">
                      <h3 id="l2">Your Cut-Off</h3>
                    <pre id="lii1"></pre><br><br>
                   <center> <button type="button" id="btt1" style="position: relative;left: 2%;margin-top: 30%;padding: 10px;align-content: center;background-color:#007bff;color: white;">Confirm</button></center>
                </div>
                <div id="li">
                    <h3 id="li2">Your Cut-Off</h3>
                  <pre id="lii2"></pre><br><br>
                  <center><button type="button" id="btt2" style="position: relative;left: 2%;margin-top: 30%;padding: 10px;align-content: center;background-color:#007bff;color: white;">Confirm</button></center>
              </div>
              <div id="lii">
                <h3 id="li3" >Your Cut-Off</h3>
              <pre id="lii3"></pre><br><br>
              <center><button type="button" id="btt3" style="position: relative;left: 2%;margin-top: 30%;padding: 10px;align-content: center;background-color:#007bff;color: white;">Confirm</button></center>
          </div>
        </div></div>
       
        </body>


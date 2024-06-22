<%-- 
    Document   : late
    Created on : Dec 26, 2019, 9:42:48 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>B.E/B.TECH Lateral</title>
    <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <style>
        .bg{
    background-size: 100%;
    background-color: gray;
}
.form-container {
    width: 180%;
    position: absolute;
    top: 5vh;
    background: #fff;
    padding: 30px;
    border-radius:10px ;
    box-shadow: 0px 0px 15px 0px #000;
}
    </style>
</head>
<script>
    function rnum(){
       var f=document.getElementById("exampleInputName2").value;
        if(f.length<=7 || f.length>=13){
            document.getElementById("namelocreg").innerHTML="Enter Valid Registration Number";
            document.getElementById("namelocreg").style.color="#fa163f";
            document.getElementById("namelocreg").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocreg").innerHTML=" Valid Registration Number";
            document.getElementById("namelocreg").style.color="#27f30f";
            document.getElementById("namelocreg").style.fontWeight="560";
        }
    }
    function dname(){
       var ss=document.getElementById("exampleInputName3").value;
        if(ss.length==0){
            document.getElementById("namelocdname").innerHTML="Enter Department";
            document.getElementById("namelocdname").style.color="#fa163f";
            document.getElementById("namelocdname").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocdname").innerHTML="Valid Department";
            document.getElementById("namelocdname").style.color="#27f30f";
            document.getElementById("namelocdname").style.fontWeight="560";
        }
    }
    function marktw(){
       var ss=document.getElementById("exampleInputName1").value;
        if(ss.length!=2){
            document.getElementById("nameloc12").innerHTML="Enter 12th mark Correctly If Available";
            document.getElementById("nameloc12").style.color="#fa163f";
            document.getElementById("nameloc12").style.fontWeight="560";
        }
        else if(ss.length==2){
             document.getElementById("nameloc12").innerHTML="Valid Mark";
            document.getElementById("nameloc12").style.color="#27f30f";
            document.getElementById("nameloc12").style.fontWeight="560";
        }
    }
    function dcol(){
       var ss=document.getElementById("exampleInputName4").value;
        if(ss.length==0){
            document.getElementById("namelocdcol").innerHTML="Enter College Name";
            document.getElementById("namelocdcol").style.color="#fa163f";
            document.getElementById("namelocdcol").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocdcol").innerHTML="Valid College";
            document.getElementById("namelocdcol").style.color="#27f30f";
            document.getElementById("namelocdcol").style.fontWeight="560";
        }
    }
    function dmed(){
       var ss=document.getElementById("exampleFormControlSelect2").value;
        if(ss==="none"){
            document.getElementById("namelocdmed").innerHTML="Enter Medium";
            document.getElementById("namelocdmed").style.color="#fa163f";
            document.getElementById("namelocdmed").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocdmed").innerHTML="";
        }
        
    }
        function validate(){
            var f=document.getElementById("exampleInputName2").value;
        if(f.length<=7 || f.length>=13){
            document.getElementById("namelocreg").innerHTML="Enter Valid Registration Number";
            document.getElementById("namelocreg").style.color="#fa163f";
            document.getElementById("namelocreg").style.fontWeight="560";
            return false;
        }
        var s=document.getElementById("exampleInputName3").value;
        if(s.length==0){
            document.getElementById("namelocdname").innerHTML="Enter Department";
            document.getElementById("namelocdname").style.color="#fa163f";
            document.getElementById("namelocdname").style.fontWeight="560";
            return false;
        }
        var ss1=document.getElementById("exampleInputName4").value;
        if(ss1.length==0){
            document.getElementById("namelocdcol").innerHTML="Enter College Name";
            document.getElementById("namelocdcol").style.color="#fa163f";
            document.getElementById("namelocdcol").style.fontWeight="560";
            return false;
        }
        var ssa=document.getElementById("exampleFormControlSelect2").value;
        if(ssa==="none"){
            document.getElementById("namelocdmed").innerHTML="Enter Medium";
            document.getElementById("namelocdmed").style.color="#fa163f";
            document.getElementById("namelocdmed").style.fontWeight="560";
            return false;
        }
        return true;
        }
</script>
<body>
    <section class="container-fluid bg">
        <section class="row justify-content-center">
            <section class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
              <div class="row justify-content-center align-items-center h-100">
                  <form class="form-container" action="late" method="post">
                  <div class="form-group">
                    <center><h4>B.E/B.TECH LATERAL</h4></center>
                  </div>
                  <div class="form-group">Qualifying Exam Type</div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio1" name="diploma" value="Diploma" class="custom-control-input" >
                        <label class="custom-control-label" for="customRadio1">Diploma</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio2" name="diploma" value="B.Sc" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio2">B.Sc</label>
                      </div><br>
                      <span id="nameloc"></span>
                <div class="form-group">
                    <label for="exampleInputName">12th Mark (In % If Applicable)</label>
                    <input type="number" name="mark" class="form-control" id="exampleInputName1" placeholder="12th Mark (In % If Applicable)" onmouseout="marktw()"  minlength="2"  maxlength="3">
                    <span id="nameloc12"></span>
                </div>
                <div class="form-group">
                    <label for="exampleInputName">Registration Number (Diploma)</label>
                    <input type="number" name="pregno" class="form-control" id="exampleInputName2" onmouseout="rnum()" placeholder="Registration Number (Diploma)"  minlength="8"  maxlength="15" >
                    <span id="namelocreg"></span>
                </div>
                <div class="form-group">
                    <label for="exampleInputName">College</label>
                    <input type="text" name="college" class="form-control" id="exampleInputName4" onmouseout="dcol()" placeholder="College">
                    <span id="namelocdcol"></span>
                </div>
                <div class="form-group">
                    <label for="exampleInputName">Department in Diploma</label>
                    <input type="text" name="dept" class="form-control" id="exampleInputName3"  onmouseout="dname()" placeholder="Department in Diploma">
                    <span id="namelocdname"></span>
                </div>
                <div class="form-group">

                    <label for="exampleInputName">Date of Joining (Diploma)</label>
                    <input type="date" name="doj" class="form-control" id="exampleInputName5">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Medium Of Instruction</label>
                    <select class="form-control" id="exampleFormControlSelect2" name="med" onmouseout="dmed()">
                        <option value="none" style="color: black">Medium of Instruction</option>
                        <option value="english" style="color: black">English</option>
                        <option value="tamil" style="color: black">Tamil</option>
                        <option value="telugu" style="color: black">Telegu</option>
                        <option value="other" style="color: black">Other</option>
                    </select>
                    <span id="namelocdmed"></span>
                </div>
                <center><button type="submit" class="btn btn-lg btn-outline-primary" onclick='return validate()' id="submit">Submit</button></center>
                </form>
               </div>
            </section>
        </section>
    </section>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
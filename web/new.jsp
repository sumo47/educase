<%-- 
    Document   : new
    Created on : Dec 26, 2019, 9:42:38 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>B.E/B.TECH REGULAR</title>
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
    function regnum(){
        var r=document.getElementById("exampleInputName1").value;
        if(r.length==0){
            document.getElementById("namelocreg").innerHTML="Enter Registration Number";
            document.getElementById("namelocreg").style.color="#fa163f";
            document.getElementById("namelocreg").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocreg").innerHTML="Valid ";
            document.getElementById("namelocreg").style.color="#27f30f";
            document.getElementById("namelocreg").style.fontWeight="560";
        }
    }
    function sname(){
        var r=document.getElementById("exampleInputName2").value;
        if(r.length==0){
            document.getElementById("namelocsname").innerHTML="Enter College Name";
            document.getElementById("namelocsname").style.color="#fa163f";
            document.getElementById("namelocsname").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocsname").innerHTML="Valid ";
            document.getElementById("namelocsname").style.color="#27f30f";
            document.getElementById("namelocsname").style.fontWeight="560";
        }
    }
    function boname(){
        var r=document.getElementById("exampleFormControlSelect1").value;
        if(r==="select"){
            document.getElementById("namelocbos").innerHTML="Enter Board of Study";
            document.getElementById("namelocbos").style.color="#fa163f";
            document.getElementById("namelocbos").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocbos").innerHTML="";

        }
    }
    function medium(){
        var r=document.getElementById("exampleFormControlSelect2").value;
        if(r=="select"){
            document.getElementById("namelocmedium").innerHTML="Enter Medium Of Instruction";
            document.getElementById("namelocmedium").style.color="#fa163f";
            document.getElementById("namelocmedium").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocmedium").innerHTML="";

        }
    }
    function grup(){
        var r=document.getElementById("exampleFormControlSelect3").value;
        if(r=="group"){
            document.getElementById("namelocgrup").innerHTML="Enter Group";
            document.getElementById("namelocgrup").style.color="#fa163f";
            document.getElementById("namelocgrup").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocgrup").innerHTML="";

        }
    }
    function mark(){
        var r=document.getElementById("exampleInputName3").value;
        if(r.length==0){
            document.getElementById("namelocmark").innerHTML="Enter 12th Expected Mark";
            document.getElementById("namelocmark").style.color="#fa163f";
            document.getElementById("namelocmark").style.fontWeight="560";
        }
        else{
            document.getElementById("namelocmark").innerHTML="";

        }
    }
    function validate(){
        var r=document.getElementById("exampleInputName1").value;
        if(r.length==0){
            document.getElementById("namelocreg").innerHTML="Enter Registration Number";
            document.getElementById("namelocreg").style.color="#fa163f";
            document.getElementById("namelocreg").style.fontWeight="560";
            return false;
        }
        var r1=document.getElementById("exampleInputName2").value;
        if(r1.length==0){
            document.getElementById("namelocsname").innerHTML="Enter College Name";
            document.getElementById("namelocsname").style.color="#fa163f";
            document.getElementById("namelocsname").style.fontWeight="560";
            return false;
        }
       
        var r2=document.getElementById("exampleFormControlSelect1").value;
        if(r2==="select"){
            document.getElementById("namelocbos").innerHTML="Enter Board of Study";
            document.getElementById("namelocbos").style.color="#fa163f";
            document.getElementById("namelocbos").style.fontWeight="560";
            return false;
        }
        var r3=document.getElementById("exampleFormControlSelect2").value;
        if(r3=="select"){
            document.getElementById("namelocmedium").innerHTML="Enter Medium Of Instruction";
            document.getElementById("namelocmedium").style.color="#fa163f";
            document.getElementById("namelocmedium").style.fontWeight="560";
            return false;
        }
        var r4=document.getElementById("exampleFormControlSelect3").value;
        if(r4=="group"){
            document.getElementById("namelocgrup").innerHTML="Enter Group";
            document.getElementById("namelocgrup").style.color="#fa163f";
            document.getElementById("namelocgrup").style.fontWeight="560";
            return false;
        }
        var r5=document.getElementById("exampleInputName3").value;
        if(r5.length==0){
            document.getElementById("namelocmark").innerHTML="Enter 12th Expected Mark";
            document.getElementById("namelocmark").style.color="#fa163f";
            document.getElementById("namelocmark").style.fontWeight="560";
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
                  <form class="form-container" action="nregular" method="post">
                  <div class="form-group">
                    <center><h4>B.E/B.TECH REGULAR</h4></center>
                  </div>
                <div class="form-group">
                    <label for="exampleInputName">12th Registration Number</label>
                    <input type="text" name="regno" class="form-control" id="exampleInputName1" onmouseout="regnum()" placeholder="12th Registration Number" minlength='7' maxlength='13'>
                    <span id="namelocreg"></span>
                </div>
                <div class="form-group">
                    <label for="exampleInputName">12th School Name</label>
                    <input type="text" name="school" class="form-control" id="exampleInputName2" onmouseout="sname()" placeholder="12th School Name">
                    <span id="namelocsname"></span>
                </div>
                <div class="form-group">12th Group</div>
                      <div class="custom-control custom-radio" >
                        <input type="radio" id="customRadio1" name="grou" value="General" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio1">General</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio2" name="grou" value="Vocational" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio2">Vocational</label><br>
                       
                      </div>
                    
                     <br>
                <div class="form-group">Are you from Velammal Group</div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio3" name="vel" value="Yes" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio3">Yes</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio4" name="vel" value="No" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio4">No</label>

                      </div><br>
                <div class="form-group">
                    <label for="exampleFormControlSelect1">Board Of Study</label>
                        <select class="form-control" id="exampleFormControlSelect1" name="bos"  onmouseout="boname()">
                            <option value="select" style="color: black">Board of Study</option>
                            <option value="central" style="color: black">Central</option>
                            <option value="state" style="color: black">State Board(TN State)</option>
                            <option value="intermediate" style="color: black">Intermediate(AP state)</option>
                            <option value="other" style="color: black">Other</option>
                        </select>
                        <span id="namelocbos"></span>
                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Medium Of Instruction</label>
                    <select class="form-control" id="exampleFormControlSelect2" name="mediu" onmouseout="medium()">
                        <option value="select" style="color: black">Medium of Instruction</option>
                        <option value="english" style="color: black">English</option>
                        <option value="tamil" style="color: black">Tamil</option>
                        <option value="telugu" style="color: black">Telegu</option>
                        <option value="other" style="color: black">Other</option>
                    </select>
                    <span id="namelocmedium"></span>

                </div>
                <div class="form-group">
                    <label for="exampleFormControlSelect3">Group</label>
                    <select class="form-control" id="exampleFormControlSelect3" name="gro"  onmouseout="grup()">
                        <option value="group">Group</option>
                        <option value="phy||che||comp||mat" style="color: black">phy||che||comp||mat</option>
                        <option value="phy||che||sta||mat"style="color: black">phy||che||sta||mat</option>
                        <option value="phy||che||bio||mat"style="color: black">phy||che||bio||mat</option>
                        <option value="phy||che||bio-che||mat" style="color: black">phy||che||bio-che||mat</option> 
                        <option value="other" style="color: black">Other</option>
                    </select>
                    <span id="namelocgrup"></span>
                </div>
                <div class="form-group">
                    <label for="exampleInputName">12th Expected Percentage</label>
                    <input type="text" name="expected"  onmouseout="mark()" class="form-control" id="exampleInputName3" placeholder="12th Expected Percentage" minlength="2"  maxlength="2">
                    <span id="namelocmark"></span>

                </div><br>
                <center><button type="submit" class="btn btn-lg btn-outline-primary"onclick='return validate()' id="submit">Submit</button></center>
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
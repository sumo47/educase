<%-- 
    Document   : registration
    Created on : Dec 26, 2019, 9:35:59 AM
    Author     : KAMALA KANNAN MOHAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Velammal Institute of Technology</title>
    <link rel="shortcut icon"  type="image/png" href="img/favicon.png"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/52874c72f6.js" crossorigin="anonymous"></script>
    <script src="main.js" type="text/js"></script>
    <script>
      var check = function() {
  if (document.getElementById('exampleInputPassword1').value ===
    document.getElementById('exampleInputPassword2').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'Matching';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'Not Matching';
  }
}
        </script>
    <style>
        .bg{
    background-size: 100%;
    background-color: gray;
}
#message{
    display: inline;
    height: 10px;
    width: 10px;
}
.form-container {
    width: 100%;
    position: absolute;
    top: 5vh;
    background: #fff;
    padding: 30px;
    border-radius:10px ;
    box-shadow: 0px 0px 15px 0px #000;
}
    </style>
        <script>
    function ffname()
    {
       var f=document.getElementById("exampleInputName1").value;
        if(f.length===0){
            document.getElementById("namelocreg").innerHTML="Enter Your First Name";
            document.getElementById("namelocreg").style.color="#fa163f";
            document.getElementById("namelocreg").style.fontWeight="560";
        }
        else{
                        document.getElementById("namelocreg").innerHTML="";

        }
        
    }
    function llname()
    {
       var l=document.getElementById("exampleInputName2").value;
        if(l.length===0){
            document.getElementById("nameloclname").innerHTML="Enter Your Last Name";
            document.getElementById("nameloclname").style.color="#fa163f";
            document.getElementById("nameloclname").style.fontWeight="560";
        }
        else{
                        document.getElementById("nameloclname").innerHTML="";

        }
    }
    function ename()
    {
       var l=document.getElementById("exampleInputEmail1").value;
        if(l.length===0){
            document.getElementById("namelocemai").innerHTML="Enter Your Email";
            document.getElementById("namelocemai").style.color="#fa163f";
            document.getElementById("namelocemai").style.fontWeight="560";
        }
        else{
                        document.getElementById("namelocemai").innerHTML="";

        }
    }
    function livinname()
    {
       var l=document.getElementById("exampleFormControlSelect1").value;
        if(l=="select"){
            document.getElementById("nameloclivin").innerHTML="Enter Religion";
            document.getElementById("nameloclivin").style.color="#fa163f";
            document.getElementById("nameloclivin").style.fontWeight="560";
            }
            else{
                            document.getElementById("nameloclivin").innerHTML="";
            }
        }
        function passname()
    {
       var l=document.getElementById("exampleInputName3").value;
        if(l.length===0){
            document.getElementById("namelocparent").innerHTML="Enter Your Parent Name";
            document.getElementById("namelocparent").style.color="#fa163f";
            document.getElementById("namelocparent").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparent").innerHTML="";
            }
        }
        function passoccname()
    {
       var l=document.getElementById("exampleInputName10").value;
        if(l.length===0){
            document.getElementById("namelocparentocc").innerHTML="Enter Your Parent's Occupation";
            document.getElementById("namelocparentocc").style.color="#fa163f";
            document.getElementById("namelocparentocc").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentocc").innerHTML="";
            }
        }
        function passtonname()
    {
       var l=document.getElementById("exampleInputName4").value;
        if(l.length===0){
            document.getElementById("namelocparentton").innerHTML="Enter Your Mother Tongue";
            document.getElementById("namelocparentton").style.color="#fa163f";
            document.getElementById("namelocparentton").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentton").innerHTML="";
            }
        }
         function passcontname()
    {
       var l=document.getElementById("exampleInputName5").value;
        if(l.length===0 || l.length!=10){
            document.getElementById("namelocparentcont").innerHTML="Enter Your Contact Number";
            document.getElementById("namelocparentcont").style.color="#fa163f";
            document.getElementById("namelocparentcont").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentcont").innerHTML="";
            }
        }
        function passpername()
    {
       var l=document.getElementById("exampleInputName7").value;
        if(l.length===0 || l.length===1 || l.length>=3){
            document.getElementById("namelocparentper").innerHTML="Enter Your 10th percentage";
            document.getElementById("namelocparentper").style.color="#fa163f";
            document.getElementById("namelocparentper").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentper").innerHTML="";
            }
        }
          function passaddname()
    {
       var l=document.getElementById("inputAddress").value;
        if(l.length===0){
            document.getElementById("namelocparentadd").innerHTML="Enter Your Address";
            document.getElementById("namelocparentadd").style.color="#fa163f";
            document.getElementById("namelocparentadd").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentadd").innerHTML="";
            }
        }
          function passdistname()
    {
       var l=document.getElementById("exampleFormControlSelect2").value;
        if(l==="select"){
            document.getElementById("namelocparentdist").innerHTML="Enter Your District";
            document.getElementById("namelocparentdist").style.color="#fa163f";
            document.getElementById("namelocparentdist").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentdist").innerHTML="";
            }
        }
         function passstatename()
    {
       var l=document.getElementById("exampleFormControlSelect3").value;
        if(l==="select"){
            document.getElementById("namelocparentstate").innerHTML="Enter Your State";
            document.getElementById("namelocparentstate").style.color="#fa163f";
            document.getElementById("namelocparentstate").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentstate").innerHTML="";
            }
        }
         function passstatename()
    {
       var l=document.getElementById("exampleFormControlSelect3").value;
        if(l==="select"){
            document.getElementById("namelocparentstate").innerHTML="Enter Your State";
            document.getElementById("namelocparentstate").style.color="#fa163f";
            document.getElementById("namelocparentstate").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentstate").innerHTML="";
            }
        }
         function passpinname()
    {
       var l=document.getElementById("exampleFormControlSelect3").value;
        if(l.length===0){
            document.getElementById("namelocparentstate").innerHTML="Enter Your State";
            document.getElementById("namelocparentstate").style.color="#fa163f";
            document.getElementById("namelocparentstate").style.fontWeight="560";
            }
            else{
                            document.getElementById("namelocparentstate").innerHTML="";
            }
        }
    </script>
</head>
<body>
  <center><h1><img src="img/vitlogo.png" width="60%"/></h1></center>
    <section class="container-fluid bg">
        <section class="row justify-content-center">
            <section class="col col-sm-6 col-md-6 col-lg-4 col-xl-6">
              <div class="row justify-content-center align-items-center h-100">
                <form action="registration" method="post" class="form-container" enctype="multipart/form-data">
                  <div class="form-group">
                    <center><h4>ONLINE ADMISSION FORM</h4></center>
                  </div>
                    <div class="form-group">
                      <label for="exampleInputName">First Name</label>
                      <input type="text" name="fname" class="form-control" id="exampleInputName1" onmouseout="ffname()" placeholder="First Name" maxlength="30" required pattern="[A-Za-z]{ ,.}">
                      <span id="namelocreg"></span>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputName">Last Name</label>
                      <input type="text" name="lname" class="form-control" id="exampleInputName2" onmouseout="llname()" placeholder="Last Name" maxlength="30" required pattern="[A-Za-z]{ ,.}">
                      <span id="nameloclname"></span>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputDob">Date of Birth</label>
                        <input type="date" name="dob" class="form-control" id="exampleInputDob" size="50">
                      </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email Address</label>
                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" onmouseout="ename()" placeholder="Email Address">
                    <span id="namelocemai"></span>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="password" class="form-control"  onkeyup='check();' id="exampleInputPassword1" placeholder="Password"  minlength="7"  maxlength="13"><span id='message' style="color:red ">Password Must be 7 to 13 Characters</span>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword2">Confirm Password</label>
                        <input type="password" name="cpassword" class="form-control"  onkeyup='check();' id="exampleInputPassword2" placeholder="Confirm Password" minlength="7"  maxlength="13">
                    </div>
                      <div class="form-group">Gender</div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio1" name="gender" value="Male" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio1">Male</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio2" name="gender" value="Female" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio2">Female</label>
                      </div><br>
                      <div class="form-group">Living with</div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio3" name="living"  value="parent" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio3">Parent</label>
                      
                    </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio4" name="living" value="guardian" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio4">Guardian</label>
                      </div><br>
                      <div class="form-group">
                        <label for="exampleFormControlSelect1">Religion</label>
                        <select class="form-control" id="exampleFormControlSelect1" onmouseout="livinname()" name="religion">
                          <option value="select">Select</option>
                          <option value="hindu">Hindu</option>
                          <option value="christian">Christian</option>
                          <option value="muslim">Muslim</option>
                          <option value="others">Others</option>
                        </select>
                        <span id="nameloclivin"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">Parent/Guardian Name</label>
                        <input type="text" name="pname" class="form-control" onmouseout="passname()" id="exampleInputName3" placeholder="Parent/Guardian Name" maxlength="30" required pattern="[A-Za-z]{ ,.}">
                        <span id="namelocparent"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">Parent/Guardian Occupation</label>
                        <input type="text" name="poccu" class="form-control" id="exampleInputName10" onmouseout="passoccname()" placeholder="Parent/Guardian Occupation" maxlength="30" required pattern="[A-Za-z]{ ,.}">
                         <span id="namelocparentocc"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">Mother Tongue</label>
                        <input type="text" name="mtongue" class="form-control" id="exampleInputName4" onmouseout="passtonname()" placeholder="Mother Tongue" maxlength="30" required pattern="[A-Za-z]{ ,.}">
                        <span id="namelocparentton"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">Contact Number</label>
                        <input type="text" name="num" class="form-control" id="exampleInputName5" onmouseout="passcontname()" placeholder="Mobile Number" minlength="10" maxlength="10"  >
                        <span id="namelocparentcont"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">Alternate Number</label>
                        <input type="text" name="anum" class="form-control" id="exampleInputName6" placeholder="Mobile Number" minlength="10" maxlength="10">
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">10th Percentage</label>
                        <input type="text" name="tenth" class="form-control" id="exampleInputName7" onmouseout="passpername()" placeholder="10th Percentage" minlength="2"  maxlength="2">
                        <span id="namelocparentper"></span>
                      </div>
                      <div class="form-group">
                        <label for="inputAddress">Address</label>
                        <input type="textarea" name="address" class="form-control" id="inputAddress" onmouseout="passaddname()" placeholder="Address" maxlength="300" required pattern="[A-Za-z]{ ,.}">
                        <span id="namelocparentadd"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect2">District</label>
                        <select class="form-control" id="exampleFormControlSelect2" name="district" onmouseout="passdistname()">
                            <option value="select">Select</option>
                            <option value="Ariyalur">Ariyalur</option>
	                    <option value="Chengalpattu">Chengalpattu </option>
                            <option value="Chennai">Chennai </option>
                            <option value="Coimbatore">Coimbatore</option>
                            <option value="Cuddalore">Cuddalore </option>
                            <option value="Dharmapuri">Dharmapuri</option>
                            <option value="Dindigul">Dindigul </option>
                            <option value="Erode">Erode</option>
                            <option value="Kallakurichi">Kallakurichi </option>
                            <option value="Kanchipuram">Kanchipuram </option>
                            <option value="Kanyakumari">Kanyakumari </option>
                            <option value="Karur">Karur</option>
                            <option value="Krishnagiri">Krishnagiri </option>
                            <option value="Madurai">Madurai </option>
                            <option value="Nagappattinam">Nagappattinam</option>
                            <option value="Namakkal">Namakkal </option>
                            <option value="Perambalur">Perambalur</option>
                            <option value="Pudukkottai">Pudukkottai</option>
                            <option value="Ramanathapuram">Ramanathapuram </option>
                            <option value="Ranipet">Ranipet </option>
                            <option value="Salem ">Salem </option>
                            <option value="Sivagangai">Sivagangai </option>
                            <option value="Tenkasi">Tenkasi </option>
                            <option value="Thanjavur">Thanjavur</option>
                            <option value="Nilgiris">Nilgiris </option>
                            <option value="Theni">Theni </option>
                            <option value="Thirupattur">Thirupattur </option>
                            <option value="Thoothukudi">Thoothukudi </option>
                            <option value="Tiruchirappalli">Tiruchirappalli</option>
                            <option value="Tirunelveli">Tirunelveli </option>
                            <option value="Tiruppur">Tiruppur </option>
                            <option value="Tiruvallur">Tiruvallur </option>
                            <option value="Tiruvannamalai">Tiruvannamalai </option>
                            <option value="Tiruvarur">Tiruvarur</option>
                            <option value="Vellore">Vellore </option>
                            <option value="Viluppuram">Viluppuram </option>
                            <option value="Virudhunagar">Virudhunagar </option>
                            <option value="Others">Others</option>
                        </select>
                        <span id="namelocparentdist"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect3">State</label>
                        <select class="form-control" id="exampleFormControlSelect3" name="state" onmouseout="passstatename()">
                          <option value="select">Select</option>
                          <option value="Tamil Nadu">Tamil Nadu</option>
                          <option value="Andhra Pradesh">Andhra Pradesh</option>
                          <option value="Telangana">Telangana</option>
                          <option value="Karnataka">Karnataka</option>
                          <option value="Others">Others</option>
                        </select>
                        <span id="namelocparentstate"></span>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputName">Pincode</label>
                        <input type="text" class="form-control" id="exampleInputName8" name="pincode" onmouseout="passpinname()" placeholder="Pincode"  minlength="6" maxlength="6" required oninvalid="this.setCustomValidity('number must be  6 digits')" onchange="this.setCustomValidity('')">
                      </div>
                      <div class="form-group">From where you filled the Application form ?</div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio5" name="registered" value="Home" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio5" >Home</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio6" name="registered" value="Browsing Center" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio6">Browsing Center</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio7" name="registered" value="Velammal Institute Of Technology" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio7">Velammal Institute Of Technology</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio8" name="registered" value="Others" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio8">Others</label>
                      </div><br>
                      <div class="form-group">Select Type</div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio9" name="choice" class="custom-control-input" value="Regular">
                        <label class="custom-control-label" for="customRadio9" >B.E/B.TECH (REGULAR)</label>
                      </div>
                      <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio10" name="choice" class="custom-control-input" value="Lateral">
                        <label class="custom-control-label" for="customRadio10">B.E/B.TECH (LATERAL)</label>
                      </div><br>
                      <div class="form-group">
                          <b><label for="exampleFormControlFile1">Upload Your Passport Size Photo</label></b>
                        <input type="file" class="form-control-file" id="exampleFormControlFile1"  name="filename" >
                      </div>
                      <div class="form-group">
                        <h4 style="text-align: center;">Course Preference</h4>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect4">First Preference</label>
                        <select class="form-control" id="exampleFormControlSelect4" name="fpre">
                          <option value="select" style="color: black">First Preference</option>
                          <option value="IT" style="color: black">IT</option>
                          <option value="CSE" style="color: black">CSE</option>
                          <option value="MECH" style="color: black">MECH</option>
                          <option value="EEE" style="color: black">EEE</option>
                          <option value="ECE" style="color: black">ECE</option>
                        </select>
                      </div>
                      <div class="form-group">
                        <label for="exampleFormControlSelect5">Second Preference</label>
                        <select class="form-control" id="exampleFormControlSelect5" name="spre">
                          <option value="select" style="color: black">Second Preference</option>
                          <option value="IT" style="color: black">IT</option>
                          <option value="CSE" style="color: black">CSE</option>
                          <option value="MECH" style="color: black">MECH</option>
                          <option value="EEE" style="color: black">EEE</option>
                          <option value="ECE" style="color: black">ECE</option>
                        </select>
                      </div><br>
                      <center><button type="submit" class="btn btn-lg  btn-outline-primary" id="submit" >Next >></button></center>
                  </form>
                </div>
            </section>
        </section>

    </section>
<script type="text/javascript">
function Upload() {
    //Get reference of FileUpload.
    var fileUpload = document.getElementById("exampleFormControlFile1");
 
    //Check whether the file is valid Image.
    var regex = new RegExp("([a-zA-Z0-9\s_\\.\-:])+(.jpg|.png|.gif)$");
    if (regex.test(fileUpload.value.toLowerCase())) {
 
        //Check whether HTML5 is supported.
        if (typeof (fileUpload.files) != "undefined") {
            //Initiate the FileReader object.
            var reader = new FileReader();
            //Read the contents of Image File.
            reader.readAsDataURL(fileUpload.files[0]);
            reader.onload = function (e) {
                //Initiate the JavaScript Image object.
                var image = new Image();
 
                //Set the Base64 string return from FileReader as source.
                image.src = e.target.result;
                       
                //Validate the File Height and Width.
                image.onload = function () {
                    var height = this.height;
                    var width = this.width;
                    if (height > 500 || width > 500) {
                        alert("Height and Width must not exceed 100px.");
                        return false;
                    }
                    alert("Uploaded image has valid Height and Width.");
                    return true;
                };
 
            }
        } else {
            alert("This browser does not support HTML5.");
            return false;
        }
    } else {
        alert("Please select a valid Image file.");
        return false;
    }
}
</script>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    
</body>

</html>
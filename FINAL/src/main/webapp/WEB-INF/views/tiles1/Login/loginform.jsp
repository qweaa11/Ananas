<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String ctxPath = request.getContextPath(); %>

<style type="text/css">

.btnContactSubmit
{
    width: 30%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
    margin-right: 6%;
    background-color: white;
    color: blue;
    margin-top: 4%;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.text-align{
    margin-top: -3%;
    margin-bottom: -9%;

    padding: 10%;
    margin-left: 30%;
}
.form-new{
    margin-right: 22%;
    margin-left: 20%;
}
.register-heading{
    margin-left: 21%;
    margin-bottom: 10%;
    color: #e9ecef;
}
.register-heading h1{
    margin-left: 21%;
    margin-bottom: 10%;
    color: #e9ecef;
}
.btnLoginSubmit{
    border: none;
    padding: 2%;
    width: 25%;
    cursor: pointer;
    background: #29abe2;
    color: #fff;
}
.btnForgetPwd{
    cursor: pointer;
    margin-right: 5%;
    color: #f8f9fa;
}
.btnForgetUserid{
    cursor: pointer;
    margin-right: 5%;
    color: #f8f9fa;
}
.register{
    background: #99ccff;
    margin-top: 3%;
    padding: 3%;
    border-radius: 2.5rem;
}
.nav-tabs .nav-link{
    border: 1px solid transparent;
    border-top-left-radius: .25rem;
    border-top-right-radius: .25rem;
    color: white;
}	


	
</style>

 <!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  -->
<!------ Include the above in your HEAD tag ---------->



<script type="text/javascript">
 
     $(document).ready(function(){
    	 
    	 $("#btnLOGIN").click(function() {
    		 func_Login();
    	 }); // end of $("#btnLOGIN").click();-----------------------
    	 
    	 $("#pwd").keydown(function(event){
  			
  			if(event.keyCode == 13) { // 엔터를 했을 경우
  				func_Login();
  			}
    	 }); // end of $("#pwd").keydown();-----------------------	
    	 
    }); // end of $(document).ready()---------------------------	 

    
    function func_Login() {
    			 
		 var userid = $("#userid").val(); 
		 var pwd = $("#pwd").val(); 
		
		 if(userid.trim()=="") {
		 	 alert("아이디를 입력하세요!!");
			 $("#userid").val(""); 
			 $("#userid").focus();
			 return;
		 }
		
		 if(pwd.trim()=="") {
			 alert("비밀번호를 입력하세요!!");
			 $("#pwd").val(""); 
			 $("#pwd").focus();
			 return;
		 }

		 var frm = document.loginFrm;
		 
		 frm.action = "<%=ctxPath%>/loginEnd.ana";
		 frm.method = "POST";
		 frm.submit();
		 
    } // end of function func_Login(event)-----------------------------
     
</script>

<html>
     <head>
       <!--  <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"> -->
        <script src="Styles/jquery-3.3.1.min.js" type="text/javascript"></script>
        <script src="Styles/bootstrap-4.1.0.min.js" type="text/javascript"></script>
        <link href="Styles/bootstrap-4.1.0.min.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/MainStyle.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head> 
    <body>
        <?php
        session_start();
        ?>
        <div class="container register">
            <div class="row">
                <div class="col-md-12">
                    <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Login Form 1</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Login Form 2</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active text-align form-new" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <h3 class="register-heading">Login Form 1</h3>
                            <div class="row register-form">
                                <div class="col-md-12">
                                    <form method="post">
                                        <div class="form-group">
                                            <input type="text" name="LGform1_user" class="form-control" placeholder="Your Userid *" value="" required=""/>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="LGform1_pwd" class="form-control" placeholder="Your Password *" value="" required=""/>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" name="LGform1" class="btnContactSubmit" id="btnLOGIN" value="Login" />
                                            <a href="ForgetUserid.php" name="userid" id="userid" class="btnForgetUserid" value="Login">Forget Userid?</a>
                                            <a href="ForgetPassword.php" name="pwd" id="pwd" class="btnForgetPwd" value="Login">Forget Password?</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade show text-align form-new" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <h3  class="register-heading">Login Form 2</h3>
                            <div class="row register-form">
                                <div class="col-md-12">
                                    <form method="post">
                                        <div class="form-group">
                                            <input type="text" name="LGform2_user" class="form-control" placeholder="Your Userid *" value="" required="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="LGform2_pwd" class="form-control" placeholder="Your Password *" value="" required=""/>
                                        </div>
                                        <div class="form-group">
                                            <input type="submit" name="LGform2" class="btnContactSubmit" id="btnLOGIN" value="Login" />
                                            <a href="ForgetUserid.php" name="userid" id="userid" class="btnForgetUserid" value="Login">Forget Userid?</a>
                                            <a href="ForgetPassword.php" name="pwd" id="pwd" class="btnForgetPwd" value="Login">Forget Password?</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>



  
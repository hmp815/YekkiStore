<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
<meta http-equiv = "Content-Type" content = "text/html " charset="UTF-8">
<meta name = "viewport" content = "width=device-width, initial-scale = 1.0">
<link rel="stylesheet" href="../css/signupstyle.css?v=1" type = "text/css">
<script src="../javascript/signUpCheck.js"></script>
</head>

<body>
<div class = "top">
    <div class = "mark">
    	<img src = "../images/yekkimark.png" alt ="mark"onclick = "javascript:location.href ='./YEKKISTORE.jsp';">
    	<span><b>YEKKI STORE</b></span>
    </div>
</div>


<form action = "./signUpPro.jsp" method = "post" name = "signupform" onsubmit = "return checkExistBlank(); ">
	<div class = "member"> 
    	<div class = "field">
  			<b>ID</b>
    		<input id = "userid" name = "id" type= "text">
    		<div class = "error" id = "iderror"></div>
    	</div>
    	
    	<div class = "field">
    		<b>Password</b>
    		<input id = "userpw" name = "pw" type = "password">
    	</div>
    	
    	<div class = "field">
    		<b>Confirm Password</b>
    		<input id = "confirmpw" name = "confpw"type = "password">
    		<div class = "error" id = "pwerror"></div>
    	</div>
    	
    	 <div class = "field">
    		<b>Name</b>
    		<input id = "username" name = "name"type = "text">
    		<div class = "error" id = "nameerror"></div>
    	</div>
    	
    	<div class = "field">
    		<b>Nickname</b>
    		<input id = "usernickname" name = "nickname"type = "text">
    		<div class = "error" id = "nicknameerror"></div>
    	</div>	
    	
    	<div class = "phone-number">
    		<b>Phone number</b>
    		<select>
    			<option value ="">kor +82</option>
    		</select>
    		<div>
    			<input type = "text" id = "userphnum" name = "pnum">
    		</div>
    		<div class = "error" id = "pnumerror"></div>
    	</div>
    	
    	<div class = "account">
    		<b>Account number</b>
    		<input name = "account" id = "useraccount" type = "text">
    		<div class = "error" id = "accounterror"></div>
    	</div>
    	
    	
    	<div class = "address">
    	<b>Address</b>
    	<div>
    		 <select name = "city">
    		 	<option value ="???????????????">???????????????</option>
    		 </select>
 
    		<select name ="gu">
    			<option value ="?????????">?????????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="??????">??????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="????????????">????????????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="????????????">????????????</option>
    			<option value ="??????">??????</option>
    			<option value ="?????????">?????????</option>
    			<option value ="??????">??????</option>
    	    </select>
    			<input type = "text" id = "useraddress" name ="gil">
    			<div class = "error" id = "addresserror"></div>
      </div>
    </div>
    
    				
    	<input id = "sub" type = "submit" value = "Sign up">
   
    	<div class = "footer">
    		<div>
    			<a href = "#none"> ????????????</a>
    			<a href = "#none"> ????????????????????????</a>
    			<a href = "#none"> ????????????</a>
    		<div>
    		<span>???????????? : H&Y</span>
    	    </div>
    	</div>
      </div>
 </div>
 </form>
 
</body>
</html>
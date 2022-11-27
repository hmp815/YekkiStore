<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<meta charset="UTF-8">
		<link rel="stylesheet" href="../css/categorystyle.css?v=5 type = "text/css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
		<script>
			function sendParam(index){
				window.location.href = "./subMenuPro.jsp?index = " + index;
			}
		</script>
    </head>
    
   <body>
  
   <form action = "./subMenuPro.jsp" method = "post">
    <div class = "leftCategory">
    	<ul class ="depth1">
    		<li>
    			<button type = "button" >Products</button>
    			<ul class = "subMenu">
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "0">전체</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "1">의류</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "2">가전제품</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "3">소품</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "4">악기</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "5">도서</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "6">뷰티</button></a></li>
    				<li><a class = "menuLink" ><button formtarget = "main" name = "code" value = "7">기타</button></a></li>
    			</ul>
    		</li>
    		
    		<li><a class="menuLink" href="regist.jsp" target ="main">
          		  <button type = "button" >Regist</button></a>
            </li>
            
    		<li><a class="menuLink" href="basket.jsp" target ="main">
         		  <button type = "button">Basket</button></a>
            </li>
       </ul>
       
       <!-- 검색창 박스 부분 -->   
       	<div class = "rightCategory">
    		<div class = "search-box">
        		<div class = "cell">
        			<input class = "search-txt" type = "text" placeholder = "Search">
        			<button class = "search-btn" type = "submit">
        			<i class = "fas fa-search"></i>
        			</button>
        		</div>
    		</div>
   		</div>                                         	 
     </div>
</form>                          
</body>
</html>

<!DOCTYPE html>
<html>
    <head>
		<meta name = "viewport" content = " width = device-width, initial-scale =1" >
        <meta charset="UTF-8">
        <style>
			iframe{
				position : absolute;
				display : block;
			}
        	div{
        		width : 100%;
        	}
        	body{
        		margin : 0px;
        	}
        	.header{
        		height : 10vh;
        		
        	}
        	.nav{
        		margin :0; 
        		height : 6vh;
        		width : 100vw;
        		position : sticky;
        		top :0;
        		z-index :2;   
        		 
        	}
        	.main{
        		height : 100vh;
        		z-index :1;
        	}
        	.footer{
        		height :25vh;
        		margin : 0;
        	}
        </style>
        </head>
    <body>
   		  <div class = "header">
       	  		<jsp:include page = "./top.jsp" flush = "false" />
       	  </div>
       	  <hr>
       	  <div class = "nav">
      	  		<jsp:include page = "./category.jsp" flush = "false" />
      	  </div>
      	  <div class = "main">
       	  		<iframe src = "main.jsp"  scrolling = "no"  name = "main"   style = " width : 100%; height: 100vh; border : 0px; "><hr></iframe>
       	  </div>
       	  <div class ="footer">
       	  	<jsp:include page = "./footer.jsp" flush = "false" />
       	  </div>
  
    </body>
    </html>
    
    <!-- vh값 : 1vh = 브라우저 높이 * 100분의1 -->
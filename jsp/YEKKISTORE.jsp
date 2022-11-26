<!DOCTYPE htm
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
        	.top{
        		height : 10vh;
        	}
        	.nav{
    
        		height : 6vh;
        		width : 100vw;
        		position : sticky;
        		top :0;
        		overflow : visible;
        		z-index :2;
      
        	}
        	.main{
        		height : 100vh;
        		z-index :1;
        		
        	}

        	
        	
        </style>
        </head>
    <body>
   		  <div class = "top">
       	  		<iframe src = "top.jsp"  scrolling = "no"  name = "top"   style = " width : 100%; height: 10vh; border : 0px; "><hr></iframe>
       	  </div>
       	  <hr>
       	  <div class = "nav">
      	  		<jsp:include page = "./category.jsp" flush = "false" />
      	  </div>
      	  <div class = "top">
       	  		<iframe src = "main.jsp"  scrolling = "no"  name = "main"   style = " width : 100%; height: 100vh; border : 0px; "><hr></iframe>
       	  </div>
  
    </body>
    </html>
    
    <!-- vh값 : 1vh = 브라우저 높이 * 100분의1 -->
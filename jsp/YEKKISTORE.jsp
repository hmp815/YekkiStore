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
        		position : relative
        		width : 100%;
        	}
        	body{
        		margin : 0px;
        	}
        	.top{
        		height : 10vh;
        	}
        	.category{
        		height : 6vh;
        		position : sticky;
        		top :0;
        		z-index :0;
        		overflow : visible;
        	}
        	.main{
        		height : 100vh;
        		z-index :0;
        	}
        	.category>.ca:hover{
        		z-index : 1;
        	}
        	.category>.ca:hover +.main{
        		z-index :0;
        	}
        	       
        	.main:hover{
        		z-index :1;
        	}
        	.main:hover + .category{
        		z-index :0;
        	}
        	
        	
        </style>
        </head>
    <body>
   		  <div class = "top">
       	  		<iframe src = "top.jsp"  scrolling = "no"  name = "top"   style = " width : 100%; height: 9vh; border : 0px; "><hr></iframe>
       	  </div>
       	  <hr>
       	  <div class = "category">
      	  		<iframe src = "category.jsp"  name = "category" class="ca"  scrolling = "no" style = " width : 100%; height: 50vh; border : 0px; "></iframe>
      	  </div>
      	  <div class = "main">
     	  		<iframe src = "main.jsp" name = "main" class = "ma" scrolling = "no"  style = "width : 100%; height:100vh; border :0px;  "></iframe>
     	  </div>
    </body>
    </html>
    
    <!-- vh값 : 1vh = 브라우저 높이 * 100분의1 -->
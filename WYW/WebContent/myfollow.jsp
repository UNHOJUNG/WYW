<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
<title>No Name</title>
<!-- Style -->
	<style type="text/css">
		#s0{ float: left; width: 34% }
		#s1{ float: left; width: 33%; padding: 25px 0px 25px 0px }
		#s2{ float: left; width: 100% }
		#s4{ padding: 8px 0px 0px 0px;
			 margin-left: 25px;
			}
			
		#ask1{ 
			border: 2px solid black;
			background-color: #fffbc1; 
			font-weight: bold; 
			color: #3f385a;
			}
		#pf999{border-bottom: 1px dotted;
		   transform: translate(0px, 130px);
		}
		listform{
        padding: 30px;
        font-size: 50px;
        font-weight: bold;
        text-align: center;
        background-color: #ffffff;
        opacity: 0.5;
      }
	</style>
<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.poptrox.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/main.js"></script>
</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

<!-- Header -->
<header>
			<div id="s0">
				<a>
					<img alt="WYW_날씨를 입다" src="images/logo/logo_wyw_yellow.png" width="200" height="100">
				</a>
			</div>
			<div id="s1"><input type="text"></div>
				<div id="s1">
					<input id="ask1" type="button" value="검색" onclick="">
						<a href="#" class="label">
							<img id="s4" class="icons" src="images/icon/setting.png" alt="setting" align="right" width="30px">
							<img id="s4" class="icons" src="images/icon/user.png" alt="user" align="right" width="30px">
							<img id="s4" class="icons" src="images/icon/up.png" alt="upload" align="right" width="30px">
						</a>
				</div>
</header>

	<div id="pf999">&nbsp;</div>

<!-- Main -->
	<div id="list">
		
	
	</div>

<!-- Footer -->
	<footer id="footer">
		<p>&copy; Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
	</footer>

</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
	<head>
		<title>StoryPage</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<!-- Style -->
		<style type="text/css">
			#s0{ float: left; width: 34% }
			#s1{ float: left; width: 33%; padding: 25px 0px 25px 0px }
			#s2{ float: left; width: 100%; height: 50px; }
			#s4{ padding: 8px 0px 0px 0px; margin-left: 25px; }
			#s6{ float: left; }
			#ask1{ 
				border: 2px solid black;
				background-color: #fffbc1; 
				font-weight: bold; 
				color: #3f385a;
			}
			a{ text-decoration: none }
			.avatacon {
			    width: 30px; 
			    height: 30px;
			    object-fit: cover;
			    object-position: top;
			    border-radius: 50%;
			}
			#select {
				font-size: 15px;
				background: #ff6382;
				vertical-align: middle; 
				text-align-last: center;
				color: #d3d3d3;
			}
		</style>
	<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.poptrox.min.js"></script>
		<script src="assets/js/skel.min.js"></script>
		<script src="assets/js/main.js"></script>
		<script type="text/javascript">
			window.onload = function(){
				var h = document.getElementById('hidemenu');
				var op = document.getElementById('viewmenu');
				var opp = document.getElementById('menu');
				
				op.style.display = 'none';
				opp.style.display = 'none';
				
				h.onclick = function(){
					h.style.display = 'none';
					op.style.display = '';
					opp.style.display = '';
				}
				
				op.onclick = function(){
					op.style.display = 'none';
					opp.style.display = 'none';
					h.style.display = '';
				}
			}
		</script>
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header>
						<div id="s0">
							<a href="#">
								<img alt="WYW_????????? ??????" src="images/logo/logo_wyw_yellow.png" width="200" height="100" onclick="location.href='mainController.do?command=mainpage'">
							</a>
						</div>
						<div id="s1"></div>
						<div id="s1">
							<a href="#" class="label">
								<img id="s4" class="icons" src="images/icon/setting.png" alt="setting" align="right" width="30px">
								<img id="s4" class="icons" src="images/icon/user.png" alt="user" align="right" width="30px" onclick="location.href='mainController.do?command=mypage'">
								<img id="s4" class="icons" src="images/icon/up.png" alt="upload" align="right" width="30px" onclick="location.href='mainController.do?command=StoryPage'">
								<img id="s4" class="icons" src="images/icon/search.png" alt="search" align="right" width="30px" onclick="location.href='mypageController.do?command=searchpage'">
							</a>
						</div>
						<div id="s2"></div><!-- ?????? div ??? ????????? div??? ????????? ?????? -->
					</header>

				<!-- Main -->
					<section>
							<div style="position: absolute;">
								<div style="position: relative;top: 160px; left: 385px;">
									<a onclick="location.href='mainController.do?command=mypage'">
								    	<img class="avatacon" src="images/avatar.jpg">
								    	<strong>&nbsp;&nbsp;${dto.userid }</strong>
							    	</a>
								</div>
								<div style="position: relative;top: 125px; left: 690px;">
									<img id="hidemenu" alt="menu" src="images/icon/menu.png" width="30px">
									<img id="viewmenu" alt="menu" src="images/icon/overmenu.png" width="30px">								
								</div>
								<div id="menu" style="position: relative; top: 83px; left: 728px; background-color: #fffbc1; color: black; font-weight: bold;">
									<form method="post" action="UploadController" enctype="multipart/form-data">
										<table border="1">
											<col width="250">
											<tr>
												<td align="center">
													<select id="select" name="city">
														<option value="">?????? ?????? ????????? ??????????????????.</option>
														<option value="seoul">???????????????</option>
							                            <option value="incheon">???????????????</option>
							                            <option value="daejeon">???????????????</option>
							                            <option value="gwangju">???????????????</option>
							                            <option value="daegu">???????????????</option>
							                            <option value="ulsan">???????????????</option>
							                            <option value="busan">???????????????</option>
							                            <option value="gyeonggi-do">?????????</option>
							                            <option value="gangwon-do">?????????</option>
							                            <option value="chungcheongbuk-do">????????????</option>
							                            <option value="chungcheongnam-do">????????????</option>
							                            <option value="jeollabuk-do">????????????</option>
							                            <option value="jeollanam-do">????????????</option>
							                            <option value="gyeongsangbuk-do">????????????</option>
							                            <option value="gyeongsangnam-do">????????????</option>
							                            <option value="jeju-do">?????????</option>
													</select>
												</td>
											</tr>
											<tr>
												<td align="center">
													<input name="userid" id="select" type="text" value=${dto.userid } readonly>
													<input name="userno" id="select" type="hidden" value=${dto.userno }>
												</td>
											</tr>
											<tr>
												<td align="center">
													<input name="title" id="select" type="text" value="????????? ????????? ?????????" onfocus="this.value='';return true;">
												</td>
											</tr>
											<tr>
												<td align="center">
													<input name="content" id="select" type="text" value="????????? ????????? ?????????" onfocus="this.value='';return true;">
												</td>
											</tr>
											<tr>
												<td align="center">
													<input name="file" type="file" value="?????? ??????" style="color: black;" accept=".jpg, .jpeg, .png, .gif, .bmp; images/storyimg/*; capture=camera"/>
												</td>
											</tr>
											<tr>
												<td align="center"><input type="submit" style="width: 100%; height: 100%;" value="?????? ?????????"></td>
											</tr>
										</table>
									</form>
								</div>
							</div>
						    <div id="header">
						    	<img alt="img" src="images/thumbs/01.jpg"/>
						    </div>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<p>&copy; Untitled. All rights reserved. Design: <a href="http://templated.co">TEMPLATED</a>. Demo Images: <a href="http://unsplash.com">Unsplash</a>.</p>
					</footer>

			</div>

	</body>
</html>
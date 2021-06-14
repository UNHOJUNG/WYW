<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>프로필편집</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="assets/css/main.css" />

<!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.poptrox.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/main.js"></script>

<style type="text/css">
    .a1{
        margin : 10px;
    }
    #t1 {
       margin-left : 10%;
       margin-top : 35px;
    }
    #t2{
        float : right;
        margin-top : 50px;
        margin-right : 15%;
    }
    #t3{
        padding : 20px 0px 0px 380px;
    }
    section{
        height: 500px;
    }
    #left{   
        width: 10%;
        height: 85%;
        float: left;
        margin-top:5%;
        margin-left:12.5%;
        
    }
    #right{
        width: 60%;
        height: 85%;
        float: right;
        margin-top:5%;
        margin-right:12.5%;
         background-color: rgba(255, 255, 255, 0.185);
        border-radius : 30px 30px 30px 30px;
    }
    #btn{ 
        width:  131px;
        height: 40px;
        background-color: rgba(255, 255, 255, 0.185);
        border-radius : 10px 10px 10px 10px;
    }
    form {
        padding: 0px 0px 40px 325px;
        font-size: 14px;
    }
    
</style>    
</head>
<body>
    <header class="a1">
            <div id="t1">
                <img alt="WYW_날씨를 입다"
                    src="images/logo_wyw_yellow.png" width="200" height="100">       
                    <div id="t2">
                       <a href=""><img alt="home" src="images/button/home.png" width="30" height="30"></a>
                        <a href=""><img alt="map" src="images/button/map.png" width="30" height="30"></a>
                        <a href=""><img alt="set" src="images/button/set.png" width="30" height="30"></a>
                        <a href=""><img alt="user" src="images/button/user.png" width="30" height="30"></a>
                    </div>
            </div>
    </header>

    <section class="a1">
        <article class="a1" id="left">
            <button onclick="location.href = 'UserInfoForm.jsp'" id="btn">회원정보수정</button>
            <button onclick="location.href = 'DeleteForm.jsp'" id="btn">회원탈퇴</button>
            <button onclick="location.href = 'NoticeForm.jsp'" id="btn">공지사항</button>
        </article>
        <article class="a1" id="right">
            <form>
              
            </form>   
        </article>
        
    </section>
  
    <footer class="a1">
        <p>&copy; Untitled. All rights reserved. Design: 
            <a href="http://templated.co">TEMPLATED</a>. Demo Images: 
            <a href="http://unsplash.com">Unsplash</a>.</p>
    </footer>
    
</body>
</html>
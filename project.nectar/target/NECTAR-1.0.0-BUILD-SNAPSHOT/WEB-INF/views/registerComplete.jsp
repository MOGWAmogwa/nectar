<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Nectar</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
  <!-- CSS -->
  <link rel="stylesheet" href="<c:url value='/css/navbarHome.css'/>"/>
  <link rel="stylesheet" href="<c:url value='/css/successPage.css'/>"/>
  <%--  script --%>
  <script src="https://kit.fontawesome.com/43ede2213f.js" crossorigin="anonymous"></script>


  <style>
    section#navbar.success {
      z-index: 2;
      width: 100vw;
      background-color: #e9bea2;
      display: flex;
      justify-content: space-between;
      position: relative;
    }
  </style>

</head>
<body>

<%--NAVBAR--%>

<section id="navbar" class="success">
  <div class="logo">
    <a href="<c:url value='/'/>"> <img src="<c:url value='/images/nectarLogo.png'/>" alt="" class="logo__img"/></a>
  </div>
  <ul class="menu">
    <li class="menu item">
      <a href="<c:url value='/hotdeal/list'/>">HOTDEAL</a>
    </li>
    <li class="menu item">
      <a href="<c:url value='/restr/list'/>">맛집리스트</a>
    </li>
    <li class="menu item">
      <security:authorize access="isAnonymous()">
        <a href="<c:url value='/login/login'/>"><span> | &nbsp;  로그인</span><i class="fa-solid fa-user"></i></a>
      </security:authorize>
      <security:authorize access="hasRole('USER')">
        <div>
          <a href="<c:url value='/login/logout'/>"><span> | &nbsp; 로그아웃</span></a>
          <a href="<c:url value='/mypage/user/main'/>"><i class="fa-solid fa-user"></i></a>
        </div>
      </security:authorize>
      <security:authorize access="hasRole('BIZ')">
        <div>
          <a href="<c:url value='/login/logout'/>"><span> | &nbsp; 로그아웃</span></a>
          <a href="<c:url value='/mypage/biz/main'/>"><i class="fa-solid fa-user-tie"></i></a>
        </div>

      </security:authorize>
      <security:authorize access="hasRole('ADMIN')">
        <div>
          <a href="<c:url value='/login/logout'/>"><span> | &nbsp; 로그아웃</span></a>
          <a href="<c:url value='/mypage/admin/main'/>"><i class="fa-solid fa-user-secret"></i></a>
        </div>
      </security:authorize>
    </li>
  </ul>
</section>


<section id="info">
  <div class="box">
    <div class="box_item">
      <!-- <i class="fa-solid fa-circle-check"></i> -->
      <div class="emoji">✔️</div>
    </div>
    <h1>회원가입이 완료되었습니다!</h1>
    <p>
      NECTAR 의 멤버가 되신 것을 축하드립니다.
    </p>
  <br/>
    <button style="background-color: transparent; border: 0 ; font-weight: bold ; font-size: 16px" > <a href="<c:url value='/login/login'/>"> 로그인 페이지로 이동하기</a></button>

  </div>
</section>

</body>
</html>

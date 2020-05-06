<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${ contextPath }/js/jquery-3.4.1.min.js"></script>
<title>Insert title here</title>
<style>
   #welcome{background: black; text-shadow: -1px -1px 0 red, 1px -1px 0 white, -1px 1px 0 white, 1px 1px 0 white;}
   .login-area {height:100px;}
   .btn-login {height:50px;}
   .loginTable{text-align: right; float: right;}
   #logoutBtns>a{text-decoration: none; color: black;}
   #logoutBtns>a:hover{text-decoration: underline; font-weight: bold;}
</style>
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.request.contextPath }" scope="application"></c:set>
	<h1 id="welcome" align="center">Welcome to MyBatis World!!</h1>
	<br>
	
	
	<!-- ----------------------1. 회원 관련 서비스 -------------------------- -->
	<div class="login-area">     
		<!-- 1_1. 로그인 관련 폼 만들기 -->
		<form action="${ contextPath }/login.me" method="post">
			<table class="loginTable">
				<tr>
					<td>아이디 : </td>
					<td>
				<input type="text" name="userId">
					</td>
					<td rowspan="2">
						<button id="login-btn" class="btn btn-login">로그인</button>
					</td>
				</tr>
				<tr> 
					<td>비밀번호 : </td>
					<td>
						<input type="password" name="userPwd">
					</td>
				</tr>
				<tr>
					<td colspan="3" id="logoutBtns">
						<a href="${ contextPath }/views/member/memberInsertForm.jsp">회원가입</a>
						<a href="${ contextPath }/views/member/findMemberForm.jsp">아이디/비밀번호 찾기</a>
					</td>
				</tr>
			</table>
		</form>
	</div>
	
	<script>
		function home(){
			location.href="index.jsp";
		}
	</script>
</body>
</html>
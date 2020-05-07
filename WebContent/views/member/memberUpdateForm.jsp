<%@page import="java.util.Calendar"%>
<%@page import="java.util.GregorianCalendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#infoTable{margin: auto;}
	.input-standard{border: 0; outline: none;}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<h1 align="center">내 정보 수정</h1>
	<form action="${ contextPath }/mupdate.me" method="post">
		<table id="infoTable">
			<tr>
				<td width="100px">* 아이디</td>
				<td><input type="text" class="input-standard" name="userId" value="${ loginUser.userId }" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>* 이름</td>
				<td><input type="text" class="input-standard" value="${ param.userName }" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>* 닉네임</td>
				<td><input type="text" class="input-standard" value="${ param.nickName }" readonly="readonly"/></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;이메일</td>
				<td><input type="text" name="email" value="${ param.email }" /></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;생년월일</td>
				<td>
					<% 
						String birthDay = request.getParameter("birthDay");
						String year = birthDay.substring(0, 4);
						String month = birthDay.substring(5, 7);
						String date = birthDay.substring(8);
					%>
					<select name="year">
						<c:forEach begin="<%= new GregorianCalendar().get(Calendar.YEAR) - 100 %>" end="<%= new GregorianCalendar().get(Calendar.YEAR) %>" var="i">
							<option value="${ i }">${ i }</option>
						</c:forEach>
					</select>
					<select name="month">
						<c:forEach begin="1" end="12" var="i">
							<option value="${ i }">${ i }</option>
						</c:forEach>
					</select>
					<select name="date">
						<c:forEach begin="1" end="31" var="i">
							<option value="${ i }">${ i }</option>
						</c:forEach>
					</select>
					<script>
						var year = <%= year %>
						var month = <%= month %>
						var date = <%= date %>
						$('select[name=year]').val(year).prop("selected", true);
						$('select[name=month]').val(month).prop("selected", true);
						$('select[name=date]').val(date).prop("selected", true);
					</script>
				</td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;전화번호</td>
				<td><input type="text" name="phone" value="${ param.phone }" /></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;주소</td>
				<td><input type="text" name="address" value="${ param.address }" /></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;성별</td>
				<td>
					<input id="M" type="radio" name="gender" value="M" /><label for="M">남자</label>
					<input id="F" type="radio" name="gender" value="F" /><label for="F">여자</label>
					<c:choose>
						<c:when test="${ param.gender == '남자' }">
							<script>
								$('#M').attr("checked", "checked")
							</script>
						</c:when>
						<c:otherwise>
							<script>
								$('#F').attr("checked", "checked")
							</script>							
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div align="center">
						<br>
						<input type="submit" value="수정">
						<button type="button" onclick="location.href='javascript:history.go(-1)'">취소</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
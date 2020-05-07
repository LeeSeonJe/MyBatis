<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h1 align="center">내 정보 보기</h1>
	<form action="${ contextPath }/views/member/memberUpdateForm.jsp" method="post">
		<table id="infoTable">
			<tr>
				<td width="100px">* 아이디</td>
				<td><input type="text" class="input-standard" value="${ m.userId }" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>* 이름</td>
				<td><input type="text" class="input-standard" name="userName" value="${ m.userName }"/></td>
			</tr>
			<tr>
				<td>* 닉네임</td>
				<td><input type="text" class="input-standard" name="nickName" value="${ m.nickName }"/></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;이메일</td>
				<td><input type="text" class="input-standard" name="email" value="${ m.email }"/></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;생년월일</td>
				<td><input type="text" class="input-standard" name="birthDay" value="${ m.birthDay }"/></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;전화번호</td>
				<td><input type="text" class="input-standard" name="phone" value="${ m.phone }"/></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;주소</td>
				<td><input type="text" class="input-standard" name="address" value="${ m.address }"/></td>
			</tr>
			<tr>
				<td> &nbsp;&nbsp;성별</td>
				<td><!-- 남자/여자로 출력 -->
					<c:if test="${ m.gender == 'M' }">
						<input type="text" class="input-standard" name="gender" value="남자"/>
					</c:if>
					<c:if test="${ m.gender == 'F' }">
						<input type="text" class="input-standard" name="gender" value="여자"/>
					</c:if>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div align="center">
						<br>
						<button type="button" onclick="location.href='${ contextPath }/views/member/memberPwdUpdateForm.jsp'">비밀번호 변경</button>
						<input type="submit" value="내 정보 수정">
						<button type="button" onclick="deleteMember();">회원 탈퇴</button>
					</div>
				</td>
			</tr>
		</table>
	</form>
	
	<script>
		function deleteMember() {
			if (confirm("정말 삭제하시겠습니까??") == true){    //확인
			    location.href="<%= request.getContextPath()%>/delete.me";
			} else {   //취소
			    return;
			}
		}
	</script>
</body>
</html>
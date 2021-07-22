<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook3/add" method="post">
		<table border="1">
			<colgroup>
				<col style="width: 40px;">
				<col style="width: 120px;">
				<col style="width: 80px;">
				<col style="width: 120px;">
			</colgroup>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="pw" value=""></td>
			</tr>
			<tr>
				<td colspan="4" rowspan="3" height="120px"><input type="text" name="content" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">등록</button></td>
			</tr>

		</table>
	</form>
	<c:forEach items="${gList}" var="gVo">

		<table border="1">
			<colgroup>
				<col style="width: 30px;">
				<col style="width: 90px;">
				<col style="width: 300px;">
				<col style="width: 60px;">
			</colgroup>
			<tr>
				<td>${gVo.no}</td>
				<td>${gVo.name}</td>
				<td>${gVo.date }</td>
				<td><a href="/guestbook3/deleteForm?no=${gVo.no }">[삭제]</a></td>
			</tr>
			<tr>
				<td colspan="4">${gVo.content }</td>
			</tr>

		</table>

		<br>

	</c:forEach>

</body>
</html>
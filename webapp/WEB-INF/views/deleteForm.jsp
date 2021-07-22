<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook3/delete" method="post">
		비밀번호: <input type="password" name="pw" value=""> <input type="hidden" name="no"
			value="${no}"
		>
		<button type="submit">등록</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/css/guestbook.css" />
<meta charset="UTF-8">
<title>My Homepage</title>
</head>
<body>

	<div id="container">
		<jsp:include page="/WEB-INF/views/includes/header.jsp" />
		<jsp:include page="/WEB-INF/views/includes/navigation.jsp" />

		<div id="wrapper">
			<div id="content">
				<form action="<c:url value="/guestbook/write" />" method="POST">
					<table border=1 width=500>
						<tr>
							<td>이름</td>
							<td><input type="text" name="name" ></td>
							<td>비밀번호</td>
							<td><input type="password" name="password"></td>
						</tr>
						<tr>
							<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
						</tr>
						<tr>
							<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
						</tr>
					</table>
				</form>
				<br />
				<c:forEach items="${list }" var="vo" varStatus="status">
					<!-- 게시물 Loop -->
					<table width=510 border=1>
						<tr>
							<td>[${vo.no }]</td>
							<td>${vo.name }</td>
							<td>${vo.regDate }</td>
							<td>
								<!-- 수정 --> <a href="<c:url value="/guestbook/delete/${vo.no}" />">
									삭제 </a>
							</td>
						</tr>
						<tr>
							<td colspan=4>${vo.content }</td>
						</tr>
					</table>
				</c:forEach>
			</div>
		</div>
		<%@ include file="/WEB-INF/views/includes/footer.jsp"%>
	</div>
</body>승균
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:import url="/WEB-INF/fragment/navbar.jsp"/>

<h2>${board.id}번 게시물 수정</h2>

<form method="post">
    <div>제목
        <input type="text" name="title" value="${board.title}">
    </div>
    <div>본문
        <textarea name="content" id="" cols="30" rows="10">${board.content}</textarea>
    </div>
    <div>
        작성자
        <input type="text" name="writer" value="${board.writer}">
    </div>
    <div>
        <button>저장</button>
    </div>
</form>
</body>
</html>

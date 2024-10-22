<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>새 게시물 작성</h2>
<form method="post">
    <div>제목
        <input type="text" name="title">
    </div>
    <div>본문
        <textarea name="content" id="" cols="30" rows="10"></textarea>
    </div>
    <div>작성자
        <input type="text" name="writer">
    </div>
    <div>
        <button>저장</button>
    </div>
</form>
</body>
</html>

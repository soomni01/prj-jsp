<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
          integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>

<c:import url="/WEB-INF/fragment/navbar.jsp">
    <c:param name="active" value="list"/>
</c:import>
<div class="container">
    <div class="row">
        <div class="col">
            <h2 class="my-3">게시물 목록</h2>
            <table class="table">
                <thead>
                <tr>
                    <th>
                        <i class="fa-solid fa-hashtag"></i>
                    </th>
                    <th class="w-50">제목</th>
                    <th>
                        <i class="fa-solid fa-user"></i>
                    </th>
                    <th class="d-none d-lg-table-cell">
                        <i class="fa-regular fa-calendar-days"></i>
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${boardList}" var="board">
                    <tr>
                        <td>${board.id}</td>
                        <td>
                            <a href="/board/view?id=${board.id}">
                                    ${board.title}
                            </a>
                        </td>
                        <td>${board.writer}</td>
                        <td class="d-none d-lg-table-cell">${board.inserted}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


<%-- 검색 form --%>
<%-- TODO: CSS 다듬기--%>
<div class="container">
    <form class="row justify-content-center">
        <div class="col-2 col-lg-1">
            <select name="searchTarget" id="select1" class="form-select">
                <option value="all">전체</option>
                <option value="title">제목</option>
                <option value="content">본문</option>
                <option value="writer">작성자</option>
            </select>
        </div>
        <div class="col-4 col-lg-2">
            <input type="text" class="form-control" name="keyword">
        </div>
        <div class="col-1">
            <button class="btn btn-outline-primary h-100">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </div>
    </form>
</div>

<<%-- bootstrap pagination --%>
<nav class="mt-4">
    <ul class="pagination justify-content-center">
        <c:if test="${pageInfo.hasPrevPage}">
            <li class="page-item">
                <a href="/board/list?page=${pageInfo.prevPageNumber}" class="page-link">
                    &laquo;
                </a>
            </li>
        </c:if>
        <c:forEach begin="${pageInfo.leftPageNumber}"
                   end="${pageInfo.rightPageNumber}"
                   var="pageNumber">
            <li class="page-item ${pageInfo.currentPageNumber == pageNumber ? 'active' : ''}">
                <a href="/board/list?page=${pageNumber}" class="page-link">${pageNumber}</a>
            </li>
        </c:forEach>
        <c:if test="${pageInfo.hasNextPage}">
            <li class="page-item">
                <a href="/board/list?page=${pageInfo.nextPageNumber}" class="page-link">
                    &raquo;
                </a>
            </li>
        </c:if>
    </ul>
</nav>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>
</html>
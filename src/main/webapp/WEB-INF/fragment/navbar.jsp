<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <a class="navbar-brand" href="/board/list">JSP게시판</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link ${param.active == 'list' ? 'active' : ''}" href="/board/list">
                            <i class="fa-solid fa-list"></i>
                            목록
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${param.active == 'new' ? 'active' : ''}" href="/board/new">
                            <i class="fa-solid fa-file-pen"></i>
                            작성
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <c:if test="${not empty message}">
        <style>
            h5 {
                padding: 10px;
            }

            .success {
                background-color: skyblue;
            }

            .warning {
                background-color: darkorange;
            }

        </style>
        <div class="${message.type}">
            <h5>
                    ${message.text}
            </h5>
        </div>
    </c:if>
</div>
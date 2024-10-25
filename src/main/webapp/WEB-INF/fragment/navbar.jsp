<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<div class="mb-4">
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
                    <li class="nav-item">
                        <a class="nav-link ${param.active == 'signup' ? 'active' : ''}" href="/member/signup">
                            <i class="fa-solid fa-user-plus"></i>
                            회원가입
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${param.active == 'list' ? 'active' : ''}" href="/member/list">
                            <i class="fa-regular fa-address-book"></i>
                            회원목록
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${param.active == 'login' ? 'active' : ''}" href="/member/login">
                            <i class="fa-solid fa-arrow-right-to-bracket"></i>
                            로그인
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>


<c:if test="${not empty message}">
    <div class="container mb-4">
        <div class="row justify-content-center">
            <div class="col col-md-8 col-xl-6">
                <div class="alert alert-${message.type} alert-dismissible fade show">
                        ${message.text}
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>

                </div>
            </div>
        </div>
    </div>
</c:if>

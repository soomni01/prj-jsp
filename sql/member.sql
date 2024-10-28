USE jsp;

CREATE TABLE member
(
    id          VARCHAR(50) PRIMARY KEY,
    password    VARCHAR(100) NOT NULL,
    nick_name   VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(2000),
    inserted    DATETIME     NOT NULL DEFAULT NOW()
);

SELECT *
FROM member;

# 권한 테이블
CREATE TABLE auth
(
    id   VARCHAR(50) REFERENCES member (id),
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id, name)
);
# admin, bdmin
INSERT INTO auth
    (id, name)
VALUES ('admin', 'admin'),
       ('bdmin', 'admin');

SELECT *
FROM board;
SELECT *
FROM member;

# 게시물의 writer 값을 member에 있는 값으로 update
UPDATE board
SET writer = (SELECT id FROM member LIMIT 1)
WHERE id > 0;
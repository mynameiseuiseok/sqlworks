-- customer 테이블(고객번호, 이름, 주소, 전화번호)
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(20)
);

-- customer 자료 추가
INSERT INTO customer VALUES (1, '박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO customer VALUES (2, '손흥민', '영국 런던', '000-6000-0001');
INSERT INTO customer VALUES (3, '황인범', '그리스 올림피아코스', '000-7000-0001');
INSERT INTO customer VALUES (4, '오현규', '스코틀랜드 셀틱', 'NULL');
INSERT INTO customer VALUES (5, '김민재', '이탈리아 나폴리', '000-8000-0001');
INSERT INTO customer VALUES (6, '김영권', '대한민국 울산', '000-9000-0001');
INSERT INTO customer VALUES (7, '황희찬', '영국 울버햄튼', '000-8000-0002');


SELECT * FROM customer;

-- 전화번호가 없는 고객을 찾으시오
SELECT *
FROM customer
WHERE phone IS NULL;

-- 주소가 영국인 고객을 검색하시오
SELECT *
FROM customer
WHERE address LIKE '영국%';
-- bookmall

SELECT * FROM book;
SELECT * FROM customer;
SELECT * FROM orders;

-- JOIN(동등조인) - 공통된 부분(교집합, AND)
-- 고객의 이름과 고객이 주문한 도서의 판매가격을 구하시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
ORDER BY cus.name;

-- '박지성' 고객이 주문한 도서의 판매가격을 구하시오
SELECT cus.name, ord.saleprice
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND cus.name = '박지성';

-- 고객별로 주문한 모든 도서의 총 판매액을 구하시오(GROUPO= BY절, sum() 함수)
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- '황인범' 고객이 주문한 도서의 총 판매액을 구하시오(GROUP BY절, sum() 함수)
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name = '황인범';

-- 표준 SQL - INNER JOIN ON~
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
    ORDER BY cus.name;

-- '박지성' 고객이 주문한 도서의 판매가격을 구하시오
SELECT cus.name, ord.saleprice
FROM customer cus INNER JOIN orders ord
    ON cus.custid = ord.custid
WHERE cus.name = '박지성';
SELECT * FROM book;

-- bookid가 11인 도서 삭제
DELETE FROM book WHERE bookid = 11;

-- 서브 쿼리(쿼리 종합)
-- 책의 총수량을 구하시오
SELECT COUNT(*) 총수량 FROM book;

-- 도서 중 가장 높은 가격을 찾으시오
SELECT MAX(price) 최고가격 FROM book;

-- 가장 비싼 도서의 이름을 검색하시오
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) 최고가격 FROM book);

-- 고객과 고객의 주문에 관한 데이터를 모두 검색하시오
SELECT * FROM customer;
SELECT * FROM orders;

-- 손흥민 고객의 총 주문 가격을 검색하시오
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name='손흥민';
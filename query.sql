-- 연습 문제
--1, 2.
SELECT NAME, address, address from customer;
--3.
SELECT * FROM customer
where address  not like '영국%';
--4.
SELECT * from customer
where name in ('손흥민', '오현규');
--5.
SELECT * from customer
WHERE address not like '대한민국%';
--6.
SELECT * from customer
WHERE phone is null;
--7.
SELECT * from customer order by name;
--8.
SELECT count(*) 총인원수 from customer;
-- ���� ����
--1, 2.
SELECT NAME, address, address from customer;
--3.
SELECT * FROM customer
where address  not like '����%';
--4.
SELECT * from customer
where name in ('�����', '������');
--5.
SELECT * from customer
WHERE address not like '���ѹα�%';
--6.
SELECT * from customer
WHERE phone is null;
--7.
SELECT * from customer order by name;
--8.
SELECT count(*) ���ο��� from customer;
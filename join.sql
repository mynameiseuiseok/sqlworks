-- ���ΰ� ��������

SELECT * FROM customer;
SELECT * FROM book;
SELECT * FROM orders;

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT cus.custid, cus.name, ord.saleprice, ord.orderdate
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
AND cus.name = '�����'; --�ս¹� ���� �ֹ�����
-- AND saleprice >= 20000; --�Ǹ� ������ 20000�� �̻��� �ֹ� ����
-- AND orderdate = '2018-7-8'; --�ֹ����� 2018-7-8�� �ֹ� ����

-- ��(�̸�)���� �ֹ��� ��� ������ �� �Ǹž��� ���Ͻÿ�
SELECT cus.name, SUM(saleprice) �Ǹűݾ�,
       RANK() OVER(ORDER BY SUM(saleprice) DESC) ����
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name;

-- ���� �̸��� ���� �ֹ��� ������ �̸��� �˻��Ͻÿ�
SELECT cus.name, boo.bookname, ord.saleprice, ord.orderdate
FROM customer cus, orders ord, book boo
WHERE cus.custid = ord.custid
AND boo.bookid = ord.bookid
ORDER BY cus.name; --������ �ϸ� �׷�ȭ�� ��

-- ���� ��� ������ �̸��� �˻��Ͻÿ�
-- SELECT bookname, MAX(price) FROM book; -- ���� �߻�
SELECT MAX(price) FROM book; --35000

SELECT bookname FROM book -- �������̺�
WHERE price = 35000;

-- ��ø ����
SELECT bookname, price
FROM book
WHERE price =
    (
     SELECT
     MAX(price)
     FROM book
     );
     
-- ������ ������ ���� �ִ� ���� �̸��� �˻��Ͻÿ�
-- 1. �ֹ����̺��� �����̵� �˻�
SELECT custid FROM orders;
-- 2. �����̵� �ִ� �� �̸� �˻�
SELECT name FROM customer
WHERE custid IN(1, 2, 3, 4);

SELECT custid, name FROM customer
WHERE custid IN(
                SELECT custid
                FROM orders
                );
                
-- ������ ������ ���� ���� ���� �̸��� �˻��Ͻÿ�
SELECT custid, name FROM customer
WHERE custid NOT IN(SELECT custid
                    FROM orders);
                    
-- '�����' ���� �ֹ������� �˻��Ͻÿ�
-- 1. ����� ���� ���̵� �˻�
-- 2. ����� ���� ���̵�� �ֹ����̺��� �˻�
SELECT custid
FROM customer
WHERE name = '�����';

SELECT *
FROM orders
WHERE custid = (SELECT custid
                FROM customer
                WHERE name = '�����');
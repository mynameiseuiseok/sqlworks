SELECT * FROM book;

-- bookid�� 11�� ���� ����
DELETE FROM book WHERE bookid = 11;

-- ���� ����(���� ����)
-- å�� �Ѽ����� ���Ͻÿ�
SELECT COUNT(*) �Ѽ��� FROM book;

-- ���� �� ���� ���� ������ ã���ÿ�
SELECT MAX(price) �ְ��� FROM book;

-- ���� ��� ������ �̸��� �˻��Ͻÿ�
SELECT bookname, price
FROM book
WHERE price = (SELECT MAX(price) �ְ��� FROM book);

-- ���� ���� �ֹ��� ���� �����͸� ��� �˻��Ͻÿ�
SELECT * FROM customer;
SELECT * FROM orders;

-- ����� ���� �� �ֹ� ������ �˻��Ͻÿ�
SELECT cus.name, SUM(saleprice)
FROM customer cus, orders ord
WHERE cus.custid = ord.custid
GROUP BY cus.name
HAVING cus.name='�����';
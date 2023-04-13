-- customer ���̺�(����ȣ, �̸�, �ּ�, ��ȭ��ȣ)
CREATE TABLE customer(
    custid NUMBER PRIMARY KEY,
    name VARCHAR2(40) NOT NULL,
    address VARCHAR2(50),
    phone VARCHAR2(20)
);

-- customer �ڷ� �߰�
INSERT INTO customer VALUES (1, '������', '���� ��ü����', '000-5000-0001');
INSERT INTO customer VALUES (2, '�����', '���� ����', '000-6000-0001');
INSERT INTO customer VALUES (3, 'Ȳ�ι�', '�׸��� �ø��Ǿ��ڽ�', '000-7000-0001');
INSERT INTO customer VALUES (4, '������', '����Ʋ���� ��ƽ', 'NULL');
INSERT INTO customer VALUES (5, '�����', '��Ż���� ������', '000-8000-0001');
INSERT INTO customer VALUES (6, '�迵��', '���ѹα� ���', '000-9000-0001');
INSERT INTO customer VALUES (7, 'Ȳ����', '���� �����ư', '000-8000-0002');


SELECT * FROM customer;

-- ��ȭ��ȣ�� ���� ���� ã���ÿ�
SELECT *
FROM customer
WHERE phone IS NULL;

-- �ּҰ� ������ ���� �˻��Ͻÿ�
SELECT *
FROM customer
WHERE address LIKE '����%';
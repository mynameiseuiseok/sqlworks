-- ���� ���� ���̺� ����
CREATE TABLE account(
    ano VARCHAR2(10) PRIMARY KEY,
    owner VARCHAR2(20) NOT NULL,
    balance NUMBER(10) NOT NULL
);

INSERT INTO account VALUES ('1111', '���Ǽ�', 10000);

COMMIT;

SELECT * FROM account;
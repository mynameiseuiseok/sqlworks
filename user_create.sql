
-- DB�̸�, ��й�ȣ, ���̺� ���� ����
CREATE USER c##mydb IDENTIFIED BY mydb
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP;

-- ���� ����
GRANT CONNECT, DBA to c##mydb;
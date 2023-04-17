-- GROUP BY�� ROLLUP(), CUBE()
-- �μ����̺�(�μ���ȣ, �����̸�, �޿�)
CREATE TABLE department(
    dept_no VARCHAR2(3),
    job_nm VARCHAR2(30),
    salary NUMBER(10)
);

-- �ڷ� ����
INSERT INTO department VALUES ('100', '���ǻ�', 3300000);
INSERT INTO department VALUES ('100', '������', 4300000);
INSERT INTO department VALUES ('200', '���ǻ�', 5000000);
INSERT INTO department VALUES ('200', '�����ͺм���', 4000000);
INSERT INTO department VALUES ('200', '������', 6000000);

SELECT * FROM department;

-- �μ��� �޿� �Ѱ� ���ϱ�
select dept_no,
    sum(salary)�޿��Ѱ�
    from department
    group by dept_no;

-- �μ��� �Ұ�� �Ѱ� : ROLLUP()
select dept_no, job_nm
    , sum(salary)�޿��Ѱ� 
    from department
    group by rollup(dept_no,job_nm)
    order by dept_no;
   
-- �μ��� ������ �Ұ�, �Ѱ� : CUBE()
select dept_no, job_nm
    , sum(salary)�޿��Ѱ� 
    from department
    group by CUBE(dept_no,job_nm)
    order by dept_no;
    
-- �μ���, ������ �Ұ� : grouping sets 
select dept_no, job_nm
    , sum(salary)�޿��Ѱ� 
    from department
    group by grouping sets(dept_no,job_nm)
    order by dept_no;      

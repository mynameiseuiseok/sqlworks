select * from dept;
select * from employee;

INSERT INTO employee VALUES (100, '�̰�', 2500000, SYSDATE, '����', '1000');
INSERT INTO employee VALUES (104, '�̻�', 2000000, SYSDATE, '����', '1001');
INSERT INTO employee VALUES (105, '�ڴ�', 1500000, SYSDATE, '����', '1002');

-- ����̸� �޿� ���� �μ��̸��� �˻��Ͻÿ�(join)
select em.ename, em.sal, em.gender, de.deptname
    from dept de, employee em
    where de.deptno = em.deptno;

-- ����̸� �޿� ���� �μ��̸��� �˻��� ������ ��ȣ �ۼ�.
-- create view ���̸� as select * from ���̺� �̸�
create view vw_dept_emp as
select em.ename, em.sal, em.gender, de.deptname
    from dept de, employee em
    where de.deptno = em.deptno;


select * from vw_dept_emp;

-- ��� ����� �� �ο����� ���Ͻÿ�

select count(*)total from vw_dept_emp;

-- �μ��� ����� �� �ο����� ���Ͻÿ�
select deptname, count(*)total 
    from vw_dept_emp
    group by deptname;
    
-- �μ��� �ο��� 2���� �ʰ��ϴ� �ڷḦ �˻��Ͻÿ�
select deptname, count(*)total 
    from vw_dept_emp
    group by deptname
    having count(*) >=2;
    
/*
�������
1. from ��
2. where ��
3. group by, having ��
4. select ��
5. order by ��
*/    
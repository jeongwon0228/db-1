

--  테이블 정보 조회    
--select * from tab;

-- 테이블의 내부 컬럼 구조 
--desc dept;

--desc emp;

--desc salgrade;  


--select 컬럼명1, 컬럼명2,...
--from 테이블명

desc dept

select deptno,dname,loc
from dept;

select *    --전체 레코드 조회
from dept;

select deptno,dname
from dept;

select * 
from emp;

--중복 데이터 제거
select distinct job
from emp;


select ename,sal
from emp;

-- 컬럼에 별칭 사용
select ename as "사원이름",sal as "급여"      --as는 생략가능
from emp;

select ename,sal,sal * 12 "연봉"
from emp;

select ename,sal,sal * 12 + comm as "연봉"
from emp;


select *
from emp
order by empno asc; --asc 생략가능 but desc는 생략불가

select *
from emp
order by empno desc;

select *
from emp
order by deptno asc, sal desc;

-- 조건절
--select *
--from emp
--where 컬럼명 비교연산자 값 --조건식(true,false) 

select *
from emp
where empno = 7369;

select *
from emp
where sal >= 3000;

-- and, or 논리연산자

select * 
from emp
where sal >= 3000 and deptno = 20;

select * 
from emp
where sal >= 3000 or deptno = 20;

select *
from emp
where sal > 1000 and sal <= 2000;

select * 
from emp
where sal<1000 or sal > 2000;

-- 산술연산자
-- + , - , * , /(몫)

select * 
from emp
where sal * 12 = 36000;

select *
from emp
where sal >= 3000;

-- 문자(대소문자 구분, 홑따옴표''반드시 사용)
select *
from emp
where ename = 'smith';

select *
from emp
where ename = 'SMITH';  --table안에 저장된 값은 대소문자를 구분한다

-- 날짜(날짜 형식을 갖추어야한다, 홑따옴표''반드시 사용)
select *
from emp
where hiredate = '80/12/17';    -- '19801217'









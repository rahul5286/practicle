create or replace function fun6 (id in number)
return VARCHAR2
is 
	name VARCHAR2(50);
begin 
	select e.ename into name from emp1 e where e.dept_no=id;
	return name;
end;
/

/* Execute : */
select fun6(2) from dual;

declare 
	nm varchar2(50);
begin 
	nm:=fun6(1);
end;
/
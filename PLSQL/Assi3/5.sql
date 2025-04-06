create or replace procedure pro5(njob in varchar)
is

cursor ed is select e.ename ,d.dname from emp e,dep d where e.dept_no=d.dept_no and job=njob;

ec ed%rowtype;
begin
	for ec in ed loop
		dbms_output.put_line(ec.ename|| ' ' ||ec.dname);	
	end loop;
end;
/

/* 
	Execute :
	
	declare 
		job_title varchar2(20);
	begin 
		job_title:='&job_title';
		pro5(job_title);
	end;
	/
*/


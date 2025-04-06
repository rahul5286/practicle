/*Create a procedure that takes department ID and changes the manager ID for the 
department to the employee in the department with highest salary.
*/

create or replace procedure p23(dno in number)

is
	no1 number(5);
begin

	select eid into no1 from emp1 where dept_no=dno	
	and salary=(select max(salary) from emp1 where dept_no=dno);
	
	if sql%found then
	
		update emp1 set mgr=no1 where dept_no=dno;
	
	end if;

end;
/

/* Execute Procedure*/
declare
	dno number(5):=&dept_no;
begin
	p23(dno);	
end;
/


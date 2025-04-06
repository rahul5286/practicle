/*  
	create table new1emp
	(
		no number(10),
		name varchar2(10),
		sal number(10),
		post varchar2(10)
	);
*/
declare 
	cursor mycur is select * from emp where job='Manager';
	rs emp%rowtype;
begin
	open mycur;
		loop
			fetch mycur into rs;
			exit when mycur%notfound;
				insert into new1emp values(rs.eid,rs.ename,rs.salary,rs.job);
				
			end loop;
			dbms_output.put_line('Record Inserted NewEmp Table ');
	close mycur;
end;
/
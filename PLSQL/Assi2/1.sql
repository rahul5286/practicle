/*
create table emp10
	(
		no1 number(10),
		name varchar2(20),
		sal number(10)
	);
	
	insert into emp10 values(&no1,'&name',&sal);*/

declare 
	no1 number(10);
begin
	update emp10 set sal = sal + (sal * 20 / 100);
	
	if sql%notfound then
		dbms_output.put_line('Not Update');
	elsif sql%found then
		dbms_output.put_line(no1||'Update');
	end if;
end;
/
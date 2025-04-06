create or replace function fun8(n1 in number )
return number 
is 
	d studs.rollno%TYPE;
begin 
	delete from studs where rollno=n1;
	if sql%notfound then 
		dbms_output.put_line('Roll No is not exit.');
	end if;
	return 0;
end;
/

/* Execute :*/

declare 
	n number(10);
	s number(10);
begin 
	n:=&rollno;
	s:=fun8(n);
	
	if sql%found then 
		dbms_output.put_line('Record Delete');
	end if;
end;
/
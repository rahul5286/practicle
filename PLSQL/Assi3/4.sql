
create or replace procedure pro4 (roll in number)
is 
 name varchar2(20);
begin 
	select name into name from STUDENT23 where no=roll;
	
	if sql%found then 
		update STUDENT23 set name=upper(name) where no=roll;
		dbms_output.put_line('Uppercase Name Set');
	else
		dbms_output.put_line('Not Uppercase Name set ');
	end if;
end;
/
/*
exec pro4(10);
*/
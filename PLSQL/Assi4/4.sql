create or replace trigger trig4 before insert or update or delete on  studs 
for each row 
declare 
	no number (3):=0;
begin 
	select count(*) into no from studs;
	
	if no > 60 then 
		dbms_output.put_line('Not Inserted Record before 60 row inserted ');
	end if;
end;
/

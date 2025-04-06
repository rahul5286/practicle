create or replace trigger trg2 before insert or update on items
for each ROW
declare 
	name varchar2(20);
begin 
	name:=:new.itemno;
	if substr (name,1,1)='I' or substr (name,1,1)='i' then 
		dbms_output.put_line('Inserted');
	else 
		RAISE_APPLICATION_ERROR(-20001,'No inserted please entere i in iteam id');
	end if;
end;
/

/* Execute */
insert into items values('&itemno','&name',&price);
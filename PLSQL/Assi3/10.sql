create or replace function fun10 (i in number)return number 
is 
	f cust.bill_amt % type;
begin 
	select bill_amt into f from cust  where cust_id=i;
	
	if sql%found then 
		dbms_output.put_line('Record  Found ');
	end if;
	return f;
end;
/
	
/*
	
declare 
	id NUMBER(10);
	s NUMBER(10);
begin 
	id:=&cid;
	s:=fun10(id);
	dbms_output.put_line(s);
end;
/

*/
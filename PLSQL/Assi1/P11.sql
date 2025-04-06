declare
	CU_ID NUMBER(10);
	C_ID NUMBER(10);
begin
	CU_ID:=&CU_ID;
	
		select CUST_ID into C_ID from customers where CUST_ID = CU_ID;
		
		if sql%found then
			dbms_output.put_line('SUCCESSFUL');
		end if;
end;
/

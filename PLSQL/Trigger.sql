create or replace trigger mytrg before delete or insert or update on CUSTOMER2
for each row 
when (NEW.id>0)
declare
	sal_diff number;
begin 
	sal_diff:=:NEW.SALARY -:OLD.SALARY;
	dbms_output.put_line('Old Salary:'||:OLD.SALARY);
	dbms_output.put_line('New Salary:'||:NEW.SALARY);
	dbms_output.put_line(' Salary Difference :'||sal_diff);
end;
/
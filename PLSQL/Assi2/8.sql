declare
	id number:=5;
	cursor cr (id NUMBER) is select * from employees;
	rs cr%rowtype;
	total number:=0;
	
	
begin
	
	open cr(id);
	loop
	  fetch cr into rs;
	  exit when cr%notfound;
	  total:=total+rs.SALARY;
	 end loop;
	dbms_output.put_line(rs.EMP_ID||'-'||rs.EMP_NAME); 
	close cr;
	  dbms_output.put_line(total);
end;
/
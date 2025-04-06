declare
	cursor cr is select * from employees order by  SALARY desc ;
	rs cr%rowtype;
begin
	open cr;
	loop
	fetch cr into rs;
	exit when cr%rowcount=6;
		dbms_output.put_line(rs.EMP_ID||'-'||rs.EMP_NAME||'-'||rs. SALARY);
	end loop;
	close cr;
end;
/
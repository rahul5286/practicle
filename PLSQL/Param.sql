declare
	rs customer2%rowtype;
	cursor mycur (Max_Salary number)is select * from customer2 where Salary<Max_Salary;
begin

	open mycur(2000);
	loop
		fetch mycur into rs;
		dbms_output.put_line('Name= '||rs.Name||'Salary= '||rs.Salary);
		exit when mycur%notfound;
	end loop;
	close mycur;
end;
/	
declare 
	cursor mycur is select * from customer2;
	rs customer2%rowtype;
begin
	OPEN mycur;
	loop
		fetch mycur into rs;
		dbms_output.put_line(rs.id||'-'||rs.Name||'-'||rs.Age||'-'||rs.Address||'-'||rs.Salary);
		exit when mycur%notfound;
	end loop;
	close mycur;
end;	
/
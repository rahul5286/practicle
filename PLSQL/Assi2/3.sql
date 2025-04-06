declare
	cursor mycur is select * from emp1;
	rs emp1%rowtype;
begin
	open mycur;
	loop
		fetch mycur into rs;
		dbms_output.put_line(rs.eid||' '||rs.ename||'  '||rs.salary);
		
		exit when mycur%notfound;
	end loop;
	close mycur;
end;
/
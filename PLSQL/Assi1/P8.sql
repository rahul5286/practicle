declare 
	n number(4);
	r number(5);
	rev number(5):=0;
	m number(5);
begin
	n:=&n;
	m:=n;
	
	while n>0
	loop
		r:= n mod 10;
		rev:= rev*10+r;
		n:=trunc(n/10);
	end loop;
	
	if rev=m then
		dbms_output.put_line(m||' palindrom');
	else
		dbms_output.put_line(m||' not palindrom');
	end if;
end;
/
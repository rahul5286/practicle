declare
	n number(5);
	k number(5):=0;
begin
	n:=&n;
	
	for i in 2..n-1
	loop
		if n mod i=0 Then
			k:=1;
		end if;
	end loop;
	
	if k =0 THEN
		dbms_output.put_line(n ||' is a Prime Number');
	else
		dbms_output.put_line(n ||' is Not Prime Number');
	end if;
	
end;
/

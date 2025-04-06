declare 
	a number(5);
	b number(5);
	ans number(2);
begin 
	a:=&a;
	b:=&b;
	
	ans:=demofunction(a,b);
	dbms_output.put_line('Addition: '||ans);
end;
/
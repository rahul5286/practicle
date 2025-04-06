declare
	n1 number(10);
	n2 number(10);
	ans number(10);
begin 
	n1:=&no1;
	n2:=&no1;
	ans:=mypkg.add(n1,n2);
	dbms_output.put_line('Addition: '||ans);	
end;
/
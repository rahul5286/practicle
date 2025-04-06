declare 
	n number(3);
	a number(5):=0;
	b number(5):=1;
	c number(5):=0;
	
begin 
	n:=&n;
	
	for i in 1..n
	loop
		a:=b;
		b:=c;
		c:=a+b;
		dbms_output.put_line(' '||c);
	end loop;
	
end;
/
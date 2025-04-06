DECLARE
	sum1 number(10):=0;
	r number(10);
	n number(10);
	rev number(10);
	
BEGIN 
	sum1:=0;
	n:=&n;
	
	while n > 0
	LOOP
		r:= n mod 10;
		sum1:=sum1+r;
		n:=n/10;
	end loop;
		dbms_output.put_line(sum1);
END;
/


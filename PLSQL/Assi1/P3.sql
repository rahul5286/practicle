declare 
	sum1 number(10):=0;
begin
	for i in 1 ..100
	LOOP

			sum1:=sum1+i;
	end loop;
	dbms_output.put_line(sum1);
end;
/
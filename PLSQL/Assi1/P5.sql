declare
	n number(3);
	odd number(3);
	even number(3);
	odds number(5):=0;
	evens number(5):=0;
begin
	for i in 1..100
	loop
		if i mod 2 = 0 then
			evens:=evens+i;
		end if;
		
		if i mod 2 = 1 then
			odds:=odds+i;
		end if;
	end loop;
	
	dbms_output.put_line('Sum Of Even No '||evens);
	dbms_output.put_line('Sum Of Odd No '||odds);
end;
/
create or replace procedure demo (n1 in number , n2 in number) 
is ans number(5);

begin 
	ans:=n1+n2;
	dbms_output.put_line(ans);
end;
/
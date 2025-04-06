set serveroutput on;

declare
	n1 number(3);
	n2 number(3);
	ans number(10);
begin
	n1:=&no1;
	n2:=&no2;
	ans:=n1+n2;
	dbms_output.put_line('Addition='||ans);
end;
/
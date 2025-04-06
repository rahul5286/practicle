set serveroutput on;

declare
	a number(3);
	b number(3);
	addi number(3);
	sub number(3);
	mul number(3);
	div number(3);
	
begin
	a:=&a;
	b:=&b;
	
	addi:=a+b;
	sub:=a-b;
	mul:=a*b;
	div:=a/b;
	
	dbms_output.put_line('Add='||addi);
	dbms_output.put_line('Sub='||sub);
	dbms_output.put_line('Mul='||mul);
	dbms_output.put_line('Div='||div);

end;
/

create or replace function fun9 (empid in number)return number
is 
	s emp.salary%type;
	empid emp.ename%type;
begin 
	select salary into s  from emp where eid=empid;
	
	if s <10000 THEN
		update emp set salary=salary+(salary*30)/100;
		dbms_output.put_line('30 % Increase ');
	elsif s < 20000 and s > 10000 THEN
		update emp set salary=salary+(salary*20)/100;
		dbms_output.put_line('20 % Increase ');
	elsif s > 20000 then 
		update emp set salary=salary+(salary*10)/100;
		dbms_output.put_line('10 % Increase ');
	end if;
	return 0;
end;
/

/*
	select fun9(1) from dual;
	
	declare 
		id NUMBER(10);
		i number(10);
	BEGIN	
			id:=&eid;
			i:=fun9(id);
			dbms_output.put_line(i);
		
	end;
	/
*/
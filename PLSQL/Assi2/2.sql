/*
CREATE table emp101 (
	name varchar2(30),
	sal number(6),
	comm number(5)
);

Insert into emp101 values('&name',&sal,&comm);
*/
declare 
	E_name varchar2(25);
	comm number(10,2);
	sals number(10,2);
begin 
	E_name:='&E_name';
	select sal into sals from emp101 where name=E_name;
	
	if sql%found then
		if sals>5000 then
		
			update emp101 set sal = sal+(sal*0.25/100);
			dbms_output.put_line('Salary Update ');	
		elsif sals<1000 then
		
			delete from emp101 where sal<1000;
		else
			dbms_output.put_line('Not find ');
		end if;
	end if;
	
end;
/
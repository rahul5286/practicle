create or replace function fun7 (rno in number)
return VARCHAR2
is 
	c NUMBER(20);
begin 
	select count(*) into c from stud_result where rno=rno;
	
	if c>0 THEN
		return rno ||'Found ';
	else 
		return rno ||'Not Found';
	end if;
end;
/

/* EXECUTE :*/ 
select fun7(101) from dual;

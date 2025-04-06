create table circle
(
	radius number(5),
	area number(5,2)
);

declare 
	r circle.area%type;
begin
	
	for i in 3..7
	loop
	
	r := 3.14*i*i;
	insert into circle values(i,r);
	end loop;
	dbms_output.put_line('success');
end;
/
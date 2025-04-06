/*
	create table oldstud (no number(10),name varchar2(20));
	Insert into oldstud values(&no,'&name');

*/


create or replace trigger trg5 before  delete on 
oldstud for each row 
begin 
	insert into newstud values(:old.no,:old.name);
end;
/	

/*
	
	create table newstud (no number(10),name varchar2(20));
	Insert into newstud values(&no,'&name');
	
	
*/
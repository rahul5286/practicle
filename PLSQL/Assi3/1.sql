/*create table stud1(rno number primary key, name varchar2(50),m1 number(10),m2 number(10),m3 number(10));
Insert into stud values(&rno,'&name',&m1,&m2,&m3);
*/

create or replace procedure stdpr (rno in  number,name in varchar2,m1 in number ,m2 in number ,m3 in number)
is 

begin 
	insert into stud1 values(rno,name,m1,m2,m3);
end;
/	
/*
	exec stdpr(10,'raju',45,58,95);
*/

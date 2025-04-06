/*
create table student23(	 no number(10),
							 name varchar2(10),
							 mark1 number(10),
							 mark2 number(10),
							 mark3 number(10),
							 std number(10),
							 res varchar2(10)
						 );
	
insert into student23 values(&no,'&name',&mark1,&mark2,&mark3,&std,'&res');	
*/

create or replace procedure student3 (id in NUMBER)
is
begin
	update student23 set std=std+1 where (mark1+mark2+mark3)/3 >=33;
end;
/

/*
exec student3(40);

 select * from student23;

    NO NAME            MARK1      MARK2      MARK3        STD RES
------ ---------- ---------- ---------- ---------- ---------- ----------
    10 Darshan            85         89         89         13 P
    20 Raj                45         85         12         12 F
    30 kishan             89         78         70         12 P
    40 Kartik             85         85         45         11 P
	
*/
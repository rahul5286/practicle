/*
create table students(
						rollno number(10),
						name varchar2(20),
						std1 number(10),
						b_date date,
						gender varchar2(10)
					);
					
	Insert into students values(&rollno,'&name',&std1,'&b_date','&gender');
					
create table Male1(
						rollno number(10),
						name varchar2(10),
						std number(10),
						b_date date
				  );
					
create table Female1(
						rollno number(10),
						name varchar2(10),
						std number(10),
						b_date date
					);
*/

declare 
	cursor mycur is select * from students;
	rs mycur%rowtype;
	
begin 
	open mycur;
	loop
	fetch mycur into rs;
	exit when mycur%notfound;

		if rs.gender='Male' then
			insert into Male1 values(rs.rollno,rs.name,rs.std1,rs.b_date);
		else
			insert into Female1 values(rs.rollno,rs.name,rs.std1,rs.b_date);
		end if;
	end loop;
	close mycur;
end;
/
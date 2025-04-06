create or replace trigger trg1 before insert or update or delete on studs1
for each row 
declare 
	dt char(30);
begin 
	dt :=to_char(sysdate,'dy');
	if dt in ('sun','sat')then 
		RAISE_APPLICATION_ERROR(-2000,'Transaction Not allow because day is Sunday and Saturday');
	end if;
end;
/

/*
Execute */
Insert into studs1 values(&rollno,'&name',&mark1,&mark2,&mark3,&std);
insert into studs1 values (20,'Raj',95,85,85,08);
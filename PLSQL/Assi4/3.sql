create or replace trigger trig3 before update   on studs for each row 
declare 
begin 
	if :new.mark1<40 or :new.mark2<40 or :new.mark3<40 then 
		RAISE_APPLICATION_ERROR(-20002,'Not data Update !');
	end if;
end;
/

/* EXECUTE : */

Insert into studs values(&rollno,'&name',&mark1,&mark2,&mark3,&std);	
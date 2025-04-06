
declare
	Seat number(6);
	Name varchar(10);
	Sub1 number(3);
	sub2 number(3);
	sub3 number(3);
	sub4 number(3);
	sub5 number(3);
	
	Total number(7);
	Per number(5,2);
	
begin

	Seat:= &Seat;
	Name:= '&Name';
	
	Sub1:= &Sub1;
	Sub2:= &Sub2;
	Sub3:= &Sub3;
	Sub4:= &Sub4;
	Sub5:= &Sub5;
	
	
	dbms_output.put_line('Seat :'||Seat);
	dbms_output.put_line('Name :'||Name);
	
	dbms_output.put_line('Sub1 :'||Sub1);
	dbms_output.put_line('Sub2 :'||Sub2);
	dbms_output.put_line('Sub3 :'||Sub3);
	dbms_output.put_line('Sub4 :'||Sub4);
	dbms_output.put_line('Sub5 :'||Sub5);
	
	Total:= Sub1+Sub2+sub3+Sub4+Sub5;
	Per:=Total/5;
	dbms_output.put_line('Total :'||Total);
	dbms_output.put_line('Per:'||Per);
end;
/
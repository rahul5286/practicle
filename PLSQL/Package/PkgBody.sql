create or replace package body mypkg
 is

	procedure disp(S in varchar2)
	is 
	 begin 
		dbms_output.put_line(S);
	 end;
function add(a in number, b in number)return number
	is 
	 ans number(3);
	 begin
		ans:=a+b;
		return ans;
	 end;
end;
/

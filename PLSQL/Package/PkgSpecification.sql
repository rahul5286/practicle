create or replace PACKAGE mypkg 
is
	procedure disp (S in varchar2 );
	function add(a in number , b in number)
	return number;
end;
/
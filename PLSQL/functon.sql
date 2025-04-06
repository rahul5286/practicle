create or replace function demofunction (n1 in number , n2 in number) 
return number
is ans number(5);

begin 
	ans:=n1+n2;
	return ans;
	/*dbms_output.put_line(ans);*/
end;
/


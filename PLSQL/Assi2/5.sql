declare
	dno NUMBER(10):='&dno';
	CURSOR dept is SELECT  * from emp where dno=DEPT_NO and JOIN_DATE<=ADD_MONTHS(SYSDATE,-60);
	rs dept%rowtype;
BEGIN

	open dept;
	
	LOOP
	fetch dept into rs;
	exit when dept%notfound;
	dbms_output.put_line(rs.EID||'-'||rs.ENAME||'-'||rs.DEPT_NO||'-'||TO_CHAR(rs.JOIN_DATE,'dd-mm-yyyy'));
	end loop;
	close dept;
	EXCEPTION
	WHEN no_data_found THEN
	dbms_output.put_line('Not Data Found ');
end;
/

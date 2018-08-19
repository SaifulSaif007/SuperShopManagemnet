 
set serveroutput on;
set verify off;
declare
	
	P_id number := &p_id;
	discount varchar2(20) := '&discount';
	chk number;
	
begin
	chk := Func(P_id, discount);
	if 
		chk = 0 then
		dbms_output.put_line('Updated');
	else
		dbms_output.put_line('not Updated');
	end if;
	
		
end;
/		

	
 
set serveroutput on;
set verify off;
declare
	
	P_id number := &p_id;
	chk number;
	
begin
		 
	chk := proc_del(P_id);
	if 
		chk = 0 then
		dbms_output.put_line('Deleted');
	else
		dbms_output.put_line('not Deleted');
	end if;
	
		
end;
/
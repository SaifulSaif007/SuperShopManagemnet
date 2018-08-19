 
set serveroutput on;
set verify off;
declare
	
	P_id number := &p_id;
	price number := &price;
	chk number;
	
begin
	chk := func(P_id, price);
	if 
		chk = 0 then
		dbms_output.put_line('Updated');
	else
		dbms_output.put_line('not Updated');
	end if;
	
		
end;
/		

	
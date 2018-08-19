 
set serveroutput on;
set verify off;
declare
	
	P_id number := &p_id;
	discount varchar2(20) := '&discount';
	description varchar2(20) := '&description';
	id number := 0;
	
	cursor cur_id is
	select offer_id from offer
	order by offer_id desc;
	
begin
		open cur_id;
		fetch cur_id into id;
		close cur_id;
		
		id := id + 1;
		
		insert into offer values ( id, P_id, discount, description);
end;
/		

	
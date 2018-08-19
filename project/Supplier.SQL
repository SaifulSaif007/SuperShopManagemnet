 
set serveroutput on;
set verify off;
declare
	
	
	s_id number := &s_id;
	s_name varchar2(20) := '&s_name';
	P_id number := &P_id;
	quantity number := &quantity;
	
	
begin
	 	
	
		insert into supply values ( s_id, s_name, P_id , quantity);
		
		
end;
/		

	
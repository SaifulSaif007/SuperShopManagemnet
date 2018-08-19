set serveroutput on;


create or replace trigger trigger_strg
	after insert
	on sell
	for each row
	


declare 
	prod_id number := :new.P_id;
	s_quan	number := :new.quantity;
	o_quan  number  := 0;
	new_quan number := 0;

	cursor quantity_info is
 	select quantity from storage
 	where P_id = prod_id;

begin
	
	open quantity_info;
	fetch quantity_info into o_quan;
	close quantity_info;


	new_quan := o_quan - s_quan;


	update storage set quantity = new_quan
	where p_id = prod_id;

end;
/


------storage er jonno trigger
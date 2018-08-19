set serveroutput on;
set verify off;

declare
		
	pr_id number := &P_id;
	quantity number := &quantity;
	buyer_name varchar(20) := '&buyer_name';

	cursor prod_quan is
	select quantity from storage
	where P_id = pr_id;

	quan number;
	quan_strg exception;



begin
	open prod_quan;
	fetch prod_quan into quan;
	close prod_quan;

	if quan >= quantity
		then
		procSell(pr_id, quantity, buyer_name);
	else
		raise quan_strg;	
	end if;	 	

	exception

	when quan_strg then
		DBMS_OUTPUT.PUT_LINE ('not enough storage');

end;
/


---------sell procedure er jonno

 
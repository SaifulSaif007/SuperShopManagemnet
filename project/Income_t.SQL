set serveroutput on;


create or replace trigger trigger_inc
	after insert
	on sell
	for each row


declare

	prod_id number := :new.P_id;
	s_quan	number := :new.quantity;


	price number;
	total_tk number := 0;

	cursor prod_price is 
	select price 
	from Product_info
	where P_id = prod_id;

begin

	open prod_price;
	fetch prod_price into price;
	close prod_price;

	total_tk := price * s_quan;

	insert into income values(sysdate, Prod_id, total_tk);

end;
/




---------------income r trigger :D 
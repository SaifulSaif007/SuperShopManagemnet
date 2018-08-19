 
	create or replace function proc_del(n_number in number)
	return number
	is
	ch number:= 0;
	
begin
	
	delete from product_info where P_id = n_number;
	return (ch);
	
 
end proc_del;
/	

	
 
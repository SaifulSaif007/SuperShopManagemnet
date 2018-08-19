 
	create or replace function func(n_number in number,pr in number)
	return number
	is
	ch number:= 0;
	
begin
	
	update product_info set price = pr where P_id = n_number;
	return (ch);
	
 
end Func;
/	

	
 
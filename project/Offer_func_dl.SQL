 
	create or replace function Off_del(n_number in number)
	return number
	is
	ch number:= 0;
	
begin
	
	delete from offer where P_id = n_number;
	return (ch);
	
 
end Off_del;
/	

	
 
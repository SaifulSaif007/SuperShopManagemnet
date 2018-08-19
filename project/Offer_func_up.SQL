 
	create or replace function Func(n_number in number,dis in varchar2)
	return number
	is
	ch number:= 0;
	
begin
	
	update offer set discount = dis where P_id = n_number;
	return (ch);
	
 
end func;
/	

	
 
set serveroutput on;

 
 create or replace procedure procSell(
		p_id in out number,
		quantity in out number,
		buyer_name in out varchar)
		IS
		track number := 0; 

 	
	
		cursor cur_track is
		select track_id from Sell
		order by track_id desc; 

 
		
begin
	
	open cur_track;
	fetch cur_track into track;
 	close cur_track;

 	track := track + 1;

	insert into sell values(track, p_id, quantity, buyer_name);

end;
/
 


------ sell procedure dia insert kortesi :D 
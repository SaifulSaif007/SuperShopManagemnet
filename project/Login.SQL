set serveroutput on;
set verify off;

declare

	name varchar2(200) := '&Username';
	Pass varchar2(200) := '&Password';

	cursor user_info is
	select username, password
	from login
	where username = name and 
	password = Pass;

	Ps varchar2(20);
	nm varchar2(20);

	Login exception;

begin

	open user_info;

	fetch user_info into nm, Ps;

	DBMS_OUTPUT.PUT_LINE( nm  || ' ' || Ps );

	close user_info;

	if  nm = name and Ps = Pass
		then
			DBMS_OUTPUT.PUT_LINE ('Login Successful');
	else
		raise Login;		
	end if;		

	exception

	when Login then
		DBMS_OUTPUT.PUT_LINE ('Wrong Username or Password');

end;
/


------------login,,, function dia login pari na :(
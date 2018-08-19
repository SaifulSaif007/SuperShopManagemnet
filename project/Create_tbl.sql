drop table login;
drop table storage;
drop table sell;
drop table income;
drop table offer;
drop table supply;
drop table Product_info;
drop table salesman;
--drop table Product_info;



create table login (username varchar2(20), password varchar2(20));

insert into login values ('saif','saif');
insert into login values ('abrar', 'abrar');
insert into login values ('ovi', 'ovi');
	
------------aita site er jonno tbl


create table storage(P_id number, quantity number);

insert into storage values (1,0);
insert into storage values (2,0);
insert into storage values (3,0);
insert into storage values (4,0);
insert into storage values (5,0);
insert into storage values (6,0);
insert into storage values (7,0);
insert into storage values (8,0);
insert into storage values (9,0);
insert into storage values (10,0);


-------------aita site er tbl


create table sell(track_id number,P_id number, quantity number, buyer_name varchar2(20));

--insert into sell values(1, 1, 5, 'asif');

------------------aita site er tbl


create table income(Log_date date,P_id number,tk number);

-----------aita server er tbl

 


create table offer (offer_id number, P_id number, discount varchar2(20), description varchar2(20) );
 
---------aita server er jonnno

create table supply(s_id number, s_name varchar2(20), P_id number, quantity number);
---------site er jonno


create table Product_info (P_id number, Description varchar2(10), price number);

insert into Product_info values (1, 'Beaf', 320);
insert into Product_info values (2, 'Chicken', 230);
insert into Product_info values (3, 'Hilsha', 400);
insert into Product_info values (4, 'Breed',  50);
insert into Product_info values (5, 'Butter',  120);

insert into Product_info values (6, 'Oil', 120);
insert into Product_info values (7, 'Shampoo',570);
insert into Product_info values (8, 'Deodorent', 420);
insert into Product_info values (9, 'Wheat',  200);
insert into Product_info values (10, 'Flour', 180);

insert into Product_info values (11, 'potato', 20);
insert into Product_info values (12, 'onion',60);
insert into Product_info values (13, 'garlic',100);
insert into Product_info values (14, 'rice',  50);
insert into Product_info values (15, 'caluliflower', 20);

insert into Product_info values (16, 'brokoli', 40);
insert into Product_info values (17, 'olive oil',0);
insert into Product_info values (18, 'egg', 80);
insert into Product_info values (19, 'pickle',  150);
insert into Product_info values (20, 'soap', 30);

-----server er jonno

 

create table salesman (s_id number, name varchar2(20), email varchar2(20), salary number );

--site er jonne

insert into salesman values (1, 'Safin', 'safin@ss', 12000);
insert into salesman values (2, 'Nafiz', 'Nafiz@ss', 13000);
insert into salesman values (3, 'Abdul', 'Abdul@dd', 10000);
insert into salesman values (4, 'Tushar', 'Asif@ss',   12000);
insert into salesman values (5, 'Rafat', 'Rafat@dd', 15000);	


commit;
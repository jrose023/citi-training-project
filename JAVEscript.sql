drop database jave;

CREATE DATABASE IF NOT EXISTS jave;
use jave;

create table stocks (
id int primary key auto_increment,
ticker varchar(10) not null,
stock_name varchar(50) not null

);

create table strategies(
id int primary key auto_increment,
strategy_name varchar(30) not null,
algo enum('TMA', 'BB','PB') not null,
stock_id int not null,
FOREIGN KEY (stock_id) REFERENCES stocks(id) on delete restrict
);

CREATE TABLE market_data(

stock_id int not null,
time_stamp timestamp not null ,
price double not null,
FOREIGN KEY (stock_id) REFERENCES stocks(id) on delete restrict,
primary key(stock_id, time_stamp)                 
);


insert into stocks values (1, "AAPL", "Apple");
insert into stocks values (2, "GOOGL", "Alphabet, Inc.");
insert into stocks values (3, "BFY", "Blackrock");
insert into stocks values (4, "C", "Citi");

insert into strategies values (0,"AAPL 3rd Q", 'TMA', 1);
insert into strategies values (3, "BFY 3rd Q", 'BB', 3);
insert into strategies values (6,"GOOGL 3rd Q", 'PB', 2);
 

/*

insert into compact_discs values(9,'Is This It','The Strokes',11,13.99);
insert into compact_discs values(10,'Just Enough Education to Perform','Stereophonics',11,10.99);
insert into compact_discs values(11,'Parachutes','Coldplay',10,11.99);
insert into compact_discs values(12,'White Ladder','David Gray',10,9.99);
insert into compact_discs values(13,'Greatest Hits','Penelope',14,14.99);
insert into compact_discs values(14,'Echo Park','Feeder',12,13.99);
insert into compact_discs values(15,'Mezzanine','Massive Attack',11,12.99);
insert into compact_discs values(16,'Spice World','Spice Girls',11,4.99);


use jave; 


insert into tracks values (1, 16, 'Mama');
insert into tracks values (2, 16, 'Wannabe');
insert into tracks values (3, 16, 'Spice up your life');

*/
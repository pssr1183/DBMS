create table sailorss(sid int primary key, sname varchar(20), rating integer, age real);
create table boatss(bid int primary key,bname varchar(20), color varchar(20));
create table reservess(sid int, bid int, day date,foreign key (sid) references sailorss (sid),foreign key (bid) references boatss (bid), primary key(sid,bid,day));

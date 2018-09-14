
/* DB이름 : oversea*/
/* table 이름 : board*/


create table board(
num int not null primary key auto_increment,
writer varchar(10),
email  varchar(30),
subject  varchar(50),
passwd  varchar(12),
reg_date datetime,
readcount int default 0,
ref int,
re_step smallint,
re_level smallint,
content text,
ip  varchar(20)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

drop table board;

select * from board;


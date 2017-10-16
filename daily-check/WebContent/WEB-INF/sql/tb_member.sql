drop table tb_member;
create table tb_member (
	user_id varchar(10),
	user_name varchar(20),
	user_passwd varchar(50),
	group_id varchar(10)
);

alter table tb_member add primary key (user_id);
alter table tb_member add FOREIGN KEY (group_id) REFERENCES tb_member_group;

select count(*) cnt
from tb_member t1 inner join tb_member_group t2 on t1.group_id = t2.group_id
where t2.group_name = 'ADMIN';

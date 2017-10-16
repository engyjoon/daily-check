create table tb_member_group (
	group_id varchar(10),
	group_name varchar(20)
);

alter table tb_member_group add primary key (group_id);

insert into tb_member_group values('1','ADMIN');
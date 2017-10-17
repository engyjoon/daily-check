drop table tb_chk_sv_fs;
create table tb_chk_sv_fs (
	chk_hist_no integer,
	system_id varchar(10),
	chk_result varchar(100)
);

alter table tb_chk_sv_fs add FOREIGN KEY (chk_hist_no) REFERENCES tb_chk_hist;
alter table tb_chk_sv_fs add FOREIGN KEY (system_id) REFERENCES tb_system;
alter table tb_chk_sv_fs add CONSTRAINT chk_hist_no_system_id_key UNIQUE (chk_hist_no, system_id);
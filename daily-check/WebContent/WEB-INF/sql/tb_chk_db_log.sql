create table tb_chk_db_log (
	chk_hist_no serial,
	system_id varchar(10),
	cnt_ora integer,
	cnt_tns integer,
	cnt_2pc integer,
	chk_result varchar(100)
);
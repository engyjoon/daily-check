create table tb_chk_db_tbs (
	chk_hist_no serial,
	system_id varchar(10),
	division varchar(10),
	perc_use numeric(5,2),
	perc_free numeric(5,2),
	amt_plus integer,
	comment varchar(100)
);
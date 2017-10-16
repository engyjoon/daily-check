create table tb_chk_hist (
	chk_hist_no serial,
	chk_user_id varchar(10),
	chk_service_id varchar(10),
	chk_comment varchar(200),
	chk_date timestamp with time zone
);
CREATE TABLE free_doc (
	fdoc_no	number		NOT NULL,
	fdoc_email	varchar2(50)		NOT NULL,
	fdoc_subject	varchar2(150)		NULL,
	fdoc_content	varchar2(2000)		NULL,
	fdoc_date	date		NULL,
	fdoc_readcount	number		NULL,
	fdoc_expiry	number		NULL,
	fdoc_code	varchar2(20)		NULL,
	fdoc_price	varchar2(20)		NULL,
	fdoc_big	varchar2(20)		NULL,
	fdoc_kindof	varchar2(20)		NULL,
	fdoc_thumbnail	varchar2(200)		NULL,
	fdoc_loc	varchar2(50)		NULL
);

CREATE TABLE free_auth (
	fadoc_no	number		NOT NULL,
	fadoc_r_email	varchar2(50)		NOT NULL,
	fadoc_confirm_no	number		NOT NULL,
	fadoc_s_email	varchar2(50)		NOT NULL,
	fadoc_subject	varchar2(150)		NULL,
	fadoc_content	varchar2(2000)		NULL,
	fadoc_date	date		NULL,
	fadoc_readcount	number		NULL,
	fadoc_check	varchar2(20)		NULL,
);

CREATE TABLE free_doc_confirm (
	confirm_no	number		NOT NULL,
	confirm_fdoc_no	number		NOT NULL,
	confirm_fdoc_s_email	varchar2(50)		NOT NULL,
	confirm_fdoc_r_email	varchar2(50)		NULL,
	confirm_fdoc_code	varchar2(20)		NULL,
    confirm_fdoc_expiry	number		NULL,
	confirm_fdoc_price	varchar2(20)		NULL,
	confirm_s_date	date		NULL,
	confirm_e_date	date		NULL,
	confirm_account	varchar2(50)		NULL,
	confirm_big	varchar2(20)		NULL,
	confirm_fdoc_kindof	varchar2(20)		NULL
);

CREATE TABLE member_list (
	email	varchar2(50)		NOT NULL,
	pw	varchar2(20)		NULL,
	name	varchar2(20)		NULL,
	nick	varchar2(50)		NULL,
	phone	number		        NULL,
	local	varchar2(20)		NULL,
	grade	varchar2(50)		NULL
);

commit;
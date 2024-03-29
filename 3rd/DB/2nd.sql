ALTER TABLE member ADD address3 VARCHAR2(100);
ALTER TABLE member ADD provider VARCHAR2(30);


CREATE TABLE banner (
	bseq NUMBER(5),
	subject VARCHAR2(30),
	order_seq NUMBER(3) DEFAULT 1,
	useyn CHAR(1) DEFAULT 'Y',
	indate DATE DEFAULT SYSDATE,
	video VARCHAR(255),
	btitle VARCHAR2(100),
	btext VARCHAR2(1500),
	top VARCHAR2(10),
	left VARCHAR2(10),
	PRIMARY KEY (bseq)
);

CREATE SEQUENCE banner_seq START WITH 1;

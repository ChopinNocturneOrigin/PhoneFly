DROP TABLE member;

CREATE TABLE member (
	id	varchar2(20)		NOT NULL,
	pwd	varchar2(20)		NOT NULL,
	name	varchar2(20)		NOT NULL,
	email	varchar2(40)		NOT NULL,
	zipnum	varchar2(10)		NOT NULL,
	address1	varchar2(50)		NOT NULL,
	address2	varchar2(50)		NOT NULL,
	phone	varchar2(20)		NOT NULL,
	useyn	char(1)		DEFAULT 'Y'
);



DROP TABLE address;

CREATE TABLE address (
	zip_num	varchar2(10)		NOT NULL,
	sido	varchar(30)		NOT NULL,
	gugun	varchar2(50)		NOT NULL,
	zip_code	varchar2(30)		NULL,
	bunji	varchar2(30)		NULL,
	dong	varchar2(100)		NULL
);

DROP TABLE orders;

CREATE TABLE orders (
	oseq	number(10)		NOT NULL,
	id	varchar2(20)		NOT NULL,
	indate	date	DEFAULT SYSDATE	NOT NULL
);


DROP TABLE cart;

CREATE TABLE cart (
	cseq	number(10)		NOT NULL,
	id	varchar2(20)		NOT NULL,
	pseq	number(10)		NOT NULL,
	quantity	number(5)	DEFAULT 1	NOT NULL,
	result	char(1)	DEFAULT '1'	NOT NULL,
	indate	date	DEFAULT SYSDATE	NULL
);


DROP TABLE worker;

CREATE TABLE worker (
	id	varchar2(20)		NOT NULL,
	pwd	varchar2(20)		NOT NULL,
	name	varchar2(20)		NOT NULL
);

DROP TABLE notice;

CREATE TABLE notice (
	nseq	number(5)		NOT NULL,
	id	varchar2(20)		NOT NULL,
	subject	varchar2(100)		NOT NULL,
	content	varchar2(1000)		NOT NULL,
	indate	date	DEFAULT SYSDATE	NULL
);

DROP TABLE order_detail;

CREATE TABLE order_detail (
	odseq	number(10)		NOT NULL,
	oseq	number(10)		NOT NULL,
	pseq	number(10)		NOT NULL,
	quantity	number(5)		NOT NULL,
	result	char(1)	DEFAULT 1	NOT NULL
);

DROP TABLE review;

CREATE TABLE review (
	rseq	number(10)		NOT NULL,
	id	varchar2(20)		NOT NULL,
	subject	varchar2(100)		NOT NULL,
	content	varchar2(1000)		NOT NULL,
	indate	date	DEFAULT SYSDATE	NULL
);


DROP TABLE product;

CREATE TABLE product (
	pseq	number(10)		NOT NULL,
	name	varchar2(100)		NOT NULL,
	price1	number(10)		NOT NULL,
	price2	number(10)		NOT NULL,
	price3	number(10)		NOT NULL,
	content	varchar2(1000)		NOT NULL,
	image	varchar2(255)		NOT NULL,
	useyn	char(1)	DEFAULT 'Y'	NULL,
	eventyn	char(1)	DEFAULT 'N'	NULL,
	indate	date	DEFAULT SYSDATE,
	mfc	VARCHAR2(255)		NULL
);

DROP TABLE qna;

CREATE TABLE qna (
	qseq	number(5)		NOT NULL,
	id	varchar2(20)		NOT NULL,
	subject	varchar2(100)		NOT NULL,
	content	varchar2(1000)		NOT NULL,
	reply	varchar2(1000)		NULL,
	rep	char(1)	DEFAULT '1'	NULL,
	indate	date	DEFAULT SYSDATE	NULL
);


DROP TABLE event;

CREATE TABLE event (
	eseq	number(10)		NOT NULL,
	id	varchar2(20)		NOT NULL,
	subject	varchar2(100)		NOT NULL,
	content	varchar2(1000)		NOT NULL,
	indate	date	DEFAULT SYSDATE	NULL
);

DROP TABLE comm;

CREATE TABLE comm (
	mseq	number(10)		NOT NULL,
	name	varchar2(20)		NOT NULL
);

DROP TABLE color;

CREATE TABLE color (
	ceseq	number(10)		NOT NULL,
	name	varchar2(20)		NOT NULL,
	ccode	varchar2(20)		NOT NULL
);

DROP TABLE rplan;

CREATE TABLE rplan (
	rseq	number(10)		NOT NULL,
	mseq	number(10)		NOT NULL,
	name	varchar2(100)		NOT NULL,
	charge	number(10)		NOT NULL,
	dp	varchar2(30)		NOT NULL,
	pp	varchar2(30)		NOT NULL,
	mp	varchar2(30)	DEFAULT '무제한'	NULL
);

DROP TABLE color_detail;

CREATE TABLE color_detail (
	cdseq	number(10)		NOT NULL,
	pseq	number(10)		NOT NULL,
	ceseq	number(10)		NOT NULL
);

ALTER TABLE member ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	id
);

ALTER TABLE orders ADD CONSTRAINT PK_ORDERS PRIMARY KEY (
	oseq
);

ALTER TABLE cart ADD CONSTRAINT PK_CART PRIMARY KEY (
	cseq
);

ALTER TABLE worker ADD CONSTRAINT PK_WORKER PRIMARY KEY (
	id
);

ALTER TABLE notice ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	nseq
);

ALTER TABLE order_detail ADD CONSTRAINT PK_ORDER_DETAIL PRIMARY KEY (
	odseq
);

ALTER TABLE review ADD CONSTRAINT PK_REVIEW PRIMARY KEY (
	rseq
);

ALTER TABLE product ADD CONSTRAINT PK_PRODUCT PRIMARY KEY (
	pseq
);

ALTER TABLE qna ADD CONSTRAINT PK_QNA PRIMARY KEY (
	qseq
);

ALTER TABLE event ADD CONSTRAINT PK_EVENT PRIMARY KEY (
	eseq
);

ALTER TABLE comm ADD CONSTRAINT PK_COMM PRIMARY KEY (
	mseq
);

ALTER TABLE color ADD CONSTRAINT PK_COLOR PRIMARY KEY (
	ceseq
);

ALTER TABLE rplan ADD CONSTRAINT PK_RPLAN PRIMARY KEY (
	rseq
);

ALTER TABLE color_detail ADD CONSTRAINT PK_COLOR_DETAIL PRIMARY KEY (
	cdseq
);

ALTER TABLE orders ADD CONSTRAINT FK_member_TO_orders_1 FOREIGN KEY (
	id
)
REFERENCES member (
	id
);

ALTER TABLE cart ADD CONSTRAINT FK_member_TO_cart_1 FOREIGN KEY (
	id
)
REFERENCES member (
	id
);

ALTER TABLE cart ADD CONSTRAINT FK_product_TO_cart_1 FOREIGN KEY (
	pseq
)
REFERENCES product (
	pseq
);

ALTER TABLE notice ADD CONSTRAINT FK_worker_TO_notice_1 FOREIGN KEY (
	id
)
REFERENCES worker (
	id
);

ALTER TABLE order_detail ADD CONSTRAINT FK_orders_TO_order_detail_1 FOREIGN KEY (
	oseq
)
REFERENCES orders (
	oseq
);

ALTER TABLE order_detail ADD CONSTRAINT FK_product_TO_order_detail_1 FOREIGN KEY (
	pseq
)
REFERENCES product (
	pseq
);

ALTER TABLE review ADD CONSTRAINT FK_member_TO_review_1 FOREIGN KEY (
	id
)
REFERENCES member (
	id
);

ALTER TABLE qna ADD CONSTRAINT FK_member_TO_qna_1 FOREIGN KEY (
	id
)
REFERENCES member (
	id
);

ALTER TABLE event ADD CONSTRAINT FK_worker_TO_event_1 FOREIGN KEY (
	id
)
REFERENCES worker (
	id
);

ALTER TABLE rplan ADD CONSTRAINT FK_comm_TO_rplan_1 FOREIGN KEY (
	mseq
)
REFERENCES comm (
	mseq
);

ALTER TABLE color_detail ADD CONSTRAINT FK_product_TO_color_detail_1 FOREIGN KEY (
	pseq
)
REFERENCES product (
	pseq
);

ALTER TABLE color_detail ADD CONSTRAINT FK_color_TO_color_detail_1 FOREIGN KEY (
	ceseq
)
REFERENCES color (
	ceseq
);


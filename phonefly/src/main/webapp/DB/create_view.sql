-- 4개의 베스트 상품 view 생성
CREATE OR REPLACE VIEW main_best_pro_view AS
SELECT * FROM
(SELECT * FROM product WHERE bestyn='Y' ORDER BY indate DESC)
WHERE rownum <= 4;

SELECT * FROM main_best_pro_view;



-- 4개의 이벤트 상품 view 생성
CREATE OR REPLACE VIEW main_event_pro_view AS
SELECT * FROM
(SELECT * FROM product WHERE eventyn='Y' ORDER BY indate DESC)
WHERE rownum <= 4;

SELECT * FROM main_event_pro_view;



-- order_detail_view 생성


create or replace view order_detail_view
as
select  d.odseq, d.pseq, d.id, d.result, d.discount,
		d.buyplan, d.dcmonth, d.dctotal, d.mmonth, d.mtotal, d.cc, d.indate, d.cseq,
			p.price2, p.name as pname,
			c.name as cname, 
			r.name as rname 
from order_detail d, comm c, product p, rplan r
where d.rseq=r.rseq and r.mseq=c.mseq and d.pseq=p.pseq;



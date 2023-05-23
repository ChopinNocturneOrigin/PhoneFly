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

-- orders 와 order_detail 의 join 으로 
-- 1. 주문번호(oseq)에 따른 주문상품들의 표시 
-- 2. 상품번호에 따른 상품 이름과 가격 등의 정보 표시
-- 3. 아이디에 따른 고객 이름과 배송주소 등의 정보 표시

create or replace view order_view
as
select  d.odseq, o.oseq, o.indate, o.id, 
			m.name as mname, m.zip_num, m.address1, m.address2, m.phone,
			d.pseq, p.price2, d.quantity, d.result, p.name as pname
from orders o, order_detail d, member m, product p
where o.oseq=d.oseq and o.id=m.id and d.pseq=p.pseq;

select * from order_view;


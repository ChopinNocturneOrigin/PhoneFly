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

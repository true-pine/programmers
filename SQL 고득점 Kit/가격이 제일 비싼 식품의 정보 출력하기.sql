select * from 
(select PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE 
from FOOD_PRODUCT 
order by PRICE desc) tb 
where rownum = 1
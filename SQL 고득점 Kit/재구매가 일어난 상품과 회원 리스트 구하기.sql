-- count() over(), distinct 를 이용한 쿼리
select distinct tb.USER_ID,
       tb.PRODUCT_ID
from
(select count(*) over(partition by os.USER_ID, os.PRODUCT_ID) as CNT, 
        os.*
from ONLINE_SALE os) tb
where tb.CNT > 1
order by tb.USER_ID asc, tb.PRODUCT_ID desc

-- group by having 을 이용한 쿼리
select USER_ID, PRODUCT_ID
from ONLINE_SALE
group by USER_ID, PRODUCT_ID
having count(*) > 1
order by USER_ID asc, PRODUCT_ID desc
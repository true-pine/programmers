select to_char(tb.SALES_DATE, 'YYYY-MM-DD') as SALES_DATE,
       tb.PRODUCT_ID,
       tb.USER_ID,
       tb.SALES_AMOUNT
from (select SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT from ONLINE_SALE
      union all
      select SALES_DATE, PRODUCT_ID, null, SALES_AMOUNT from OFFLINE_SALE) tb
where to_char(tb.SALES_DATE, 'YYYY-MM') = '2022-03'
order by tb.SALES_DATE asc, PRODUCT_ID asc, USER_ID asc
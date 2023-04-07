select distinct ri.REST_ID,
                ri.REST_NAME,
                ri.FOOD_TYPE,
                ri.FAVORITES,
                ri.ADDRESS,
                round(avg(rr.REVIEW_SCORE) over(partition by rr.REST_ID),2) as SCORE
from REST_INFO ri
inner join REST_REVIEW rr on ri.REST_ID = rr.REST_ID
where ri.ADDRESS like '서울%'
order by SCORE desc, ri.FAVORITES desc
-- '%서울%' 이렇게 작성하면 틀렸다고 함 ㅋㅋㅋ
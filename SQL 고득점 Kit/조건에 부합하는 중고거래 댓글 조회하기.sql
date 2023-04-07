select ugb.TITLE,
       ugb.BOARD_ID,
       ugr.REPLY_ID,
       ugr.WRITER_ID,
       ugr.CONTENTS,
       to_char(ugr.CREATED_DATE, 'YYYY-MM-DD') as CREATED_DATE
from USED_GOODS_BOARD ugb 
inner join USED_GOODS_REPLY ugr on ugb.BOARD_ID = ugr.BOARD_ID
where to_char(ugb.CREATED_DATE, 'YYYY-MM') = '2022-10'
order by ugr.CREATED_DATE asc, ugb.TITLE asc
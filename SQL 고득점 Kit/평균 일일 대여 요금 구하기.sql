select round(avg(nvl(DAILY_FEE, 0)),0) as AVERAGE_FEE 
from CAR_RENTAL_COMPANY_CAR 
where CAR_TYPE = 'SUV'
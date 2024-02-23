create schema sale_sample;
use sale_sample;
select * from sale_sample.sale_samples;
-- checking unique values
select distinct status from sale_sample.sale_samples; 
select distinct year_id from sale_sample.sale_samples;
select distinct PRODUCTLINE from sale_sample.sale_samples;
select distinct COUNTRY from sale_sample.sale_samples;
select distinct DEALSIZE from sale_sample.sale_samples;
select distinct TERRITORY from sale_sample.sale_samples;
select distinct MONTH_ID from sale_sample.sale_samples
where year_id = 2005;
-- ANALYSIS;
-- Let's start by grouping sales by productline;
select PRODUCTLINE, sum(sales) Revenue
from sale_sample.sale_samples
group by PRODUCTLINE
order by 2 desc;

select YEAR_ID, sum(sales) Revenue
from sale_sample.sale_samples
group by YEAR_ID
order by 2 desc;

select DEALSIZE, sum(sales) Revenue
from sale_sample.sale_samples
group by DEALSIZE
order by 2 desc;

--- What was the best month for sales in a specific year? How much was earned that month? 
select  MONTH_ID, sum(sales) Revenue, count(ORDERNUMBER) Frequency
from sale_sample.sale_samples
where YEAR_ID = 2004 -- change year to see the rest
group by  MONTH_ID
order by 2 desc;

-- November seems to be the month, what product do they sell in November, Classic 
select  MONTH_ID, PRODUCTLINE, sum(sales) Revenue, count(ORDERNUMBER) Frequency
from sale_sample.sale_samples
where YEAR_ID = 2004 and MONTH_ID = 11 -- change year to see the rest
group by  MONTH_ID, PRODUCTLINE
order by 3 desc;

-- Who is our best customer (this could be best answered with RFM)
 #rfm
WITH rfm AS 
(
    SELECT 
        CUSTOMERNAME, 
        SUM(sales) AS MonetaryValue,
        AVG(sales) AS AvgMonetaryValue,
        COUNT(ORDERNUMBER) AS Frequency,
        MAX(ORDERDATE) AS last_order_date,
        (SELECT MAX(ORDERDATE) FROM sale_sample.sale_samples) AS max_order_date,
        ABS(DATEDIFF(MAX(ORDERDATE), (SELECT MAX(ORDERDATE) FROM sale_sample.sale_samples))) AS Recency
    FROM sale_sample.sale_samples
    GROUP BY CUSTOMERNAME
),
rfm_calc AS
(
    SELECT 
        r.*,
        NTILE(4) OVER (ORDER BY Recency DESC) AS rfm_recency,
        NTILE(4) OVER (ORDER BY Frequency) AS rfm_frequency,
        NTILE(4) OVER (ORDER BY MonetaryValue) AS rfm_monetary
    FROM rfm r
)
SELECT 
    c.*, 
    rfm_recency + rfm_frequency + rfm_monetary AS rfm_cell,
    CONCAT(rfm_recency, rfm_frequency, rfm_monetary) AS rfm_cell_string
FROM rfm_calc c;

-- Create a new table for the query result
CREATE TABLE IF NOT EXISTS rfmm AS
SELECT 
    c.*, 
    rfm_recency + rfm_frequency + rfm_monetary AS rfm_cell,
    CONCAT(rfm_recency, rfm_frequency, rfm_monetary) AS rfm_cell_string
FROM rfm_calc c;


select CUSTOMERNAME , rfm_recency, rfm_frequency, rfm_monetary,
	case 
		when rfm_cell_string in (111, 112 , 121, 122, 123, 132, 211, 212, 114, 141) then 'lost_customers'  -- lost customers
		when rfm_cell_string in (133, 134, 143, 244, 334, 343, 344, 144) then 'slipping away, cannot lose' -- (Big spenders who haven’t purchased lately) slipping away
		when rfm_cell_string in (311, 411, 331) then 'new customers'
		when rfm_cell_string in (222, 223, 233, 322) then 'potential churners'
		when rfm_cell_string in (323, 333,321, 422, 332, 432) then 'active' -- (Customers who buy often & recently, but at low price points)
		when rfm_cell_string in (433, 434, 443, 444) then 'loyal'
	end rfm_segment
from rfmm ;

-- What products are most often sold together? 
SELECT 
    ORDERNUMBER, 
    GROUP_CONCAT(PRODUCTCODE ORDER BY PRODUCTCODE ASC) AS ProductCodes
FROM sale_sample.sale_samples s
WHERE STATUS = 'Shipped'
GROUP BY ORDERNUMBER
HAVING COUNT(*) = 3;
-- EXTRAS ----
-- What city has the highest number of sales in a specific country
SELECT 
    city, 
    SUM(sales) AS Revenue
FROM 
    sale_sample.sale_samples
WHERE 
    country = 'UK'
GROUP BY 
    city
ORDER BY 
    2 DESC
LIMIT 0, 50000;

--- What is the best product in United States?
select country, YEAR_ID, PRODUCTLINE, sum(sales) Revenue
from sale_sample.sale_samples
where country = 'USA'
group by  country, YEAR_ID, PRODUCTLINE
order by 4 desc













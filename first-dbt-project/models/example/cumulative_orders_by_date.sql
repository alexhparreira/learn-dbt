select o_orderdate,
       sum(o_totalprice) over(order by o_orderdate asc rows between unbounded preceding and current row) as cumulative_sales
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
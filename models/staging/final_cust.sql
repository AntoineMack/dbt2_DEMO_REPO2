-- Create final customer table.  This table will join the nation and region
-- table with the customer table

select c.C_CUSTKEY, c.C_NAME, c.C_ADDRESS, n.N_NAME, r.R_NAME
from (select * from {{source('raw','customer')}}) as c
join (select * from {{source('raw','nation')}}) as n
on c.C_NATIONKEY = n.N_NATIONKEY
join
(select * from {{source('raw','region')}}) as r
on n.N_REGIONKEY = r.R_REGIONKEY

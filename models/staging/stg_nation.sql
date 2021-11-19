-- Nation staging file
with nation as (select * from {{source('raw','nation')}})
select * from nation
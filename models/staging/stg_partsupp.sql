-- Partsupp staging file
with partsupp as (select * from {{source('raw','partsupp')}})
select * from partsupp
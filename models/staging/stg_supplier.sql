-- Supplier staging file
with supplier as (select * from {{source('raw','supplier')}})
select * from supplier
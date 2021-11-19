--Customer staging file
with customer as (select * from {{source('raw','customer')}})
select * from customer
-- Region staging file
with region as (select * from {{source('raw','region')}})
select * from region
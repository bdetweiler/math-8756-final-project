
select *
from (
    select price.PRICE_ID, count(*) count
    from scotch,
    price,
    retailer
    where scotch.SCOTCH_ID = price.SCOTCH
    and retailer.RETAILER_ID = price.RETAILER
    group by scotch.SCOTCH_ID
    )
where count > 9
order by count


select price.price_id, price.price, retailer.NAME, producer.name, distillery.name, scotch.*, price.*
from scotch, price, producer, distillery, retailer
where price.SCOTCH = scotch.SCOTCH_ID
and scotch.SCOTCH_ID in (2072) -- 379
and scotch.PRODUCER = producer.PRODUCER_ID
and scotch.DISTILLERY = distillery.DISTILLERY_ID
and price.RETAILER = retailer.RETAILER_ID
order by retailer.name

delete from
price where price_id in (784, 785)

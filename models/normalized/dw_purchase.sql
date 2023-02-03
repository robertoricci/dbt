with dw_purchase as (
    select pro.MAKE ,
     pro.YEAR ,pro.MODEL ,pro.PRICE,pur.ID,pur.ADDED_TO_CART_AT ,pur.PURCHASED_AT
    from file.purchases pur inner join file.products pro
    on pur.product_id = pro.id
    order by 2 desc
)
select * from dw_purchase


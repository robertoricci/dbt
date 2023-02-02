with dw_purchase as (
    select pro.MAKE ,
     pro.YEAR ,pro.MODEL ,pro.PRICE,pur.ID,pur.ADDED_TO_CART_AT ,pur.PURCHASED_AT
    from desenv.purchases pur inner join desenv.products pro
    on pur.product_id = pro.id
    order by 2 desc
)
select * from dw_purchase


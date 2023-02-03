with dw_faturamento_ano as (
    select DATE_PART('year', TO_DATE( purchased_at) ) AS "Ano"
        ,sum(ap.price) as "Faturamento"
    from file.purchases pur inner join file.products ap
    on pur.product_id = ap.id
    group by 1
    order by 1

)
select * from dw_faturamento_ano

select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        customer_id as value_field,
        count(*) as n_records

    from `ae-project-341501`.`coffee_shop`.`customers`
    group by customer_id

)

select *
from all_values
where value_field not in (
    'placed','shipped','completed','returned'
)



      
    ) dbt_internal_test
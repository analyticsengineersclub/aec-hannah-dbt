select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        customers as value_field,
        count(*) as n_records

    from `ae-project-341501`.`coffee_shop`.`monthly_customers`
    group by customers

)

select *
from all_values
where value_field not in (
    'placed','shipped','completed','returned'
)



      
    ) dbt_internal_test

    
    

with dbt_test__target as (
  
  select customers as unique_field
  from `ae-project-341501`.`coffee_shop`.`monthly_customers`
  where customers is not null
  
)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1



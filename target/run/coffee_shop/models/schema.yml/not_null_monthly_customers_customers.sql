select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `ae-project-341501`.`coffee_shop`.`monthly_customers`
where customers is null



      
    ) dbt_internal_test
select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from `ae-project-341501`.`coffee_shop`.`customers`
where customer_id is null



      
    ) dbt_internal_test
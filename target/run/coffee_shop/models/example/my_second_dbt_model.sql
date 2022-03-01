

  create or replace view `ae-project-341501`.`coffee_shop`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `ae-project-341501`.`coffee_shop`.`my_first_dbt_model`
where id = 1;


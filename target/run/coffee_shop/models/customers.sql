

  create or replace table `ae-project-341501`.`coffee_shop`.`customers`
  
  
  OPTIONS()
  as (
    

SELECT c.id as customer_id, 
        c.name, 
        c.email,  
        min(o.created_at) as first_order_at, 
        count(distinct o.id) as number_of_orders
FROM `analytics-engineers-club`.`coffee_shop`.`customers` c 
LEFT JOIN  `analytics-engineers-club`.`coffee_shop`.`orders` o on c.id = o.customer_id
GROUP BY 1, 2, 3
ORDER BY first_order_at
  );
  
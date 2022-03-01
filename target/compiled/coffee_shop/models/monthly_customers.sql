SELECT 
    date_trunc(first_order_at, month) as month,
    count(customer_id) as customers
FROM `ae-project-341501`.`coffee_shop`.`customers`
GROUP BY 1
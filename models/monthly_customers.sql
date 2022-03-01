SELECT 
    date_trunc(first_order_at, month) as month,
    count(customer_id) as customers
FROM {{ ref('customers') }}
GROUP BY 1
        
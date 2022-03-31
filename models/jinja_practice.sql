# AE Bootcamp
# SQL 
select
  date_trunc(sold_at, month) as date_month,
  sum(case when product_category = 'coffee beans' then amount end) as coffee_beans_amount,
  sum(case when product_category = 'merch' then amount end) as merch_amount,
  sum(case when product_category = 'brewing supplies' then amount end) as brewing_supplies_amount
-- you may have to `ref` a different model here, depending on what you've built previously
from {{ ref('item_sales') }}
group by 1;


# Jinja converted 

{% set product_category = ['coffee beans', 'merch', 'brewing supplies'] %}

select
  date_trunc(sold_at, month) as date_month,

  {% or product in product_category%}
  sum(case when product_category = {{ product }} then amount end) as {{ product }}_amount
          {% if not loop.last %}
            ,
        {% endif %}
    {% endfor %}
from {{ ref('item_sales') }}
group by 1;

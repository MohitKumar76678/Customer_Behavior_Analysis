select * from customer limit 10;

select gender, sum(purchase_amount) as revenue
from customer
group by gender;

select customer_id, age, purchase_amount
from customer
where discount_applied='Yes' and purchase_amount>=(select avg(purchase_amount) from customer)

select item_purchased, round(avg(review_rating :: numeric),2) as rating
from customer
group by item_purchased
order by rating desc limit 5;

select shipping_type, round(avg(purchase_amount),2) as Avg_Purchase_Amount
from customer
where shipping_type in ('Express','Standard')
group by shipping_type;

select subscription_status,
count(subscription_status) as NO_of_customer,
round(avg(purchase_amount),2) as Avg_Spend,
sum(purchase_amount) as Total_revenue
from customer
group by subscription_status
order by Total_revenue, Avg_Spend;

select item_purchased,
round(100 * sum(case when discount_applied='Yes' then 1 else 0 end)/count(*),2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc limit 5;

select case
			when previous_purchases>10 then 'Loyal'
			when previous_purchases>1 then 'Returning'
			else 'New'
		end as segment,
count(*) as No_of_Customers
from customer
group by segment
order by No_of_Customers desc;

with item_count as (
	select category,item_purchased,
	count(customer_id) as Total_Order,
	ROW_NUMBER() over (partition by category order by count(customer_id) desc) as item_rank
	from customer
	group by category, item_purchased
)
select item_rank,category,item_purchased,Total_Order
from item_count
where item_rank<=3;

select subscription_status, count(*) as repeat_buyers
from customer
where previous_purchases>5
group by subscription_status;

select age_group, sum(purchase_amount) as revenue
from customer
group by age_group
order by revenue desc;
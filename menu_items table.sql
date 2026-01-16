-- View of the menu_items table.

select * 
from menu_items;

-- How many items are on the menu? 

select count(*) 
from menu_items;

-- What are the least and most expensive items on the menu?

select * 
from menu_items
order by price; # Least expensive

select * 
from menu_items
order by price desc; # Most expensive

-- How many Italian dishes are on the menu?

select * 
from menu_items
where category = 'Italian';

## or 

select count(*) 
from menu_items
where category = 'Italian';

-- What are the least and most expensive Italian dishes on the menu?

select * 
from menu_items
where category = 'Italian'
order by price
limit 3; # Top 3 least expensive Italian 

select * 
from menu_items
where category = 'Italian'
order by price desc
limit 3; # Top 3 most expensive Italian

-- How many dishes are in each category? 

select category, count(menu_item_id) as num_dishes
from menu_items
group by category;

-- What is the average dish price within each category?

select category, avg(price) as avg_price
from menu_items
group by category;
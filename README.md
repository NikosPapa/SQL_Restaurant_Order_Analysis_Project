# Restaurant Orders Analysis Project

## Project Overview
This project analyzes a restaurant's **menu and order data** using SQL. The focus is on **exploratory data analysis (EDA)** to understand:

- Menu composition and pricing trends  
- Customer order patterns  
- Item popularity and revenue contribution  

The project workflow begins with creating the schema and tables, importing the data, performing **sub-analyses** on each table (`menu_items` and `order_details`), and concludes with a **combined analysis** linking both tables to extract business insights.

---

## Data Dictionary

<div align="center">

| Table          | Field              | Description                                           |
|----------------|------------------|-------------------------------------------------------|
| menu_items     | menu_item_id      | Unique ID of a menu item                              |
| menu_items     | item_name         | Name of a menu item                                   |
| menu_items     | category          | Category or type of cuisine of the menu item         |
| menu_items     | price             | Price of the menu item (US Dollars $)                |
| order_details  | order_details_id  | Unique ID of an item in an order                     |
| order_details  | order_id          | ID of an order                                       |
| order_details  | order_date        | Date an order was put in (MM/DD/YY)                 |
| order_details  | order_time        | Time an order was put in (HH:MM:SS AM/PM)           |
| order_details  | item_id           | Matches the menu_item_id in the menu_items table    |

</div>

---

## Project Scope

- **Database setup and table creation**  
- **Exploratory data analysis (EDA)** of menu items and order details  
- **Category-level pricing and popularity analysis**  
- **Combined insights** linking orders with menu items  
- **Actionable insights** for restaurant strategy  

---

## Exploratory Data Analysis (EDA)

The EDA consisted of **SQL queries** to inspect, summarize, and analyze the data.

---

## Sub-Analysis 1: Menu Items Table (`menu_items`)

This analysis explores the **menu composition, pricing, and category trends**.

### Key Insights

- **Total items on the menu:** 32  
- **Least expensive item:** Edamame (Asian) — $5.00  
- **Most expensive item:** Shrimp Scampi (Italian) — $19.95  

- **Italian dishes:** 9 items  
  **Dishes:**  
  - Spaghetti  
  - Spaghetti & Meatballs  
  - Fettuccine Alfredo  
  - Meat Lasagna  
  - Cheese Lasagna  
  - Mushroom Ravioli  
  - Shrimp Scampi  
  - Chicken Parmesan  
  - Eggplant Parmesan  

- **Top 3 Least Expensive Italian Dishes:**  
  1. Spaghetti — $14.50  
  2. Fettuccine Alfredo — $14.50  
  3. Cheese Lasagna — $15.50  

- **Top 3 Most Expensive Italian Dishes:**  
  1. Shrimp Scampi — $19.95  
  2. Spaghetti & Meatballs — $17.95  
  3. Meat Lasagna — $17.95  

- **Number of dishes per category:**

<div align="center">

| Category  | Number of Dishes |
|-----------|-----------------|
| American  | 6               |
| Asian     | 8               |
| Mexican   | 9               |
| Italian   | 9               |

</div>

- **Average dish price per category:**

<div align="center">

| Category  | Average Price ($) |
|-----------|-----------------|
| American  | 10.07           |
| Asian     | 13.48           |
| Mexican   | 11.80           |
| Italian   | 16.75           |

</div>

### Observations

1. **Italian dishes** are the most expensive, reflecting premium menu items.  
2. **Asian dishes** include the cheapest item (Edamame at $5.00) and have moderate pricing overall.  
3. The menu is fairly balanced by category, with **American dishes being the fewest**.  
4. Pricing analysis highlights the **premium positioning of Italian cuisine** on the menu.

---

## Sub-Analysis 2: Order Details Table (`order_details`)

This analysis explores **order patterns, item frequency, and order volumes** to understand customer behavior.

### Key Insights

- **Date range of orders:** 2023-01-01 to 2023-03-31  
- **Total number of orders:** 5,370  
- **Total items ordered:** 12,234  

- **Orders with the most items:** 7 orders had 14 items each.  
  **Order IDs and item counts:**

<div align="center">

| order_id | num_items |
|----------|-----------|
| 330      | 14        |
| 440      | 14        |
| 443      | 14        |
| 1957     | 14        |
| 2675     | 14        |
| 3473     | 14        |
| 4305     | 14        |

</div>

- The remaining orders have **13 items or fewer**.

- **Number of orders with more than 12 items:** 20  

### Observations

1. Most orders contain **fewer than 12 items**, indicating typical customer order sizes.  
2. A small subset of orders (20) are unusually large, with **more than 12 items**, potentially for group or bulk orders.  
3. Identifying orders with the most items can help with **kitchen workload planning and inventory management**.  

---

## Combined Analysis: Linking Menu Items and Orders (`combined_analysis`)

The final analysis merges `menu_items` and `order_details` to answer **business-relevant questions**:

- **Popular categories based on order frequency**  
- **Revenue per category and per item**  
- **Average number of items per order**  
- **Most profitable dishes**  

This combined analysis provides actionable insights by connecting **menu composition with actual customer behavior**, enabling strategic decisions around menu optimization, pricing, and promotions.

---

### 1. Least and Most Ordered Items

<div align="center">

| Item Name       | Category | Number of Orders |
|-----------------|----------|-----------------|
| Chicken Tacos   | Mexican  | 123             |  <!-- Least ordered -->
| Hamburger       | American | 622             |  <!-- Most ordered -->

</div>

**Observations:**

- The Hamburger is the most ordered item, indicating strong popularity and consistent demand.  
- The Chicken Tacos is the least ordered item, suggesting lower demand; this item could benefit from promotion, menu repositioning, or removal to optimize sales.

---

### 2. Top 5 Highest-Spending Orders

<div align="center">

| Order ID | Total Spend ($) |
|----------|----------------|
| 440      | 192.15         |
| 2075     | 191.05         |
| 1957     | 190.10         |
| 330      | 189.70         |
| 2675     | 185.10         |

</div>

**Observations:**

- High-spend orders are likely **large group orders** or include **premium menu items**.  
- Targeting promotions or loyalty programs at these customers could increase revenue.

---

### 3. Composition of the Highest-Spend Order

<div align="center">

| Category | Number of Items |
|----------|----------------|
| Mexican  | 2              |
| American | 2              |
| Italian  | 8              |
| Asian    | 2              |

</div>

**Observations:**

- Italian dishes contributed the most to the order total.  
- Diverse category selection suggests this order could be for a **group or shared meal**.  

---

### 4. Details of Top 5 Highest-Spend Orders

<div align="center">

| Order ID | Category | Number of Items |
|----------|----------|----------------|
| 330      | Asian    | 6              |
| 330      | American | 1              |
| 330      | Italian  | 3              |
| 330      | Mexican  | 4              |
| 440      | Mexican  | 2              |
| 440      | American | 2              |
| 440      | Italian  | 8              |
| 440      | Asian    | 2              |
| 1957     | Asian    | 3              |
| 1957     | American | 3              |
| 1957     | Italian  | 5              |
| 1957     | Mexican  | 3              |
| 2075     | Asian    | 3              |
| 2075     | Mexican  | 3              |
| 2075     | American | 1              |
| 2075     | Italian  | 6              |
| 2675     | American | 3              |
| 2675     | Asian    | 3              |
| 2675     | Italian  | 4              |
| 2675     | Mexican  | 4              |

</div>

**Observations:**

- These top orders consistently include **Italian and Asian dishes**, which are often higher-priced menu items.  
- Tracking such orders helps identify **high-revenue items** and informs **inventory planning**.  
- The combination of **large quantities and diverse categories** indicates group orders or catering.

---

### Key Takeaways from Combined Analysis

1. **Item Popularity vs. Revenue:** Some items are highly ordered but not necessarily the most expensive, while some premium items contribute disproportionately to revenue.  
2. **Category Contribution:** Italian and Asian dishes are critical drivers of order value.  
3. **High-Spend Orders:** The top 5 orders highlight the importance of group or bulk orders in total revenue.  
4. **Business Applications:** Insights can inform **menu optimization, pricing strategies, and targeted promotions** to increase profitability.




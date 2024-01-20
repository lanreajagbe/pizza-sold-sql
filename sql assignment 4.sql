# question one
select a.pizza_sold,sum(Revenue) as Total_Revenue,b.Sales_target
    from Sales_table a join sales_target b
    on a.pizza_sold = b. pizza
    group by a.pizza_sold,b.Sales_target 
    order by Total_revenue desc
    Limit 3;
    
    # question two
    select branch,pizza_sold,sum(Revenue) as Total_Revenue,avg(Revenue)as Average_Revenue
    from sales_table
    group by branch,pizza_sold
    order by Total_Revenue,Average_Revenue;
    
    # question three
    select pizza_sold, avg(sales_target), sum(Revenue) as Total_revenue, avg(Revenue) as Average_revenue
    From sales_table a join sales_target b
    on a.pizza_sold = b. pizza
    group by pizza_sold
    having pizza_sold < avg(sales_target) and total_revenue < Average_revenue
    order by Total_revenue;
    
    #question four
    select branch,pizza_sold,sum(price) as Total_price,avg(price) as Average_price,sales_target,avg(sales_target) 
    from sales_table a join sales_target b
    on a.pizza_sold = b. pizza
    where branch <> "Ikoyi"
    group by branch,pizza_sold,sales_target
    having Total_price > Average_price and sales_target > avg(sales_target)
    order by Average_Price,avg(sales_target);
    
    # question five
    select branch, pizza_sold,sum(Revenue) as Total_Revenue from sales_table
    group by branch, pizza_sold
    order by Total_revenue desc;
    
    #question six
    select Date, pizza_sold, sum(revenue) as Total_Revenue,sum(target) as sales_target,var_pop(target - revenue) as variance
    from sales_table a join daily_sales_target c
    on a.Date = c. Day
    group by  pizza_sold,Date
    order by Total_Revenue,sales_target;
    
    #question seven
    select day, sum(revenue) as Total_Revenue ,sum(target)
	From sales_table a join daily_sales_target c
    on a.Date = c. Day
    Group by day
    Having Total_Revenue > sum(target);
    
    #question eight
    select date,sum(revenue) as Total_Revenue,target,avg(revenue) as average_revenue,day
    From sales_table a join daily_sales_target c
    on a.Date = c. Day
    group by date,day,target
    having total_revenue > average_revenue
    order by total_revenue, average_revenue;
    
    #question nine
    select date,sum(revenue) as total_revenue,target, sum(target) as total_target
    From sales_table a join daily_sales_target c
    on a.Date = c. Day
    group by date,target
    having total_revenue < total_target;
    
    
    
    
    
    
    
    
    
-- query to show customer purchases
SELECT 
    c.customer_id, 
    c.customer_name, 
    s.item_no, 
    i.description AS item_description, 
    s.quantity_sold
FROM Greenspot.sales s
JOIN Greenspot.items i ON s.item_no = i.item_no
JOIN Greenspot.customer c ON s.customer_id = c.customer_id
ORDER BY c.customer_id;

-- query to show sales by location
SELECT 
    s.sale_id, 
    l.location_name, 
    i.description AS item_description, 
    s.quantity_sold
FROM Greenspot.sales s
JOIN Greenspot.items i ON s.item_no = i.item_no
JOIN Greenspot.location l ON s.location_id = l.location_id
ORDER BY l.location_name;

-- query to show sales revenue per item
SELECT 
    s.item_no, 
    i.description AS item_description, 
    SUM(s.quantity_sold) AS total_quantity_sold, 
    SUM(s.quantity_sold * s.price) AS total_revenue
FROM Greenspot.sales s
JOIN Greenspot.items i ON s.item_no = i.item_no
GROUP BY s.item_no, i.description
ORDER BY total_revenue DESC;

-- query to show customers and total items they purchased
SELECT 
    c.customer_id, 
    c.customer_name, 
    SUM(s.quantity_sold) AS total_items_purchased
FROM Greenspot.sales s
JOIN Greenspot.customer c ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_items_purchased DESC;




USE sql_store;

SELECT 
    o.order_id, o.order_date,c.first_name AS customer, s.name AS shippers, os.name as 'order status'
FROM orders o
	LEFT JOIN customers c 
		ON c.customer_id = o.customer_id
	LEFT JOIN shippers s 
		ON o.shipper_id = s.shipper_id
	LEFT JOIN order_statuses os
		ON o.status = os.order_status_id
ORDER BY o.order_id;
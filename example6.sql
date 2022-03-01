USE sql_store;

SELECT 
    oi.order_id,
    oi.product_id,
    oi.quantity,
    oi.unit_price,
    oin.note
FROM order_items oi
JOIN order_item_notes oin 
    -- ON oi.order_id = oin.order_id
	-- AND oi.product_id = oin.product_id
	USING (order_id, product_id)
ORDER BY oi.order_id;
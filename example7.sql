USE sql_invoicing;

SELECT 
    p.date,
    c.name as customer,
    p.amount,
    pm.name as payment_method
FROM
    payments p
        JOIN
    clients c USING (client_id)
        JOIN
    payment_methods pm ON p.payment_method = pm.payment_method_id;

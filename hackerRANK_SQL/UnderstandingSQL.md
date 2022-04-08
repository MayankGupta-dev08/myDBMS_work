    ====================  TABLE 1: SELLERS (SALESPEOPLE)  ================

    	-------------------------------------------------
    		snum  |   sname   |  city        |   comm
    	--------|-----------|--------------|-------------
    		1001  |  Peel     |  London      |    .12
    		1002  |  Serres   |  San Jose    |    .13
    		1004  |  Motika   |  London      |    .11
    		1007  |  Rifkin   |  Barcelona   |    .15
    		1003  |  Axelrod  |  New York    |    .10
    	-------------------------------------------------



    ==================  TABLE 2: CUSTOMERS  ===============

    	---------------------------------------------------
    		cnum  |  cname     | city    | rating | snum
    	--------|------------|---------|--------|----------
    		2001  |  Hoffman   | London  |   100  | 1001
    		2002  |  Giovanni  | Rome    |   200  | 1003
    		2003  |  Liu       | SanJose |   200  | 1002
    		2004  |  Grass     | Berlin  |   300  | 1002
    		2006  |  Clemens   | London  |   100  | 1001
    		2008  |  Cisneros  | SanJose |   300  | 1007
    		2007  |  Pereira   | Rome    |   100  | 1004
    	---------------------------------------------------



    ==================  TABLE 3: (ORDERS)   ==================

    	----------------------------------------------------
    		onum  |    amt    |    odate    | cnum | snum
    	 -------|-----------|-------------|------|-----------
    		3001  |    18.69  |  10/03/1990 | 2008 | 1007
    		3003  |   767.19  |  10/03/1990 | 2001 | 1001
    		3002  |  1900.10  |  10/03/1990 | 2007 | 1004
    		3005  |  5160.45  |  10/03/1990 | 2003 | 1002
    		3006  |  1098.16  |  10/03/1990 | 2008 | 1007
    		3009  |  1713.23  |  10/04/1990 | 2002 | 1003
    		3007  |    75.75  |  10/04/1990 | 2004 | 1002
    		3008  |  4723.00  |  10/05/1990 | 2006 | 1001
    		3010  |  1309.95  |  10/06/1990 | 2004 | 1002
    		3011  |  9891.88  |  10/06/1990 | 2006 | 1001
    	----------------------------------------------------

Write a SELECT command that would display the order number, amount, and date for all rows from the orders table.

    SELECT onum, snum, odate FROM ORDERS;

Write a query that would display all rows from the Customers table for which the seller number = 1001.

    SELECT * FROM customers WHERE snum = 1001;

Write a query that would display a table with columns in the following order: city, sname, snum, comm.

    SELECT city, sname, snum, comm FROM SALESPEOPLE;

Write a SELECT command that would output a rating followed by the name of each customer in San Jose.

    SELECT rating,cname FROM customers WHERE city = 'San Jose';

Write a query that prints the snum values ​​of all salespeople in current order from the orders table without any repetition.

    SELECT DISTINCT snum FROM orders;

Write a query that can give you all orders with amounts greater than $1,000.

    SELECT * FROM orders WHERE amt > 1000;

Write a query that can give you the sname and city fields for all sellers in London with commissions above .10 .

    SELECT sname, city FROM salespeople WHERE city = 'London' AND comm > .10;

Write a query on the Customers table whose output can include all customers with score =< 100 if they are not located in Rome.

    SELECT * FROM customers WHERE rating > 100 OR NOT city = 'Rome';

Write two queries that would display all orders for October 3 or 4, 1990

    SELECT * FROM orders WHERE odate IN (10/03/1990, 10/04/1990);

Write a query that selects all customers served by Peel or Motika sellers. (Hint: of our sample tables, the snum field links the second table to the first).

    SELECT * FROM customers WHERE snum IN (1001, 1004);

Write a query that can return all customers whose names start with a letter between A and G.

    SELECT * FROM customers WHERE cname BETWEEN 'A' AND 'G';

Write a query that will select all customers whose names begin with the letter C.

    SELECT * FROM customers WHERE cname LIKE 'C%';

Write a query that will select all orders that have non-null or non-null values ​​in the amt(sum) field.

    SELECT * FROM orders WHERE NOT (amt = 0 OR amt IS NULL);

Write a query that would count the total number of orders for October 3rd.

    SELECT COUNT (*) FROM orders WHERE odate = 10/03/1990;

Write a query that would count the number of distinct non-NULL values ​​for the city field in the Customers table.

    SELECT COUNT(DISTINCT city) FROM customers;

Write a query that would select the smallest order amount for each customer.

    SELECT cnum, MIN(amt) FROM customers;

Write a query that selects customers whose names begin with the letter G, in alphabetical order.

    SELECT * FROM customers WHERE cname LIKE 'G%';

Write a query that would select the highest score in each city.

    SELECT city MAX (rating) FROM customers;

Write a query that would count the number of customers who register their orders every day. (If a seller had more than one order on a given day, it should only be counted once.)

    SELECT odate, count (DISTINCT snum) FROM orders GROUP BY odate;

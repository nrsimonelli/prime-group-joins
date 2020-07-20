-- 1. Get all customers and their addresses
SELECT * FROM "customers"
JOIN "addresses" ON "addresses"."customer_id" = "customers"."id";

-- 2. Get all orders and their line items 
SELECT "orders"."order_date", "products"."description", "line_items"."quantity" FROM "orders"
JOIN "line_items" ON "line_items"."order_id" = "orders"."id"
JOIN "products" ON "line_items"."product_id" = "products"."id";
-- 3. Which warehouses have cheetos?
SELECT "warehouse" FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
AND "products"."description" = 'cheeots';

-- 4. Which warehouses have diet pepsi?
SELECT "warehouse" FROM "warehouse"
JOIN "warehouse_product" ON "warehouse_product"."warehouse_id" = "warehouse"."id"
JOIN "products" ON "warehouse_product"."product_id" = "products"."id"
AND "products"."description" = 'diet pepsi';

-- 5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.


-- 6. How many customers do we have?
SELECT COUNT(*) FROM "customers";

-- 7. How many products do we carry?
SELECT COUNT(*) FROM "products";
```OR```
SELECT SUM("quantity") 
FROM "line_items";
-- 8. What is the total available on-hand quantity of diet pepsi?
SELECT SUM("on_hand")
FROM "warehouse_product"
WHERE "product_id" = 6;
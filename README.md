# SQL- Project

You are hired by a chain of online retail stores “Fastkart”. 

They have provided you with “Fastkart” database and seek answers to the following queries as the results from these queries will help the company in making data-driven decisions that will impact the overall growth of the online retail stores.

All the questions comes under MYSQL and the queries should be executed in MYSQL. (SQL Script  - Fastkart.sql )

1. List Top 3 products based on QuantityAvailable. (productid, productname,
QuantityAvailable ). (3 Rows) [Note: Products]

2. Display EmailId of those customers who have done more than ten purchases. (EmailId,
Total_Transactions).
(5 Rows) [Note: Purchasedetails, products]

3. List the Total QuantityAvailable category wise in descending order. (Name of the category,
QuantityAvailable)
(7 Rows) [Note: products, categories]

4. Display ProductId, ProductName, CategoryName, Total_Purchased_Quantity for the product
which has been sold maximum in terms of quantity?
(1 Row) [Note: purchasedetails, products, categories]

5. Display the number of male and female customers in fastkart. (2 Rows)
[Note: roles, users]

6. Display ProductId, ProductName, Price and Item_Classes of all the
products where Item_Classes are as follows:
If the price of an item is less than 2,000 then “Affordable”,
If the price of an item is in between 2,000 and 50,000 then “High End Stuff”,
If the price of an item is more than 50,000 then “Luxury”.
(57 Rows)

7. Write a query to display ProductId, ProductName, CategoryName, Old_Price(price) and New_price as per the following critera:
   a. If the category is "Motors", decrease the price by 3000
   b. If the category is "Electronics", increase the price by 50
   c. If the category is "Fashion", increase the price by 150
   For the rest of the categories price remains same. 

Hint: Use case statement, there should be no permanent change done in table/DB. [note: products, categories]

8. Display the percentage of females present among all Users. (Round up to 2 decimal places). Add "%" sign while displaying the percentage. (1 Row) [Note: users]

9. Display the average balance for both card types for those records only where CVVNumber>333 and NameOnCard ends with the alphabet "e". (2 Rows) [Note: carddetails]

10. What is the 2nd most valueable item available which does not belong to the "Motor" category. Value of an item = Price * QuantiyAvailable. Display ProductName, CategoryName, value.(1 Row) [Note:products, categories]

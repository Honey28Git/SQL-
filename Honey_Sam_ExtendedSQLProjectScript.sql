
## 1. --- List Top 3 products based on QuantityAvailable. (productid, productname, QuantityAvailable ). (3 Rows) [Note: Products]
select productId, productName, QuantityAvailable from products order by QuantityAvailable desc
limit 3; 

## 2.----Display EmailId of those customers who have done more than ten purchases. (EmailId, Total_Transactions).(5 Rows) [Note: Purchasedetails, products]

select pd.EmailId, pd.QuantityPurchased as Total_Transactions from purchasedetails pd
inner join products pro on pro.productId = pd.productId
group by emailId
having count(QuantityPurchased) > 10 
order by Total_Transactions desc; 

## 3. ----List the Total QuantityAvailable category wise in descending order. (Name of the category, QuantityAvailable) (7 Rows) [Note: products, categories]

select ca.CategoryName as NameoftheCategory, pro.QuantityAvailable as TotalQuantityAvailable 
from products pro 
inner join categories ca on pro.CategoryId= ca.CategoryId 
group by CategoryName 
order by QuantityAvailable desc;

## 4. ----Display ProductId, ProductName, CategoryName, Total_Purchased_Quantity for the product which has been sold maximum in terms of quantity?
## (1 Row) [Note: purchasedetails, products, categories]

select pro.ProductId, pro.ProductName, ca.CategoryName, sum(pd.QuantityPurchased) as Total_Purchased_Quantity
from Categories ca
inner join Products pro on ca.CategoryId = pro.CategoryId
inner join PurchaseDetails pd on pro.ProductId = pd.ProductId; 

## 5. ----Display the number of male and female customers in fastkart. (2 Rows)[Note: roles, users]
select Gender, count(*) as Number_Of_Males_and_Females 
from Users us
inner join roles ro on ro.RoleId = us.RoleId
group by Gender; 

## 6. ----Display ProductId, ProductName, Price and Item_Classes of all the products where Item_Classes are as follows: 
## If the price of an item is less than 2,000 then “Affordable”,
## If the price of an item is in between 2,000 and 50,000 then “High End Stuff”,
## If the price of an item is more than 50,000 then “Luxury”.(57 Rows)

Select ProductId, ProductName, Price,
case
When Price < 2000 then 'Affordable'
when Price between 2000 and 50000 then 'High End Stuff'
when Price > 50000 then 'Luxury'
else Price 
end as Item_Classes
from Products;

## 7. ---- Write a query to display ProductId, ProductName, CategoryName, Old_Price(price) and New_Price as per the following criteria: 
## a. If the category is “Motors”, decrease the price by 3000 
## b. If the category is “Electronics”, increase the price by 50 
## c. If the category is “Fashion”, increase the price by 150. 
## For the rest of the categories price remains same. 
## Hint: Use case statement, there should be no permanent change done in table/DB. (57 Rows) [Note: products, categories]

select pro.ProductId, pro.ProductName, ca.CategoryName, pro.Price as Old_Price,
case CategoryName
When'Motors' then pro.Price - 3000 
When'Electronics' then pro.Price + 50
When'Fashion' then pro.Price + 150	
else Price 
End as New_Price 
from products pro
INNER JOIN Categories ca on pro.CategoryId = ca.CategoryId; 

## 8.-----Display the percentage of females present among all Users. (Round up to 2 decimal places) Add % sign while displaying the percentage. (1 Row) [Note:users]
select Gender, 
round(((sum(Gender= 'F'))/(count(Gender))*100),2) as Percentage_of_Females, '%' 
from users; 

## 9.----Display the average balance for both card types for those records only where CVV Number> 333 and NameonCard ends with the alphabet "e". (2 Rows) [Note: carddetails]

select * from carddetails;
select CVVNumber, NameOnCard, CardType, avg(Balance) from carddetails
where CVVNumber > 333 and NameOnCard like '%e'
group by CardType;

## 10.---- What is the 2nd most valueable item available which does not belong to the "Motor" category. Value of an item = Price * QuantityAvailable. 
## Display ProductName, CategoryName, value. (1 Row) [Note: Products, categories]

select pro.ProductName, ca.categoryName, (Price * QuantityAvailable) as Value_of_an_item
from products pro 
inner join categories ca on pro.CategoryId = ca.CategoryId 
where categoryName != 'Motors'
order by Value_of_an_item desc
limit 1,1; 





 
 
 
 
 
 
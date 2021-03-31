DROP DATABASE IF EXISTS advanced_data_query;
USE classicmodels;

SELECT 
    productCode, productName, buyprice, quantityInStock
FROM
    products
WHERE
    buyprice > 56.76
        AND quantityInStock > 10;

SELECT 
    productCode, productName, buyprice, textDescription
FROM
    products pro
        INNER JOIN
    productlines line ON pro.productline = line.productline
WHERE
    buyprice > 56.76 AND buyprice < 95.59;
    
select productCode, productName, buyprice, quantityInStock, productVendor, productLine 
from products 
where productLine = 'Classic Cars' or productVendor = 'Min Lin Diecast';


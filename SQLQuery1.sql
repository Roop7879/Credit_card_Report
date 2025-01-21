--create databse
create database customer_credit_card

-- use database
use  customer_credit_card

-- 1. Total Revenue by Card Category
SELECT Card_Category, sum(Annual_Fees + Total_Trans_Amt + Interest_Earned) AS Total_Revenue
FROM credit_card
GROUP BY Card_Category
ORDER BY Total_Revenue DESC;

-- 2. Top Spending Categories
SELECT Exp_Type, SUM(Total_Trans_Amt) AS Total_Spending
FROM credit_card
GROUP BY Exp_Type
ORDER BY Total_Spending DESC;

-- 3. Top Revenue-Generating Customer Jobs
SELECT Customer_Job, sum(cc.Annual_Fees + cc.Total_Trans_Amt + cc.Interest_Earned) AS Total_Revenue
FROM customer cu
join credit_card cc on cu.Client_Num = cc.Client_Num
GROUP BY Customer_Job
ORDER BY Total_Revenue DESC;

-- 4. Revenue Distribution by State
SELECT cu.state_cd, sum(cc.Annual_Fees + cc.Total_Trans_Amt + cc.Interest_Earned) AS Total_Revenue
FROM customer cu
join credit_card cc on cu.Client_Num = cc.Client_Num
GROUP BY state_cd
ORDER BY Total_Revenue DESC;

-- 5. Revenue by Marital Status
SELECT cu.Marital_Status, sum(cc.Annual_Fees + cc.Total_Trans_Amt + cc.Interest_Earned) AS Total_Revenue
FROM customer cu
join credit_card cc on cu.Client_Num = cc.Client_Num
GROUP BY cu.Marital_Status
ORDER BY Total_Revenue DESC;

-- 6. Revenue by Education Level
SELECT cu.Education_Level, sum(cc.Annual_Fees + cc.Total_Trans_Amt + cc.Interest_Earned) AS Total_Revenue
FROM customer cu
join credit_card cc on cu.Client_Num = cc.Client_Num
GROUP BY cu.Education_Level
ORDER BY Total_Revenue DESC;








-- grouping and summarizing
USE expense_tracker;

SELECT 
    category,
    amount,
    CASE 
        WHEN amount <= 50 THEN 'lower expense'
        WHEN amount > 50 AND amount < 100 THEN 'medium expense'
        ELSE 'high amount'
    END AS expense_category
FROM expenses;

USE expense_tracker;

-- Total Spent per Category: 
-- Write a query to find the total amount you spent in each category (Groceries, Entertainment, etc.). Hint: Use GROUP BY category and SUM(amount)
SELECT 
    category,
    SUM(amount) AS total_spent
FROM 
    expenses
GROUP BY 
    category;

USE expense_tracker;

-- Average Expense per Category: 
-- Now, let's see the average cost for each category. Write a query to find the average expense amount for each category. Hint: Use GROUP BY category and AVG(amount).
SELECT 
    category,
    AVG(amount) AS average_expense
FROM 
    expenses
GROUP BY 
    category;

-- Are you curious about your top spending categories? Modify your query from Challenge 1 to show only the top 3 (or a chosen number) categories where you spend the most
USE expense_tracker;

SELECT 
    category,
    SUM(amount) AS total_spent
FROM 
    expenses
GROUP BY 
    category
ORDER BY 
    total_spent DESC
LIMIT 3;

-- lowest trnsaction
USE expense_tracker;

SELECT 
    category,
    MIN(amount) AS lowest_transaction
FROM 
    expenses
GROUP BY 
    category
ORDER BY 
    lowest_transaction ASC
LIMIT 1;

-- highest transaction
USE expense_tracker;

SELECT 
    category,
    MAX(amount) AS highest_transaction
FROM 
    expenses
GROUP BY 
    category
ORDER BY 
    highest_transaction DESC
LIMIT 1;

-- also highest transaction
USE expense_tracker;

SELECT 
    category,
    amount AS highest_transaction
FROM 
    expenses
WHERE 
    amount = (SELECT MAX(amount) FROM expenses);




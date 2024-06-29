-- Create the database
CREATE DATABASE duncan;

-- Use the database
USE duncan;

-- Create the expenses table
CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date DATE,
    category VARCHAR(50),
    amount DECIMAL(10, 2),
    description TEXT
);
INSERT INTO expenses (date, category, amount, description) VALUES
('2023-01-01', 'Groceries', 45.50, 'Weekly groceries'),
('2023-01-02', 'Transportation', 20.00, 'Bus fare'),
('2023-01-03', 'Dining', 30.00, 'Dinner at a restaurant'),
('2023-01-04', 'Entertainment', 15.00, 'Movie tickets'),
('2023-01-05', 'Utilities', 60.00, 'Electricity bill'),
('2023-01-06', 'Rent', 1200.00, 'Monthly rent payment'),
('2023-01-07', 'Groceries', 50.00, 'Weekly groceries'),
('2023-01-08', 'Healthcare', 25.00, 'Pharmacy purchase'),
('2023-01-09', 'Dining', 40.00, 'Lunch with friends'),
('2023-01-10', 'Transportation', 15.00, 'Taxi fare'),
('2023-01-11', 'Entertainment', 20.00, 'Concert ticket'),
('2023-01-12', 'Groceries', 48.00, 'Weekly groceries'),
('2023-01-13', 'Clothing', 75.00, 'New shoes'),
('2023-01-14', 'Utilities', 55.00, 'Water bill'),
('2023-01-15', 'Rent', 1200.00, 'Monthly rent payment'),
('2023-01-16', 'Groceries', 46.50, 'Weekly groceries'),
('2023-01-17', 'Dining', 35.00, 'Dinner date'),
('2023-01-18', 'Healthcare', 100.00, 'Doctor appointment'),
('2023-01-19', 'Transportation', 18.00, 'Bus fare'),
('2023-01-20', 'Groceries', 47.00, 'Weekly groceries'),
('2023-01-21', 'Entertainment', 25.00, 'Theater play'),
('2023-01-22', 'Dining', 28.00, 'Brunch'),
('2023-01-23', 'Clothing', 50.00, 'New jacket'),
('2023-01-24', 'Utilities', 65.00, 'Gas bill'),
('2023-01-25', 'Rent', 1200.00, 'Monthly rent payment'),
('2023-01-26', 'Groceries', 49.00, 'Weekly groceries'),
('2023-01-27', 'Dining', 32.00, 'Lunch meeting'),
('2023-01-28', 'Transportation', 22.00, 'Train ticket'),
('2023-01-29', 'Healthcare', 30.00, 'Health supplements'),
('2023-01-30', 'Entertainment', 18.00, 'Streaming service subscription');

SELECT * 
FROM  expenses 
-- WHERE Amount >= 70 
-- AND Category like '%ries' 
ORDER BY amount DESC
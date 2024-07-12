-- Correcting the first INSERT statement
INSERT INTO Expenses(Date, Item, Amount, Category, Time, day)
VALUES ('2023-07-13', 'Software Subscription', 25.00, 'Software', '10:00:00', 'Thursday');

-- The other two INSERT statements
INSERT INTO Expenses(Date, Item, Amount, Category, Time, day)
VALUES ('2023-07-13', 'Office Supplies', 10.00, 'Office', '09:30:00', 'Thursday')
-- Removed the incorrect 'from expenses where category = 'friend'' clause

INSERT INTO Expenses(Date, Item, Amount, Category, Time, day)
VALUES ('2023-07-13', 'Travel', 150.00, 'Transportation', '14:00:00', 'Thursday');

-- Selecting all records from Expenses
SELECT * FROM Expenses;

-- Updating a specific record
UPDATE Expenses
SET Category = 'Alone'
WHERE Date = '2023-07-12' AND Item = 'coffee';

-- Selecting all records from Expenses again
SELECT * FROM Expenses;

-- Deleting a specific record
DELETE FROM Expenses
WHERE Date = '2023-07-10' AND Item = 'coffee';

-- Selecting first name, last name, and phone number from customers with a fallback
SELECT first_name, last_name,
COALESCE(phone_number, 'N/A') AS phone_number
FROM customers;

-- Selecting first name, last name, and contact info from customers with a fallback
SELECT first_name, last_name,
COALESCE(phone_number, Email, 'N/A') AS contact_info
FROM customers;

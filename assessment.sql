CREATE TABLE Users (
 UserID INT PRIMARY KEY,
 UserName VARCHAR(50),
 City VARCHAR(50),
 AccountType VARCHAR(20) -- 'Regular' or 'Premium'
);

INSERT INTO Users VALUES
(1, 'Aman Verma', 'Delhi', 'Premium'),
(2, 'Riya Sen', 'Mumbai', 'Regular'),
(3, 'Karan Mehta', 'Delhi', 'Premium'),
(4, 'Sneha Kapoor', 'Bangalore', 'Regular'),
(5, 'Rahul Sharma', 'Delhi', 'Regular'),
(6, 'Priya Nair', 'Chennai', 'Premium'),
(7, 'Arjun Singh', 'Jaipur', 'Regular'),
(8, 'Neha Gupta', 'Delhi', 'Premium'),
(9, 'Rohan Das', 'Kolkata', 'Regular'),
(10, 'Simran Kaur', 'Punjab', 'Premium'),
(11, 'Vivek Mishra', 'Lucknow', 'Regular'),
(12, 'Anjali Jain', 'Delhi', 'Premium'),
(13, 'Aditya Roy', 'Mumbai', 'Regular'),
(14, 'Meera Iyer', 'Hyderabad', 'Premium'),
(15, 'Sahil Khan', 'Delhi', 'Regular');   -- No orders

CREATE TABLE Restaurants (
 RestaurantID INT PRIMARY KEY,
 RestaurantName VARCHAR(100),
 Cuisine VARCHAR(50),
 Rating DECIMAL(2,1)
);

INSERT INTO Restaurants VALUES
(101, 'Spice Symphony', 'North Indian', 4.5),
(102, 'Pizza Express', 'Italian', 3.9),
(103, 'Dragon Bowl', 'Chinese', 4.3),
(104, 'Burger House', 'Fast Food', 4.1),
(105, 'Biryani Palace', 'Hyderabadi', 4.8),
(106, 'Sushi Point', 'Japanese', 4.6),
(107, 'South Treat', 'South Indian', 4.2),
(108, 'Taco Fiesta', 'Mexican', 3.8),
(109, 'Cafe Aroma', 'Cafe', 4.4),
(110, 'Royal Tandoor', 'North Indian', 4.7);

CREATE TABLE Orders (
 OrderID INT PRIMARY KEY,
 UserID INT,
 RestaurantID INT,
 BillAmount DECIMAL(10,2),
 OrderDate DATE,
 FOREIGN KEY (UserID) REFERENCES Users(UserID),
 FOREIGN KEY (RestaurantID) REFERENCES Restaurants(RestaurantID)
);

INSERT INTO Orders VALUES
(501,1,101,1200,'2026-07-15'),
(502,2,102,450,'2026-07-16'),
(503,3,105,1800,'2026-07-16'),
(504,4,104,650,'2026-07-17'),
(505,5,101,2200,'2026-07-17'),
(506,6,106,2400,'2026-07-18'),
(507,7,103,900,'2026-07-18'),
(508,8,110,3500,'2026-07-18'),
(509,9,109,700,'2026-07-19'),
(510,10,107,500,'2026-07-19'),
(511,11,101,1600,'2026-07-19'),
(512,12,105,2500,'2026-07-20'),
(513,13,108,800,'2026-07-20'),
(514,14,106,2800,'2026-07-20'),
(515,1,103,950,'2026-07-21'),
(516,3,101,1750,'2026-07-21'),
(517,5,110,2700,'2026-07-21'),
(518,8,105,3200,'2026-07-22'),
(519,12,109,900,'2026-07-22'),
(520,2,104,650,'2026-07-22'),
(521,1,101,1400,'2026-07-23'),
(522,5,101,1800,'2026-07-23'),
(523,8,110,2600,'2026-07-23'),
(524,3,105,1500,'2026-07-23'),
(525,12,101,2000,'2026-07-24');

CREATE TABLE Deliveries (
 DeliveryID INT PRIMARY KEY,
 OrderID INT,
 DeliveryStatus VARCHAR(20), -- 'Delivered', 'Cancelled', 'In-Transit'
 DeliveryTimeMinutes INT,
 FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

INSERT INTO Deliveries VALUES
(901,501,'Delivered',25),
(902,502,'Delivered',42),
(903,503,'Delivered',31),
(904,504,'Cancelled',15),
(905,505,'Delivered',39),
(906,506,'Delivered',28),
(907,507,'In-Transit',20),
(908,508,'Delivered',48),
(909,509,'Delivered',33),
(910,510,'Delivered',27),
(911,511,'Cancelled',18),
(912,512,'Delivered',41),
(913,513,'Delivered',22),
(914,514,'Delivered',35),
(915,515,'Delivered',37),
(916,516,'Cancelled',19),
(917,517,'Delivered',45),
(918,518,'Delivered',26),
(919,519,'Delivered',30),
(920,520,'Delivered',38),
(921,521,'Delivered',24),
(922,522,'Delivered',29),
(923,523,'Cancelled',17),
(924,524,'Delivered',36),
(925,525,'Delivered',40);

-- PROBLEM 1

-- SELECT 
-- U.UserName, R.RestaurantName, O.BillAmount
-- FROM Orders O
-- INNER JOIN Users U
-- ON O.UserID = U.UserID
-- INNER JOIN Restaurants R
-- ON O.RestaurantID = R.RestaurantID;


-- PROBLEM 2

-- SELECT DISTINCT R.RestaurantName
-- FROM Restaurants R
-- INNER JOIN Orders O
-- ON R.RestaurantID = O.RestaurantID
-- INNER JOIN Deliveries D
-- ON O.OrderID = D.OrderID;


-- PROBLEM 3
-- SELECT O.OrderID, U.UserName
-- FROM Orders O
-- INNER JOIN Users U
-- ON O.UserID = U.UserID
-- INNER JOIN Deliveries D
-- ON O.OrderID = D.OrderID
-- WHERE D.DeliveryTimeMinutes > 35;


-- PROBLEM 4
-- SELECT U.UserName, SUM(O.BillAmount) AS TotalSpent
-- FROM Users U
-- INNER JOIN Orders O
-- ON U.UserID = O.UserID
-- GROUP BY U.UserName;


-- PROBLEM 5
-- SELECT U.UserName, COUNT(O.OrderID) AS TotalOrders
-- FROM Users U
-- LEFT JOIN Orders O
-- ON U.UserID = O.UserID
-- GROUP BY U.UserName;


-- PROBLEM 6
-- SELECT R.RestaurantName, SUM(O.BillAmount) AS TotalRevenue
-- FROM Orders O
-- INNER JOIN Users U
-- ON O.UserID = U.UserID
-- INNER JOIN Restaurants R
-- ON O.RestaurantID = R.RestaurantID
-- WHERE U.City = 'Delhi'
-- GROUP BY R.RestaurantName
-- HAVING SUM(O.BillAmount) > 5000;


-- PROBLEM 7
-- SELECT R.RestaurantName, COUNT(O.OrderID) AS CancelledOrders
-- FROM Restaurants R
-- INNER JOIN Orders O
-- ON R.RestaurantID = O.RestaurantID
-- INNER JOIN Deliveries D
-- ON O.OrderID = D.OrderID
-- WHERE D.DeliveryStatus = 'Cancelled'
-- GROUP BY R.RestaurantName;


-- PROBLEM 8
-- SELECT DISTINCT U.UserName, U.City
-- FROM Users U
-- INNER JOIN Orders O
-- ON U.UserID = O.UserID
-- WHERE O.BillAmount > (SELECT AVG(BillAmount) FROM Orders);


-- PROBLEM 9
SELECT AVG(DeliveryTimeMinutes) AS AvgDeliveryTime

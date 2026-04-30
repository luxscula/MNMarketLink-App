USE MNMarketLink;

# Vendors

INSERT INTO Vendor (BusinessName, Email, Phone, Address) VALUES
('Green Acres Farm', 'contact@greenacres.com', '555-1011', '12 Farm Lane'),
('River Valley Organics', 'info@rivervalley.com', '555-1012', '88 River Rd'),
('Sunny Hill Produce', 'hello@sunnyhill.com', '555-1013', '29 Hillcrest Ave'),
('Prairie Fresh Foods', 'farm@prairiefresh.com', '555-1014', '452 Prairie Rd'),
('Northern Harvest', 'info@northernharvest.com', '555-1015', '67 Maple St'),
('Blue Sky Gardens', 'contact@bluesky.com', '555-1016', '104 Skyway Blvd'),
('Stoney Ridge Farm', 'info@stoneyridge.com', '555-1017', '21 Ridge Rd'),
('Wildflower Farms', 'hello@wildflower.com', '555-1018', '500 Flower Cir'),
('Elm Creek Organics', 'contact@elmcreek.com', '555-1019', '78 Creek Rd'),
('Whispering Pines Farm', 'info@pinesfarm.com', '555-1020', '93 Pine Way'),
('Golden Fields Farm', 'golden@goldenfields.com', '555-1021', '12 Gold Ln'),
('Maple Leaf Organics', 'info@mapleleaf.com', '555-1022', '89 Leaf Rd'),
('Cedar Grove Produce', 'hello@cedargrove.com', '555-1023', '34 Cedar St'),
('Valley View Farm', 'contact@valleyview.com', '555-1024', '78 Valley Ct'),
('Lakeside Organics', 'info@lakeside.com', '555-1025', '56 Shoreline Dr'),
('Red Barn Produce', 'hello@redbarn.com', '555-1026', '12 Barn Rd'),
('Oak Ridge Gardens', 'info@oakridge.com', '555-1027', '98 Oak Rd'),
('Meadow Mist Farm', 'contact@meadowmist.com', '555-1028', '77 Meadow Ln'),
('Rustic Roots Farm', 'rustic@roots.com', '555-1029', '123 Rustic Rd'),
('Silverbrook Farm', 'info@silverbrook.com', '555-1030', '34 Brookside Ln');


# Customers

INSERT INTO Customer (Name, Email, Phone, Address) VALUES
('John Smith', 'jsmith@gmail.com', '555-1111', '12 Main St'),
('Emily Carter', 'ecarter@gmail.com', '555-1112', '89 Oak St'),
('Michael Johnson', 'mjohnson@yahoo.com', '555-1113', '45 Elm Rd');


# Markets

INSERT INTO Market (Name, Location) VALUES
('Downtown Farmers Market', 'Downtown Minneapolis'),
('St. Paul River Market', 'St. Paul'),
('North Loop Market', 'Minneapolis - North Loop'),
('Linden Hills Farmers Market', 'Linden Hills'),
('Uptown Food & Goods', 'Uptown Minneapolis'),
('Bloomington Saturday Market', 'Bloomington'),
('Edina Green Market', 'Edina'),
('Maple Grove Outdoor Market', 'Maple Grove'),
('Woodbury Community Market', 'Woodbury'),
('Roseville Fresh Market', 'Roseville');


# Vendor-Market

INSERT INTO VendorMarket (VendorID, MarketID, DateAvailable, StartTime, EndTime) VALUES
(1, 1, '2025-06-01', '08:00', '12:00'),
(2, 2, '2025-06-02', '09:00', '13:00'),
(3, 3, '2025-06-03', '07:30', '12:30'),
(4, 4, '2025-06-04', '08:00', '12:00'),
(5, 5, '2025-06-05', '09:00', '14:00'),
(6, 6, '2025-06-06', '08:30', '12:30'),
(7, 7, '2025-06-07', '09:00', '13:00'),
(8, 8, '2025-06-08', '08:00', '12:00'),
(9, 9, '2025-06-09', '08:30', '13:00'),
(10, 10, '2025-06-10', '07:00', '11:30');


# Products

INSERT INTO Product (VendorID, Name, Description, Price) VALUES
(1, 'Tomatoes', 'Fresh organic tomatoes', 3.50),
(1, 'Cucumbers', 'Crisp cucumbers', 2.00),
(1, 'Lettuce', 'Green leaf lettuce', 2.50),

(2, 'Strawberries', 'Sweet red berries', 5.00),
(2, 'Blueberries', 'Fresh-picked blueberries', 4.50),
(2, 'Raspberries', 'Organic raspberries', 6.00),

(3, 'Carrots', 'Crunchy orange carrots', 2.25),
(3, 'Beets', 'Red garden beets', 3.00),
(3, 'Onions', 'Yellow cooking onions', 1.50),

(4, 'Sweet Corn', 'Golden sweet corn', 1.25),
(4, 'Potatoes', 'Red potatoes', 3.75),
(4, 'Green Beans', 'Fresh-picked beans', 3.25),

(5, 'Apples', 'Honeycrisp apples', 4.00),
(5, 'Pears', 'Fresh pears', 3.75),
(5, 'Plums', 'Purple plums', 4.50),

(6, 'Kale', 'Organic kale bunch', 2.75),
(6, 'Spinach', 'Fresh spinach', 3.00),
(6, 'Swiss Chard', 'Rainbow chard', 3.50),

(7, 'Eggs', 'Farm fresh eggs (dozen)', 4.00),
(7, 'Whole Milk', 'Grass-fed milk', 5.50),
(7, 'Cheddar Cheese', 'Aged cheddar block', 6.50),

(8, 'Honey', 'Raw wildflower honey', 8.00),
(8, 'Granola', 'Handmade granola blend', 6.00),
(8, 'Herbal Tea', 'Loose-leaf herbal tea', 5.50),

(9, 'Chicken Breast', 'Free-range chicken', 9.00),
(9, 'Ground Beef', 'Grass-fed beef', 10.50),
(9, 'Pork Chops', 'Pasture-raised pork', 11.00),

(10, 'Bread Loaf', 'Fresh sourdough bread', 6.00),
(10, 'Muffins', 'Blueberry muffins', 4.00),
(10, 'Cinnamon Rolls', 'Fresh bakery rolls', 5.50),

(11, 'Pumpkins', 'Fall harvest pumpkins', 7.00),
(11, 'Gourmet Popcorn', 'Handmade kettle corn', 4.00),

(12, 'Apple Butter', 'Homemade apple butter spread', 6.00),
(12, 'Maple Syrup', 'Pure maple syrup', 12.00),

(13, 'Peppers', 'Mixed bell peppers', 3.25),
(13, 'Hot Sauce', 'Small-batch spicy hot sauce', 7.50),

(14, 'Broccoli', 'Fresh broccoli crowns', 2.75),
(14, 'Cabbage', 'Fresh green cabbage head', 2.25),

(15, 'Cauliflower', 'White cauliflower', 3.50),
(15, 'Basil', 'Fresh basil bunch', 2.00),

(16, 'Zucchini', 'Garden zucchini', 2.00),
(16, 'Squash', 'Variety of local squash', 3.00),

(17, 'Herbs Bundle', 'Mixed culinary herbs', 2.50),
(17, 'Salsa', 'Fresh mild salsa', 5.00),

(18, 'Goat Cheese', 'Creamy goat cheese', 7.50),
(18, 'Goat Milk Soap', 'Goat milk soap bar', 4.50),

(19, 'Yogurt', 'Plain whole milk yogurt', 4.75),
(19, 'Kombucha', 'Fermented tea drink', 5.25),

(20, 'Applesauce', 'Homemade applesauce', 5.00),
(20, 'Jam Variety Pack', 'Mixed berry jams', 8.00);

# Sample Orders

INSERT INTO Orders (CustomerID, VendorID, OrderDate, PickupDate, TotalPrice)
VALUES
(1, 1, '2025-06-01 09:00', '2025-06-01 11:00', 10.00),
(2, 3, '2025-06-02 10:00', '2025-06-02 12:00', 12.00);

INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price) VALUES
(1, 1, 2, 3.50),
(1, 2, 1, 2.00),
(2, 7, 3, 2.25);

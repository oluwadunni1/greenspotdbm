INSERT INTO `greenspot`.`customer` (customer_id, customer_name)
VALUES 
  (198765, 'John Doe'),
  (202900, 'Santan Tobs'),
  (196777, 'Raheem Ogulu'),
  (277177, 'Jefferey Stiles'),
  (111000, 'Aloma Dave'),
  (100988, 'Aubrey Lamar');


INSERT INTO `greenspot`.`items` (item_no, description, item_type, unit)
VALUES 
  (1000, 'Bennet Farm free-range eggs', 'Dairy', 'dozen'),
  (2000, 'Ruby\'s Kale', 'Produce', 'bunch'),
  (1100, 'Freshness White beans', 'Canned', '12 ounce can'),
  (1222, 'Freshness Green beans', 'Canned', '12 ounce can'),
  (1224, 'Freshness Wax beans', 'Canned', '12 ounce can'),
  (2001, 'Ruby\'s Organic Kale', 'Produce', 'bunch');

INSERT INTO `greenspot`.`location` (location_id, location_name)
VALUES 
  ('d12', 'Louisiana'),
  ('a2', 'New York'),
  ('a3', 'Los Angeles'),
  ('a7', 'Seattle'),
  ('p12', 'Atlanta'),
  ('p07', 'Jackson');
  
  INSERT INTO `greenspot`.`vendors` (vendor_id, vendor_name, vendor_address)
VALUES 
  (1, 'Bennet Farms', 'Rt. 17 Evansville, IL 55446'),
  (2, 'Freshness, Inc', '202 E. Maple St., St. Joseph, MO 45678'),
  (3, 'Ruby Redd Produce LLC', '1212 Milam St., Kenosha, AL, 34567');

INSERT INTO `greenspot`.`purchase` (item_no, vendor_id, purchase_date, cost, quantity_purchased)
VALUES 
  (1000, 1, '2022-02-01', 2.35, 29),
  (1224, 1, '2022-02-10', 0.65, 31),
  (2000, 3, '2022-02-12', 1.29, 28),
  (1224, 2, '2022-02-15', 1.80, 17),
  (2001, 3, '2022-02-12', 2.19, 20),
  (1100, 2, '2022-02-10', 0.69, 41);


INSERT INTO `greenspot`.`sales` (item_no, date_sold, price, location_id, customer_id, quantity_sold)
VALUES
(1000, '2022-02-02', 5.49, 'd12', 198765, 2),
(1100, '2022-02-02', 5.99, 'd12', 202900, 2),
(2000, '2022-02-04', 1.29, 'p12', 196777, 44),
(1224, '2022-02-11', 1.29, 'p07', 111000, 55),
(2001, '2022-02-12', 3.49, 'a3', 100988, 34),
(1100, '2022-02-14', 6.99, 'a3', 277177, 44);


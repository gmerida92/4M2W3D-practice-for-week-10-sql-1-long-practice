INSERT INTO customers (name, phone)
VALUES('Rachel', 1111111111);


-- UPDATE customers
-- SELECT reward_points FROM customers WHERE name = 'Rachel' WHEN < 10
-- THEN
-- SET reward_points = SELECT reward_points FROM customers WHERE name = 'Rachel' + 1
-- WHERE name = 'Rachel'
-- ELSE
-- SET reward_points = 0
-- WHERE name = 'Rachel'

-- add purchase where redeem is false add 1 to reward_points



-- add purchase redeem is true, reset points to 0

UPDATE customers
SET reward_points = (SELECT sum(reward_points + 1) FROM customers WHERE name = 'Rachel')
WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES(false);

INSERT INTO customers(name, email, phone)
VALUES
('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friends.show', 	3333333333);

UPDATE customers
SET reward_points = (SELECT sum(reward_points + 3) FROM customers WHERE name = 'Phoebe')
WHERE name = 'Phoebe';


INSERT INTO coffee_orders (is_redeemed)
VALUES(false),
      (false),
      (false);

UPDATE customers
SET reward_points = (SELECT sum(reward_points + 4) FROM customers WHERE name = 'Rachel')
WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES(false),
      (false),
      (false),
      (false);

UPDATE customers
SET reward_points = (SELECT sum(reward_points + 4) FROM customers WHERE name = 'Monica')
WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES(false),
      (false),
      (false),
      (false);

-- SELECT reward_points from customers WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES(true);

INSERT INTO customers (name, email)
VALUES ('Joey', 'joey@friends.show'),
        ('Chandler', 'chandler@friends.show'),
        ('Ross', 'ross@friends.show');

UPDATE customers
SET reward_points = (SELECT sum(reward_points + 6) FROM customers WHERE name = 'Ross')
WHERE name = 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES(false),
      (false),
      (false),
      (false),
      (false),
      (false);

-- SELECT id from coffee_orders;

-- SELECT reward_points from customers WHERE name = 'Ross';

UPDATE customers
SET reward_points = (SELECT sum(reward_points + 3) FROM customers WHERE name = 'Monica')
WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES(false),
      (false),
      (false);

-- SELECT reward_points FROM customers WHERE  name = "Phoebe";

INSERT INTO coffee_orders (is_redeemed)
VALUES(false);

DELETE FROM coffee_orders WHERE id = 18 OR id = 19;

-- SELECT * from coffee_orders;

UPDATE customers
SET reward_points = (SELECT sum(reward_points + (-2)) FROM customers WHERE name = 'Ross')
WHERE name = 'Ross';

-- SELECT reward_points from customers WHERE name = 'Ross';

UPDATE customers
SET reward_points = (SELECT sum(reward_points + (2)) FROM customers WHERE name = 'Joey')
WHERE name = 'Joey';

INSERT INTO coffee_orders (is_redeemed)
VALUES
    (false),
    (false);

-- SELECT reward_points From customers where name = "Monica";

INSERT INTO coffee_orders (is_redeemed)
VALUES (true);

DELETE FROM customers WHERE name = "Chandler";

-- SELECT * From customers;

-- SELECT reward_points FROM customers WHERE  name = "Ross";

UPDATE customers
SET reward_points = (SELECT sum(reward_points + (1)) FROM customers WHERE name = 'Ross')
WHERE name = 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES (false);

-- SELECT reward_points FROM  customers WHERE name = "Joey";

UPDATE customers
SET reward_points = (SELECT sum(reward_points + (1)) FROM customers WHERE name = 'Joey')
WHERE name = 'Joey';

INSERT INTO coffee_orders (is_redeemed)
VALUES (false);

UPDATE customers
SET email = "p_as_in_phoebe@friends.show"
WHERE name = "Phoebe";

SELECT * FROM customers;
SELECT * FROM coffee_orders;
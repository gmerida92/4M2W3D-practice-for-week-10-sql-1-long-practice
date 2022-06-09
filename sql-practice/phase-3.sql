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

SELECT reward_points from customers WHERE name = 'Rachel';

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

SELECT reward_points from customers WHERE name = 'Ross';

DROP TABLE shopping_list;
/* removed shopping_list table if there was one allready */

/* create a table called shopping_list with 2 columns: shopping_list_id, and name.  */
CREATE TABLE shopping_list (
	shopping_list_id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

/* create a table called grocery_list with 5 columns: grocery_item_id, name, price, quantity, shopping_list_id.  */
CREATE TABLE grocery_list (
	grocery_item_id SERIAL PRIMARY KEY, 
	name varchar(150),
	price decimal,
	quantity integer,
	shopping_list_id integer references
	shopping_list(shopping_list_id)
);

SELECT * from grocery_list
/* shows all in grocery_list  */
INSERT INTO shopping_list(name) VALUES('list3')
/* added a name for the name column this one being list3  */
SELECT * from shopping_list 
/* shows all items in shopping list Did this to make sure I added 3 lists named list1 list2 and list3 */

/* insert into grocery list name,quantity,price,shopping_list_id values are what we are putting in  */
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('bread', 1, 2.23, 1)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('bread', 5, 2.23, 2)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('bread', 2, 2.23, 3)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('milk', 1, 5.56, 1)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('milk', 3, 5.56, 2)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('milk', 1, 5.56, 3)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('candy', 2, 7.62, 1)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('candy', 9, 7.62, 2)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('candy', 1, 7.62, 3)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('soda', 1, 9.00, 1)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('soda', 2, 9.00, 2)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('soda', 1, 9.00, 3)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('meat', 2, 20.51, 1)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('meat', 1, 20.51, 2)
--INSERT INTO grocery_list (name, quantity, price, shopping_list_id) VALUES ('meat', 8, 20.51, 3) 

--SELECT * from grocery_list /*showed 3 list 5 items each */
--ALTER table grocery_list
--ADD COLUMN over_ten BOOLEAN
--UPDATE grocery_list SET over_ten = FALSE WHERE price<10
--UPDATE grocery_list SET over_ten = TRUE WHERE price>10
--SELECT * from grocery_list
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('bread', 1, 2.23, 1)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('bread', 1, 2.23, 2)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('bread', 1, 2.23, 3)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('milk', 1, 5.56, 1)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('milk', 1, 5.56, 2)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('milk', 1, 5.56, 3)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('candy', 1, 7.62, 1)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('candy', 1, 7.62, 2)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('candy', 1, 7.62, 3)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('soda', 1, 9.00, 1)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('soda', 1, 9.00, 2)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('soda', 1, 9.00, 3)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('meat', 1, 20.51, 1)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('meat', 1, 20.51, 2)
INSERT INTO grocery_item (name, quantity, price, shopping_list_id) VALUES ('meat', 1, 20.51, 3)


---DROP TABLE shopping_list;
CREATE TABLE grocery_list (
	grocery_item_id SERIAL PRIMARY KEY, 
	name varchar(150),
	shopping_list_id integer references,
	quantity integer,
	price decimal

---DROP TABLE shopping_list;
/*CREATE TABLE shopping_list (
	shopping_list_id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE grocery_list (
	grocery_item_id SERIAL PRIMARY KEY, 
	name varchar(150),
	price decimal,
	quantity integer,
	shopping_list_id integer references
	shopping_list(shopping_list_id)
); */
---SELECT * from grocery_list
INSERT INTO shopping_list(name) VALUES("list1", "list2", "list3")

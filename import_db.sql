DROP TABLE cattoys;
DROP TABLE cats;
DROP TABLE toys;



CREATE TABLE cats
(
  id SERIAL PRIMARY KEY ,
  name VARCHAR(50),
  color VARCHAR(50),
  breed VARCHAR(50)
);

CREATE TABLE toys
(
  id SERIAL PRIMARY KEY,
  price INT,
  color VARCHAR(50),
  name VARCHAR(50)
);

CREATE TABLE cattoys
(
  id SERIAL PRIMARY KEY,
  cat_id INT NOT NULL REFERENCES cats(id),
  toy_id INT NOT NULL REFERENCES toys(id)
  -- PRIMARY KEY (cat_id, toy_id)

);

INSERT into cats (name, color, breed)
VALUES ('joe', 'blue', 'breed0'),
 ('tom', 'black', 'breed1'),
 ('bob', 'red', 'breed2'), 
 ('john', 'yellow', 'breed3'), 
 ('carl', 'green', 'breed4');



INSERT into toys (price, color, name)
  VALUES
  (10, 'blue', 'ball'),
  (7, 'black', 'catnip'),
  (5, 'red', 'cube'),
  (3, 'yellow', 'rug'),
  (1, 'green', 'wheel');


INSERT into cattoys(cat_id, toy_id)
VALUES
  (1, 3),
  (1, 4),
  (4, 5),
  (3, 3);
  

 UPDATE toys
 SET color = 'black'
 WHERE toys.id = 1;


UPDATE cats
 SET name = 'billy'
 WHERE cats.id = 3;


UPDATE cattoys
 SET cat_id = 3, toy_id = 2
 WHERE cat_id = 3 AND toy_id = 3;

 

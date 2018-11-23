-- If anything is wrong then we want to remove the table before it is re-created
DROP TABLE IF EXISTS animals;

CREATE TABLE animals (
  -- "Serial" increments such that each new element in the table is given a unique id
  id SERIAL PRIMARY KEY,
  name VARCHAR(20),
  fact TEXT
);

INSERT INTO animals (name, fact) VALUES ('Duck','They quack');
INSERT INTO animals (name, fact) VALUES ('Giraffe','They have long necks');
INSERT INTO animals (name, fact) VALUES ('Hippo','They arent Rhinos');
INSERT INTO animals (name, fact) VALUES ('Woodlouse','Probably voted leave');

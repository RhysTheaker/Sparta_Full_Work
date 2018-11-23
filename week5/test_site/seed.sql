DROP TABLE IF EXISTS hoax;

CREATE TABLE hoax (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  info TEXT
);

INSERT INTO hoax (name, info) VALUES ('Australia', 'Australia is not real');
INSERT INTO hoax (name, info) VALUES ('The Queen', 'The Queen is a shapeshifting lizard');
INSERT INTO hoax (name, info) VALUES ('Global Warming', 'The world is not heating up, its all just part of a natural cycle');

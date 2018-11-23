DROP TABLE IF EXISTS post;

CREATE TABLE post (
  id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  body TEXT
);

INSERT INTO post (title, body) VALUES ('Post 1', 'This is some text for my first blog post');
INSERT INTO post (title, body) VALUES ('Post 2', 'This is some text for my second blog post');
INSERT INTO post (title, body) VALUES ('Post 3', 'This is some text for my third blog post');

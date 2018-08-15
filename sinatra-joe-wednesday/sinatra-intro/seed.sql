DROP TABLE IF EXISTS post;

CREATE TABLE post (

  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  body TEXT

);

INSERT INTO post (title , body) VALUES ('first post' , 'text for 1');
INSERT INTO post (title , body) VALUES ('second post' , 'text for 2');
INSERT INTO post (title , body) VALUES ('third post' , 'text for 3');
INSERT INTO post (title , body) VALUES ('fourth post' , 'text for 4');

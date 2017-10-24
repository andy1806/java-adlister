USE dalister_db;

CREATE TABLE users (
  id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(50)  NOT NULL,
  password VARCHAR(50)  NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads (
  id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id     INT UNSIGNED NOT NULL,
  title       VARCHAR(50)  NOT NULL,
  description VARCHAR(100),
  FOREIGN KEY (user_id) REFERENCES users(id)
);
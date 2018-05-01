DROP DATABASE IF EXISTS vinder;
CREATE DATABASE vinder;
\c vinder;
CREATE TABLE restaurants
(
  restaurant_id SERIAL PRIMARY KEY,
  restaurant_name VARCHAR(128),
  restaurant_address VARCHAR(512),
  restaurant_phone VARCHAR(20),
  restaurant_URL VARCHAR(512),
  restaurant_longitude VARCHAR(20),
  restaurant_latitude VARCHAR(20)
);
CREATE TABLE users
(
  user_id SERIAL PRIMARY KEY,
  user_name VARCHAR(128),
  user_email VARCHAR(128),
  user_valid BOOLEAN
);
CREATE TABLE dishes
(
  dish_id SERIAL PRIMARY KEY,
  dish_title VARCHAR(128),
  dish_description VARCHAR(512),
  restaurant_id INT,
  FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);
CREATE TABLE comments
(
  comment_id SERIAL PRIMARY KEY,
  comment_body VARCHAR,
  comment_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  comment_rating INT,
  user_id INT,
  FOREIGN KEY (user_id) REFERENCES users (user_id),
  dish_id INT,
  FOREIGN KEY (dish_id) REFERENCES dishes (dish_id)
);
CREATE TABLE photos
(
  photo_id SERIAL PRIMARY KEY,
  photo_file_URL VARCHAR,
  photo_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  comment_id INT,
  FOREIGN KEY (comment_id) REFERENCES comments (comment_id)
);



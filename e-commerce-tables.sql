-- Start writing code here
CREATE TABLE users (
	user_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	username VARCHAR ( 255 ) UNIQUE NOT NULL,
	password  VARCHAR ( 255 ) NOT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
 	created_at TIMESTAMPTZ NOT NULL
);

CREATE TABLE products (
  products_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR ( 255 ),
  description TEXT NOT NULL,
  price numeric (10,2),
	created_at Timestamptz 
);

create table categories (
  category_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR (255) unique,
  created_at TIMESTAMPTZ NOT NULL
);

create table product_categories(
	product_category_id int primary key generated always as identity,
	product_id int references products(products_id) on delete cascade Unique,
	category_id int references categories(category_id) on delete cascade unique
)

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  username VARCHAR(30) NOT NULL,
  bio VARCHAR(400),
  avatar VARCHAR(200),
  phone VARCHAR(25) NOT NULL,
  email VARCHAR(40),
  password VARCHAR(50),
  status VARCHAR(15),
  CHECK(COALESCE(phone, email) IS NOT NULL) -- makes sure either phone or email is provided
);
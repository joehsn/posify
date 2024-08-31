-- Creates an initial mysql database in order to use prisma ORM
-- This means this file is run first then prisma
-- RUN THE FOLLOWING:
--
-- cat public/posify.sql | mysql -u root -p
--
CREATE DATABASE IF NOT EXISTS posify;

USE posify;

-- Creates users table
CREATE TABLE
  IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_image VARCHAR(255),
    user_role ENUM ('admin', 'manager', 'cashier') DEFAULT 'cashier',
    user_name VARCHAR(255) NOT NULL,
    user_gender ENUM ('male', 'female') NOT NULL,
    user_username VARCHAR(50) UNIQUE NOT NULL,
    user_email VARCHAR(100) UNIQUE NOT NULL,
    user_phone VARCHAR(13) UNIQUE NOT NULL,
    user_address VARCHAR(255) NOT NULL,
    user_birth_date DATE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  );
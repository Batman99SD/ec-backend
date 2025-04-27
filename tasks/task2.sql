-- Create the 'users' table
CREATE TABLE users (
    id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    age INT,
    email VARCHAR(100)
);

-- Create the 'assets' table
CREATE TABLE assets (
    asset_id INT PRIMARY KEY,
    user_id INT,
    count INT,
    photo VARCHAR(255),  -- Assuming photo/video store a path or URL
    video VARCHAR(255),
    phone_number VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(id) -- Define the foreign key constraint
);

-- Insert the first user
INSERT INTO users (id, first_name, last_name, age, email)
VALUES (1, 'Aziz', 'Ali', 25, 'azoz@mail.com');

-- Insert the second user
INSERT INTO users (id, first_name, last_name, age, email)
VALUES (2, 'Ahmed', 'Musa', 25, 'wd_musa@example.com');

-- Insert one asset linked to the first user (user_id = 1)
-- Assuming count refers to asset quantity, and photo/video/phone are optional strings
INSERT INTO assets (asset_id, user_id, count, photo, video, phone_number)
VALUES (1, 1, 1, '/path/to/johns_photo.jpg', NULL, '0123456789');

DELETE FROM users WHERE id = 2;

DROP TABLE assets;

SELECT * FROM users;
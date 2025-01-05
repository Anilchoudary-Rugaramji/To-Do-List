-- Step 1: Create the database
CREATE DATABASE todo_app;
USE todo_app;

-- Step 2: Create the users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Step 3: Create the todos table
CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    is_completed BOOLEAN DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- Step 4: Insert sample users
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com'),
('David', 'david@example.com'),
('Eve', 'eve@example.com');

-- Step 5: Insert sample todos
INSERT INTO todos (title, user_id, is_completed) VALUES
('Buy groceries', 1, 0),
('Complete project report', 2, 1),
('Read a book', 1, 0),
('Clean the house', 3, 0),
('Go for a run', 4, 1),
('Fix the car', 2, 0),
('Plan vacation', 5, 0),
('Organize files', 3, 1),
('Prepare presentation', 4, 0),
('Attend meeting', 5, 0);

-- Step 6: Verify data
SELECT * FROM users;
SELECT * FROM todos;






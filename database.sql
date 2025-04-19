CREATE TABLE Task (
    id SERIAL PRIMARY KEY,
    ToDoList_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) NOT NULL CHECK (status IN ('pending', 'in_progress', 'done')),
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    priority INT
);

INSERT INTO Task (ToDoList_id, title, description, status, due_date, priority)
VALUES (1, 'Complete final project', 'Submit the final project', 'pending', '2025-04-21', 2);


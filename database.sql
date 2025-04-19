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

SELECT * FROM Task
WHERE status = 'pending';

SELECT * FROM Task
WHERE ToDoList_id = 1;

UPDATE Task
SET status = 'done'
WHERE id = 1;

DELETE FROM Task
WHERE id = 1; 

SELECT * FROM Task
WHERE due_date < '2025-04-30';

SELECT COUNT(*) AS done_tasks_count
FROM Task t
JOIN ToDoList td ON t.ToDoList_id = td.id
WHERE t.status = 'done' AND td.user_id = 1;

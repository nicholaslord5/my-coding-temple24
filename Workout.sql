CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);
INSERT INTO Members (id, name, age)
VALUES 
    (1, 'Jane Doe', 28),
    (2, 'John Smith', 35),
    (3, 'Homestar Runner', 22);
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity)
VALUES 
    (1, 1, '2024-11-09', 'morning', 'Weights'),
    (2, 2, '2024-11-10', 'afternoon', 'Yoga'),
    (3, 1, '2024-11-11', 'morning', 'Cardio'),
    (4, 3, '2024-11-09', 'evening', 'Swimming');
UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE member_id = 1 AND session_time = 'morning';
DELETE FROM Members
WHERE name = 'John Smith';
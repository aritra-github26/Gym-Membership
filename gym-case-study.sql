
-- Case Study:

-- Problem Statement:
-- Design and implement a Gym Membership Management System to streamline member registration, trainer assignment, and session scheduling, ensuring efficient data handling, and reporting capabilities.

-- Description
-- The Gym Membership Management System is designed to manage gym members, trainers, and training sessions. It helps the gym administration to keep track of members' subscriptions, trainers' specializations, and the schedule of training sessions. This system will enhance operational efficiency, improve member experience, and provide insights into gym usage and trainer performance.



-- DDL to make the Database Schema

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    membership_type VARCHAR(50),
    start_date DATE,
    end_date DATE
);

CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100)
);

CREATE TABLE Training_Sessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    trainer_id INT,
    session_date DATE,
    duration INT,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

-- DML to Insert all the data entries.

INSERT INTO Members (member_id, name, membership_type, start_date, end_date) VALUES
(1, 'John Doe', 'Premium', '2023-01-01', '2023-12-31'),
(2, 'Jane Smith', 'Basic', '2023-02-01', '2023-11-30'),
(3, 'Michael Johnson', 'Premium', '2023-03-01', '2024-02-28'),
(4, 'Emily Davis', 'Basic', '2023-04-01', '2023-12-31'),
(5, 'Chris Brown', 'Premium', '2023-05-01', '2024-04-30'),
(6, 'Jessica Wilson', 'Basic', '2023-06-01', '2023-12-31'),
(7, 'David Martinez', 'Premium', '2023-07-01', '2024-06-30'),
(8, 'Sarah Lee', 'Basic', '2023-08-01', '2024-01-31'),
(9, 'James Anderson', 'Premium', '2023-09-01', '2024-08-31'),
(10, 'Laura Thomas', 'Basic', '2023-10-01', '2024-03-31'),
(11, 'Kevin Hernandez', 'Premium', '2023-11-01', '2024-10-31'),
(12, 'Amanda Lopez', 'Basic', '2023-12-01', '2024-05-31'),
(13, 'Joshua Gonzalez', 'Premium', '2023-01-15', '2024-01-14'),
(14, 'Ashley Harris', 'Basic', '2023-02-15', '2024-02-14'),
(15, 'Brian Clark', 'Premium', '2023-03-15', '2024-03-14'),
(16, 'Megan Lewis', 'Basic', '2023-04-15', '2024-04-14'),
(17, 'Steven Robinson', 'Premium', '2023-05-15', '2024-05-14'),
(18, 'Olivia Walker', 'Basic', '2023-06-15', '2024-06-14'),
(19, 'Daniel Young', 'Premium', '2023-07-15', '2024-07-14'),
(20, 'Sophia Hall', 'Basic', '2023-08-15', '2024-08-14'),
(21, 'Matthew Allen', 'Premium', '2023-09-15', '2024-09-14'),
(22, 'Samantha King', 'Basic', '2023-10-15', '2024-10-14'),
(23, 'Ryan Scott', 'Premium', '2023-11-15', '2024-11-14'),
(24, 'Grace Green', 'Basic', '2023-12-15', '2024-12-14'),
(25, 'Adam Baker', 'Premium', '2023-01-30', '2024-01-29'),
(26, 'Hannah Adams', 'Basic', '2023-02-28', '2024-02-27'),
(27, 'Justin Nelson', 'Premium', '2023-03-30', '2024-03-29'),
(28, 'Natalie Carter', 'Basic', '2023-04-30', '2024-04-29'),
(29, 'Andrew Mitchell', 'Premium', '2023-05-30', '2024-05-29'),
(30, 'Alyssa Perez', 'Basic', '2023-06-30', '2024-06-29');


INSERT INTO Trainers (trainer_id, name, specialty) VALUES
(1, 'Alice Brown', 'Yoga'),
(2, 'Bob Johnson', 'Strength Training'),
(3, 'Charlie Green', 'Cardio'),
(4, 'Diana White', 'Pilates'),
(5, 'Edward Harris', 'CrossFit'),
(6, 'Fiona Lewis', 'Zumba'),
(7, 'George Clark', 'Bodybuilding'),
(8, 'Hannah Walker', 'Aerobics'),
(9, 'Ian King', 'Martial Arts'),
(10, 'Jessica Adams', 'Dance Fitness'),
(11, 'Kyle Baker', 'Powerlifting'),
(12, 'Laura Scott', 'HIIT');


INSERT INTO Training_Sessions (session_id, member_id, trainer_id, session_date, duration) VALUES
(1, 1, 1, '2023-03-01', 60),
(2, 2, 2, '2023-03-02', 45),
(3, 3, 3, '2023-03-03', 60),
(4, 4, 4, '2023-03-04', 45),
(5, 5, 5, '2023-03-05', 60),
(6, 6, 6, '2023-03-06', 45),
(7, 7, 7, '2023-03-07', 60),
(8, 8, 8, '2023-03-08', 45),
(9, 9, 9, '2023-03-09', 60),
(10, 10, 10, '2023-03-10', 45),
(11, 11, 11, '2023-03-11', 60),
(12, 12, 12, '2023-03-12', 45),
(13, 13, 1, '2023-03-13', 60),
(14, 14, 2, '2023-03-14', 45),
(15, 15, 3, '2023-03-15', 60),
(16, 16, 4, '2023-03-16', 45),
(17, 17, 5, '2023-03-17', 60),
(18, 18, 6, '2023-03-18', 45),
(19, 19, 7, '2023-03-19', 60),
(20, 20, 8, '2023-03-20', 45),
(21, 21, 9, '2023-03-21', 60),
(22, 22, 10, '2023-03-22', 45),
(23, 23, 11, '2023-03-23', 60),
(24, 24, 12, '2023-03-24', 45),
(25, 25, 1, '2023-03-25', 60),
(26, 26, 2, '2023-03-26', 45),
(27, 27, 3, '2023-03-27', 60),
(28, 28, 4, '2023-03-28', 45),
(29, 29, 5, '2023-03-29', 60),
(30, 30, 6, '2023-03-30', 45),
(31, 1, 7, '2023-04-01', 60),
(32, 2, 8, '2023-04-02', 45),
(33, 3, 9, '2023-04-03', 60),
(34, 4, 10, '2023-04-04', 45),
(35, 5, 11, '2023-04-05', 60),
(36, 6, 12, '2023-04-06', 45),
(37, 7, 1, '2023-04-07', 60),
(38, 8, 2, '2023-04-08', 45),
(39, 9, 3, '2023-04-09', 60),
(40, 10, 4, '2023-04-10', 45),
(41, 11, 5, '2023-04-11', 60),
(42, 12, 6, '2023-04-12', 45),
(43, 13, 7, '2023-04-13', 60),
(44, 14, 8, '2023-04-14', 45),
(45, 15, 9, '2023-04-15', 60),
(46, 16, 10, '2023-04-16', 45),
(47, 17, 11, '2023-04-17', 60),
(48, 18, 12, '2023-04-18', 45),
(49, 19, 1, '2023-04-19', 60),
(50, 20, 2, '2023-04-20', 45),
(51, 21, 3, '2023-04-21', 60),
(52, 22, 4, '2023-04-22', 45),
(53, 23, 5, '2023-04-23', 60),
(54, 24, 6, '2023-04-24', 45),
(55, 25, 7, '2023-04-25', 60),
(56, 26, 8, '2023-04-26', 45),
(57, 27, 9, '2023-04-27', 60),
(58, 28, 10, '2023-04-28', 45),
(59, 29, 11, '2023-04-29', 60),
(60, 30, 12, '2023-04-30', 45),
(61, 12, 3, '2024-01-05', 55),
(62, 7, 11, '2024-02-10', 65),
(63, 18, 8, '2024-03-15', 75),
(64, 5, 9, '2024-04-20', 85),
(65, 30, 4, '2024-05-25', 60),
(66, 21, 7, '2024-06-30', 50),
(67, 9, 2, '2024-07-05', 40),
(68, 16, 1, '2024-08-10', 55),
(69, 23, 6, '2024-09-15', 65),
(70, 14, 5, '2024-10-20', 75),
(71, 11, 12, '2024-11-25', 85),
(72, 8, 10, '2024-12-30', 60),
(73, 20, 3, '2024-01-07', 50),
(74, 13, 11, '2024-02-12', 40),
(75, 3, 8, '2024-03-17', 55),
(76, 25, 9, '2024-04-22', 65),
(77, 6, 4, '2024-05-27', 75),
(78, 19, 7, '2024-06-02', 85),
(79, 28, 2, '2024-07-07', 60),
(80, 15, 1, '2024-08-12', 50),
(81, 24, 6, '2024-09-17', 40),
(82, 10, 5, '2024-10-22', 55),
(83, 27, 12, '2024-11-27', 65),
(84, 4, 10, '2024-12-02', 75),
(85, 22, 3, '2024-01-09', 85),
(86, 29, 11, '2024-02-14', 60),
(87, 17, 8, '2024-03-19', 50),
(88, 2, 9, '2024-04-24', 40),
(89, 26, 4, '2024-05-29', 55),
(90, 1, 7, '2024-06-04', 65),
(91, 12, 2, '2024-07-09', 75),
(92, 18, 1, '2024-08-14', 85),
(93, 14, 6, '2024-09-19', 60),
(94, 5, 5, '2024-10-24', 50),
(95, 23, 12, '2024-11-29', 40),
(96, 9, 10, '2024-12-04', 55),
(97, 20, 3, '2024-01-11', 65),
(98, 6, 11, '2024-02-16', 75),
(99, 30, 8, '2024-03-21', 85),
(100, 16, 9, '2024-04-26', 60),
(101, 11, 4, '2024-05-31', 50),
(102, 24, 7, '2024-06-06', 40),
(103, 8, 2, '2024-07-11', 55),
(104, 13, 1, '2024-08-16', 65),
(105, 3, 6, '2024-09-21', 75),
(106, 25, 5, '2024-10-26', 85),
(107, 19, 12, '2024-11-01', 60),
(108, 22, 10, '2024-12-06', 50),
(109, 28, 3, '2024-01-13', 40),
(110, 10, 11, '2024-02-18', 55);




-- Show the Tables:
select * from Members;
select * from Trainers;
select * from Training_Sessions;

-- The Questions and Queries:

-- 1. List how many training sessions each member attended.
with sessions as(
	select member_id, count(*) as cnt
	from Training_Sessions
	group by member_id
)
select m.name, m.membership_type, sessions.cnt as No_of_Sessions
from sessions
inner join members m
on sessions.member_id = m.member_id
order by m.name asc;


-- 2. How many training sessions have been conducted in the last 2 months each?
SELECT 
    TO_CHAR(session_date, 'YYYY-MM') AS month, 
    COUNT(*) AS sessions_count
FROM Training_Sessions
WHERE session_date >= ((select max(session_date) from Training_Sessions) - INTERVAL '2 months')
GROUP BY TO_CHAR(session_date, 'YYYY-MM')
ORDER BY month DESC;

-- 3. Top 3 trainers who have conducted the most training sessions.
SELECT trainer_id, COUNT(session_id) AS sessions_count
FROM Training_Sessions
GROUP BY trainer_id
ORDER BY sessions_count DESC
LIMIT 3;

-- 4. List out the Members who have not attended any traing sessions.
SELECT M.member_id, M.name
FROM Members M
LEFT JOIN Training_Sessions TS ON M.member_id = TS.member_id
WHERE TS.member_id IS NULL;

-- 5. List out the members who have trained with multiple trainers.
with tc as (SELECT member_id, COUNT(DISTINCT trainer_id) AS trainer_count
	FROM Training_Sessions
	GROUP BY member_id
	HAVING COUNT(DISTINCT trainer_id) > 1
)
SELECT m.name, tc.*
FROM Members m
INNER JOIN tc
ON m.member_id = tc.member_id
ORDER BY trainer_count DESC;

-- 6. List out the busiest months based on the number of training sessions.
SELECT 
    EXTRACT(MONTH FROM session_date) AS month, 
    COUNT(*) AS sessions_count
FROM Training_Sessions
GROUP BY EXTRACT(MONTH FROM session_date)
ORDER BY sessions_count DESC;

-- 7. Find the most popular training days of the week.
SELECT 
    TO_CHAR(session_date, 'Day') AS day_of_week, 
    COUNT(*) AS sessions_count
FROM Training_Sessions
GROUP BY TO_CHAR(session_date, 'Day')
ORDER BY sessions_count DESC;

-- 8. List out no. of sessions each trainer conducted.
with sessions as(
	select trainer_id, count(*) as cnt
	from Training_Sessions
	group by trainer_id
)
select t.name, t.trainer_id, sessions.cnt as No_of_Sessions
from sessions
inner join Trainers t
on sessions.trainer_id = t.trainer_id
order by No_of_Sessions desc;



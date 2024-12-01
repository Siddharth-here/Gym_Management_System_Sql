 CREATE DATABASE Gym_Mangement_System;
USE Gym_Mangement_System;

CREATE TABLE Memberships (
    membership_id INT IDENTITY PRIMARY KEY,
    membership_type NVARCHAR(50) NOT NULL,
    cost DECIMAL(10, 2) NOT NULL,
	benefits NVARCHAR(MAX)
);

INSERT INTO Memberships (membership_type, cost, benefits)
VALUES 
('Basic', 200.00, 'Access to gym equipment'),
('Premium', 400.00, 'Access to gym equipment, 1 personal trainer session per month'),
('VIP', 600.00, 'Access to all facilities, unlimited personal trainer sessions, spa access'),
('Basic', 150.00, 'Access to gym equipment'),
('Premium', 300.00, 'Access to gym equipment, 1 personal trainer session per month'),
('VIP', 500.00, 'Access to all facilities, unlimited personal trainer sessions, spa access'),
('Basic', 220.00, 'Access to gym equipment'),
('Premium', 380.00, 'Access to gym equipment, 1 personal trainer session per month'),
('VIP', 620.00, 'Access to all facilities, unlimited personal trainer sessions, spa access'),
('Basic', 180.00, 'Access to gym equipment'),
('Premium', 320.00, 'Access to gym equipment, 1 personal trainer session per month'),
('VIP', 550.00, 'Access to all facilities, unlimited personal trainer sessions, spa access'),
('Basic', 210.00, 'Access to gym equipment'),
('Premium', 390.00, 'Access to gym equipment, 1 personal trainer session per month'),
('VIP', 630.00, 'Access to all facilities, unlimited personal trainer sessions, spa access'),
('Basic', 170.00, 'Access to gym equipment'),
('Premium', 310.00, 'Access to gym equipment, 1 personal trainer session per month'),
('VIP', 540.00, 'Access to all facilities, unlimited personal trainer sessions, spa access'),
('Basic', 230.00, 'Access to gym equipment'),
('Premium', 370.00, 'Access to gym equipment, 1 personal trainer session per month');

select * from Memberships;

CREATE TABLE Members (
    member_id INT IDENTITY PRIMARY KEY,
    member_name NVARCHAR(50) NOT NULL,
	gender NVARCHAR(6),
	age NVARCHAR(20),
    phone NVARCHAR(15),
    email NVARCHAR(100) UNIQUE,
    address NVARCHAR(MAX),
    membership_id INT NOT NULL,
    join_date DATE NOT NULL,
    FOREIGN KEY (membership_id) REFERENCES Memberships(membership_id)
);

INSERT INTO Members (member_name, gender, age, phone, email, address, membership_id, join_date)
VALUES 
('Siddharth Mohapatra', 'Male','20','98765 43210', 'sidmoha@gmail.com', 'Cuttack', 1, '2023-01-01'),
('Akash Samantray', 'Male','23','91234 56789', 'samakash@gmail.com', 'Pune', 1, '2023-04-15'),
('Kritika Das', 'Female', '20','93456 78901', 'kritikadas@gmail.com', 'Ranchi', 3, '2023-03-01'),
('Sweta Nayak', 'Female','24', '87654 32109', 'nayaksweta@gmail.com', 'Bhubaneswar', 1, '2023-04-20'),
('Abhijit Sharma', 'Male','22', '99876 54321', 'sharma1234@gmail.com', 'Jamsedpur', 2, '2023-05-14'),
('Priyanshu Rout', 'Male','20', '90123 45678', 'routpriyansu@gmail.com', 'Cuttack', 3, '2023-06-01'),
('Preeti Gupta', 'Female','23', '94567 89012', 'preetigup@gmail.com', 'Kolkata', 1, '2023-07-01'),
('Ansuman Singh', 'Male','23', ' 85432 10987', 'singhsaab@gmail.com', 'Chandigarh', 2, '2023-08-01'),
('Richa Sharma', 'Female','19', '96543 21098', 'sharmaricha@gmail.com', 'Ranchi', 3, '2023-09-08'),
('Siddharth Mohanty', 'Male','20', '88976 55432', 'sidmohanty@gmail.com', 'Cuttack', 1, '2023-10-01'),
('Sandeep Sahoo', 'Male','21', '97531 64280', 'sahoo4567@gmail.com', 'Bhubaneswar', 2, '2023-11-01'),
('Shruti Agrawal', 'Female','25', ' 92045 78613', 'agrawal1234@gamil.com', 'Roulkela', 3, '2023-12-01'),
('Mamali Samantray', 'Female','26', '83214 56987', 'samantraymamali@gmail.com', 'Roorkee', 1, '2024-01-01'),
('Raman Pandey', 'Male','27', '97860 43125', 'ramanpandey@gmail.com', 'Jamsedpur', 2, '2024-02-01'),
('Mandeep Singh', 'Male','21', '94321 67890', 'mandeepsingh@gmail.com', 'Chandigarh', 3, '2024-03-01'),
('Aditya Sinha', 'Male', '20','90876 54321', 'sinha345@gmail.com', 'Asansol', 1, '2024-04-01'),
('Ankush Choudhry', 'Male','23', '95678 34210', 'ankush6453@gmail.com', 'Delhi', 2, '2024-05-01'),
('Amit Sen', 'Male','18', '84123 90765', 'senamit@gmail.com', 'Kolkata', 3, '2024-06-01'),
('Bijaya Pradhan', 'Male','24', ' 93245 67819', 'bijay344@gmail.com', 'Kendrapada', 1, '2024-07-01'),
('Priyanka Sen', 'Female','22', '98670 12345', 'priyankasen@gmail.com', 'Kolkata', 2, '2024-08-01');

select * from Members;

CREATE TABLE Trainers (
    trainer_id INT IDENTITY PRIMARY KEY,
    trainer_name NVARCHAR(50) NOT NULL,
	age NVARCHAR(5),
	gender NVARCHAR(7),
	salary DECIMAL(10, 2), -- Up to 10 digits, with 2 digits after the decimal
    phone NVARCHAR(15),
    email NVARCHAR(100) UNIQUE,
    specialization NVARCHAR(100),
);

INSERT INTO Trainers (trainer_name, age, salary, gender, phone, email, specialization)
VALUES 
('Amit Sharma', '25', '500.00','Male','98765 12340', 'amitsharma@gmail.com', 'Yoga'),
('Rohan Gupta', '30', '1400.00','Male','91234 56780', 'guptarohan@gmail.com', 'Strength Training'),
('Priya Iyer ', '25','800.00','Female','97860 43120', 'ayerpria@gmail.com', 'Cardio'),
('Suresh Nair', '26','900.00','Male', '93456 78910', 'sureshnair@gmail.com', 'Pilates'),
('Neha Singh ', '24', '1200.00','Female','94321 67880', 'nehasingh@gmail.com', 'HIIT'),
('Anjali Kapoor ', '22', '600.00','Female',' 90876 54320', 'kapooranjli@gmail.com', 'CrossFit'),
('Divya Reddy', '27', '1400.00','Female',' 95678 34200', 'reddy@gmail.com', 'Strength Training'),
('Karan Malhotra', '25','800.00','Male', '87654 32100', 'karanmalhotra@gmail.com', 'Cardio'),
('Arun Patil', '23','1400.00','Male', '90123 45670', 'patilarun@gmail.com', 'Strength Training'),
('Manish Verma', '24','1200.00','Male', '85432 10980', 'manishverma@gmail.com', 'HIIT'),
('Sneha Roy', '25','600.00','Female', '83214 56980', 'roy sneha@gmail.com', 'CrossFit'),
('Swati Bhardwaj ', '25','600.00','Female', '63714 59980', 'swati@gmail.com', 'yoga'),
('Pooja Yadav  ', '22','1200.00','Female', '98214 56970', 'pooja@gmail.com', 'HIIT'),
('Vikram Joshi ', '25','1400.00','Male', '83714 56230', 'vikram@example.com', 'Strength Training'),
('Nikhil Mehta ', '21','900.00','Male', '88914 52940', 'mehta@gmail.com', 'Pilates'),
('Rajesh Desai ', '27','800.00','Female', '96714 58490', 'rajeshdesai@gmail.com', 'Cardio'),
('Rekha Mishra  ', '22','500.00','Female', '93214 56985', 'rekhamishra@gmail.com', 'yoga'),
('Meera Chawla', '25','1400.00','Female', '93314 59280', 'meera@gmail.com', 'Strength Training'),
('Kavita Bansal  ', '25','600.00','Female', '63214 59080', 'kavita@gmail.com', 'Crossfit'),
('Deepak Kumar', '30', '1400.00','Male','91234 56780', 'deepak@gmail.com', 'Strength Training');

select * from Trainers;

CREATE TABLE Classes (
    class_id INT IDENTITY PRIMARY KEY,
    class_name NVARCHAR(100) NOT NULL,
    schedule NVARCHAR(100) NOT NULL, -- E.g., "Monday 7:00 PM"
    duration INT NOT NULL, -- Duration in minutes
    trainer_id INT NOT NULL,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

INSERT INTO Classes (class_name, schedule, duration, trainer_id)
VALUES 
('Morning Yoga', 'Mon-Fri 6:00 AM', 60, 1),
('Evening Yoga', 'Mon-Fri 6:00 PM', 60, 1),
('Strength Training Basics', 'Mon-Wed 7:00 AM', 90, 2),
('Advanced Strength Training', 'Mon-Wed 6:00 PM', 90, 2),
('Cardio Blast', 'Tue-Thu 5:30 AM', 45, 3),
('HIIT Circuit', 'Mon-Wed 6:30 AM', 30, 5),
('Pilates for Beginners', 'Mon-Wed 7:00 PM', 60, 4),
('Advanced Pilates', 'Tue-Thu 7:30 PM', 60, 4),
('CrossFit Basics', 'Mon-Fri 8:00 AM', 90, 6),
('CrossFit Advanced', 'Mon-Fri 5:30 PM', 90, 6),
('Morning Yoga', 'Mon-Fri 6:00 AM', 60, 7),
('Strength Training Basics', 'Mon-Wed 7:00 AM', 90, 8),
('Cardio Blast', 'Tue-Thu 5:30 AM', 45, 9),
('HIIT Circuit', 'Mon-Wed 6:30 AM', 30, 10),
('Pilates for Beginners', 'Mon-Wed 7:00 PM', 60, 11),
('Advanced Pilates', 'Tue-Thu 7:30 PM', 60, 12),
('CrossFit Basics', 'Mon-Fri 8:00 AM', 90, 13),
('CrossFit Advanced', 'Mon-Fri 5:30 PM', 90, 14),
('Morning Yoga', 'Mon-Fri 6:00 AM', 60, 15);

CREATE TABLE MemberClasses (
    member_id INT NOT NULL,
    class_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    PRIMARY KEY (member_id, class_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
select * from MemberClasses;
INSERT INTO MemberClasses (member_id, class_id, enrollment_date)
VALUES 
(1, 1, '2023-01-01'),
(2, 2, '2023-02-01'),
(3, 3, '2023-03-01'),
(4, 4, '2023-04-01'),
(5, 5, '2023-05-01'),
(6, 6, '2023-06-01'),
(7, 7, '2023-07-01'),
(8, 8, '2023-08-01'),
(9, 9, '2023-09-01'),
(10, 10, '2023-10-01'),
(11, 11, '2023-11-01'),
(12, 12, '2023-12-01'),
(13, 13, '2024-01-01'),
(14, 14, '2024-02-01'),
(15, 15, '2024-03-01'),
(16, 1, '2024-04-01'),
(17, 2, '2024-05-01'),
(18, 3, '2024-06-01'),
(19, 4, '2024-07-01'),
(20, 5, '2024-08-01');


CREATE TABLE Payments (
    payment_id INT IDENTITY PRIMARY KEY,
    member_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method NVARCHAR(50) NOT NULL, -- E.g., "Credit Card", "Cash", UPI
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

select * from Payments;

INSERT INTO Payments (member_id, amount, payment_date, payment_method)
VALUES
(1, 200.00, '2023-01-01', 'Credit Card'),
(2, 400.00, '2023-01-02', 'Debit Card'),
(3, 600.00, '2023-01-03', 'Cash'),
(4, 150.00, '2023-01-04', 'Credit Card'),
(5, 300.00, '2023-01-05', 'Debit Card'),
(6, 500.00, '2023-01-06', 'Cash'),
(7, 220.00, '2023-01-07', 'Credit Card'),
(8, 380.00, '2023-01-08', 'Debit Card'),
(9, 620.00, '2023-01-09', 'Cash'),
(10, 180.00, '2023-01-10', 'Credit Card'),
(11, 320.00, '2023-01-11', 'Debit Card'),
(12, 550.00, '2023-01-12', 'Cash'),
(13, 210.00, '2023-01-13', 'Credit Card'),
(14, 390.00, '2023-01-14', 'Debit Card'),
(15, 630.00, '2023-01-15', 'Cash'),
(16, 170.00, '2023-01-16', 'Credit Card'),
(17, 310.00, '2023-01-17', 'Debit Card'),
(18, 540.00, '2023-01-18', 'Cash'),
(19, 230.00, '2023-01-19', 'Credit Card'),
(20, 370.00, '2023-01-20', 'Debit Card');

CREATE TABLE TrainerAssignments (
    trainer_id INT NOT NULL,
    member_id INT NOT NULL,
    start_date DATE NOT NULL,
	end_date DATE NOT NULL,
    PRIMARY KEY (trainer_id, member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

INSERT INTO TrainerAssignments (trainer_id, member_id, start_date, end_date)
VALUES
(1, 1, '2023-01-01', '2023-06-30'),
(2, 2, '2023-01-02', '2023-06-30'),
(3, 3, '2023-01-03', '2023-06-30'),
(4, 4, '2023-01-04', '2023-06-30'),
(5, 5, '2023-01-05', '2023-06-30'),
(6, 6, '2023-01-06', '2023-06-30'),
(7, 7, '2023-01-07', '2023-06-30'),
(8, 8, '2023-01-08', '2023-06-30'),
(9, 9, '2023-01-09', '2023-06-30'),
(10, 10, '2023-01-10', '2023-06-30'),
(1, 11, '2023-01-11', '2023-06-30'),
(2, 12, '2023-01-12', '2023-06-30'),
(3, 13, '2023-01-13', '2023-06-30'),
(4, 14, '2023-01-14', '2023-06-30'),
(5, 15, '2023-01-15', '2023-06-30'),
(6, 16, '2023-01-16', '2023-06-30'),
(7, 17, '2023-01-17', '2023-06-30'),
(8, 18, '2023-01-18', '2023-06-30'),
(9, 19, '2023-01-19', '2023-06-30'),
(10, 20, '2023-01-20', '2023-06-30');

select * from TrainerAssignments;

CREATE TABLE Attendance (
    attendance_id INT IDENTITY PRIMARY KEY,
    member_id INT NOT NULL,
	class_id INT NOT NULL,
    attendace_date DATETIME NOT NULL,
    status NVARCHAR(10),
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
	FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);

INSERT INTO Attendance (member_id, class_id, attendace_date, status)
VALUES
(1, 1, '2023-01-01', 'Present'),
(2, 2, '2023-01-02', 'Present'),
(3, 3, '2023-01-03', 'Absent'),
(4, 4, '2023-01-04', 'Present'),
(5, 5, '2023-01-05', 'Present'),
(6, 6, '2023-01-06', 'Absent'),
(7, 7, '2023-01-07', 'Present'),
(8, 8, '2023-01-08', 'Present'),
(9, 9, '2023-01-09', 'Absent'),
(10, 10, '2023-01-10', 'Present'),
(11, 1, '2023-01-11', 'Present'),
(12, 2, '2023-01-12', 'Absent'),
(13, 3, '2023-01-13', 'Present'),
(14, 4, '2023-01-14', 'Present'),
(15, 5, '2023-01-15', 'Present'),
(16, 6, '2023-01-16', 'Absent'),
(17, 7, '2023-01-17', 'Present'),
(18, 8, '2023-01-18', 'Present'),
(19, 9, '2023-01-19', 'Absent'),
(20, 10, '2023-01-20', 'Present');

CREATE TABLE Feedback (
    feedback_id INT IDENTITY PRIMARY KEY,
    member_id INT NOT NULL,
    trainer_id INT NULL,
    class_id INT NULL,
    feedback_text NVARCHAR(MAX) NOT NULL,
    feedback_date DATE NOT NULL,
	rating INT CHECK (rating BETWEEN 1 AND 5), -- Rating from 1 to 5
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);
INSERT INTO Feedback (member_id, trainer_id, feedback_text, feedback_date, rating)
VALUES
(1, 1, 'Great trainer, very helpful!', '2023-01-01', 5),
(2, 2, 'Good session, but could improve timing.', '2023-01-02', 4),
(3, 3, 'Excellent guidance and tips!', '2023-01-03', 5),
(4, 4, 'Average experience.', '2023-01-04', 3),
(5, 5, 'Very motivating and friendly.', '2023-01-05', 5),
(6, 6, 'Did not meet expectations.', '2023-01-06', 2),
(7, 7, 'Good trainer.', '2023-01-07', 4),
(8, 8, 'Very professional and helpful.', '2023-01-08', 5),
(9, 9, 'Decent experience.', '2023-01-09', 3),
(10, 10, 'Excellent sessions!', '2023-01-10', 5),
(11, 1, 'Good knowledge.', '2023-01-11', 4),
(12, 2, 'Not satisfied with communication.', '2023-01-12', 3),
(13, 3, 'Great experience overall.', '2023-01-13', 5),
(14, 4, 'Good trainer.', '2023-01-14', 4),
(15, 5, 'Highly recommended!', '2023-01-15', 5),
(16, 6, 'Could be more punctual.', '2023-01-16', 3),
(17, 7, 'Very professional.', '2023-01-17', 5),
(18, 8, 'Helpful sessions.', '2023-01-18', 4),
(19, 9, 'Not engaging enough.', '2023-01-19', 2),
(20, 10, 'Fantastic trainer!', '2023-01-20', 5);

/* Some operations performed in Gym_Management_System */
/*---Retrieve All Members with Their Membership Details---*/
SELECT 
    m.member_id,
    m.member_name,
    m.gender,
    m.age,
    m.phone,
    m.email,
    mem.membership_type,
    mem.cost
FROM Members m
JOIN Memberships mem ON m.membership_id = mem.membership_id;

/*---List Members Who Have Joined After June 2023---*/
SELECT 
    member_id,
    member_name,
    join_date
FROM Members
WHERE join_date > '2023-06-30';

/*---Calculate Total Payment Received Per Membership Type--- */
SELECT 
    mem.membership_type,
    SUM(p.amount) AS Total_Amount_Received
FROM Payments p
JOIN Members m ON p.member_id = m.member_id
JOIN Memberships mem ON m.membership_id = mem.membership_id
GROUP BY mem.membership_type;

/*---Find Members Who Gave a Rating Less Than 4--- */
SELECT 
    f.feedback_id,
    m.member_name,
    t.trainer_name,
    f.feedback_text,
    f.rating
FROM Feedback f
JOIN Members m ON f.member_id = m.member_id
JOIN Trainers t ON f.trainer_id = t.trainer_id
WHERE f.rating < 4;

/*---Attendance Percentage of Each Member in Their Classes--- */
SELECT 
    a.member_id,
    m.member_name,
    COUNT(CASE WHEN a.status = 'Present' THEN 1 END) * 100.0 / COUNT(*) AS Attendance_Percentage
FROM Attendance a
JOIN Members m ON a.member_id = m.member_id
GROUP BY a.member_id, m.member_name;

/*---List Trainers and Members They Have Worked With---*/
SELECT 
    t.trainer_name,
    m.member_name,
    ta.start_date,
    ta.end_date
FROM TrainerAssignments ta
JOIN Trainers t ON ta.trainer_id = t.trainer_id
JOIN Members m ON ta.member_id = m.member_id;

/*---Identify the Most Popular Class Based on Member Enrollment---*/
SELECT 
    c.class_name,
    COUNT(mc.member_id) AS Total_Members_Enrolled
FROM MemberClasses mc
JOIN Classes c ON mc.class_id = c.class_id
GROUP BY c.class_name
ORDER BY Total_Members_Enrolled DESC;

/*---Monthly Revenue from Payments---*/
SELECT 
    FORMAT(payment_date, 'yyyy-MM') AS Month,
    SUM(amount) AS Monthly_Revenue
FROM Payments
GROUP BY FORMAT(payment_date, 'yyyy-MM')
ORDER BY Month ASC;


/*---Identify Trainers with the Highest Number of Assigned Members---*/
SELECT 
    t.trainer_name,
    COUNT(ta.member_id) AS Assigned_Members
FROM TrainerAssignments ta
JOIN Trainers t ON ta.trainer_id = t.trainer_id
GROUP BY t.trainer_name
ORDER BY Assigned_Members DESC;


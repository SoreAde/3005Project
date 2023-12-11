
ALTER SEQUENCE Trainer_trainer_id_seq RESTART WITH 1;
INSERT INTO Trainer (first_name, last_name, DOB, gender, email, employment_date) VALUES
('Mike', 'Miz', '1980-01-01', 'Male', 'mikmiz@email.com', '2020-06-01'),
('Luke', 'Callum', '1985-02-02', 'Male', 'lukeecal@email.com', '2021-07-01'),
('Mike', 'Johnson', '1990-03-03', 'Male', 'mike.johnson@email.com', '2019-08-01'),
('Emily', 'Davis', '1982-04-04', 'Female', 'emily.davis@email.com', '2020-09-01'),
('Oliver', 'Hudson', '1978-11-11', 'Male', 'ollyhudson@email.com', '2021-09-01'),
('Sophia', 'Bell', '1987-12-12', 'Female', 'sopbell@email.com', '2022-01-01');

ALTER SEQUENCE Administrator_admin_id_seq RESTART WITH 1;
INSERT INTO Administrator (first_name, last_name, DOB, gender, email, employment_date) VALUES
('Al', 'Burn', '1975-05-05', 'Male', 'al.bn@email.com', '2018-10-01'),
('Chris', 'Wilson', '1988-06-06', 'Male', 'chris.wilson@email.com', '2020-11-01'),
('Laura', 'Miller', '1991-07-07', 'Female', 'laura.miller@email.com', '2021-01-01'),
('David', 'Taylor', '1983-08-08', 'Male', 'dtaylor@email.com', '2019-02-01'),
('Nate', 'Morris', '1979-11-09', 'Male', 'ethan.morris@email.com', '2019-03-01'),
('Isabella', 'Carter', '1989-10-08', 'Female', 'bella.carter@email.com', '2021-04-01');

ALTER SEQUENCE Member_member_id_seq RESTART WITH 1;
INSERT INTO Member (admin_id, first_name, last_name, DOB, gender, email, registration_date, expiry, subscription) VALUES
(1, 'Sara', 'Anderson', '1990-09-09', 'Female', 'sara.anderson@email.com', '2023-12-01', '2024-01-01', 'Bi-Monthly'),
(2, 'Tiger', 'Woods', '1984-10-10', 'Male', 'twoodmasters@email.com', '2023-12-01', '2024-11-30', 'Yearly'),
(3, 'Nora', 'Clark', '1995-11-11', 'Female', 'nora.clark@email.com', '2023-11-22', '2024-01-22', 'Bi-Monthly'),
(4, 'Kevin', 'Robinson', '1989-12-12', 'Male', 'kevin.robinson@email.com', '2023-06-01', '2024-05-31', 'Yearly'),
(1, 'Barry', 'Allen', '1996-08-08', 'Male', 'flash@email.com', '2023-12-09', '2024-02-08', 'Bi-Monthly'),
(2, 'Lily', 'Evans', '1993-09-09', 'Female', 'lily.evans@email.com', '2023-03-01', '2024-02-29', 'Yearly');

ALTER SEQUENCE Locations_location_id_seq RESTART WITH 1;
INSERT INTO Locations (admin_id, location_name, location_address, launch_date) VALUES
(1, 'Downtown Fitness', '123 Main St, Cityville', '2018-01-01'),
(2, 'Uptown Gym', '456 Broad St, Gotham', '2019-02-01'),
(3, 'Suburban Health Club', '789 Oak St, Starling', '2020-03-01'),
(4, 'Riverside Wellness', '101 River Rd, Riverside', '2021-04-01'),
(5, 'City Center Gym', '222 Central Ave, Metropolis', '2022-05-01'),
(6, 'Harbor Side Fitness', '333 Harbor View Blvd, Ottawa', '2022-06-01');

ALTER SEQUENCE room_room_id_seq RESTART WITH 1;
INSERT INTO room (location_id, capacity) VALUES
(1, 20),
(2, 30),
(1, 15),
(3, 25),
(3, 20),
(4, 35);

ALTER SEQUENCE Equipment_equipment_id_seq RESTART WITH 1;
INSERT INTO Equipment (equipment_name, last_serviced, logs, installation) VALUES
('Treadmill', '2022-01-01', 'Regular maintenance', '2018-05-05'),
('Stationary Bike', '2022-02-02', 'Replaced belt', '2019-06-06'),
('Rowing Machine', '2022-03-03', 'Checked resistance', '2020-07-07'),
('Elliptical', '2022-04-04', 'Lubricated joints', '2021-08-08'),
('Dumbbells Set', '2022-05-05', 'Checked weights', '2021-10-10'),
('Yoga Mats', '2022-06-06', 'Replenished stock', '2022-01-01');

INSERT INTO health (member_id, age, weighs, height, BMI) VALUES
(1, 32, 70, 170, 24),
(2, 38, 80, 180, 25),
(3, 27, 60, 160, 23),
(4, 33, 85, 175, 28),
(5, 26, 75, 180, 23),
(6, 29, 65, 165, 24);

ALTER SEQUENCE Workshop_workshop_id_seq RESTART WITH 1;
INSERT INTO Workshop (focus, admin_id, trainer_id) VALUES
('Yoga', 1, 3),
('Weight Training', 2, 4),
('Aerobics', 3, 1),
('Pilates', 4, 6),
('Kickboxing', 1, 5),
('Zumba', 2, 2);


INSERT INTO works (trainer_id, location_id, shift) VALUES
(1, 3, '[2023-02-04 08:00:00, 2023-02-04 12:00:00]'),
(2, 4, '[2023-02-06 12:00:00, 2023-02-06 16:00:00]'),
(3, 2, '[2023-02-02 14:00:00, 2023-02-02 18:00:00]'),
(4, 1, '[2023-02-01 16:00:00, 2023-02-01 20:00:00]'),
(5, 5, '[2023-02-02 08:00:00, 2023-02-02 12:00:00]'),
(6, 6, '[2023-02-03 12:00:00, 2023-02-03 16:00:00]');

INSERT INTO trains (trainer_id, member_id, time_slot) VALUES
(1, 1, '[2023-02-04 10:00:00, 2023-02-04 12:00:00]'),
(3, 2, '[2023-02-03 10:00:00, 2023-02-03 11:00:00]'),
(5, 3, '[2023-02-05 14:00:00, 2023-02-05 15:00:00]'),
(2, 4, '[2023-02-08 16:00:00, 2023-02-08 17:00:00]'),
(4, 5, '[2023-02-07 08:00:00, 2023-02-07 09:00:00]'),
(6, 6, '[2023-02-03 12:00:00, 2023-02-03 14:00:00]');


INSERT INTO achievement (member_id, achievement_name, summary, date_earned) VALUES
(1, '5K Run', 'Completed a 5K run', '2022-07-01'),
(2, '10K Run', 'Completed a 10K run', '2022-08-01'),
(3, 'Half Marathon', 'Completed a half marathon', '2022-09-01'),
(4, 'Full Marathon', 'Completed a full marathon', '2022-10-01'),
(5, 'Advanced Yoga', 'Completed advanced yoga course', '2022-11-01'),
(6, 'Strength Training', 'Completed strength training program', '2022-12-01');

INSERT INTO hosts (room_id, location_id, workshop_id, session) VALUES
(1, 1, 3, '[2023-03-04 09:00:00, 2023-03-04 10:30:00]'),
(2, 2, 2, '[2023-03-05 11:00:00, 2023-03-05 12:30:00]'),
(1, 1, 4, '[2023-03-02 13:00:00, 2023-03-02 14:30:00]'),
(3, 1, 6, '[2023-03-03 15:00:00, 2023-03-03 16:30:00]'),
(3, 1, 1, '[2023-03-03 09:00:00, 2023-03-03 10:30:00]'),
(4, 3, 5, '[2023-03-02 11:00:00, 2023-03-02 12:30:00]');

UPDATE Administrator SET location_id = 1 WHERE admin_id = 1;
UPDATE Administrator SET location_id = 2 WHERE admin_id = 2;
UPDATE Administrator SET location_id = 2 WHERE admin_id = 3;
UPDATE Administrator SET location_id = 3 WHERE admin_id = 4;
UPDATE Administrator SET location_id = 3 WHERE admin_id = 5;
UPDATE Administrator SET location_id = 3 WHERE admin_id = 6;
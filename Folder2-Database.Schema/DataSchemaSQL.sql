CREATE TABLE person(
	Person_ID INT NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Birthdate Date NOT NULL,
	Address VARCHAR(50) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	PhoneNumber INT NOT NULL,
		PRIMARY KEY(Person_ID)
);

INSERT INTO person (Person_ID, FirstName, LastName, Birthdate, Address, Email, PhoneNumber)
VALUES ('574829301', 'John', 'Doe', '1990-05-15', '123 Main St, City', 'john.doe@email.com', '09123456'),
('890215467', 'Jane', 'Smith', '1985-08-22', '456 Oak Ave, Town', 'jane.smith@email.com', '09876543'),
('123456789', 'Michael', 'Johnson', '1978-12-10', '789 Pine Rd, Ville', 'michael.johnson@email.com', '09551234'),
('987654321', 'Emily', 'White', '1995-03-30', '101 Elm St, Hamlet', 'emily.white@email.com', '09890123'),
('654321098', 'David', 'Brown', '1982-07-18', '202 Maple Dr, City', 'david.brown@email.com', '09543210'),
('456789012', 'Sarah', 'Anderson', '1998-09-25', '303 Birch Ln, Town', 'sarah.anderson@email.com', '09216549'),
('210934876', 'Christopher', 'Taylor', '1972-01-05', '404 Cedar Rd, Ville', 'christopher.taylor@email.com', '09894561'),
('876543210', 'Ashley', 'Miller', '1989-06-12', '505 Spruce Ave, Hamlet', 'ashley.miller@email.com', '09345678'),
('543210987', 'Brian', 'Wilson', '1993-11-08', '606 Fir St, City', 'brian.wilson@email.com', '09765432'),
('135792468', 'Jessica', 'Turner', '1980-04-02', '707 Pine Dr, Town', 'jessica.turner@email.com', '09357902');

SELECT * FROM person;

CREATE TABLE vehicle(
	Vehicle_ID INT NOT NULL,
	Model VARCHAR(30) NOT NULL,
	Year INT NOT NULL,
	Color VARCHAR(10) NOT NULL,
	LicensePlate VARCHAR(10) NOT NULL,
		PRIMARY KEY(Vehicle_ID)
);

INSERT INTO vehicle (Vehicle_ID, Model, Year, Color, LicensePlate)
VALUES ('573829164', 'Toyota Camry', '2022', 'Blue', 'ABC123'),
('984617235', 'Honda Accord', '2019', 'Red', 'XYZ456'),
('246810357', 'Ford Mustang', '2020', 'Black', 'DEF789'),
('759312468', 'Chevrolet Malibu', '2021', 'Silver', 'GHI012'),
('132465789', 'BMW X5', '2018', 'White', 'JKL345'),
('685297341', 'Nissan Altima', '2017', 'Gray', 'MNO678'),
('417823596', 'Tesla Model 3', '2023', 'Green', 'PQR901'),
('890124673', 'Subaru Outback', '2016', 'Brown', 'STU234'),
('563748912', 'Hyundai Sonata', '2015', 'Yellow', 'VWX567'),
('321986547', 'Mercedes-Benz C-Class', '2019', 'Silver', 'YZA890');

SELECT * FROM vehicle;

CREATE TABLE registration(
	Registration_ID INT NOT NULL,
	Person_ID INT NOT NULL,
	RegistrationDate Date NOT NULL,
	Vehicle_ID INT NOT NULL,
		PRIMARY KEY(Registration_ID),
		FOREIGN KEY (Person_ID) REFERENCES person(Person_ID),
		FOREIGN KEY (Vehicle_ID) REFERENCES vehicle(Vehicle_ID)
);

INSERT INTO registration (Registration_ID, Person_ID, RegistrationDate, Vehicle_ID)
VALUES ('987643210', '574829301', '2022-01-15', '573829164'),
('123467890', '890215467', '2022-02-28', '984617235'),
('555555555', '123456789', '2022-03-10', '246810357'),
('876432109', '987654321', '2022-04-22', '759312468'),
('246135790', '654321098', '2022-05-05', '132465789'),
('112234455', '456789012', '2022-06-18', '685297341'),
('987023456', '210934876', '2022-07-01', '417823596'),
('314192653', '876543210', '2022-08-14', '890124673'),
('777777777', '543210987', '2022-09-27', '563748912'),
('999887776', '135792468', '2022-10-09', '321986547');

SELECT * FROM registration;

CREATE TABLE license(
	License_ID INT NOT NULL,
	Person_ID INT NOT NULL,
	LicenseNumber INT NOT NULL,
	IssueDate Date NOT NULL,
	ExpiryDate Date NOT NULL,
		PRIMARY KEY(License_ID),
		FOREIGN KEY (Person_ID) REFERENCES person(Person_ID)
);

INSERT INTO license (License_ID, Person_ID, LicenseNumber, IssueDate, ExpiryDate)
VALUES ('785439216', '574829301', '12345', '2022-03-15', '2023-03-15'),
('604871932', '890215467', '67890', '2021-09-22', '2022-09-22'),
('219605384', '123456789', '54321', '2023-01-10', '2024-01-10'),
('873124560', '987654321', '98765', '2022-06-30', '2023-06-30'),
('356890124', '654321098', '23456', '2021-12-05', '2022-12-05'),
('942706183', '456789012', '78901', '2023-04-18', '2024-04-18'),
('518204769', '210934876', '65432', '2022-08-12', '2023-08-12'),
('697315802', '876543210', '10987', '2022-02-28', '2023-02-28'),
('430158627', '543210987', '87654', '2023-11-05', '2024-11-05'),
('265743918', '135792468', '32109', '2022-05-20', '2023-05-20');

SELECT * FROM license;

CREATE TABLE appointment(
	Appointment_ID INT NOT NULL,
	Person_ID INT NOT NULL,
	AppointmentDate Date NOT NULL,
	Purpose VARCHAR(100),
	Location VARCHAR(50) NOT NULL,
		PRIMARY KEY(Appointment_ID),
		FOREIGN KEY (Person_ID) REFERENCES person(Person_ID)
);

INSERT INTO appointment (Appointment_ID, Person_ID, AppointmentDate, Purpose, Location)
VALUES ('1001', '574829301', '2023-01-15', 'License Registration', 'Lipa City Hall'),
('1002', '890215467', '2023-02-03', 'License Registration', 'Lipa City Hall'),
('1003', '123456789', '2023-03-10', 'License Registration', 'Lipa City Hall'),
('1004', '987654321', '2023-04-05', 'License Registration', 'Lipa City Hall'),
('1005', '654321098', '2023-05-20', 'License Registration', 'Lipa City Hall'),
('1006', '456789012', '2023-06-08', 'License Registration', 'Lipa City Hall'),
('1007', '210934876', '2023-07-12', 'License Registration', 'Lipa City Hall'),
('1008', '876543210', '2023-08-28', 'License Registration', 'Lipa City Hall'),
('1009', '543210987', '2023-09-17', 'License Registration', 'Lipa City Hall'),
('10010', '135792468', '2023-10-22', 'License Registration', 'Lipa City Hall');

SELECT * FROM appointment;

CREATE TABLE admin(
	Admin_ID INT NOT NULL,
	Person_ID INT NOT NULL,
	Role VARCHAR(50) NOT NULL,
		PRIMARY KEY(Admin_ID),
		FOREIGN KEY (Person_ID) REFERENCES person(Person_ID)
);

INSERT INTO admin (Admin_ID, Person_ID, Role)
VALUES ('1101', '574829301', 'Organizing the System'),
('1201', '890215467', 'Entertaining with queries on phone or by email'),
('1301', '123456789', 'Organizing the registration '),
('1401', '987654321', 'Scheduling appointments/Meetings'),
('1202', '654321098', 'Updating computer records using a database'),
('1501', '456789012', 'Entertaining with queries on phone or by email'),
('1302', '210934876', 'Organizing the registration '),
('1502', '876543210', 'Updating computer records using a database'),
('1102', '543210987', 'Organizing the System'),
('1402', '135792468', 'Scheduling appointments/Meetings');

SELECT * FROM admin;

CREATE TABLE message(
	Message_ID INT NOT NULL,
	Person_ID INT NOT NULL,
	message_text VARCHAR(150) NOT NULL,
	timestamp TIMESTAMP NOT NULL,
	message_status VARCHAR(50) NOT NULL,
		PRIMARY KEY(Person_ID),
		FOREIGN KEY(Person_ID) REFERENCES person(Person_ID)
);

INSERT INTO message (Message_ID, Person_ID, message_text, timestamp, message_status)
VALUES ('201', '574829301', 'How do I register for a drivers license in my state?', '2023-01-15 08:30:00', 'pending'),
('202', '890215467', 'What documents are required for the license registration process?', '2023-01-15 10:45:00', 'read'),
('203', '123456789', 'Can you explain the steps involved in renewing a drivers license?', '2023-01-16 15:20:00', 'pending'),
('204', '987654321', 'Is there a specific age requirement for obtaining a learners permit in my area?', '2023-01-17 18:00:00', 'read'),
('205', '654321098', 'What is the process for transferring an out-of-state drivers license to my current state?', '2023-01-18 09:15:00', 'pending'),
('206', '456789012', 'Are there any special requirements or tests for obtaining a commercial drivers license?', '2023-01-19 12:30:00', 'read'),
('207', '210934876', 'How do I replace a lost or stolen drivers license, and what documents do I need for that?', '2023-01-20 14:55:00', 'pending'),
('208', '876543210', 'Can I check the status of my license application online, and if so, how?', '2023-01-21 08:00:00', 'read'),
('209', '543210987', 'What are the consequences of driving with an expired license, and how can I avoid that situation?', '2023-01-22 17:10:00', 'pending'),
('200', '135792468', 'Are there any restrictions or conditions for obtaining a drivers license for individuals with certain medical conditions?', '2023-01-23 20:45:00', 'read');

SELECT * FROM message;

CREATE TABLE archive(
	ArchiveFile_ID INT NOT NULL,
	Person_ID INT NOT NULL,
	file_path VARCHAR(150) NOT NULL,
	timestamp TIMESTAMP NOT NULL,
		PRIMARY KEY(Person_ID),
		FOREIGN KEY(Person_ID) REFERENCES person(Person_ID)
);

INSERT INTO archive(ArchiveFile_ID, Person_ID, file_path,  timestamp)
VALUES ('401', '574829301', '/data/documents/JANUARY', '2023-01-15 08:30:00'),
('402', '890215467', '/data/documents/FEBRUARY', '2023-02-20 12:45:00'),
('403', '123456789', '/data/documents/MARCH', '2023-03-05 16:20:00'),
('404', '987654321', '/data/documents/APRIL', '2023-04-10 20:55:00'),
('405', '654321098', '/data/documents/MAY', '2023-05-15 02:10:00'),
('406', '456789012', '/data/documents/JUNE', '2023-06-20 06:35:00'),
('407', '210934876', '/data/documents/JULY', '2023-07-25 10:00:00'),
('408', '876543210', '/data/documents/AUGUST', '2023-08-30 14:25:00'),
('409', '543210987', '/data/documents/SEPTEMBER', '2023-09-04 18:50:00'),
('400', '135792468', '/data/documents/OCTOBER', '2023-10-09 23:15:00');

SELECT * FROM archive;
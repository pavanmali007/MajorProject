SHOW DATABASES;
CREATE DATABASE VNStadium;
USE VNStadium;
SHOW TABLES;

CREATE TABLE VNStadium.UserDetails(
userId INT AUTO_INCREMENT PRIMARY KEY,
userName VARCHAR(30) NOT NULL,
emailId VARCHAR(50) NOT NULL,
phoneNumber BIGINT NOT NULL,
password VARCHAR(20) NOT NULL,
isAdmin BOOLEAN);

SHOW TABLES;
DESC VNStadium.UserDetails;

INSERT INTO UserDetails(userName, emailId, phoneNumber, password, isAdmin)
VALUES ('Bhavesh', 'bhavesh@nasa.com', 1234567890, 'bhavesh123', false);

SELECT * from UserDetails;

----------------------------------------------------------------------------
USE VNStadium;
SHOW TABLES;

CREATE INDEX idx_emailId ON userDetails(EmailId);

CREATE TABLE IF NOT EXISTS SeatDetails (
    seatId INT AUTO_INCREMENT PRIMARY KEY,
    seatAddress VARCHAR(5) NOT NULL UNIQUE,
    emailId VARCHAR(50),
    FOREIGN KEY (emailId) REFERENCES userDetails(EmailId)
);

DESC SeatDetails;

INSERT INTO SeatDetails (seatAddress, emailId)
VALUES ('A1', 'bhavesh@nasa.com');

SELECT * FROM SeatDetails;

----------------------------------------------------------------------------

USE VNStadium;

CREATE TABLE IF NOT EXISTS QueryDetails (
    queryId INT AUTO_INCREMENT PRIMARY KEY,
    emailId VARCHAR(50),
    query VARCHAR(100) NOT NULL,
    FOREIGN KEY (emailId) REFERENCES userDetails(EmailId)
);

DESC QueryDetails;

INSERT INTO QueryDetails (emailId, query)
VALUES ('bhavesh@nasa.com', 'Seat reservation for match on 2024-01-01.');

SELECT * FROM QueryDetails;




 


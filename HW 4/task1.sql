DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;
DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (
  PetName VARCHAR(20) PRIMARY KEY,
  Owner VARCHAR(45),
  Species VARCHAR(45),
  Gender ENUM('M', 'F'),
  Birth VARCHAR(10),
  Death VARCHAR(10)
);

SELECT * FROM petPet;

CREATE TABLE petEvent (
  eventID VARCHAR(6) PRIMARY KEY,
  PetName VARCHAR(20),
  EventDate VARCHAR(10),
  EventType VARCHAR(15),
  Remark VARCHAR(255),
  FOREIGN KEY (PetName) REFERENCES petPet(PetName)
);

SELECT * FROM petEvent;
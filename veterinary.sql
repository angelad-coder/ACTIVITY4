CREATE DATABASE veterinary;

CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100),
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY(animalid) REFERENCES animals(animalid),
    FOREIGN KEY(doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners VALUES
(1,'Maria','Garcia','123 Maple St','09171234567','maria@example.com'),
(2,'John','Reyes','456 Oak Ave','09172223333','john@example.com'),
(3,'Ana','Lopez','789 Pine Rd','09173334444','ana@example.com'),
(4,'Mark','Dela Cruz','10 Mango St','09174445555','mark@example.com'),
(5,'Liza','Santos','11 Coconut Ln','09175556666','liza@example.com'),
(6,'Carlos','Torres','22 Cherry Blvd','09176667777','carlos@example.com'),
(7,'Rosa','Velasco','33 Palm Dr','09177778888','rosa@example.com'),
(8,'Diego','Navarro','44 Pineapple Way','09178889999','diego@example.com'),
(9,'Nina','Cruz','55 Banana Rd','09179990000','nina@example.com'),
(10,'Peter','Lim','66 Guava St','09170001111','peter@example.com');
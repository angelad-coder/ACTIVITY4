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

INSERT INTO animals VALUES
(1,'Whiskers','Cat','Siamese','2019-06-15','Male','Cream',1),
(2,'Simba','Cat','Mixed','2020-02-20','Male','Orange',2),
(3,'Buddy','Dog','Labrador','2018-08-01','Male','Black',3),
(4,'Bella','Dog','Beagle','2021-01-05','Female','Tricolor',4),
(5,'Milo','Cat','Persian','2017-11-11','Male','White',5),
(6,'Lucy','Dog','Poodle','2022-05-09','Female','Apricot',6),
(7,'Coco','Dog','Bulldog','2016-09-30','Female','Brindle',7),
(8,'Luna','Cat','Maine Coon','2020-12-12','Female','Brown',8),
(9,'Rocky','Dog','German Shepherd','2015-04-04','Male','Tan',9),
(10,'Zoe','Cat','Ragdoll','2019-09-09','Female','Grey',10);

INSERT INTO appointments VALUES
(1,1,'2023-01-05 09:30:00','Regular checkup'),
(2,1,'2023-02-15 10:00:00','Vaccination'),
(3,1,'2023-06-10 11:00:00','Skin issue'),
(4,2,'2023-03-01 14:00:00','Dental cleaning'),
(5,3,'2023-04-02 10:30:00','Injury check'),
(6,4,'2023-05-05 13:45:00','Spay/Neuter consult'),
(7,5,'2023-07-07 15:00:00','Vaccination'),
(8,6,'2023-08-08 16:30:00','Grooming'),
(9,7,'2023-09-09 09:15:00','Skin allergy'),
(10,8,'2023-10-10 11:30:00','Eye infection');

INSERT INTO doctors VALUES
(1,'Dr.Maria','Santos','General Veterinarian','9876543210','maria.doc@example.com'),
(2,'Dr.Antonio','Gonzales','Feline Specialist','5551234567','antonio@example.com'),
(3,'Dr.Felipe','Luna','Orthopedic Specialist','1112223333','felipe@example.com'),
(4,'Dr.Sofia','Reyes','Dermatology Specialist','9998887777','sofia@example.com'),
(5,'Dr.Luis','Torres','Surgery Specialist','1235557777','luis@example.com'),
(6,'Dr.Carmen','Fernandez','Ophthalmology','3332221111','carmen@example.com'),
(7,'Dr.Ricardo','Valdez','Cardiology','3213214321','ricardo@example.com'),
(8,'Dr.Julia','Mendoza','Exotics','4445556666','julia@example.com'),
(9,'Dr.Ryan','Delos','Nutrition','7778889999','ryan@example.com'),
(10,'Dr.Grace','Lopez','Surgery','6665554444','grace@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

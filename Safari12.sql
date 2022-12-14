
DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE staffs;
DROP TABLE enclosures;

DROP TABLE staffs;

CREATE TABLE staffs (
id SERIAL PRIMARY KEY,
employee_number INT,
name VARCHAR(255)
);

CREATE TABLE enclosures (
id SERIAL PRIMARY KEY,
name VARCHAR(255),
capacity INT,
closedForMaintenance BOOLEAN,
);

CREATE TABLE animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT
	enclosure_id INT REFERENCES enclosure_id
);


CREATE TABLE assignments(
id SERIAL PRIMARY KEY,
employee_id INT REFERENCES staffs(id),
enclosure_id INT REFERENCES enclosures(id),
day VARCHAR(255)
);



INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES (‘tiger’, 5, false);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES (‘turtle’, 100, false);
INSERT INTO enclosures(name, capacity, closedForMaintenance) VALUES (‘zebra’, 10, false);

INSERT INTO staffs (employee_number, name ) VALUES (8362, 'Sarah');
INSERT INTO staffs (employee_number, name ) VALUES (4762, 'Holly'); 
INSERT INTO staffs (employee_number, name ) VALUES (3133, 'Luke'); 

INSERT INTO animals(name, type, age, enclosure_id) VALUES (‘Bob’, ‘tiger’, 10, );
INSERT INTO animals(name, type, age, enclosure_id) VALUES (‘Steve’, ‘turtle’, 30);
INSERT INTO animals(name, type, age, enclosure_id) VALUES (‘Richard’, ‘zebra’, 15);


INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (1, 1, 'Monday');
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (2, 2, 'Tuesday');
INSERT INTO assignments(employee_id, enclosure_id, day) VALUES (3, 3, 'Wednesday');

























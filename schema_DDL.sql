DROP TABLE IF EXISTS Tag;
CREATE TABLE Tag (
    tag_id varchar(8) PRIMARY KEY,
    vendor varchar(20),
    purchase_price int,
    purchase_date DATE NOT NULL DEFAULT CURRENT_DATE
);

DROP TABLE IF EXISTS Manufacturer;
CREATE TABLE Manufacturer (
    id SERIAL PRIMARY KEY,
    manufacturer_name varchar(20),
    /* there's a name field in the erd. Is this necessary? This table seems too short for it to be worth keeping */
);

DROP TABLE IF EXISTS Located_at;
CREATE TABLE Located_at (
    id SERIAL PRIMARY KEY,
    building varchar(25),
    room_number int
);

DROP TABLE IF EXISTS Machine;
CREATE TABLE Machine (
    id SERIAL PRIMARY KEY,
    tag_id varchar(20)
);

DROP TABLE IF EXISTS Model;
CREATE TABLE Model (
    id SERIAL PRIMARY KEY,
    model_name varchar(25)
);

DROP TABLE IF EXISTS GPU;
CREATE TABLE GPU (
    id SERIAL PRIMARY KEY,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY
    model varchar(25),
    vram int
);

DROP TABLE IF EXISTS Memory;
CREATE TABLE Memory (
    id SERIAL PRIMARY KEY,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    size int,
    type_generation varchar(5),  
    type_speed int,
    type_form_factor varchar(5),
);

DROP TABLE IF EXISTS CPU;
CREATE TABLE CPU (
    id SERIAL PRIMARY KEY,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    threads int,
    cores int
);

DROP TABLE IF EXISTS Motherboard;
CREATE TABLE Motherboard (
    id SERIAL PRIMARY KEY,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25)
);

DROP TABLE IF EXISTS NC;
CREATE TABLE NC (
    id SERIAL PRIMARY KEY,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25)
);




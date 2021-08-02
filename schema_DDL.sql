DROP TABLE IF EXISTS System;
CREATE TABLE System (
    id SERIAL PRIMARY KEY,
    tag_id varchar(20)
);

DROP TABLE IF EXISTS Tag;
CREATE TABLE Tag (
    id SERIAL PRIMARY KEY,
    vendor varchar(20),
    purchase_price int,
    purchase_date DATE NOT NULL DEFAULT CURRENT_DATE
);

DROP TABLE IF EXISTS Manufacturer;
CREATE TABLE Manufacturer (
    id SERIAL PRIMARY KEY,
    manufacturer varchar(20),
    /* there's a name field in the erd. Is this necessary? This table seems too short for it to be worth keeping */
);

DROP TABLE IF EXISTS Located;
CREATE TABLE Located (
    id SERIAL PRIMARY KEY,
    building varchar(25),
    room_number int
);

DROP TABLE IF EXISTS GPU;
CREATE TABLE GPU (
    id SERIAL PRIMARY KEY,
    /* is this necessary since we have a location table that can be accessed using serial field? located varchar(255) blah blah*/
    tag_id varchar(20), 
    vram INT NOT NULL,
);

DROP TABLE IF EXISTS Memory;
CREATE TABLE Memory (
    id SERIAL PRIMARY KEY,
    size int,
    type_generation varchar(10),
    type_speed int,
    type_form_factor varchar(4)
);

DROP TABLE IF EXISTS CPU;
CREATE TABLE CPU (
    id SERIAL PRIMARY KEY,
    threads int,
    cores, int
);

DROP TABLE IF EXISTS Motherboard;
CREATE TABLE Motherboard (
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS NC;
CREATE TABLE NC (
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS PSU;
CREATE TABLE PSU (
    id SERIAL PRIMARY KEY,
    wattage int
);

DROP TABLE IF EXISTS Drives;
CREATE TABLE Drives (
    id SERIAL PRIMARY KEY,
    size int,
    drive_type varchar(4),
    interface varchar(12)
);

DROP TABLE IF EXISTS Display
CREATE TABLE Display (
    id SERIAL PRIMARY KEY,
    size int,
    resolution varchar(10)
);
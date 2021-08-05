DROP TABLE IF EXISTS tag;
CREATE TABLE tag (
    tag_id varchar(8),
    vendor varchar(20),
    purchase_price int,
    purchase_date DATE NOT NULL DEFAULT CURRENT_DATE
    PRIMARY KEY(tag_id)
);

DROP TABLE IF EXISTS manufacturer;
CREATE TABLE manufacturer (
    id SERIAL,
    manufacturer_name varchar(20),
    PRIMARY KEY(id)
    /* there's a name field in the erd. Is this necessary? This table seems too short for it to be worth keeping */
    /* although it's short, if we don't have this table I think we violate BCNF. */
);

DROP TABLE IF EXISTS located_at;
CREATE TABLE located_at (
    id SERIAL,
    building varchar(25),
    room_number int
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS lachine;
CREATE TABLE machine (
    id SERIAL,
    tag_id varchar(20)
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS model;
CREATE TABLE model (
    id SERIAL,
    model_name varchar(25)
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS gpu;
CREATE TABLE gpu (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY
    model varchar(25),
    vram int
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS memory;
CREATE TABLE memory (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    size int,
    type_generation varchar(5),  
    type_speed int,
    type_form_factor varchar(5),
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS cpu;
CREATE TABLE cpu (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    threads int,
    cores int
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS motherboard;
CREATE TABLE motherboard (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25)
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS nc;
CREATE TABLE nc (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25)
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS psu;
CREATE TABLE psu (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    wattage int
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS drives;
CREATE TABLE drives (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    size int, 
    d_type varchar(5),  /* type was a keyword, so changed to d_type(AKA drive type)*/
    interface varchar(25) /* interface string formating not known, update later*/
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS display;
CREATE TABLE display (
    id SERIAL,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY,
    model varchar(25),
    size int,
    resolution varchar(10)
    PRIMARY KEY(id)
);
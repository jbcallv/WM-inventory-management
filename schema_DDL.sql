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

DROP TABLE IF EXISTS Component;
CREATE TABLE Component (
    id SERIAL PRIMARY KEY,
    machine_id INT FOREIGN KEY,
    tag_id varchar(20) FOREIGN KEY
);
/* hello */ 

DROP TABLE IF EXISTS GPU;
CREATE TABLE GPU (
    id SERIAL PRIMARY KEY,
    vram int,
    model varchar(25)
);
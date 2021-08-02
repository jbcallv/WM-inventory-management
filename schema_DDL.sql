CREATE TABLE [DROP TABLE IF EXISTS] GPU (
    id SERIAL PRIMARY KEY,
    /* is this necessary since we have a location table that can be accessed using serial field? located_at  varchar(255) blah blah*/
    tag_id varchar(20), 
    vram INT NOT NULL,
);

CREATE TABLE [DROP TABLE IF EXISTS] Memory (
    id SERIAL PRIMARY KEY,
    size int,
    generation varchar(10),
    speed int,
    form_factor varchar(4)
);

CREATE TABLE [DROP TABLE IF EXISTS] CPU (
    id SERIAL PRIMARY KEY,
    threads int,
    cores, int
);

CREATE TABLE [DROP TABLE IF EXISTS] Motherboard (
    id SERIAL PRIMARY KEY
);

CREATE TABLE [DROP TABLE IF EXISTS] NC (
    id SERIAL PRIMARY KEY
);

CREATE TABLE [DROP TABLE IF EXISTS] PSU (
    id SERIAL PRIMARY KEY,
    wattage int
);

CREATE TABLE [DROP TABLE IF EXISTS] Drives (
    id SERIAL PRIMARY KEY,
    size int,
    drive_type varchar(4),
    interface varchar(12)
);

CREATE TABLE [DROP TABLE IF EXISTS] Display (
    id SERIAL PRIMARY KEY,
    size int,
    resolution varchar(10)
);
-- Drop existing tables
drop table if exists Parts;
drop table if exists Supplier;
drop table if exists Supplies;


-- Create tables
create table Parts(pid integer primary key, pname varchar (10), pmaterial varchar(10), pcolor varchar (10), pprice
float);

create table Supplier (sid integer primary key, sname varchar(10), scity char(2), sphone char(10));

create table Supplies (pid integer references Parts(pid), sid integer references Supplier(sid), stock integer,
primary key(pid, sid));


-- Insert 25 parts
insert into parts(pname, pmaterial, pcolor, pprice) values ('Nut', 'Steel', 'Silver', 1.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Bolt', 'Iron', 'Black', 0.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Hammer', 'Wood', 'Brown', 15.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Screwdriver', 'Steel', 'Blue', 4.50);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Saw', 'Iron', 'Silver', 12.50);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Wrench', 'Steel', 'Silver', 8.75);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Nail', 'Iron', 'Silver', 0.25);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Shovel', 'Wood', 'Brown', 10.25);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Tape Measure', 'Plastic', 'Yellow', 3.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Brush', 'Metal', 'Gray', 5.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Paintbrush', 'Wood', 'Brown', 2.25);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Pliers', 'Steel', 'Silver', 6.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Square', 'Iron', 'Silver', 3.50);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Level', 'Plastic', 'Green', 9.75);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Drill Bit', 'Metal', 'Silver', 2.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Chisel', 'Steel', 'Silver', 7.50);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Drill', 'Metal', 'Black', 39.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Allen Key', 'Steel', 'Silver', 3.25);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Shears', 'Iron', 'Silver', 11.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Screw', 'Steel', 'Silver', 2.25);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Crescent Wrench', 'Steel', 'Chrome', 9.99);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Rivet', 'Steel', 'Silver', 1.25);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Screw Hook', 'Metal', 'Black', 0.75);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Toggle Bolt', 'Steel', 'Zinc', 3.49);
insert into parts(pname, pmaterial, pcolor, pprice) values ('Wire Cutter', 'Steel', 'Red', 12.75);


-- Insert 12 suppliers
insert into supplier(sname, scity, sphone) values ('Industrial Supplies ABC', 'San Juan', '787-123-4567');
insert into supplier(sname, scity, sphone) values ('Lopez Tools', 'Mayaguez', '787-345-6789');
insert into supplier(sname, scity, sphone) values ('Martinez Lumber', 'Mayaguez', '787-234-5678');
insert into supplier(sname, scity, sphone) values ('Perez Materials', 'Arecibo', '787-012-3456');
insert into supplier(sname, scity, sphone) values ('Ramirez Hardware', 'Ponce', '787-234-5678');
insert into supplier(sname, scity, sphone) values ('Rodriguez Industrial', 'Fajardo', '787-890-1234');
insert into supplier(sname, scity, sphone) values ('Steel and More', 'Arecibo', '787-456-7890');
insert into supplier(sname, scity, sphone) values ('Rivera Tools', 'Aguadilla', '787-901-2345');
insert into supplier(sname, scity, sphone) values ('Gomez Hardware', 'San Juan', '787-123-4567');
insert into supplier(sname, scity, sphone) values ('Rosario Materials', 'Bayamon', '787-678-9012');
insert into supplier(sname, scity, sphone) values ('Velazquez Screws', 'San Juan', '787-567-8901');
insert into supplier(sname, scity, sphone) values ('Sanchez Hardware', 'Mayaguez', '787-789-0123');


-- Insert 40 supplies with unique (pid, sid) combinations
insert into supplies(pid, sid, stock) values (1, 1, 50);
insert into supplies(pid, sid, stock) values (2, 2, 100);
insert into supplies(pid, sid, stock) values (3, 3, 25);
insert into supplies(pid, sid, stock) values (4, 4, 75);
insert into supplies(pid, sid, stock) values (5, 5, 30);
insert into supplies(pid, sid, stock) values (6, 6, 45);
insert into supplies(pid, sid, stock) values (7, 7, 80);
insert into supplies(pid, sid, stock) values (8, 8, 120);
insert into supplies(pid, sid, stock) values (9, 9, 35);
insert into supplies(pid, sid, stock) values (10, 10, 60);
insert into supplies(pid, sid, stock) values (11, 1, 20);
insert into supplies(pid, sid, stock) values (12, 2, 30);
insert into supplies(pid, sid, stock) values (13, 3, 65);
insert into supplies(pid, sid, stock) values (14, 4, 90);
insert into supplies(pid, sid, stock) values (15, 5, 40);
insert into supplies(pid, sid, stock) values (16, 6, 75);
insert into supplies(pid, sid, stock) values (17, 7, 110);
insert into supplies(pid, sid, stock) values (18, 8, 130);
insert into supplies(pid, sid, stock) values (19, 9, 45);
insert into supplies(pid, sid, stock) values (20, 10, 70);
insert into supplies(pid, sid, stock) values (1, 2, 95);
insert into supplies(pid, sid, stock) values (2, 3, 60);
insert into supplies(pid, sid, stock) values (3, 4, 45);
insert into supplies(pid, sid, stock) values (4, 5, 70);
insert into supplies(pid, sid, stock) values (5, 6, 30);
insert into supplies(pid, sid, stock) values (6, 7, 55);
insert into supplies(pid, sid, stock) values (7, 8, 80);
insert into supplies(pid, sid, stock) values (8, 9, 100);
insert into supplies(pid, sid, stock) values (9, 10, 120);
insert into supplies(pid, sid, stock) values (10, 1, 35);
insert into supplies(pid, sid, stock) values (11, 2, 65);
insert into supplies(pid, sid, stock) values (12, 3, 80);
insert into supplies(pid, sid, stock) values (13, 4, 110);
insert into supplies(pid, sid, stock) values (14, 5, 130);
insert into supplies(pid, sid, stock) values (15, 6, 45);
insert into supplies(pid, sid, stock) values (16, 7, 70);
insert into supplies(pid, sid, stock) values (17, 8, 25);
insert into supplies(pid, sid, stock) values (18, 9, 50);
insert into supplies(pid, sid, stock) values (19, 10, 60);
insert into supplies(pid, sid, stock) values (20, 1, 80);

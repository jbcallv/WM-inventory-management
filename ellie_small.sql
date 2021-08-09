

insert into drives_model values ('8325YWE', 256, 'HDD', 'ATA');
insert into drives_model values ('98WEUTS', 512, 'SSD', 'SCSI');
insert into drives_model values ('93584UO', 64, 'HDD', 'IDE');
insert into drives_model values ('5983U4J', 720, 'HDD', 'IDE');

insert into drives values (DEFAULT, '8325YWE', 2, 5);
insert into drives values (DEFAULT, '98WEUTS', 5, 2);
insert into drives values (DEFAULT, '93584UO', 6, 4);
insert into drives values (DEFAULT, '5983U4J', 7, 5);
insert into drives values (DEFAULT, '8325YWE', 2, 6);
insert into drives values (DEFAULT, '98WEUTS', 5, 9);
insert into drives values (DEFAULT, '93584UO', 4, 5);
insert into drives values (DEFAULT, '5983U4J', 7, 8);
insert into drives values (DEFAULT, '5983U4J', 2, 5);

insert into drives_in_machine values (1, NULL);
insert into drives_in_machine values (2, 5);
insert into drives_in_machine values (3, NULL);
insert into drives_in_machine values (4, NULL);
insert into drives_in_machine values (5, NULL);
insert into drives_in_machine values (6, 5);
insert into drives_in_machine values (7, NULL);
insert into drives_in_machine values (8, 7);
insert into drives_in_machine values (9, NULL);

insert into drives_tagged values (1, NULL);
insert into drives_tagged values (2, NULL);
insert into drives_tagged values (3, NULL);
insert into drives_tagged values (4, NULL);
insert into drives_tagged values (5, 'ET230458');
insert into drives_tagged values (6, NULL);
insert into drives_tagged values (7, NULL);
insert into drives_tagged values (8, NULL);
insert into drives_tagged values (9, 'ET490202');

insert into display_model values ('938RWOD', 27, '2560x1440');
insert into display_model values ('985IOJE', 24, '1920×1200');
insert into display_model values ('61732YW', 30, '2560x1600');

insert into display values (DEFAULT, '938RWOD', 3, );
insert into display values (DEFAULT, '985IOJE', 8, );
insert into display values (DEFAULT, '61732YW', 6, );
insert into display values (DEFAULT, '938RWOD', 4, );
insert into display values (DEFAULT, '985IOJE', 2, );

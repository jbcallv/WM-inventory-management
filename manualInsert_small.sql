/* manual insertions created by team Six 
for database with name *_small */
insert into tag values ('ET123456', 'newegg', 1200, '2021-01-03');
insert into tag values ('ET892371', 'newegg', 100, '2010-09-08');
insert into tag values ('ET133456', 'newegg', 12000, '2009-12-03');
insert into tag values ('ET187523', 'newegg', 1000); 
insert into tag values ('ET345612', 'newegg', 7000, '2019-02-10');
insert into tag values ('ET456123', 'newegg', 800, '2021-02-11');
insert into tag values ('ET561234', 'newegg', 5000); /* today's date is default date */
insert into tag values ('ET123478', 'amazon', 80, '2008-04-15');
insert into tag values ('ET124789', 'amazon', 143);
insert into tag values ('ET890123', 'newegg', 123, '2017-04-27');
insert into tag values ('ET124788', 'newegg', 481, '2018-02-18');
insert into tag values ('ET124689', 'newegg', 234, '2017-08-15');
insert into tag values ('ET902348', 'newegg', 235, '2020-12-02');
insert into tag values ('ET123451', 'newegg', 210, '2019-03-29');
insert into tag values ('ET782344', 'microcenter', 1900);
insert into tag values ('ET780234', 'microcenter', 1780);
insert into tag values ('ET071241', 'microcenter', 1599);
insert into tag values ('ET230458', 'amazon', 100, '2015-03-14');
insert into tag values ('ET490202', 'newegg', 123, '2016-11-28');
insert into tag values ('ET290834', 'microcenter', 492, '2020-08-01');
insert into tag values ('ET820230', 'microcenter', 492, '2020-08-01');
insert into tag values ('ET472302', 'microcenter', 492, '2020-08-01');



insert into manufacturer values (DEFAULT, 'nvidia');
insert into manufacturer values (DEFAULT, 'amd');
insert into manufacturer values (DEFAULT, 'intel');
insert into manufacturer values (DEFAULT, 'supermicro');
insert into manufacturer values (DEFAULT, 'deverick');
insert into manufacturer values (DEFAULT, 'dell');
insert into manufacturer values (DEFAULT, 'hp');
insert into manufacturer values (DEFAULT, 'asus');
insert into manufacturer values (DEFAULT, 'synology');
insert into manufacturer values (DEFAULT, 'pny');
insert into manufacturer values (DEFAULT, 'msi');

insert into located_at values (DEFAULT, 'blow', 225);
insert into located_at values (DEFAULT, 'morton', 100);
insert into located_at values (DEFAULT, 'jones', 113);
insert into located_at values (DEFAULT, 'wren', 305);
insert into located_at values (DEFAULT, 'morton', 401);
insert into located_at values (DEFAULT, 'jones', 112);
insert into located_at values (DEFAULT, 'wren', 115);
insert into located_at values (DEFAULT, 'wren', 303);
insert into located_at values (DEFAULT, 'morton', 421);
insert into located_at values (DEFAULT, 'jones', 132);


insert into machine values (DEFAULT, 1);
insert into machine values (DEFAULT, 2);
insert into machine values (DEFAULT, 3);
insert into machine values (DEFAULT, 4);
insert into machine values (DEFAULT, 5);
insert into machine values (DEFAULT, 6);
insert into machine values (DEFAULT, 7);
insert into machine values (DEFAULT, 8);
insert into machine values (DEFAULT, 9);
insert into machine values (DEFAULT, 10); /* try putting in null for location id */

insert into m_tagged values (1, 'ET123456');
insert into m_tagged values (2, NULL);
insert into m_tagged values (3, NULL);
insert into m_tagged values (4, 'ET892371');
insert into m_tagged values (5, 'ET133456');
insert into m_tagged values (6, NULL);
insert into m_tagged values (7, NULL);
insert into m_tagged values (8, NULL);
insert into m_tagged values (9, NULL);
insert into m_tagged values (10, NULL);

insert into m_made values (1, 5);
insert into m_made values (2, 6);
insert into m_made values (3, 7);
insert into m_made values (4, NULL);
insert into m_made values (5, NULL);
insert into m_made values (6, NULL);
insert into m_made values (7, NULL);
insert into m_made values (8, 3);
insert into m_made values (9, 8);
insert into m_made values (10, 4);


insert into gpu_model values ('RTX2080TI', 12);
insert into gpu_model values ('GTX1080TI', 10);
insert into gpu_model values ('TitanRTX', 12);

insert into gpu values (DEFAULT, 'RTX2080TI', 3, 10);
insert into gpu values (DEFAULT, 'RTX2080TI', 4, 10);
insert into gpu values (DEFAULT, 'GTX1080TI', 2, 11);
insert into gpu values (DEFAULT, 'GTX1080TI', 2, 11);
insert into gpu values (DEFAULT, 'TitanRTX', 2, 11);
insert into gpu values (DEFAULT, 'TitanRTX', 5, 11);

insert into gpu_in_machine values (1, 3);
insert into gpu_in_machine values(2, 4);
insert into gpu_in_machine values(3, NULL);
insert into gpu_in_machine values (4, 2);
insert into gpu_in_machine values (5, NULL);
insert into gpu_in_machine values (6, NULL);

insert into gpu_tagged values (1, 'ET187523');
insert into gpu_tagged values (2, NULL);
insert into gpu_tagged values (3, NULL);
insert into gpu_tagged values (4, 'ET345612');
insert into gpu_tagged values (5, NULL);
insert into gpu_tagged values (6, NULL);


insert into memory_model values ('TG6YHU7', 64, 'DDR4', 3200, 'DIMM');
insert into memory_model values ('Y7U86HJ', 64, 'DDR4', 3200, 'DIMM');
insert into memory_model values ('M98786Y', 64, 'DDR4', 3200, 'DIMM');
insert into memory_model values ('GH6YB7T', 64, 'DDR4', 3200, 'DIMM');
insert into memory_model values ('G6YHBN7', 64, 'DDR4', 3200, 'DIMM');
insert into memory_model values ('TGYHBVL', 64, 'DDR4', 3200, 'DIMM');

insert into memory values (DEFAULT, 'TG6YHU7', 1, 10);
insert into memory values (DEFAULT, 'Y7U86HJ', 4, 1);
insert into memory values (DEFAULT, 'Y7U86HJ', 4, 4);
insert into memory values (DEFAULT, 'M98786Y', 4, 8);
insert into memory values (DEFAULT, 'M98786Y', 4, 2);
insert into memory values (DEFAULT, 'M98786Y', 3, 8);
insert into memory values (DEFAULT, 'M98786Y', 3, 9);
insert into memory values (DEFAULT, 'GH6YB7T', 3, 5);
insert into memory values (DEFAULT, 'GH6YB7T', 3, 3);
insert into memory values (DEFAULT, 'GH6YB7T', 2, 10);
insert into memory values (DEFAULT, 'M98786Y', 1, 6);
insert into memory values (DEFAULT, 'M98786Y', 5, 1);

insert into memory_in_machine values (1, 1);
insert into memory_in_machine values(2, 4);
insert into memory_in_machine values(3, 4);
insert into memory_in_machine values (4, 4);
insert into memory_in_machine values (5, 4);
insert into memory_in_machine values (6, 3);
insert into memory_in_machine values (7, 3);
insert into memory_in_machine values (8, 3);
insert into memory_in_machine values (9, 3);
insert into memory_in_machine values (10, NULL);
insert into memory_in_machine values (11, 1);
insert into memory_in_machine values (12, NULL);

insert into memory_tagged values (1, 'ET456123');
insert into memory_tagged values (2, NULL);
insert into memory_tagged values (3, NULL);
insert into memory_tagged values (4, 'ET561234');
insert into memory_tagged values (5, NULL);
insert into memory_tagged values (6, NULL);
insert into memory_tagged values (7, NULL);
insert into memory_tagged values (8, NULL);
insert into memory_tagged values (9, NULL);
insert into memory_tagged values (10, NULL);
insert into memory_tagged values (11, NULL);
insert into memory_tagged values (12, NULL);


insert into cpu_model values ('YB7UNH6', 36, 18);
insert into cpu_model values ('UY7N8B7', 36, 18);
insert into cpu_model values ('4R5EFCT', 36, 18);
insert into cpu_model values ('U8IM9JN', 36, 18);

insert into cpu values (DEFAULT, 'YB7UNH6', 1, 2);
insert into cpu values (DEFAULT, 'UY7N8B7', 1, 3);
insert into cpu values (DEFAULT, 'UY7N8B7', 2, 3);
insert into cpu values (DEFAULT, 'UY7N8B7', 4, 2);
insert into cpu values (DEFAULT, 'YB7UNH6', 4, 3);
insert into cpu values (DEFAULT, 'YB7UNH6', 5, 2);
insert into cpu values (DEFAULT, '4R5EFCT', 5, 3);
insert into cpu values (DEFAULT, '4R5EFCT', 6, 3);
insert into cpu values (DEFAULT, '4R5EFCT', 6, 3);
insert into cpu values (DEFAULT, '4R5EFCT', 7, 2);
insert into cpu values (DEFAULT, '4R5EFCT', 8, 3);
insert into cpu values (DEFAULT, '4R5EFCT', 9, 3);
insert into cpu values (DEFAULT, 'U8IM9JN', 10, 2);
insert into cpu values (DEFAULT, 'U8IM9JN', 9, 3);
insert into cpu values (DEFAULT, 'U8IM9JN', 6, 2);
insert into cpu values (DEFAULT, 'U8IM9JN', 2, 2);

insert into cpu_in_machine values (1, 1);
insert into cpu_in_machine values (2, 1);
insert into cpu_in_machine values (3, 2);
insert into cpu_in_machine values (4, 4);
insert into cpu_in_machine values (5, 4);
insert into cpu_in_machine values (6, 5);
insert into cpu_in_machine values (7, 5);
insert into cpu_in_machine values (8, 6);
insert into cpu_in_machine values (9, 6);
insert into cpu_in_machine values (10, 7);
insert into cpu_in_machine values (11, 8);
insert into cpu_in_machine values (12, 9);
insert into cpu_in_machine values (13, 10);
insert into cpu_in_machine values (14, NULL);
insert into cpu_in_machine values (15, NULL);
insert into cpu_in_machine values (16, NULL);

insert into cpu_tagged values (1, NULL);
insert into cpu_tagged values (2, NULL);
insert into cpu_tagged values (3, NULL);
insert into cpu_tagged values (4, 'ET782344');
insert into cpu_tagged values (5, NULL);
insert into cpu_tagged values (6, NULL);
insert into cpu_tagged values (7, NULL);
insert into cpu_tagged values (8, NULL);
insert into cpu_tagged values (8, NULL);
insert into cpu_tagged values (10, NULL);
insert into cpu_tagged values (11, 'ET780234');
insert into cpu_tagged values (12, NULL);
insert into cpu_tagged values (13, NULL);
insert into cpu_tagged values (14, NULL);
insert into cpu_tagged values (15, NULL);
insert into cpu_tagged values (16, 'ET071241');


insert into motherboard_model values ('X11QPH+', 'DMI');

insert into motherboard values (DEFAULT, 'X11QPH+', 1, 4);
insert into motherboard values (DEFAULT, 'X11QPH+', 2, 4);
insert into motherboard values (DEFAULT, 'X11QPH+', 3, 4);
insert into motherboard values (DEFAULT, 'X11QPH+', 4, 4);
insert into motherboard values (DEFAULT, 'X11QPH+', 5, 4);

insert into motherboard_in_machine values (1, 1);
insert into motherboard_in_machine values (2, 2);
insert into motherboard_in_machine values (3, 3);
insert into motherboard_in_machine values (4, 4);
insert into motherboard_in_machine values (5, 5);

insert into motherboard_tagged values (1, 'ET290834');
insert into motherboard_tagged values (2, NULL);
insert into motherboard_tagged values (3, 'ET820230');
insert into motherboard_tagged values (4, NULL);
insert into motherboard_tagged values (5, 'ET472302');


insert into nc_model values ('X540-T2', 'PCI');
insert into nc_model values ('E10G18-T1', 'PCI');
insert into nc_model values ('8TF1D', 'PCMCIA');
insert into nc_model values ('PCE-AC51', 'PCMCIA');
insert into nc_model values ('AX916C', 'PCMIA');
insert into nc_model values ('E810-CQDA2', 'PCI');

insert into nc values (DEFAULT, 'X540-T2', 2,8);
insert into nc values (DEFAULT, 'E10G18-T1', 4,9);
insert into nc values (DEFAULT, '8TF1D', 6,10);
insert into nc values (DEFAULT, 'PCE-AC51', 8,9);
insert into nc values (DEFAULT, 'AX916C', 10, 7);
insert into nc values (DEFAULT, 'E810-CQDA2', 1, 5);
insert into nc values (DEFAULT, 'X540-T2', 3, 2);

insert into nc_in_machine values (1, 8);
insert into nc_in_machine values (2, 9);
insert into nc_in_machine values (3, 10);
insert into nc_in_machine values (4, NULL);
insert into nc_in_machine values (5, NULL);
insert into nc_in_machine values (6, NULL);
insert into nc_in_machine values (7, NULL);

insert into nc_tagged values (1, NULL);
insert into nc_tagged values (2, NULL);
insert into nc_tagged values (3, NULL);
insert into nc_tagged values (4, 'ET123478');
insert into nc_tagged values (5, 'ET124789');
insert into nc_tagged values (6, 'ET890123');
insert into nc_tagged values (7, NULL);


insert into psu_model values ('67Y8I9O', 200);
insert into psu_model values ('WERTFGB', 500);
insert into psu_model values ('43ER5T6', 1000);
insert into psu_model values ('567YU6I', 1500);
insert into psu_model values ('435RT66', 600);
insert into psu_model values ('45R6HG0', 1200);
insert into psu_model values ('56678UJ', 700);
insert into psu_model values ('6Y7HUJB', 900);

insert into psu values (DEFAULT,'67Y8I9O', 3, 1);
insert into psu values (DEFAULT,'WERTFGB', 6, 3);
insert into psu values (DEFAULT,'43ER5T6', 9, 5);
insert into psu values (DEFAULT,'567YU6I', 2, 7);
insert into psu values (DEFAULT,'435RT66', 4, 9);
insert into psu values (DEFAULT,'45R6HG0', 1, 2);
insert into psu values (DEFAULT,'56678UJ', 9, 3);
insert into psu values (DEFAULT,'6Y7HUJB', 7, 2);

insert into psu_in_machine values (1, 3);
insert into psu_in_machine values (2, NULL);
insert into psu_in_machine values (3, 9);
insert into psu_in_machine values (4, NULL);
insert into psu_in_machine values (5, NULL);
insert into psu_in_machine values (6, 1);
insert into psu_in_machine values (7, NULL);
insert into psu_in_machine values (8, NULL);

insert into psu_tagged values (1, NULL);
insert into psu_tagged values (2,'ET124788');
insert into psu_tagged values (3, NULL);
insert into psu_tagged values (4,'ET124689');
insert into psu_tagged values (5,'ET902348');
insert into psu_tagged values (6, NULL);
insert into psu_tagged values (7, NULL);
insert into psu_tagged values (8,'ET123451');


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

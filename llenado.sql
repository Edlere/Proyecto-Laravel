INSERT INTO autor(nombreAutor,pais)
VALUES ('Leandro','España'),
	   ('Homero','Grecia'),
       ('Sófocles','Grecia'),
       ('Virgilio','Roma'),
       ('Dante','Italia'),
       ('Boccaccio','Italia'),
       ('William','USA'),
       ('Edgar','España'),
       ('Rodolfo','España'),
       ('Apuleyo','Roma'),
       ('Clemente','Peru'),
       ('Julio','Peru'),
       ('Juan Ruiz','España'),
       ('Agustina','Chile'),
       ('Dolores','España'),
       ('Manuel','España'),
       ('Rick ','Grecia'),
       ('Mario','Peru'),
       ('Francisco','Peru'),
       ('Lope de Vega','España'),
       ('Mario Florián','Peru');

INSERT INTO compra (fechaCompra,monto)
VALUES ('2010-08-20',20.6),
	   ('2010-08-20',50.4),
       ('2010-08-20',19.5),
       ('2010-08-20',80.80),
       ('2010-08-20',108.4),
       ('2010-12-10',20.50),
       ('2010-12-10',30.50),
       ('2010-12-10',5.50),
       ('2010-12-10',100.50),
       ('2010-12-10',70.10),
       ('2011-05-05',10.5),
       ('2011-05-05',98.1),
       ('2011-05-05',6.40),
       ('2011-05-05',33.70),
       ('2011-05-05',44.00),
       ('2011-11-14',8.5),
       ('2011-11-14',10.30),
       ('2011-11-14',100.10),
       ('2011-11-14',198.30),
       ('2011-11-14',15.4),
       ('2012-12-12',50.10);
       
INSERT INTO generos(nombreGenero,pais)
values ('Lirico','España'),
	   ('Epico','Grecia'),
       ('Dramatico','Grecia'),
       ('Epico','Roma'),
       ('Epico','Italia'),
       ('Narrativo','Italia'),
       ('Dramatico','USA'),
       ('Terror','España'),
       ('Autobiografia','España'),
       ('Aventuras','Roma'),
       ('Ciencia Ficcion','Peru'),
       ('Viajes','Peru'),
       ('Humor','España'),
       ('Juvenil','Chile'),
       ('Novela Negra','España'),
       ('Detectives','España'),
       ('Fantasia','Grecia'),
       ('Narrativa','Peru'),
       ('Historia','Peru'),
       ('Historia','España'),
       ('Epico','Peru');
       
INSERT INTO editorial(razonSocial,RUC)
values ('EDITORAL PERU','00000000000'),
	   ('Aladena','00000000001'),
       ('Aljibe','00000000002'),
       ('Ambar','00000000003'),
       ('Anagrama','00000000004'),
       ('Alianza','00000000005'),
       ('Grupo AJEC','00000000006'),
       ('Absalon','00000000007'),
       ('Adarve','00000000008'),
       ('Babylon','00000000009'),
       
       ('Versatil','00000000010'),
       ('Tusquets','00000000011'),
       ('Seleer','00000000012'),
       ('Salamandra','00000000013'),
       ('RBA','00000000014'),
       ('Phoebe','00000000015'),
       ('Pamiés','00000000016'),
       ('Plataforma','00000000017'),
       ('Planeta','00000000018'),
       ('Oberon','00000000019');
       
       
Insert into libro(nombreLibro,idAutor,idGenero,añoPublicacion,idEditorial)
values ('Nueva Comedia',1,1,'1792-02-17',11),
	   ('La Iliada',2,2,'1762-01-20',12),
       ('Edipo Rey',3,3,'1430-08-05',13),
       ('La Eneida',4,4,'1070-04-03',14),
       ('Divina Comedia',5,5,'1400-08-13',15),
       ('Decamerón',6,6,'1352-12-19',16),
       ('Romeo y Julieta',7,7,'1595-01-29',17),
       ('Tamerlane',8,8,'1827-11-14',18),
       ('Un kilo de oro',9,9,'1967-03-27',19),
       ('La Metamorfosis',10,10,'1977-02-17',20),
       ('Cuento Malevolo',11,11,'1904-10-1',21),
       ('Palabra de Mudo',12,12,'1973-10-10',22),
       ('Paredes Oyen',13,13,'1617-08,05',23),
       ('Sur La Alameda',14,14,'2014-10-21',24),
       ('Todo Esto Dare',15,15,'2016-01-18',25),
       ('Galindez',16,16,'1990,07-31',26),
       ('Marca de Atenea',17,17,'2012-04-27',27),
       ('Casa Verde',18,18,'1965-02-23',28),
       ('Días oscuros',19,19,'1950-06-10',29),
       ('La Dorotea',20,20,'1960-07-19',30);
       
INSERT INTO contiene(idCompra,idLibro,cantidad)
values (2,22,20),
	   (3,23,15),
       (4,24,3),
       (5,25,6),
       (6,26,30),
       (7,27,9),
       (8,28,1),
       (9,29,13),
       (10,30,2),
       (11,31,10),
       (12,32,17),
       (13,33,36),
       (14,34,50),
       (15,35,100),
       (16,36,2),
       (17,37,20),
       (18,38,1),
       (19,39,13),
       (20,40,3),
       (21,41,8),
       (22,42,3),
       (23,43,7),
       (24,44,10),
       (25,45,1),
       (26,46,2);
       
       
       
       
       
       
       
       

       
       
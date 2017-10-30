INSERT INTO autor(idAutor,nombreAutor,pais)
VALUES (001,'Leandro','España'),
	   (002,'Homero','Grecia'),
       (003,'Sófocles','Grecia'),
       (004,'Virgilio','Roma'),
       (005,'Dante','Italia'),
       (006,'Boccaccio','Italia'),
       (007,'William','USA'),
       (008,'Edgar','España'),
       (009,'Rodolfo','España'),
       (010,'Apuleyo','Roma'),
       (011,'Clemente','Peru'),
       (012,'Julio','Peru'),
       (013,'Juan Ruiz','España'),
       (014,'Agustina','Chile'),
       (015,'Dolores','España'),
       (016,'Manuel','España'),
       (017,'Rick ','Grecia'),
       (018,'Mario','Peru'),
       (019,'Francisco','Peru'),
       (020,'Lope de Vega','España'),
       (021,'Mario Florián','Peru');

INSERT INTO compra (idCompra,fechaCompra,monto)
VALUES (01,'2010-08-20',20.6),
	   (02,'2010-08-20',50.4),
       (03,'2010-08-20',19.5),
       (04,'2010-08-20',80.80),
       (05,'2010-08-20',108.4),
       (06,'2010-12-10',20.50),
       (07,'2010-12-10',30.50),
       (08,'2010-12-10',5.50),
       (09,'2010-12-10',100.50),
       (10,'2010-12-10',70.10),
       (11,'2011-05-05',10.5),
       (12,'2011-05-05',98.1),
       (13,'2011-05-05',6.40),
       (14,'2011-05-05',33.70),
       (15,'2011-05-05',44.00),
       (16,'2011-11-14',8.5),
       (17,'2011-11-14',10.30),
       (18,'2011-11-14',100.10),
       (19,'2011-11-14',198.30),
       (20,'2011-11-14',15.4),
       (21,'2012-12-12',50.10);
       
INSERT INTO generos(idGenero,nombreGenero,pais)
values (00001,'Lirico','España'),
	   (00002,'Epico','Grecia'),
       (00003,'Dramatico','Grecia'),
       (00004,'Epico','Roma'),
       (00005,'Epico','Italia'),
       (00006,'Narrativo','Italia'),
       (00007,'Dramatico','USA'),
       (00008,'Terror','España'),
       (00009,'Autobiografia','España'),
       (00010,'Aventuras','Roma'),
       (00011,'Ciencia Ficcion','Peru'),
       (00012,'Viajes','Peru'),
       (00013,'Humor','España'),
       (00014,'Juvenil','Chile'),
       (00015,'Novela Negra','España'),
       (00016,'Detectives','España'),
       (00017,'Fantasia','Grecia'),
       (00018,'Narrativa','Peru'),
       (00019,'Historia','Peru'),
       (00020,'Historia','España'),
       (00021,'Epico','Peru');
       
INSERT INTO editorial(idEditorial,razonSocial,RUC)
values (0001,'EDITORAL PERU','00000000000'),
	   (0002,'Aladena','00000000001'),
       (0003,'Aljibe','00000000002'),
       (0004,'Ambar','00000000003'),
       (0005,'Anagrama','00000000004'),
       (0006,'Alianza','00000000005'),
       (0007,'Grupo AJEC','00000000006'),
       (0008,'Absalon','00000000007'),
       (0009,'Adarve','00000000008'),
       (0010,'Babylon','00000000009'),
       
       (0011,'Versatil','00000000010'),
       (0012,'Tusquets','00000000011'),
       (0013,'Seleer','00000000012'),
       (0014,'Salamandra','00000000013'),
       (0015,'RBA','00000000014'),
       (0016,'Phoebe','00000000015'),
       (0017,'Pamiés','00000000016'),
       (0018,'Plataforma','00000000017'),
       (0019,'Planeta','00000000018'),
       (0020,'Oberon','00000000019');
       
       
Insert into libro(idLibro,nombreLibro,idAutor,idGenero,añoPublicacion,idEditorial)
values (000001,'Nueva Comedia',001,00001,'1792-02-17',0001),
	   (000002,'La Iliada',002,00002,'1762-01-20',0002),
       (000003,'Edipo Rey',003,00003,'1430-08-05',0003),
       (000004,'La Eneida',004,00004,'1070-04-03',0004),
       (000005,'Divina Comedia',005,00005,'1400-08-13',0005),
       (000006,'Decamerón',006,00006,'1352-12-19',0006),
       (000007,'Romeo y Julieta',007,00007,'1595-01-29',0007),
       (000008,'Tamerlane',008,00008,'1827-11-14',0008),
       (000009,'Un kilo de oro',009,00009,'1967-03-27',0009),
       (000010,'La Metamorfosis',010,00010,'1977-02-17',0010),
       (000011,'Cuento Malevolo',011,00011,'1904-10-1',0011),
       (000012,'Palabra de Mudo',012,00012,'1973-10-10',0012),
       (000013,'Paredes Oyen',013,00013,'1617-08,05',0013),
       (000014,'Sur La Alameda',014,00014,'2014-10-21',0014),
       (000015,'Todo Esto Dare',015,00015,'2016-01-18',0015),
       (000016,'Galindez',016,00016,'1990,07-31',0016),
       (000017,'Marca de Atenea',017,00017,'2012-04-27',0017),
       (000018,'Casa Verde',018,00018,'1965-02-23',0018),
       (000019,'Días oscuros',019,00019,'1950-06-10',0019),
       (000020,'La Dorotea',020,00020,'1960-07-19',0020);
       
INSERT INTO contiene(idCompra,idLibro,cantidad)
values (01,000001,20),
	   (02,000002,15),
       (03,000003,3),
       (04,000004,6),
       (05,000005,30),
       (06,000006,9),
       (07,000007,1),
       (08,000008,13),
       (09,000009,2),
       (10,000010,10),
       (11,000011,17),
       (12,000012,36),
       (13,000013,50),
       (14,000014,100),
       (15,000015,2),
       (16,000016,20),
       (17,000017,1),
       (18,000018,13),
       (19,000019,3),
       (20,000020,8);
       
       
       
       
       
       
       
       
       
       

       
       
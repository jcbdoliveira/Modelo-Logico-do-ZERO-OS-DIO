USE oficina;

INSERT INTO cliente VALUES (0, 'CLIENTE 0001', 'RUA JOSE CARLOS, 1026 - CENTRO -ITU/SP','551168547852', 'mail_01@gmail>com'),
					       (0, 'CLIENTE 0002', 'RUA JOSE CARLOS, 1027 - CENTRO -ITU/SP','551168540014', 'mail_02@gmail>com'),
                           (0, 'CLIENTE 0003', 'RUA JOSE CARLOS, 1028 - CENTRO -ITU/SP','551169857852', 'mail_03@gmail>com'),
                           (0, 'CLIENTE 0004', 'RUA JOSE CARLOS, 1029 - CENTRO -ITU/SP','551174127852', 'mail_04@gmail>com'),
                           (0, 'CLIENTE 0005', 'RUA JOSE CARLOS, 1030 - CENTRO -ITU/SP','551168997852', 'mail_05@gmail>com'),
                           (0, 'CLIENTE 0006', 'RUA JOSE CARLOS, 1031 - CENTRO -ITU/SP','551745827852', 'mail_06@gmail>com'),
                           (0, 'CLIENTE 0007', 'RUA JOSE CARLOS, 1032 - CENTRO -ITU/SP','551421507852', 'mail_07@gmail>com'),
                           (0, 'CLIENTE 0008', 'RUA JOSE CARLOS, 1033 - CENTRO -ITU/SP','555214847852', 'mail_08@gmail>com'),
                           (0, 'CLIENTE 0009', 'RUA JOSE CARLOS, 1034 - CENTRO -ITU/SP','551168549999', 'mail_09@gmail>com'),
                           (0, 'CLIENTE 0010', 'RUA JOSE CARLOS, 1035 - CENTRO -ITU/SP','551168546666', 'mail_10@gmail>com');

INSERT INTO veiculo VALUES (0, 'ABC1234', 'FIAT', 'CRONOS', 2019, 70000, 1),
                           (0, 'ABC1434', 'FORD', 'RANGER', 2010, 7000, 2),
                           (0, 'ABC2234', 'FIAT', 'UNO', 2022, 700, 3),
                           (0, 'ABC8234', 'FORD', 'KA', 2020, 700000, 4),
                           (0, 'ABC9934', 'BMW', 'X5', 2023, 700, 5),
                           (0, 'ABC1299', 'VW', 'UP', 2000, 7000, 6),
                           (0, 'ABC1205', 'VW', 'VIRTUS', 2019, 50000, 7),
                           (0, 'ABC1278', 'AUDI', 'TT', 2018, 300, 8),
                           (0, 'ABC1294', 'FIAT', 'STRADA', 2017, 6000, 7),
                           (0, 'ABC1255', 'FORD', 'RANGER', 2017, 8000, 10),
                           (0, 'ABC1666', 'AUDI', 'TT', 2018, 1200, 1),
                           (0, 'ABC1888', 'TESLA', 'MODEL S', 2021, 35000, 7),
                           (0, 'ABC1999', 'BMW', 'X2', 2011, 39000, 8),
                           (0, 'ABC1524', 'HONDA', 'CIVIC', 2020, 91000, 4);

INSERT INTO mecanico VALUES (0, 'MECANICO 001', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'ELETRICA MECANICA IJECAO FAROIS AIRBAG SOM'), 
                            (0, 'MECANICO 002', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'MECANICA IJECAO FAROIS AIRBAG SOM'),
                            (0, 'MECANICO 003', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'IJECAO FAROIS AIRBAG SOM'),
                            (0, 'MECANICO 004', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'SUSPENSAO ELETRICA MECANICA'),
                            (0, 'MECANICO 005', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'FAROIS AIRBAG SOM'),
                            (0, 'MECANICO 006', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'ELETRICA MECANICA IJECAO FAROIS AIRBAG SOM SUSPENSAO'),
                            (0, 'MECANICO 007', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'ELETRICA MECANICA IJECAO FAROIS AIRBAG SOM VIDROS'),
                            (0, 'MECANICO 008', 'RUA 001, 1 - CENTRO - CIDADE/ET', 'ELETRICA MECANICA IJECAO FAROIS AIRBAG SOM LATARIA');

INSERT INTO produtos VALUES (0, 'OLEO 20W30', 100.25),
                            (0, 'GRAXA BRANCA', 10.35),
                            (0, 'LAMPADA 1015', 1.25),
                            (0, 'OLEO 20W50', 99.25),
                            (0, 'PARAFUSO 10', 0.25),
                            (0, 'LANTERNA KA', 1000),
                            (0, 'ENGATE RAPIDO', 90.75),
                            (0, 'ROLAMENTO 20X30', 880.88);

INSERT INTO tabelaservico VALUES (0,'SERVICO ELETRICO', 25.99),
                                 (0,'SERVICO LAVACAO', 5.99),
                                 (0,'SERVICO MECANICO', 125.99),
                                 (0,'SERVICO RESET', 78.89),
                                 (0,'SERVICO GARANTIA', 5.09),
                                 (0,'SERVICO CORTESIA', 10.99),
                                 (0,'SERVICO PINTURA', 51.99),
                                 (0,'SERVICO IJECAO', 92.99),
                                 (0,'SERVICO LATARIA', 24.19);

INSERT INTO tipoos VALUES (0, 'OS NORMAL'),
                          (0, 'OS GARANTIA'),
                          (0, 'OS CORTESIA'),
                          (0, 'OS ALTA PRIORIDADE'),
                          (0, 'OS REGULAR');   
                          
 INSERT INTO ordem VALUES (0,'2022-10-27 10:12:28', 'Digitada', '2022-10-27 12:00:00', TRUE,1, 0, 100, 100, 1),
                          (0,'2022-10-27 08:12:28', 'Fechada', '2022-10-27 12:00:00', TRUE,2, 0, 100, 100, 2),
                          (0,'2022-10-27 07:12:28', 'Cancelada', '2022-10-27 12:00:00', FALSE,3, 10, 100, 110, 3),
                          (0,'2022-10-27 08:12:28', 'Fechada', '2022-10-27 12:00:00', TRUE,4, 500, 100, 600, 4),
                          (0,'2022-10-27 10:10:28', 'Em andamento', '2022-10-27 12:00:00', TRUE,5, 0, 100, 100, 5),
                          (0,'2022-10-27 08:11:28', 'Digitada', '2022-10-27 12:00:00', TRUE,6, 0, 100, 100, 1),
                          (0,'2022-10-27 11:12:28', 'Fechada', '2022-10-27 12:00:00', TRUE,7, 4900, 100, 5000, 2),
                          (0,'2022-10-27 11:11:28', 'Em andamento', '2022-10-27 12:00:00', TRUE,8, 0, 100, 100, 3),
                          (0,'2022-10-27 10:25:28', 'Digitada', '2022-10-27 12:00:00', TRUE,9, 0, 1000, 1000, 4),
                          (0,'2022-10-27 10:30:28', 'Fechada', '2022-10-27 12:00:00', TRUE,10, 1000, 0, 1000, 5),
                          (0,'2022-10-27 10:45:28', 'Cancelada', '2022-10-27 12:00:00', FALSE,1, 50, 100, 150, 2),
                          (0,'2022-10-27 09:12:28', 'Cancelada', '2022-10-27 12:00:00', FALSE,3, 0, 100, 100, 3),
                          (0,'2022-10-27 08:12:28', 'Digitada', '2022-10-27 12:00:00', TRUE,4, 0, 100, 100, 4),
                          (0,'2022-10-27 11:12:28', 'Em andamento', '2022-10-27 17:00:00', TRUE,5, 200, 0, 200, 5),
                          (0,'2022-10-27 14:12:28', 'Digitada', '2022-10-27 17:00:00', TRUE,7, 50, 0, 50, 2),
                          (0,'2022-10-27 11:12:28', 'Em andamento', '2022-10-27 17:00:00', TRUE,8, 120, 0, 120, 3),
                          (0,'2022-10-27 14:12:28', 'Cancelada', '2022-10-27 17:00:00', TRUE,9, 80, 0, 80, 4),
                          (0,'2022-10-27 15:12:28', 'Em andamento', '2022-10-27 17:00:00', TRUE,10, 0, 100, 100, 1),
                          (0,'2022-10-27 16:12:28', 'Em andamento', '2022-10-27 17:00:00', TRUE,1, 0, 100, 100, 2);

INSERT INTO produtoaplicado VALUES (1,4,1), (2,4,1), (5,4,1), (7,4,1), 
                                   (3,7,10), (6,7,10),
                                   (2,10,100), 
                                   (1,14,1), (2,14,1), (3,14,1), (4,14,1), 
                                   (1,15,1), 
                                   (1,16,1), 
                                   (1,17,1);

INSERT INTO servicoaplicado VALUES (1, 2, 1, 2), (1, 3, 1, 8),
                                   (2, 2, 1, 2), (2, 3, 1, 3), (2, 4, 1, 5),
                                   (3, 2, 1, 6),
                                   (5, 2, 1, 7),
                                   (6, 2, 1, 8),
                                   (8, 2, 1, 1),
                                   (9, 2, 1, 2),
                                   (11, 2, 1, 3),
                                   (12, 2, 1, 4),
                                   (13, 2, 1, 5),
                                   (18, 2, 1, 6),
                                   (19, 2, 1, 7);
		


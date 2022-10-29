USE oficina;

 -- QUAIS MECANICOS TEM ESPECIALIDADE EM MECANICA
SELECT * FROM mecanico where especialidade like '%MECANICA%';

 -- quantidade de OS por status
 SELECT statusOrdem, COUNT(*) AS QUANTIDADE FROM ORDEM GROUP BY statusOrdem;

 -- quantidade de OS por mecanico
SELECT m.nome, count(*) as ordens FROM servicoaplicado o 
		INNER JOIN mecanico m ON o.idMecanico = m.idMecanico 
GROUP BY o.idMecanico ORDER BY count(*) desc; 

 -- veiculos por cliente
SELECT * FROM cliente c 
		INNER JOIN veiculo v ON c.idCliente = v.idCliente;
        
 -- cliente com mais veiculos (limit 3)
 SELECT c.idCliente,  c.nome, count(*) as veiculos FROM cliente c 
		INNER JOIN veiculo v ON c.idCliente = v.idCliente
GROUP BY c.idCliente ORDER BY count(*) desc limit 3; 

-- UPDATE veiculo SET idCliente = 7 WHERE (idVeiculo = 9) and (idCliente = 9);

 -- cliente sem veiculos
 SELECT * FROM cliente c 
 where c.idCliente not in (select distinct(idCliente) from veiculo);
   
 -- veiculo com mais OS
SELECT placa, count(*) as qtdeOS FROM veiculo v 
		INNER JOIN ordem o ON o.idVeiculo = v.idVeiculo
GROUP BY v.idVeiculo ORDER BY count(*) desc limit 1; 
 
 -- cliente com mais os
SELECT v.idCliente, c.nome, count(*) as qtdeOS FROM veiculo v 
		INNER JOIN ordem o ON o.idVeiculo = v.idVeiculo
        INNER JOIN cliente c ON c.idCliente = v.idCliente
GROUP BY c.idCliente ORDER BY count(*) desc limit 1; 

 -- quantidade de OS por tipo e %
 SELECT t.IdTipoOS, t.descricao, count(*) as quantidade,  round((count(*) / (select count(*) from ordem)) * 100, 2)  as ' % ' FROM ordem o 
		INNER JOIN tipoos t ON t.IdTipoOS = o.IdTipoOS
GROUP BY o.IdTipoOS ORDER BY count(*) desc; 

-- quantidade de OS por cliente e por tipo e %
 SELECT v.idCliente, c.nome, t.IdTipoOS, t.descricao, count(*) as quantidade,  round((count(*) / (select count(*) from ordem)) * 100, 2)  as ' % ' FROM ordem o 
		INNER JOIN tipoos t ON t.IdTipoOS = o.IdTipoOS
        INNER JOIN veiculo v ON o.idVeiculo = v.idVeiculo
        INNER JOIN cliente c ON c.idCliente = v.idCliente
GROUP BY c.idCliente, t.IdTipoOS ORDER BY c.idCliente asc; 
 

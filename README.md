# Geracão Tech Unimed-BH:
# Construa um Projeto Lógico de Banco de Dados do Zero 

## Narrativa
Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica

1. Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas
2. Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
3. A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
4. O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços
5. A mesma equipe avalia e executa os serviços
6. Os mecânicos possuem código, nome, endereço e especialidade
7. Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

## Instalação
 Acessar uma instancia do MySQL com direito o suficiente para criar e alterar, de preferência com o MySQL Workbench.

    Abrir o arquivo "Oficina2.0.sql" e executar todos os comandos. Este arquivo é responsável pela criação do banco de dados.
    Abrir o arquivo "Oficina2.0.INSERT.sql" e executar todos os comandos. Este arquivo é responsável por popular o banco de dados para testes das queries.
    Abrir o arquivo "Oficina2.0.QUERIE.sql" e executar todos os comandos. Este arquivo é responsável por apresentar as queries propostas para este estudo.

## Lista de perguntas (queries) propostas para este estudo:
 
    * Quais os mecânicos tem especialidade em "MECÂNICA"?
    * Quantidade de OS por status
    * Quantidade de OS por mecânico
    * Veículos listados por cliente        
    * Top 3 clientes com mais veículos
    * Clientes sem veículos
    * Veículo com mais OS registadas
    * Cliente com mais OS, top ONE
    * Quantidade de OS por tipo e sua margem de representação
    * Quantidade de OS por cliente e tipo e sua margem de representação

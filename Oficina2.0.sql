CREATE SCHEMA IF NOT EXISTS oficina;
USE oficina;
-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Cliente(
  idCliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(60) NULL,
  endereco VARCHAR(250) NULL,
  fone VARCHAR(20) NULL,
  email VARCHAR(100) NULL,
  PRIMARY KEY (idCliente));
-- -----------------------------------------------------
-- Table Veículo
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Veiculo (
  idVeiculo INT NOT NULL AUTO_INCREMENT,
  placa VARCHAR(45) NOT NULL,
  marca VARCHAR(45) NOT NULL,
  modelo VARCHAR(45) NOT NULL,
  ano INT NOT NULL,
  KM INT NOT NULL,
  idCliente INT NOT NULL,
  PRIMARY KEY (idVeiculo, idCliente),
  CONSTRAINT unique_placa_veiculo UNIQUE (placa),
  CONSTRAINT fk_veiculo_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);
-- -----------------------------------------------------
-- Table Mecanico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Mecanico (
  idMecanico INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(60) NOT NULL,
  endereco VARCHAR(200) NOT NULL,
  especialidade VARCHAR(250) NOT NULL,
  PRIMARY KEY (idMecanico)
);
-- -----------------------------------------------------
-- Table Tipo da OS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS TipoOS (
  idTipoOS INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(250) NOT NULL,
  PRIMARY KEY (idTipoOS)
);
-- -----------------------------------------------------
-- Table Ordem servico - OS
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Ordem (
  idOrdem INT NOT NULL AUTO_INCREMENT,
  dataEmissao DATETIME NOT NULL,
  statusOrdem ENUM('Digitada', 'Fechada', 'Cancelada', 'Em andamento') NOT NULL DEFAULT 'Digitada',
  dataEntrega DATETIME NOT NULL,
  autorizado TINYTEXT NOT NULL,
  idVeiculo INT NOT NULL,
  totalMaoObra FLOAT NOT NULL,
  totalProd FLOAT NOT NULL,
  totalGeral FLOAT NOT NULL,
  idTipoOS INT NOT NULL,
  PRIMARY KEY (idOrdem, idVeiculo, idTipoOS),  
  CONSTRAINT fk_Ordem_Veiculo FOREIGN KEY (idVeiculo) REFERENCES Veiculo (idVeiculo),
  CONSTRAINT fk_Ordem_TipoOS FOREIGN KEY (idTipoOS) REFERENCES TipoOS (idTipoOS)
);
-- -----------------------------------------------------
-- Table Tabela de Servico
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS TabelaServico (
  idTabelaServico INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(250) NOT NULL,
  valor FLOAT NOT NULL,
  PRIMARY KEY (idTabelaServico)
);
-- -----------------------------------------------------
-- Table Produto
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Produtos (
  idProduto INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(60) NULL,
  valor FLOAT NULL,
  PRIMARY KEY (idProduto)
);
-- -----------------------------------------------------
-- Table Servico aplicado
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ServicoAplicado (
  idOrdem INT NOT NULL,
  idTabelaServico INT NOT NULL,
  quantidade FLOAT NOT NULL,
  idMecanico INT NOT NULL,
  PRIMARY KEY (idOrdem, idTabelaServico, idMecanico),  
  CONSTRAINT fk_servicoA_Ordem FOREIGN KEY (idOrdem) REFERENCES Ordem (idOrdem),
  CONSTRAINT fk_servicoA_TabelaServico FOREIGN KEY (idTabelaServico) REFERENCES TabelaServico (idTabelaServico),
  CONSTRAINT fk_servicoA_Mecanico FOREIGN KEY (idMecanico) REFERENCES Mecanico (idMecanico)
);
-- -----------------------------------------------------
-- Table Produto aplicado
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS ProdutoAplicado (
  idProduto INT NOT NULL,
  idOrdem INT NOT NULL,
  quantidade float NOT NULL,
  PRIMARY KEY (idProduto, idOrdem),
  CONSTRAINT fk_ProdutoA_Produto FOREIGN KEY (idProduto) REFERENCES Produtos (idProduto),
  CONSTRAINT fk_ProdutoA_Ordem FOREIGN KEY (idOrdem) REFERENCES Ordem (idOrdem)
);
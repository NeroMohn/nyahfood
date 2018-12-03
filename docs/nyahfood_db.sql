-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29-Nov-2018 às 17:19
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyahfood_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` bigint(20) NOT NULL,
  `login` varchar(45) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `login`, `nome`, `senha`) VALUES
(1, 'admin', 'David', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` bigint(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `telefone` varchar(45) ,
  `logradouro` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `complemento` varchar(45) ,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nome`, `cpf`, `email`, `senha`, `telefone`, `logradouro`, `cep`, `numero`, `bairro`, `complemento`, `cidade`, `estado`) VALUES
(1, 'David', '02012950671', 'davidrod.contato@hotmail.com', '123', '32137414', 'Rua Professor Ernesto Evangelista', '36070045', '87', 'Costa Carvalho', '8', 'Juiz de Fora', 'MG'),
(3, 'ddass', '020129506711', 'asd@asd.com', '123456789', '32991283443', 'Rua Professor Ernesto Evangelista', '36070045', '87', 'Costa Carvalho', 'casa 8', 'Juiz de Fora', 'MG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comida`
--

CREATE TABLE `comida` (
  `idComida` bigint(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `ingrediente` varchar(150) ,
  `tempoEstimado` int(11) ,
  `foto` varchar(45) ,
  `preco` double NOT NULL,
  `desconto` double ,
  `codLoja` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `comida`
--

INSERT INTO `comida` (`idComida`, `nome`, `ingrediente`, `tempoEstimado`, `foto`, `preco`, `desconto`, `codLoja`) VALUES
(1, 'Comida1', 'ingrediente', 12, '', 23, 0, 1),
(2, 'pizza de mussarela', 'massa e queijo', 1200, '', 1200, 0, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comidapedida`
--

CREATE TABLE `comidapedida` (
  `idComidaPedida` bigint(20) NOT NULL,
  `quantidade` int(11) ,
  `total` double ,
  `codComida` bigint(20) NOT NULL,
  `codPedido` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupomdesconto`
--

CREATE TABLE `cupomdesconto` (
  `idCupomDesconto` bigint(20) NOT NULL,
  `nome` varchar(45) ,
  `valor` double ,
  `ativo` tinyint(4) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `favorito`
--

CREATE TABLE `favorito` (
  `idFavorito` bigint(20) NOT NULL,
  `codCliente` bigint(20) NOT NULL,
  `codLoja` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `idLoja` bigint(20) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `telefone` varchar(45) ,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `foto` varchar(45) ,
  `cep` varchar(45) NOT NULL,
  `logradouro` varchar(45) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `complemento` varchar(45) ,
  `cidade` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cnpj` varchar(45) NOT NULL,
  `descricao` varchar(100) ,
  `nomeGerente` varchar(45) ,
  `codTipoCozinha` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`idLoja`, `nome`, `telefone`, `email`, `senha`, `foto`, `cep`, `logradouro`, `numero`, `bairro`, `complemento`, `cidade`, `estado`, `cnpj`, `descricao`, `nomeGerente`, `codTipoCozinha`) VALUES
(1, 'asd', '123', 'asd@asd.com', '123', '', '36070045', 'Rua Professor Ernesto Evangelista', '88', 'Costa Carvalho', '88', 'Juiz de Fora', 'MG', '123', 'wadqs', 'asd', 1),
(2, 'loja1', '35991434352', 'email@email.com', '123456789789456123', '', '36070045', 'Rua Professor Ernesto Evangelista', '9', 'Costa Carvalho', 'drytfghjvkbkn', 'Juiz de Fora', 'MG', '111111111111111', '', 'gerente 1', 1),
(3, 'Loja do David', '32991283443', 'qwe@qwe.com', '321654987', '', '36070045', 'Rua Professor Ernesto Evangelista', '87', 'Costa Carvalho', 'casa 8', 'Juiz de Fora', 'MG', '111111111111111', 'loja do david mto loka', 'David', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `idPagamento` bigint(20) NOT NULL,
  `codLoja` bigint(20) NOT NULL,
  `codTipoPagamento` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idPedido` bigint(20) NOT NULL,
  `total` double ,
  `metodoPagamento` varchar(45) ,
  `date` varchar(10) ,
  `codCliente` bigint(20) NOT NULL,
  `codCupomDesconto` bigint(20) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocozinha`
--

CREATE TABLE `tipocozinha` (
  `idTipoCozinha` bigint(20) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipocozinha`
--

INSERT INTO `tipocozinha` (`idTipoCozinha`, `nome`) VALUES
(1, 'Japonesa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipopagamento`
--

CREATE TABLE `tipopagamento` (
  `idTipoPagamento` bigint(20) NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indexes for table `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`idComida`),
  ADD KEY `codLoja` (`codLoja`);

--
-- Indexes for table `comidapedida`
--
ALTER TABLE `comidapedida`
  ADD PRIMARY KEY (`idComidaPedida`),
  ADD KEY `codComida` (`codComida`),
  ADD KEY `codPedido` (`codPedido`);

--
-- Indexes for table `cupomdesconto`
--
ALTER TABLE `cupomdesconto`
  ADD PRIMARY KEY (`idCupomDesconto`);

--
-- Indexes for table `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`idFavorito`),
  ADD KEY `codCliente` (`codCliente`),
  ADD KEY `codLoja` (`codLoja`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`idLoja`),
  ADD KEY `codTipoCozinha` (`codTipoCozinha`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`idPagamento`),
  ADD KEY `codLoja` (`codLoja`),
  ADD KEY `codTipoPagamento` (`codTipoPagamento`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `codCliente` (`codCliente`),
  ADD KEY `codCupomDesconto` (`codCupomDesconto`);

--
-- Indexes for table `tipocozinha`
--
ALTER TABLE `tipocozinha`
  ADD PRIMARY KEY (`idTipoCozinha`);

--
-- Indexes for table `tipopagamento`
--
ALTER TABLE `tipopagamento`
  ADD PRIMARY KEY (`idTipoPagamento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comida`
--
ALTER TABLE `comida`
  MODIFY `idComida` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comidapedida`
--
ALTER TABLE `comidapedida`
  MODIFY `idComidaPedida` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cupomdesconto`
--
ALTER TABLE `cupomdesconto`
  MODIFY `idCupomDesconto` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorito`
--
ALTER TABLE `favorito`
  MODIFY `idFavorito` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loja`
--
ALTER TABLE `loja`
  MODIFY `idLoja` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `idPagamento` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idPedido` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipocozinha`
--
ALTER TABLE `tipocozinha`
  MODIFY `idTipoCozinha` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipopagamento`
--
ALTER TABLE `tipopagamento`
  MODIFY `idTipoPagamento` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `comida`
--
ALTER TABLE `comida`
  ADD CONSTRAINT `comida_ibfk_1` FOREIGN KEY (`codLoja`) REFERENCES `loja` (`idLoja`);

--
-- Limitadores para a tabela `comidapedida`
--
ALTER TABLE `comidapedida`
  ADD CONSTRAINT `comidapedida_ibfk_1` FOREIGN KEY (`codComida`) REFERENCES `comida` (`idComida`),
  ADD CONSTRAINT `comidapedida_ibfk_2` FOREIGN KEY (`codPedido`) REFERENCES `pedido` (`idPedido`);

--
-- Limitadores para a tabela `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `favorito_ibfk_2` FOREIGN KEY (`codLoja`) REFERENCES `loja` (`idLoja`);

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`codTipoCozinha`) REFERENCES `tipocozinha` (`idTipoCozinha`);

--
-- Limitadores para a tabela `pagamento`
--
ALTER TABLE `pagamento`
  ADD CONSTRAINT `pagamento_ibfk_1` FOREIGN KEY (`codLoja`) REFERENCES `loja` (`idLoja`),
  ADD CONSTRAINT `pagamento_ibfk_2` FOREIGN KEY (`codTipoPagamento`) REFERENCES `tipopagamento` (`idTipoPagamento`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`codCupomDesconto`) REFERENCES `cupomdesconto` (`idCupomDesconto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

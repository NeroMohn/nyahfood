-- ****************** NYAHFOOD DATABASE *******************;
-- ********************************************************;

-- Primeiro "destroi" as tabelas com chave estrangeira, e depois as sem chaves estrangeiras (a ordem � inversa ao de criar);
-- A ordem de cria��o depende das depend�ncias das tabelas;


DROP TABLE IF EXISTS `administrador`;

DROP TABLE IF EXISTS `comidapedida`;

DROP TABLE IF EXISTS `pedido`;

DROP TABLE IF EXISTS `cupomdesconto`;

DROP TABLE IF EXISTS `favorito`;

DROP TABLE IF EXISTS `comida`;

DROP TABLE IF EXISTS `pagamento`;

DROP TABLE IF EXISTS `tipopagamento`;

DROP TABLE IF EXISTS `loja`;

DROP TABLE IF EXISTS `tipocozinha`;

DROP TABLE IF EXISTS `cliente`;

-- ****************************** `cliente` ;

CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente`	bigint(20)     NOT NULL auto_increment,
  `nome`       	varchar(45) NOT NULL,
  `cpf`       	varchar(45) NOT NULL,
  `email`       varchar(45) NOT NULL,
  `senha`       varchar(45) NOT NULL,
  `telefone`    varchar(45) NOT NULL,
  `logradouro`  varchar(45) NOT NULL,
  `cep`       	varchar(45) NOT NULL,
  `numero`      varchar(45) NOT NULL,
  `bairro`      varchar(45) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `cidade`      varchar(45) NOT NULL,
  `estado`      varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
);

-- ****************************** `tipocozinha` ;

CREATE TABLE IF NOT EXISTS `tipocozinha` (
  `idTipoCozinha`      bigint(20)     NOT NULL auto_increment,
  `nome`        varchar(45) 	NOT NULL,
  PRIMARY KEY (`idTipoCozinha`)
  );


-- ****************************** `loja` ;

CREATE TABLE IF NOT EXISTS `loja` (
  `idLoja` 	bigint(20)     NOT NULL auto_increment,
  `nome`       	varchar(45) NOT NULL,
  `telefone`    varchar(45) NOT NULL,
  `email`       varchar(45) NOT NULL,
  `senha`       varchar(45) NOT NULL,
  `foto`        varchar(45) NOT NULL,
  `cep`         varchar(45) NOT NULL,
  `logradouro`  varchar(45) NOT NULL,
  `numero`      varchar(45) NOT NULL,
  `bairro`      varchar(45) NOT NULL,
  `complemento` varchar(45) NOT NULL,
  `cidade`      varchar(45) NOT NULL,
  `estado`      varchar(45) NOT NULL,
  `cnpj`        varchar(45) NOT NULL,
  `descricao`   varchar(100) NOT NULL,
  `nomeGerente` varchar(45) NOT NULL,
  `codTipoCozinha`  	bigint(20)      NOT NULL,
  PRIMARY KEY (`idLoja`),
  FOREIGN KEY (`codTipoCozinha`) REFERENCES tipocozinha (`idTipoCozinha`)
);


-- ****************************** `tipopagamento` ;
CREATE TABLE IF NOT EXISTS `tipopagamento` (
  `idTipoPagamento`      bigint(20)     NOT NULL auto_increment,
  `nome`        varchar(45) 	NOT NULL,
  PRIMARY KEY (`idTipoPagamento`)
  );


-- ****************************** `pagamento` ;
CREATE TABLE IF NOT EXISTS `tipopagamento` (
  `idPagamento`      bigint(20)     NOT NULL auto_increment,
  `codLoja`  	bigint(20)      NOT NULL, 
  `codTipoPagamento`  	bigint(20)      NOT NULL,
  PRIMARY KEY (`idPagamento`),
  FOREIGN KEY (`codLoja`) REFERENCES loja (`idLoja`),
  FOREIGN KEY (`codTipoPagamento`) REFERENCES tipopagamento (`idTipoPagamento`)
  );


-- ****************************** `comida` ;

CREATE TABLE IF NOT EXISTS `comida` (
  `idComida`	    bigint(20)     NOT NULL auto_increment,
  `nome`	    varchar(45) 	NOT NULL,
  `ingrediente`     varchar(150) 	NOT NULL,
  `tempoEstimado`   int     NOT NULL,
  `foto`  	varchar(45)     NOT NULL,
  `preco`  	double	        NOT NULL,
  `desconto`  	double          NOT NULL,
  `codLoja`  	bigint(20)      NOT NULL,
  PRIMARY KEY (`idComida`),
  FOREIGN KEY (`codLoja`) REFERENCES loja (`idLoja`)
);


-- ****************************** `favorito` ;

CREATE TABLE IF NOT EXISTS `favorito` (
  `idFavorito`      bigint(20)  NOT NULL auto_increment,
  `codCliente`      bigint(20) 	NOT NULL,
  `codLoja`         bigint(20) 	NOT NULL,
  PRIMARY KEY (`idFavorito`),
  FOREIGN KEY (`codCliente`) REFERENCES cliente (`idCliente`),
  FOREIGN KEY (`codLoja`) REFERENCES loja (`idLoja`)
);


-- ****************************** `cupomdesconto` ;

CREATE TABLE IF NOT EXISTS `cupomdesconto` (
  `idCupomDesconto`      bigint(20)     NOT NULL auto_increment,
  `nome`        varchar(45) 	NOT NULL,
  `valor`       double 		NOT NULL,
  `ativo`       tinyint 	NOT NULL,
  PRIMARY KEY (`idCupomDesconto`)
  );

-- ****************************** `pedido` ;

CREATE TABLE IF NOT EXISTS `pedido` (
  `idPedido`       bigint(20)     NOT NULL auto_increment,
  `total`       double		NOT NULL,
  `metodoPagamento`        varchar(45) 	NOT NULL,
  `date`  	datetime	     NOT NULL,
  `codCliente`     bigint(20) 	NOT NULL,
  `codCupomDesconto`     bigint(20) 	NOT NULL,
  PRIMARY KEY (`idPedido`),
  FOREIGN KEY  (`codCliente`) REFERENCES cliente (`idCliente`),
  FOREIGN KEY  (`codCupomDesconto`) REFERENCES cupomdesconto (`idCupomDesconto`)
);

-- ****************************** `comidapedida` ;

CREATE TABLE IF NOT EXISTS `comidapedida` (
  `idComidaPedida`  bigint(20)     NOT NULL auto_increment,
  `quantidade`      int	 NOT NULL,
  `total`      double	 NOT NULL,
  `codComida`       bigint(20) NOT NULL,
  `codPedido`       bigint(20) NOT NULL,
  PRIMARY KEY (`idComidaPedida`),
  FOREIGN KEY (`codComida`) REFERENCES comida (`idComida`),
  FOREIGN KEY (`codPedido`) REFERENCES pedido (`idPedido`)
);

-- ****************************** `administrador` ;

CREATE TABLE IF NOT EXISTS `administrador` (
  `idAdministrador`	bigint(20)     NOT NULL auto_increment,
  `login`    	varchar(45) NOT NULL,
  `nome`       	varchar(45) NOT NULL,
  `senha`       varchar(45) NOT NULL,
  PRIMARY KEY (`idAdministrador`)
);


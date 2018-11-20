-- ****************** NYAHFOOD DATABASE *******************;
-- ********************************************************;

-- Primeiro "destroi" as tabelas com chave estrangeira, e depois as sem chaves estrangeiras (a ordem é inversa ao de criar);
-- A ordem de criação depende das dependências das tabelas;


DROP TABLE IF EXISTS `tipoculinaria`;

DROP TABLE IF EXISTS `tipocozinha`;

DROP TABLE IF EXISTS `compra`;

DROP TABLE IF EXISTS `pedido`;

DROP TABLE IF EXISTS `favorito`;

DROP TABLE IF EXISTS `comidapedida`;

DROP TABLE IF EXISTS `comida`;

DROP TABLE IF EXISTS `loja`;

DROP TABLE IF EXISTS `cliente`;

-- ****************************** `cliente` ;

CREATE TABLE IF NOT EXISTS `cliente` (
  `idCliente`	bigint(20)     NOT NULL,
  `nome`       	varchar(45) NOT NULL,
  `cpf`       	varchar(45) NOT NULL,
  `email`       varchar(45) NOT NULL,
  `senha`       varchar(45) NOT NULL,
  `foto` 	varchar(45) NOT NULL,
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

-- ****************************** `loja` ;

CREATE TABLE IF NOT EXISTS `loja` (
  `idLoja` 	bigint(20)     NOT NULL,
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
  `numero`      varchar(45) NOT NULL,
  `cnpj`        varchar(45) NOT NULL,
  `descricao`   varchar(45) NOT NULL,
  `nomeGerente` varchar(45) NOT NULL,
  `pagamento`   varchar(45) NOT NULL,
  PRIMARY KEY (`idLoja`)
);

-- ****************************** `comida` ;

CREATE TABLE IF NOT EXISTS `comida` (
  `idComida`	    bigint(20)     NOT NULL,
  `nome`	    varchar(45) 	NOT NULL,
  `ingrediente`     varchar(45) 	NOT NULL,
  `tempoPreparo`    varchar(45)     NOT NULL,
  `foto`  	varchar(45)     NOT NULL,
  `preco`  	double	        NOT NULL,
  `desconto`  	double          NOT NULL,
  `codLoja`  	bigint(20)      NOT NULL,
  PRIMARY KEY (`idComida`),
  FOREIGN KEY (`codLoja`) REFERENCES loja (`idLoja`)
);

-- ****************************** `comidapedida` ;

CREATE TABLE IF NOT EXISTS `comidapedida` (
  `idComidaPedida`  bigint(11)     NOT NULL,
  `precoUnitario`   double	 NOT NULL,
  `quantidade`      int(20)	 NOT NULL,
  `precoTotal`      double	 NOT NULL,
  `codComida`       bigint(20) NOT NULL,
  PRIMARY KEY (`idComidaPedida`),
  FOREIGN KEY (`codComida`) REFERENCES comida (`idComida`)
);

-- ****************************** `favorito` ;

CREATE TABLE IF NOT EXISTS `favorito` (
  `idFavorito`      bigint(20)  NOT NULL,
  `codCliente`      bigint(20) 	NOT NULL,
  `codLoja`         bigint(20) 	NOT NULL,
  PRIMARY KEY (`idFavorito`),
  FOREIGN KEY (`codCliente`) REFERENCES cliente (`idCliente`),
  FOREIGN KEY (`codLoja`) REFERENCES loja (`idLoja`)
);

-- ****************************** `pedido` ;

CREATE TABLE IF NOT EXISTS `pedido` (
  `idPedido`       bigint(20)     NOT NULL,
  `quantidade`     int(20) 	NOT NULL,
  `subtotal`       double	NOT NULL,
  `metodoPagamento`        varchar(45) NOT NULL,
  `cupomDesconto`        varchar(45) NOT NULL,
  `date`  	varchar(45)	     NOT NULL,
  `codComida`     bigint(20) 	NOT NULL,
  PRIMARY KEY (`idPedido`),
  FOREIGN KEY  (`codComida`) REFERENCES comida (`idComida`)
);

-- ****************************** `compra` ;

CREATE TABLE IF NOT EXISTS `compra` (
  `idCompra`    bigint(20)     NOT NULL,
  `status`     	varchar(45) NOT NULL,
  `total`     	double	 NOT NULL,
  `codPedido`   bigint(20) NOT NULL,
  PRIMARY KEY (`idCompra`),
  FOREIGN KEY (`codPedido`) REFERENCES pedido (`idPedido`)
);

-- ****************************** `tipocozinha` ;

CREATE TABLE IF NOT EXISTS `tipocozinha` (
  `idTipoCozinha`      bigint(20)     NOT NULL,
  `tipo`        varchar(45) 	NOT NULL,
  PRIMARY KEY (`idTipoCozinha`)
  );

-- ****************************** `tipoculinaria` ;

CREATE TABLE IF NOT EXISTS `tipoculinaria` (
  `idTipoCulinaria`       bigint(20)     NOT NULL,
  `codLoja`   		  bigint(20) NOT NULL,
  `codTipoCozinha`   	  bigint(20) NOT NULL,
  PRIMARY KEY (`idTipoCulinaria`),
  FOREIGN KEY (`codLoja`) REFERENCES loja (`idLoja`),
  FOREIGN KEY (`codTipoCozinha`) REFERENCES tipocozinha (`idTipoCozinha`)
);
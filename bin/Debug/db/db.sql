CREATE DATABASE IF NOT EXISTS `antares` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `antares`;

CREATE TABLE IF NOT EXISTS `acompanhamentocliente` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(6) DEFAULT NULL,
  `fantasia` varchar(150) DEFAULT NULL,
  `acompanhamento` varchar(10000) DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `lembrar` datetime DEFAULT NULL,
  `origem` varchar(1) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `removerlembrete` varchar(1) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `acompanhamentofornecedor` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(6) DEFAULT NULL,
  `fantasia` varchar(150) DEFAULT NULL,
  `acompanhamento` varchar(10000) DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `lembrar` datetime DEFAULT NULL,
  `origem` varchar(1) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `removerlembrete` varchar(1) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL,
  `compromisso` varchar(10000) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `lembrar` char(1) DEFAULT NULL,
  `usuario` varchar(5) DEFAULT NULL,
  `periodo` char(1) DEFAULT NULL,
  `conclusao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `app_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `idvendedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.app_transacao_safe2pay
CREATE TABLE IF NOT EXISTS `app_transacao_safe2pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaction` varchar(15) NOT NULL,
  `token` varchar(255) NOT NULL COMMENT 'Token transação cartão',
  `descricao` varchar(500) NOT NULL COMMENT 'Retorno transação cartão',
  `status` varchar(2) NOT NULL COMMENT 'Status transação cartão',
  `mensagem` varchar(255) NOT NULL COMMENT 'Mensagem transação cartão',
  `data` date NOT NULL COMMENT 'Data transação cartão',
  `pedido` varchar(15) NOT NULL COMMENT 'Número do pedido transação cartão',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.area
CREATE TABLE IF NOT EXISTS `area` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(15) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.artigo
CREATE TABLE IF NOT EXISTS `artigo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.audit
CREATE TABLE IF NOT EXISTS `audit` (
  `data` datetime NOT NULL COMMENT 'Data da inserção do log',
  `log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'Log de ações do usuário',
  PRIMARY KEY (`data`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.bancos
CREATE TABLE IF NOT EXISTS `bancos` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) DEFAULT NULL,
  `banco` varchar(3) DEFAULT NULL,
  `descricao` varchar(25) DEFAULT NULL,
  `agencia` varchar(15) DEFAULT NULL,
  `digito_ag` varchar(2) DEFAULT NULL,
  `conta` varchar(15) DEFAULT NULL,
  `digito_conta` varchar(2) DEFAULT NULL,
  `saldo` double DEFAULT NULL,
  `datacadastro` varchar(20) DEFAULT NULL,
  `responsavel` varchar(20) DEFAULT NULL,
  `n_cheque` varchar(6) DEFAULT NULL,
  `tipoboleto` varchar(15) DEFAULT NULL,
  `mensagem1` varchar(20) DEFAULT NULL,
  `mensagem2` varchar(20) DEFAULT NULL,
  `mensagem3` varchar(20) DEFAULT NULL,
  `diasprotesto` int(11) DEFAULT NULL,
  `nossonumero` varchar(20) DEFAULT NULL,
  `carteira` varchar(10) DEFAULT NULL,
  `convenio` varchar(50) DEFAULT NULL,
  `protestar` varchar(5) DEFAULT NULL,
  `cnab` varchar(15) DEFAULT NULL,
  `protestardiascorridos` int(11) DEFAULT NULL,
  `protestardiasuteis` int(11) DEFAULT NULL,
  `naoreceberdias` int(11) DEFAULT NULL,
  `jurosdemora` double DEFAULT NULL,
  `desconto` double DEFAULT NULL,
  `multa` double DEFAULT NULL,
  `especie` varchar(10) DEFAULT NULL,
  `reciboentrega` varchar(5) DEFAULT NULL,
  `codigoempresa` varchar(20) DEFAULT NULL,
  `qtdremessa` int(11) DEFAULT NULL,
  `registrada` varchar(5) DEFAULT NULL,
  `ativo` varchar(1) DEFAULT NULL,
  `desativar` varchar(5) DEFAULT 'false',
  `sincronizado` varchar(1) DEFAULT NULL,
  `apiboleto` varchar(2) DEFAULT NULL COMMENT 'Habilita Safe2pay pra conta bancária',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.bordado
CREATE TABLE IF NOT EXISTS `bordado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `categoria` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cce
CREATE TABLE IF NOT EXISTS `cce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `motivo` varchar(10000) DEFAULT NULL,
  `data` varchar(50) DEFAULT NULL,
  `sequencial` int(11) DEFAULT NULL,
  `protocolo` varchar(50) DEFAULT NULL,
  `chaveent` int(11) DEFAULT NULL,
  `empresa` varchar(10000) DEFAULT NULL,
  `origem` varchar(1) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.centrocusto
CREATE TABLE IF NOT EXISTS `centrocusto` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `centrocusto` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cfop
CREATE TABLE IF NOT EXISTS `cfop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfop` varchar(6) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL,
  `aplicacao` varchar(500) DEFAULT NULL,
  `capcar` varchar(5) DEFAULT NULL,
  `faturamento` varchar(5) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cfop_st
CREATE TABLE IF NOT EXISTS `cfop_st` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cfop_dentro` varchar(7) DEFAULT NULL,
  `cfop_fora` varchar(10) DEFAULT NULL,
  `st` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cheque
CREATE TABLE IF NOT EXISTS `cheque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(50) DEFAULT NULL,
  `agencia` varchar(5) DEFAULT NULL,
  `conta` varchar(50) DEFAULT NULL,
  `numerocheque` varchar(12) DEFAULT NULL,
  `vencimento` datetime DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `responsavelnome` varchar(150) DEFAULT NULL,
  `responsavelcnpj` varchar(18) DEFAULT NULL,
  `responsavelfone` varchar(50) DEFAULT NULL,
  `emitentenome` varchar(100) DEFAULT NULL,
  `emitentecnpj` varchar(18) DEFAULT NULL,
  `emitentefone` varchar(50) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `origem` varchar(3) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `factoring` char(1) DEFAULT NULL,
  `datafactoring` datetime DEFAULT NULL,
  `codigofactoring` varchar(5) DEFAULT NULL,
  `auditoria` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `codigoauxiliar` varchar(50) DEFAULT NULL,
  `razao` varchar(250) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(6) DEFAULT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `codigocidade` varchar(18) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `codigouf` varchar(12) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `inscricao` varchar(20) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `cgc` varchar(30) DEFAULT NULL,
  `fone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `celular` varchar(53) DEFAULT NULL,
  `pessoa` varchar(1) DEFAULT NULL,
  `taxa` decimal(10,4) DEFAULT NULL,
  `contato` varchar(50) DEFAULT NULL,
  `prazo` varchar(4) DEFAULT NULL,
  `codigovendedor` varchar(4) DEFAULT NULL,
  `vendedor` varchar(50) DEFAULT NULL,
  `comissao` decimal(10,4) DEFAULT NULL,
  `limite` decimal(10,4) DEFAULT NULL,
  `dataatualizacao` datetime DEFAULT NULL COMMENT 'Guarda data de atualização do cadastro do cliente',
  `nascimento` datetime DEFAULT NULL,
  `fantasia` varchar(250) DEFAULT NULL,
  `ativo` varchar(7) DEFAULT NULL,
  `refpessoal1` varchar(30) DEFAULT NULL,
  `refpesfone1` varchar(20) DEFAULT NULL,
  `refpessoal2` varchar(30) DEFAULT NULL,
  `refpesfone2` varchar(20) DEFAULT NULL,
  `refcomercial1` varchar(30) DEFAULT NULL,
  `refcomfone1` varchar(20) DEFAULT NULL,
  `refcomercial2` varchar(30) DEFAULT NULL,
  `refcomfone2` varchar(20) DEFAULT NULL,
  `banco1` varchar(50) DEFAULT NULL,
  `ag1` varchar(50) DEFAULT NULL,
  `cc1` varchar(50) DEFAULT NULL,
  `banco2` varchar(100) DEFAULT NULL,
  `ag2` varchar(10) DEFAULT NULL,
  `cc2` varchar(10) DEFAULT NULL,
  `empresa` varchar(1) DEFAULT NULL,
  `enderecoemp` varchar(100) DEFAULT NULL,
  `foneemp` varchar(20) DEFAULT NULL,
  `ccorrente` varchar(5) DEFAULT NULL,
  `bloqueio` varchar(15) DEFAULT NULL,
  `faxcom` varchar(30) DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `final` datetime DEFAULT NULL,
  `venda` varchar(5) DEFAULT NULL,
  `classificacao` varchar(2) DEFAULT NULL,
  `codigogrupo` int(11) DEFAULT NULL,
  `grupo` varchar(30) DEFAULT NULL,
  `portador` varchar(2) DEFAULT NULL,
  `emailcom` varchar(300) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `dsp` varchar(15) DEFAULT NULL,
  `enderecocom` varchar(100) DEFAULT NULL,
  `bairrocom` varchar(50) DEFAULT NULL,
  `cepcom` varchar(15) DEFAULT NULL,
  `fonecom` varchar(50) DEFAULT NULL,
  `ufcom` varchar(2) DEFAULT NULL,
  `contatocom` varchar(50) DEFAULT NULL,
  `cidadecom` varchar(50) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `observacoes` varchar(4000) DEFAULT NULL,
  `area` varchar(15) DEFAULT NULL,
  `isentoipi` varchar(1) DEFAULT NULL,
  `planocontas` varchar(20) DEFAULT NULL,
  `valormeta` decimal(10,4) DEFAULT NULL,
  `vendedor2` varchar(50) DEFAULT NULL,
  `comissao2` decimal(10,4) DEFAULT NULL,
  `maladireta` varchar(7) DEFAULT NULL,
  `pontoreferencia` varchar(150) DEFAULT NULL,
  `codigoportador` varchar(4) DEFAULT NULL,
  `descricaoportador` varchar(30) DEFAULT NULL,
  `observacao` varchar(4000) DEFAULT NULL,
  `datacadastro` datetime DEFAULT NULL,
  `codigorecebimento` varchar(3) DEFAULT NULL,
  `recebimento` varchar(30) DEFAULT NULL,
  `descricaogrupo` varchar(20) DEFAULT NULL,
  `consumidorfinal` varchar(5) DEFAULT NULL,
  `tabelapreco` varchar(120) DEFAULT NULL,
  `transferencia` char(1) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `inscricaomunicipal` varchar(20) DEFAULT NULL,
  `codigovendedor2` varchar(5) DEFAULT NULL,
  `codigoportadoraux` varchar(5) DEFAULT NULL,
  `descricaoportadoraux` varchar(50) DEFAULT NULL,
  `valorminimo` decimal(10,4) DEFAULT NULL,
  `modalidade` varchar(30) DEFAULT NULL,
  `cfoppadrao` varchar(10) DEFAULT NULL,
  `descontoboleto` varchar(10) DEFAULT '0',
  `responsavel` varchar(50) DEFAULT NULL,
  `clientedadosadicionais` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `sincronizacao` varchar(50) DEFAULT NULL,
  `auxiliar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `clientesdadosadicionais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(6) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` varchar(13) DEFAULT NULL,
  `fone` varchar(13) DEFAULT NULL,
  `contato` varchar(25) DEFAULT NULL,
  `pontoreferencia` varchar(100) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `ie` varchar(15) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `cpais` varchar(10) DEFAULT NULL,
  `pais` varchar(25) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cmun` varchar(8) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.clientes_app
CREATE TABLE IF NOT EXISTS `clientes_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL COMMENT 'Nome do cliente cadastrado online',
  `email` varchar(60) DEFAULT NULL COMMENT 'Email do cliente cadastrado online',
  `senha` varchar(50) DEFAULT NULL COMMENT 'Senha do cliente cadastrado online',
  `cpfcnpj` varchar(22) DEFAULT NULL COMMENT 'Cpf ou cnpj do cliente cadastrado online',
  `endereco` varchar(100) DEFAULT NULL COMMENT 'Endereço do cliente cadastrado online',
  `numero` varchar(6) DEFAULT NULL COMMENT 'Número físico do endereço do cliente cadastrado online',
  `bairro` varchar(80) DEFAULT NULL COMMENT 'Bairro do cliente cadastrado online',
  `cidade` varchar(80) DEFAULT NULL COMMENT 'Cidade do cliente cadastrado online',
  `cep` varchar(12) DEFAULT NULL COMMENT 'CEP do cliente cadastrado online',
  `uf` varchar(2) DEFAULT NULL COMMENT 'Código da UF com dois dígitos do cliente cadastrado online',
  `complemento` varchar(150) DEFAULT NULL COMMENT 'Complemento do endereço do cliente cadastraonline',
  `telefone` varchar(12) DEFAULT NULL COMMENT 'Telefone do cliente cadastrado online',
  `ativo` varchar(1) DEFAULT NULL COMMENT 'Status do cliente cadastrado online',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.codigoservicomunicipal
CREATE TABLE IF NOT EXISTS `codigoservicomunicipal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `servicomunicipal` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48025 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.codigoservicosfederais
CREATE TABLE IF NOT EXISTS `codigoservicosfederais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricaoservico` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `CHAVE` int(11) NOT NULL AUTO_INCREMENT,
  `DOCUMENTO` varchar(10) DEFAULT NULL,
  `PEDIDO` varchar(20) DEFAULT NULL,
  `FORNECEDOR` varchar(6) DEFAULT NULL,
  `RAZAO` varchar(150) DEFAULT NULL,
  `FANTASIA` varchar(150) DEFAULT NULL,
  `CNPJCPF` varchar(25) DEFAULT NULL,
  `EMISSAO` datetime(6) DEFAULT NULL,
  `ICMS` double DEFAULT '0',
  `ICMSSUBST` double DEFAULT '0',
  `IPI` double DEFAULT '0',
  `DEVOLUCAO` varchar(5) DEFAULT NULL,
  `DESCONTO` double DEFAULT '0',
  `FRETE` varchar(3) DEFAULT NULL,
  `FRETEVALOR` double DEFAULT '0',
  `ACRESCIMO` double DEFAULT '0',
  `TOTALNOTA` double DEFAULT '0',
  `TOTALPRODUTOS` double DEFAULT NULL,
  `observacao` varchar(5000) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Limite observacao nfe 5000 caracteres',
  `RECEBIMENTO` varchar(3) DEFAULT NULL,
  `DESCRICAORECEBIMENTO` varchar(25) DEFAULT NULL,
  `USUARIO` varchar(4) DEFAULT NULL,
  `NOMEUSUARIO` varchar(20) DEFAULT NULL,
  `PLANOCONTAS` varchar(20) DEFAULT NULL,
  `DESCRICAOPLANO` varchar(30) DEFAULT NULL,
  `CFOP` varchar(50) DEFAULT NULL,
  `DESCRICAOCFOP` varchar(50) DEFAULT NULL,
  `QTDPARCELAS` int(11) DEFAULT '0',
  `CANCELADO` varchar(10) DEFAULT NULL,
  `AUDITORIA` varchar(5) DEFAULT 'False',
  `MODELONF` varchar(2) DEFAULT NULL,
  `SERIENF` varchar(3) DEFAULT NULL,
  `ALMOXARIFADO` varchar(5) DEFAULT NULL,
  `LANCAMENTO` datetime(6) DEFAULT NULL,
  `TRANSPORTADOR` varchar(100) DEFAULT NULL,
  `CODIGOTRANSPORTADOR` varchar(10) DEFAULT NULL,
  `CFOPFRETE` varchar(6) DEFAULT NULL,
  `VENCIMENTOFRETE` varchar(10) DEFAULT NULL,
  `CONHECIMENTO` varchar(50) DEFAULT NULL,
  `SERIEFRETE` varchar(4) DEFAULT NULL,
  `BCICMSFRETE` double DEFAULT NULL,
  `EMISSAOFRETE` varchar(10) DEFAULT NULL,
  `ICMSFRETE` double DEFAULT NULL,
  `FATURAMENTO` datetime(6) DEFAULT NULL,
  `TIPODESCONTO` varchar(2) DEFAULT NULL,
  `AU` varchar(5) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `DESPESA` double DEFAULT NULL,
  `ESPECIE` varchar(15) DEFAULT NULL,
  `CFOPTRASNPORTADOR` varchar(5) DEFAULT NULL,
  `PLACA` varchar(8) DEFAULT NULL,
  `PROTOCOLO` varchar(20) DEFAULT NULL,
  `TIPOFRETE` varchar(3) DEFAULT NULL,
  `RECIBONFE` varchar(50) DEFAULT NULL,
  `CHAVENFE` varchar(200) DEFAULT NULL,
  `FATURADO` varchar(5) DEFAULT NULL,
  `NUMEROVOLUME` varchar(10) DEFAULT NULL,
  `QUANTIDADEVOL` varchar(5) DEFAULT NULL,
  `BASECALCULOICMS` double DEFAULT NULL,
  `VALORICMS` double DEFAULT NULL,
  `BASECALCULOICMSST` double DEFAULT NULL,
  `VALORICMSST` double DEFAULT NULL,
  `VALORIPI` double DEFAULT NULL,
  `EMITIDO` varchar(5) DEFAULT NULL,
  `TIPOEMISSAO` varchar(50) DEFAULT NULL,
  `FAT` varchar(5) DEFAULT NULL,
  `SAIDA` datetime(6) DEFAULT NULL,
  `MOTIVOCANCELAMENTO` varchar(255) DEFAULT NULL,
  `SEQCCE` int(11) DEFAULT NULL,
  `ST` varchar(5) DEFAULT NULL,
  `DOCUMENTO2` varchar(50) DEFAULT NULL,
  `NFEREF` varchar(50) DEFAULT NULL,
  `MARCA` varchar(30) DEFAULT NULL,
  `CONFERENCIA` varchar(5) DEFAULT NULL,
  `ORDEMCOMPRA` varchar(20) DEFAULT NULL,
  `JUSTIFICATIVA` varchar(50) DEFAULT NULL,
  `CALCULARICMSST` varchar(5) DEFAULT NULL,
  `PISPASEP` double DEFAULT NULL,
  `COFINS` double DEFAULT NULL,
  `DESPESASADUANEIRAS` double DEFAULT NULL,
  `VII` double DEFAULT NULL,
  `CHAVECTE` varchar(50) DEFAULT NULL,
  `MODELOFRETE` varchar(50) DEFAULT NULL,
  `MODBCICMS` varchar(1) DEFAULT NULL,
  `NFREF` varchar(20) DEFAULT NULL,
  `CENTROCUSTO` varchar(50) DEFAULT NULL,
  `CODIGOCUSTO` varchar(10) DEFAULT NULL,
  `UFPLACA` varchar(2) DEFAULT NULL,
  `NUMEROPARCELAS` int(11) DEFAULT NULL,
  `EMPRESA` varchar(50) DEFAULT NULL,
  `DOCUMENTOMDFE` varchar(20) DEFAULT NULL,
  `MODODESCONTO` varchar(1) DEFAULT NULL,
  `BASEIPI` decimal(18,4) DEFAULT NULL,
  `BASECALCULOIPI` decimal(18,4) DEFAULT NULL,
  `PBRUTO` decimal(18,4) DEFAULT NULL,
  `PLIQUIDO` decimal(18,4) DEFAULT NULL,
  `DENEGADA` varchar(12) DEFAULT NULL,
  `CNFE` varchar(15) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CHAVE`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoescte
CREATE TABLE IF NOT EXISTS `configuracoescte` (
  `id` int(11) NOT NULL,
  `empresa` varchar(15) DEFAULT NULL,
  `licenca` varchar(500) DEFAULT NULL,
  `certificado` varchar(150) DEFAULT NULL,
  `senhacertificado` varchar(100) DEFAULT NULL,
  `serie` varchar(3) DEFAULT NULL,
  `versao` varchar(25) DEFAULT NULL,
  `pathschemas` varchar(250) DEFAULT NULL,
  `pathxml` varchar(250) DEFAULT NULL,
  `ambiente` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoesemail
CREATE TABLE IF NOT EXISTS `configuracoesemail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `tipossl` varchar(10) DEFAULT NULL,
  `tiposmtp` varchar(50) NOT NULL,
  `porta` varchar(5) DEFAULT NULL,
  `mensagemfixa` varchar(500) DEFAULT NULL,
  `modulo` varchar(15) NOT NULL,
  `nomeexibicao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoesmdfe
CREATE TABLE IF NOT EXISTS `configuracoesmdfe` (
  `id` int(11) NOT NULL,
  `empresa` varchar(15) DEFAULT NULL,
  `licenca` varchar(500) DEFAULT NULL,
  `certificado` varchar(150) DEFAULT NULL,
  `senhacertificado` varchar(100) DEFAULT NULL,
  `serie` varchar(3) DEFAULT NULL,
  `versao` varchar(25) DEFAULT NULL,
  `pathschemas` varchar(250) DEFAULT NULL,
  `pathxml` varchar(250) DEFAULT NULL,
  `ambiente` varchar(5) DEFAULT NULL,
  `verproc` varchar(250) DEFAULT NULL,
  `unidadefederada` varchar(250) DEFAULT NULL,
  `unidadefederadacodigo` varchar(250) DEFAULT NULL,
  `ativatrace` varchar(250) DEFAULT NULL,
  `nferecepcao` varchar(250) DEFAULT NULL,
  `nferetrecepcao` varchar(250) DEFAULT NULL,
  `nferecepcaoevento` varchar(250) DEFAULT NULL,
  `nfecancelamento` varchar(250) DEFAULT NULL,
  `nfeinutilizacao` varchar(250) DEFAULT NULL,
  `nfeconsultaprotocolo` varchar(250) DEFAULT NULL,
  `nfestatusservico` varchar(250) DEFAULT NULL,
  `cnpj` varchar(250) DEFAULT NULL,
  `avisoexpiracertificado` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoesnfce
CREATE TABLE IF NOT EXISTS `configuracoesnfce` (
  `ID` int(11) NOT NULL,
  `AMBIENTE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `ATIVATRACE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `CNPJ` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `DANFECANHOTO` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DANFEINFO` longtext COLLATE utf8_bin,
  `DANFELOGO` longtext COLLATE utf8_bin,
  `DANFETPDESC` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `DATAPACKET` longtext COLLATE utf8_bin,
  `DATAPACKETFORMSEG` longtext COLLATE utf8_bin,
  `nomeimpressora` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'Guarda nome da impressora para comando direto de impressão no pdv, sem visualização',
  `FORMATOITEMQTD` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `FORMATOITEMUNT` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `MODELO` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `NFERECEPCAO` longtext COLLATE utf8_bin,
  `NFERETRECEPCAO` longtext COLLATE utf8_bin,
  `NFERECEPCAOEVENTO` longtext COLLATE utf8_bin,
  `NFECANCELAMENTO` longtext COLLATE utf8_bin,
  `NFEINUTILIZACAO` longtext COLLATE utf8_bin,
  `NFECONSULTAPROTOCOLO` longtext COLLATE utf8_bin,
  `NFESTATUSSERVICO` longtext COLLATE utf8_bin,
  `PATHPRINCIPAL` longtext COLLATE utf8_bin,
  `SERIE` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `SIZEFONTSOBS` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `TIPODANFE` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `TOTALIZARCFOP` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `PATHSCHEMAS` longtext COLLATE utf8_bin,
  `UNIDADEFEDERADA` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `NOSERIECERTIFICADO` longtext COLLATE utf8_bin,
  `VERPROC` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `UNIDADEFEDERADACODIGO` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `VAL_ASS` longtext COLLATE utf8_bin,
  `VAL_MD5` longtext COLLATE utf8_bin,
  `EMAIL` longtext COLLATE utf8_bin,
  `AVISOEXPIRACERTIFICADO` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `NOMEEXIBICAO` longtext COLLATE utf8_bin,
  `SENHA` longtext COLLATE utf8_bin,
  `SERVIDORSMTP` longtext COLLATE utf8_bin,
  `TIPOSSL` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `PORTAEMAIL` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `HOST` longtext COLLATE utf8_bin,
  `PORTAPROXY` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `SENHAPROXY` longtext COLLATE utf8_bin,
  `USUARIO` longtext COLLATE utf8_bin,
  `CODMUNICIPIO` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `IE` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `MUNICIPIO` longtext COLLATE utf8_bin,
  `CSC` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `CIDTOKEN` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoesnfe
CREATE TABLE IF NOT EXISTS `configuracoesnfe` (
  `id` int(11) NOT NULL,
  `ambiente` varchar(2) DEFAULT NULL,
  `ativatrace` varchar(2) DEFAULT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `danfecanhoto` varchar(2) DEFAULT NULL,
  `danfeinfo` varchar(500) DEFAULT NULL,
  `danfelogo` varchar(500) DEFAULT NULL,
  `danfetpdesc` varchar(2) DEFAULT NULL,
  `datapacket` varchar(500) DEFAULT NULL,
  `datapacketformseg` varchar(500) DEFAULT NULL,
  `formatoitemqtd` varchar(50) DEFAULT NULL,
  `formatoitemunt` varchar(50) DEFAULT NULL,
  `modelo` varchar(5) DEFAULT '55',
  `nferecepcao` varchar(500) DEFAULT NULL,
  `nferetrecepcao` varchar(500) DEFAULT NULL,
  `nferecepcaoevento` varchar(500) DEFAULT NULL,
  `nfecancelamento` varchar(500) DEFAULT NULL,
  `nfeinutilizacao` varchar(500) DEFAULT NULL,
  `nfeconsultaprotocolo` varchar(500) DEFAULT NULL,
  `nfestatusservico` varchar(500) DEFAULT NULL,
  `pathprincipal` varchar(500) DEFAULT NULL,
  `serie` varchar(5) DEFAULT '1',
  `sizefontsobs` varchar(5) DEFAULT NULL,
  `tipodanfe` varchar(2) DEFAULT NULL,
  `totalizarcfop` varchar(50) DEFAULT NULL,
  `pathschemas` varchar(500) DEFAULT NULL,
  `unidadefederada` varchar(5) DEFAULT NULL,
  `noseriecertificado` varchar(500) DEFAULT NULL,
  `verproc` varchar(15) DEFAULT NULL,
  `unidadefederadacodigo` varchar(5) DEFAULT NULL,
  `val_ass` varchar(500) DEFAULT NULL,
  `val_md5` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `avisoexpiracertificado` varchar(5) DEFAULT NULL,
  `nomeexibicao` varchar(500) DEFAULT NULL,
  `senha` varchar(500) DEFAULT NULL,
  `servidorsmtp` varchar(500) DEFAULT NULL,
  `tipossl` varchar(5) DEFAULT NULL,
  `portaemail` varchar(5) DEFAULT NULL,
  `host` varchar(500) DEFAULT NULL,
  `portaproxy` varchar(15) DEFAULT NULL,
  `senhaproxy` varchar(500) DEFAULT NULL,
  `usuario` varchar(500) DEFAULT NULL,
  `codmunicipio` varchar(15) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoesnfse
CREATE TABLE IF NOT EXISTS `configuracoesnfse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ambiente` varchar(2) DEFAULT NULL,
  `pathprincipal` varchar(500) DEFAULT NULL,
  `serie` varchar(5) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `rps` int(11) DEFAULT NULL COMMENT 'Guarda núemro do Rps da NFSE',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configuracoestef
CREATE TABLE IF NOT EXISTS `configuracoestef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `chaveativacao` varchar(100) DEFAULT NULL,
  `pdv` varchar(2) DEFAULT NULL,
  `tipoparcelamento` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.configusuarios
CREATE TABLE IF NOT EXISTS `configusuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `nomeusuario` varchar(30) DEFAULT NULL,
  `desconto` decimal(10,4) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `senhaliberacao` varchar(50) DEFAULT NULL,
  `descricaogrupo` varchar(20) DEFAULT NULL,
  `cadastrogeral` varchar(5) DEFAULT NULL,
  `dadosempresa` varchar(5) DEFAULT NULL,
  `importartabela` varchar(5) DEFAULT NULL,
  `importarproduto` varchar(5) DEFAULT NULL,
  `configusuario` varchar(5) DEFAULT NULL,
  `codigobarras` varchar(5) DEFAULT NULL,
  `maladireta` varchar(5) DEFAULT NULL,
  `contaspagar` varchar(5) DEFAULT NULL,
  `contasreceber` varchar(5) DEFAULT NULL,
  `controlecheque` varchar(5) DEFAULT NULL,
  `emissaocheque` varchar(5) DEFAULT NULL,
  `entradaprodutos` varchar(5) DEFAULT NULL,
  `pedidocompra` varchar(5) DEFAULT NULL,
  `caixa` varchar(5) DEFAULT NULL,
  `baixamanual` varchar(5) DEFAULT NULL,
  `inventario` varchar(5) DEFAULT NULL,
  `vendas` varchar(5) DEFAULT NULL,
  `pedidovenda` varchar(5) DEFAULT NULL,
  `graficos` varchar(5) DEFAULT NULL,
  `relatoriofinanceiro` varchar(5) DEFAULT NULL,
  `relatoriomovimentacao` varchar(5) DEFAULT NULL,
  `relatorioestoque` varchar(5) DEFAULT NULL,
  `relatoriopdv` varchar(5) DEFAULT NULL,
  `relatoriomodulomesa` varchar(5) DEFAULT NULL,
  `liberarsenha` varchar(5) DEFAULT NULL,
  `alterapreco` varchar(5) DEFAULT NULL,
  `alteracomissao` varchar(5) DEFAULT NULL,
  `senhapdv` varchar(60) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  `nivel` varchar(1) DEFAULT 'O',
  `cadastroacesso` varchar(5) DEFAULT NULL,
  `cadastroeditar` varchar(5) DEFAULT NULL,
  `cadstroadicionar` varchar(5) DEFAULT NULL,
  `cadastroexcluir` varchar(5) DEFAULT NULL,
  `configusuarios` varchar(5) DEFAULT NULL,
  `configetiqueta` varchar(5) DEFAULT NULL,
  `filiais` varchar(5) DEFAULT NULL,
  `funcionarios` varchar(5) DEFAULT NULL,
  `importexportproutos` varchar(5) DEFAULT NULL,
  `tabelapreco` varchar(5) DEFAULT NULL,
  `compra` varchar(5) DEFAULT NULL,
  `listageminventario` varchar(5) DEFAULT NULL,
  `almoxarifado` varchar(5) DEFAULT NULL,
  `ajustarlote` varchar(5) DEFAULT NULL,
  `vendapendente` varchar(5) DEFAULT NULL,
  `vendapendenteincluir` varchar(5) DEFAULT NULL,
  `vendapendentecancelar` varchar(5) DEFAULT NULL,
  `vendapendenteeditar` varchar(5) DEFAULT NULL,
  `vendapendentefaturar` varchar(5) DEFAULT NULL,
  `venda` varchar(5) DEFAULT NULL,
  `vendaincluir` varchar(5) DEFAULT NULL,
  `vendaeditar` varchar(5) DEFAULT NULL,
  `vendacancelar` varchar(5) DEFAULT NULL,
  `relatoriofiscal` varchar(5) DEFAULT NULL,
  `grafico` varchar(5) DEFAULT NULL,
  `utilitarioexcluirpedidovenda` varchar(5) DEFAULT NULL,
  `utilitarioexluirpedidocompra` varchar(5) DEFAULT NULL,
  `compraincluir` varchar(5) DEFAULT NULL,
  `compracancelar` varchar(5) DEFAULT NULL,
  `compraeditar` varchar(5) DEFAULT NULL,
  `cadastroeditarproduto` varchar(5) DEFAULT NULL,
  `cadastroexcluirproduto` varchar(5) DEFAULT NULL,
  `cadastroadicionarproduto` varchar(5) DEFAULT NULL,
  `nivelsenhapdv` varchar(1) DEFAULT NULL,
  `relatoriocomissao` varchar(5) DEFAULT NULL,
  `pesquisarprodutos` varchar(20) DEFAULT NULL,
  `cadastroadicionar` varchar(5) DEFAULT NULL,
  `followupclientes` varchar(5) DEFAULT NULL,
  `followupfornecedor` varchar(5) DEFAULT NULL,
  `ordemservico` varchar(5) DEFAULT NULL,
  `cadastrarcliente` varchar(5) DEFAULT NULL,
  `cadastrarfornecedor` varchar(5) DEFAULT NULL,
  `cadastrarservico` varchar(5) DEFAULT NULL,
  `cadastrarcfop` varchar(5) DEFAULT NULL,
  `cadastrarrecebimento` varchar(5) DEFAULT NULL,
  `cadastrartransportador` varchar(5) DEFAULT NULL,
  `cadastrarplanocontas` varchar(5) DEFAULT NULL,
  `cadastraroperacoes` varchar(5) DEFAULT NULL,
  `cadastrarvendedores` varchar(5) DEFAULT NULL,
  `visualizatransferencias` varchar(5) DEFAULT NULL,
  `permitealterarvendedor` varchar(5) DEFAULT NULL,
  `cadprodutos` varchar(5) DEFAULT NULL,
  `tabelaprecofixa` varchar(1) DEFAULT NULL,
  `contasreceber_adicionar` varchar(5) DEFAULT NULL,
  `contasreceber_editar` varchar(5) DEFAULT NULL,
  `contasreceber_excluir` varchar(5) DEFAULT NULL,
  `contaspagar_adicionar` varchar(5) DEFAULT NULL,
  `contaspagar_editar` varchar(5) DEFAULT NULL,
  `contaspagar_excluir` varchar(5) DEFAULT NULL,
  `contasreceber_baixar` varchar(5) DEFAULT NULL,
  `contasreceber_prorrogar` varchar(5) DEFAULT NULL,
  `contasreceber_calcularjuros` varchar(5) DEFAULT NULL,
  `contasreceber_acrescimodesconto` varchar(5) DEFAULT NULL,
  `contasreceber_estornar` varchar(5) DEFAULT NULL,
  `contasreceber_parcelar` varchar(5) DEFAULT NULL,
  `contasreceber_unificar` varchar(5) DEFAULT NULL,
  `contasreceber_defineoperacao` varchar(5) DEFAULT NULL,
  `contasreceber_definecheque` varchar(5) DEFAULT NULL,
  `contasreceber_emitirboleto` varchar(5) DEFAULT NULL,
  `contasreceber_emitirrecibo` varchar(5) DEFAULT NULL,
  `contasreceber_remessa` varchar(5) DEFAULT NULL,
  `contasreceber_consultarcheque` varchar(5) DEFAULT NULL,
  `contaspagar_baixar` varchar(5) DEFAULT NULL,
  `contaspagar_prorrogar` varchar(5) DEFAULT NULL,
  `contaspagar_acrescimodesconto` varchar(5) DEFAULT NULL,
  `contaspagar_estornar` varchar(5) DEFAULT NULL,
  `contaspagar_parcelar` varchar(5) DEFAULT NULL,
  `contaspagar_unificar` varchar(5) DEFAULT NULL,
  `contaspagar_definecheque` varchar(5) DEFAULT NULL,
  `contaspagar_emitirboleto` varchar(5) DEFAULT NULL,
  `contaspagar_emitirrecibo` varchar(5) DEFAULT NULL,
  `contaspagar_multiplicarparcela` varchar(5) DEFAULT NULL,
  `contaspagar_consultarcheque` varchar(5) DEFAULT NULL,
  `modopesquisaproduto` varchar(1) DEFAULT NULL,
  `pesquisacliente` varchar(2) DEFAULT NULL,
  `alterarvendedor` varchar(5) DEFAULT NULL,
  `cadastrarartigo` varchar(1) DEFAULT NULL,
  `cadastrartecido` varchar(1) DEFAULT NULL,
  `cadastrarcor` varchar(1) DEFAULT NULL,
  `cadastrarbordado` varchar(1) DEFAULT NULL,
  `cadastrarpecabordado` varchar(1) DEFAULT NULL,
  `cadastrarfita` varchar(1) DEFAULT NULL,
  `cadastrarpecafita` varchar(1) DEFAULT NULL,
  `configurarnfse` varchar(1) DEFAULT NULL,
  `cadastrarequipamento` varchar(1) DEFAULT NULL,
  `cadastrarveiculo` varchar(1) DEFAULT NULL,
  `exportardados` varchar(1) DEFAULT NULL,
  `configurarparametros` varchar(1) DEFAULT NULL,
  `idvendedor` varchar(4) DEFAULT NULL,
  `mdfe` varchar(5) DEFAULT 'True',
  `mdfeincluir` varchar(5) DEFAULT 'True',
  `mdfecancelar` varchar(5) DEFAULT 'True',
  `mdfeeditar` varchar(5) DEFAULT 'True',
  `ordemservicoincluir` varchar(5) DEFAULT 'True',
  `ordemservicocancelar` varchar(5) DEFAULT 'True',
  `ordemservicoeditar` varchar(5) DEFAULT 'True',
  `ordemservicofaturar` varchar(5) DEFAULT 'True',
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contabilidade
CREATE TABLE IF NOT EXISTS `contabilidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `cpf` varchar(25) DEFAULT NULL,
  `crc` varchar(15) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `cep` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `fone` varchar(13) DEFAULT NULL,
  `fax` varchar(13) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `codigomunicipio` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contacorrente
CREATE TABLE IF NOT EXISTS `contacorrente` (
  `CHAVE` int(11) NOT NULL,
  `cliente` varchar(6) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `HORA` varchar(50) DEFAULT NULL,
  `responsavel` varchar(30) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `cancelado` char(1) DEFAULT NULL,
  `observacao` varchar(200) DEFAULT NULL,
  `preco` decimal(10,4) DEFAULT NULL,
  `origem` varchar(1) DEFAULT NULL,
  `recebimento` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contaspagar
CREATE TABLE IF NOT EXISTS `contaspagar` (
  `chave1` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor` varchar(5) DEFAULT NULL,
  `razao` varchar(250) DEFAULT NULL,
  `fantasia` varchar(250) DEFAULT NULL,
  `emissao` datetime DEFAULT NULL,
  `vencimento` datetime DEFAULT NULL,
  `dias` varchar(10) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `pagamento` datetime DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `usuariobaixa` varchar(50) DEFAULT NULL,
  `cancelado` varchar(5) DEFAULT NULL,
  `documento2` varchar(50) DEFAULT NULL,
  `historico` varchar(250) DEFAULT NULL,
  `cheque` varchar(15) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `origem` varchar(3) DEFAULT NULL,
  `unificado` varchar(20) DEFAULT NULL,
  `compra` varchar(10) DEFAULT NULL,
  `planocontas` varchar(50) DEFAULT NULL,
  `descricaoplano` varchar(50) DEFAULT NULL,
  `bb` varchar(5) DEFAULT NULL,
  `valorparcial` decimal(10,4) DEFAULT NULL,
  `acompanhamento` varchar(5) DEFAULT NULL,
  `codigobanco` varchar(3) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `ag` varchar(15) DEFAULT NULL,
  `cc` varchar(15) DEFAULT NULL,
  `responsavel_banco` varchar(25) DEFAULT NULL,
  `liberacaodesconto` varchar(25) DEFAULT NULL,
  `valordesconto` decimal(10,4) DEFAULT NULL,
  `codigorecebimento` varchar(5) DEFAULT NULL,
  `recebimento` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe',
  `observacao` varchar(250) DEFAULT NULL,
  `au` varchar(5) DEFAULT NULL,
  `chave2` varchar(5) DEFAULT NULL,
  `documento3` varchar(50) DEFAULT NULL,
  `ordemcompra` varchar(20) DEFAULT NULL,
  `seqpagparcial` int(11) DEFAULT NULL,
  `idmultibaixas` int(11) DEFAULT NULL,
  `centrocusto` varchar(50) DEFAULT NULL,
  `empresa` varchar(10000) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `datacancelamento` datetime DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `forma` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`chave1`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contaspagarhistorico
CREATE TABLE IF NOT EXISTS `contaspagarhistorico` (
  `CHAVE` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `fornecedor` varchar(8) DEFAULT NULL,
  `historico` varchar(255) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `responsavel` varchar(30) DEFAULT NULL,
  `tipo` varchar(3) DEFAULT NULL,
  `documento2` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CHAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contasreceber
CREATE TABLE IF NOT EXISTS `contasreceber` (
  `chave1` int(11) NOT NULL AUTO_INCREMENT,
  `chave2` varchar(10) DEFAULT NULL,
  `cliente` varchar(6) DEFAULT NULL,
  `razao` varchar(250) DEFAULT NULL,
  `fantasia` varchar(250) DEFAULT NULL,
  `emissao` datetime DEFAULT NULL,
  `vencimento` datetime DEFAULT NULL,
  `dias` varchar(10) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `valor` decimal(18,2) DEFAULT NULL,
  `pagamento` datetime DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `usuariobaixa` varchar(50) DEFAULT NULL,
  `cancelado` varchar(5) DEFAULT NULL,
  `documento2` varchar(50) DEFAULT NULL,
  `historico` varchar(500) DEFAULT NULL,
  `cheque` varchar(50) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `origem` varchar(3) DEFAULT NULL,
  `unificado` varchar(5) DEFAULT NULL,
  `compra` varchar(10) DEFAULT NULL,
  `planocontas` varchar(50) DEFAULT NULL,
  `descricaoplano` varchar(250) DEFAULT NULL,
  `au` varchar(5) DEFAULT NULL,
  `valorparcial` decimal(18,2) DEFAULT NULL,
  `acompanhamento` varchar(5) DEFAULT NULL,
  `codigobanco` varchar(3) DEFAULT NULL,
  `banco` varchar(50) DEFAULT NULL,
  `modelobanco` varchar(5) DEFAULT NULL,
  `ag` varchar(50) DEFAULT NULL,
  `cc` varchar(50) DEFAULT NULL,
  `responsavel_banco` varchar(50) DEFAULT NULL,
  `liberacaodesconto` varchar(25) DEFAULT NULL,
  `valordesconto` decimal(18,2) DEFAULT NULL,
  `codigorecebimento` varchar(5) DEFAULT NULL,
  `recebimento` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe',
  `observacao` varchar(150) DEFAULT NULL,
  `documento3` varchar(50) DEFAULT NULL,
  `romaneio` varchar(50) DEFAULT NULL,
  `remessa` varchar(5) DEFAULT NULL,
  `retorno` varchar(5) DEFAULT NULL,
  `ordemcompra` varchar(50) DEFAULT NULL,
  `situacao` varchar(5) DEFAULT NULL,
  `dataremessa` varchar(10) DEFAULT NULL,
  `dataretorno` varchar(10) DEFAULT NULL,
  `seqpagparcial` int(11) DEFAULT NULL,
  `backcampodocumento` varchar(20) DEFAULT NULL,
  `ultimaparcela` varchar(5) DEFAULT NULL,
  `ch` varchar(1) DEFAULT NULL,
  `observacaoboleto` varchar(255) DEFAULT NULL,
  `data_pg_comissao` datetime DEFAULT NULL,
  `enviolembrete` varchar(1) DEFAULT NULL,
  `referencias` varchar(500) DEFAULT NULL,
  `lembraremailcar` varchar(5) DEFAULT NULL,
  `empresa` varchar(25) DEFAULT NULL,
  `forma` varchar(100) DEFAULT NULL,
  `datacancelamento` datetime DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `linkboleto` varchar(500) DEFAULT NULL COMMENT 'Link de boleto Safe2pay',
  `linkcarne` varchar(500) DEFAULT NULL COMMENT 'Link de carnê Safe2pay',
  `valoracrescimo` decimal(18,2) DEFAULT NULL COMMENT 'Campo destinado a guardar valor de  acréscimo de boleto ou juros',
  PRIMARY KEY (`chave1`)
) ENGINE=InnoDB AUTO_INCREMENT=2097 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contasreceberhistorico
CREATE TABLE IF NOT EXISTS `contasreceberhistorico` (
  `documento` varchar(50) DEFAULT NULL,
  `documento2` varchar(50) DEFAULT NULL,
  `cliente` varchar(8) DEFAULT NULL,
  `historico` varchar(255) DEFAULT NULL,
  `valor` decimal(10,4) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `responsavel` varchar(10000) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contatosclientes
CREATE TABLE IF NOT EXISTS `contatosclientes` (
  `CODIGO` int(11) NOT NULL,
  `CLIENTE` varchar(10) DEFAULT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `CARGO` varchar(30) DEFAULT NULL,
  `FONE` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `ANIVERSARIO` datetime DEFAULT NULL,
  `ROUPA` varchar(20) DEFAULT NULL,
  `CALCADO` varchar(20) DEFAULT NULL,
  `LINK` varchar(300) DEFAULT NULL,
  `SEXO` varchar(10) DEFAULT NULL,
  `FONE2` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.contatosfornecedores
CREATE TABLE IF NOT EXISTS `contatosfornecedores` (
  `CODIGO` int(11) NOT NULL,
  `CODIGOFORNECEDOR` varchar(6) NOT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `CARGO` varchar(30) DEFAULT NULL,
  `FONE` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cop
CREATE TABLE IF NOT EXISTS `cop` (
  `ID` int(11) NOT NULL,
  `COP` varchar(20) DEFAULT NULL,
  `CFOPS` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cor
CREATE TABLE IF NOT EXISTS `cor` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cstcsosn
CREATE TABLE IF NOT EXISTS `cstcsosn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(4) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `regime` varchar(1) DEFAULT NULL,
  `produto` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.cte_lista_nfe
CREATE TABLE IF NOT EXISTS `cte_lista_nfe` (
  `id` int(11) NOT NULL,
  `id_cte` int(11) NOT NULL,
  `chave_nfe` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.detalhesbordadofita
CREATE TABLE IF NOT EXISTS `detalhesbordadofita` (
  `ID` int(11) NOT NULL,
  `produto` varchar(15) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `peca` varchar(20) DEFAULT NULL,
  `local` varchar(20) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `registro` varchar(10) DEFAULT NULL,
  `tp` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.empresa
CREATE TABLE IF NOT EXISTS `empresa` (
  `codigo` varchar(5) NOT NULL,
  `fantasia` varchar(60) DEFAULT NULL,
  `razao` varchar(60) DEFAULT NULL,
  `endereco` varchar(55) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `codigocidade` varchar(8) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `codigouf` varchar(2) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `inscricao` varchar(18) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fone` varchar(25) DEFAULT NULL,
  `mensagem` varchar(500) DEFAULT NULL,
  `fax` varchar(25) DEFAULT NULL,
  `contato` varchar(50) DEFAULT NULL,
  `cpfcontato` varchar(11) DEFAULT NULL,
  `emailcontato` varchar(50) DEFAULT NULL,
  `modelonf` varchar(2) DEFAULT NULL,
  `serienf` varchar(3) DEFAULT NULL,
  `nomecontador` varchar(50) DEFAULT NULL,
  `cpfcontador` varchar(11) DEFAULT NULL,
  `crccontador` varchar(10) DEFAULT NULL,
  `fonecontador` varchar(20) DEFAULT NULL,
  `faxcontador` varchar(20) DEFAULT NULL,
  `emailcontador` varchar(50) DEFAULT NULL,
  `numerorecibo` int(11) DEFAULT NULL,
  `pis` decimal(10,4) DEFAULT '0.0000',
  `cofins` decimal(10,4) DEFAULT '0.0000',
  `csll` decimal(10,4) DEFAULT '0.0000',
  `irpj` decimal(10,4) DEFAULT '0.0000',
  `inss` decimal(10,4) DEFAULT '0.0000',
  `PRAZO10000PERC` decimal(10,4) DEFAULT NULL,
  `databackup` datetime DEFAULT NULL,
  `smtp` varchar(50) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `scan` char(1) DEFAULT 'N',
  `bloquarcliente` char(1) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `regime` char(1) DEFAULT '1',
  `nomeexibicao` varchar(50) DEFAULT NULL,
  `inscricaomunicipal` varchar(20) DEFAULT NULL,
  `cnae` varchar(10) DEFAULT NULL,
  `mensagem2` varchar(10000) DEFAULT NULL,
  `modelotabelapreco` varchar(1) DEFAULT NULL,
  `versao` varchar(15) DEFAULT NULL,
  `certificadodigital` varchar(500) DEFAULT NULL,
  `cnpjcontador` varchar(50) DEFAULT NULL,
  `dadosadicionais` varchar(500) DEFAULT NULL,
  `icms` decimal(10,4) DEFAULT NULL,
  `creditoicms` decimal(10,4) DEFAULT NULL,
  `perfilsistema` varchar(500) DEFAULT NULL,
  `validadecertificado` varchar(50) DEFAULT NULL,
  `logo` longblob,
  `dia_envia_xml` date DEFAULT NULL,
  PRIMARY KEY (`codigo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.estoque
CREATE TABLE IF NOT EXISTS `estoque` (
  `chave2` int(11) NOT NULL AUTO_INCREMENT,
  `chave3` varchar(50) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `produto` varchar(40) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `quantidade` decimal(18,4) DEFAULT '0.0000',
  `custo` decimal(18,4) DEFAULT '0.0000',
  `preco` decimal(18,4) DEFAULT '0.0000',
  `fator` decimal(18,4) DEFAULT NULL,
  `comissvendedor` decimal(18,4) DEFAULT NULL,
  `fretevalor` decimal(18,4) DEFAULT NULL,
  `vendedor` varchar(4) DEFAULT NULL,
  `nomevendedor` varchar(50) DEFAULT NULL,
  `comissvendedor2` decimal(18,4) DEFAULT NULL,
  `nomevendedor2` varchar(50) DEFAULT NULL,
  `vendedor2` varchar(4) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `cfop` varchar(8) DEFAULT NULL,
  `cliente` varchar(10) DEFAULT NULL,
  `nome` varchar(150) DEFAULT NULL,
  `historico` varchar(500) DEFAULT NULL,
  `documento` varchar(50) DEFAULT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `modelo` varchar(30) DEFAULT NULL,
  `cor` varchar(25) DEFAULT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `grupo` varchar(4) DEFAULT NULL,
  `hora` decimal(18,4) DEFAULT NULL,
  `cancelado` varchar(5) DEFAULT NULL,
  `icms` decimal(18,4) DEFAULT '0.0000',
  `aliquota` varchar(10) DEFAULT NULL,
  `st` varchar(4) DEFAULT NULL,
  `cf` varchar(8) DEFAULT NULL,
  `responsavel` varchar(50) DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `validade` datetime DEFAULT NULL,
  `ipi` decimal(18,4) DEFAULT NULL,
  `valoricms` decimal(18,4) DEFAULT NULL,
  `valoripi` decimal(18,4) DEFAULT NULL,
  `reducaobase` decimal(18,4) DEFAULT NULL,
  `nomeusuario` varchar(25) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `auditoria` varchar(25) DEFAULT NULL,
  `au` varchar(5) DEFAULT NULL,
  `codigofornecedor` varchar(5) DEFAULT NULL,
  `fantasiafornecedor` varchar(50) DEFAULT NULL,
  `vale` varchar(5) DEFAULT NULL,
  `precon` decimal(18,4) DEFAULT NULL,
  `comissao` decimal(18,4) DEFAULT NULL,
  `predbc` decimal(18,4) DEFAULT NULL,
  `vbc` decimal(18,4) DEFAULT NULL,
  `picms` decimal(18,4) DEFAULT '0.0000',
  `vicms` decimal(18,4) DEFAULT NULL,
  `modbcst` decimal(18,4) DEFAULT NULL,
  `pmvast` decimal(18,4) DEFAULT '0.0000',
  `predbcst` decimal(18,4) DEFAULT NULL,
  `vbcst` decimal(18,4) DEFAULT NULL,
  `picmsst` decimal(18,4) DEFAULT '0.0000',
  `vicmsst` decimal(18,4) DEFAULT NULL,
  `fichatecnica` varchar(10) DEFAULT NULL,
  `cbarra` varchar(50) DEFAULT NULL,
  `fat` varchar(5) DEFAULT NULL,
  `movimentaestoque` varchar(5) DEFAULT NULL,
  `atendido` decimal(18,4) DEFAULT NULL,
  `creditoicms` decimal(18,4) DEFAULT NULL,
  `fabricacao` datetime DEFAULT NULL,
  `qtdvolume` decimal(10,4) DEFAULT NULL,
  `frete` decimal(10,4) DEFAULT NULL,
  `localizacao` varchar(50) DEFAULT NULL,
  `pliquido` decimal(18,4) DEFAULT NULL,
  `pbruto` decimal(18,4) DEFAULT NULL,
  `registro` varchar(3) DEFAULT NULL,
  `documento2` varchar(50) DEFAULT NULL,
  `troca` varchar(50) DEFAULT NULL,
  `romaneio` varchar(50) DEFAULT NULL,
  `precopauta` decimal(18,4) DEFAULT NULL,
  `lembrar` datetime DEFAULT NULL,
  `almoxarifado` varchar(5) DEFAULT NULL,
  `contrato` varchar(1) DEFAULT NULL,
  `ordemcompra` varchar(50) DEFAULT NULL,
  `produtoficha` varchar(20) DEFAULT NULL,
  `emissao` datetime DEFAULT NULL,
  `cop` varchar(100) DEFAULT NULL,
  `ndi` varchar(10) DEFAULT NULL,
  `ddi` varchar(20) DEFAULT NULL,
  `locdesemb` varchar(50) DEFAULT NULL,
  `ufdesemb` varchar(10) DEFAULT NULL,
  `ddesemb` varchar(20) DEFAULT NULL,
  `cexportador` varchar(100) DEFAULT NULL,
  `nadicao` varchar(20) DEFAULT NULL,
  `nseqadic` varchar(20) DEFAULT NULL,
  `cfabricante` varchar(100) DEFAULT NULL,
  `vdescdi` varchar(20) DEFAULT NULL,
  `infadicional` varchar(500) DEFAULT NULL,
  `preco2` decimal(18,4) DEFAULT NULL,
  `altura` decimal(18,4) DEFAULT NULL,
  `largura` decimal(18,4) DEFAULT NULL,
  `chaveent` int(11) DEFAULT NULL,
  `chavesai` int(11) DEFAULT NULL,
  `baseipi` decimal(18,4) DEFAULT NULL,
  `despesas` decimal(18,4) DEFAULT NULL,
  `empresa` varchar(25) DEFAULT NULL,
  `desconto` decimal(18,4) DEFAULT NULL,
  `desconto2` decimal(18,4) DEFAULT NULL,
  `total` decimal(18,4) DEFAULT NULL,
  `modbc` int(11) DEFAULT NULL,
  `total2` decimal(18,4) DEFAULT '0.0000',
  `pp` decimal(18,4) DEFAULT '0.0000',
  `sincronizado` varchar(1) DEFAULT NULL,
  `campo1` varchar(50) DEFAULT NULL,
  `vpis` decimal(18,4) DEFAULT NULL,
  `vcofins` decimal(18,4) DEFAULT NULL,
  `virpj` decimal(18,4) DEFAULT NULL,
  `vcsll` decimal(18,4) DEFAULT NULL,
  `campo2` varchar(50) DEFAULT NULL,
  `campo3` varchar(50) DEFAULT NULL,
  `campo4` varchar(50) DEFAULT NULL,
  `campo5` varchar(100) DEFAULT NULL,
  `nfci` varchar(500) DEFAULT NULL COMMENT 'Guarda numero da Ficha de Conteúdo de Importação - FCI',
  PRIMARY KEY (`chave2`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=714 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.filiais
CREATE TABLE IF NOT EXISTS `filiais` (
  `CODIGO` int(11) NOT NULL,
  `PATH` varchar(50) DEFAULT NULL,
  `BANCO` varchar(50) DEFAULT NULL,
  `NOME` varchar(50) DEFAULT NULL,
  `DOCUMENTOTRANSFERENCIA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `fita` (
  `Id` int(11) NOT NULL,
  `Descricao` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `fornecedores` (
  `codigo` varchar(6) NOT NULL,
  `razao` varchar(250) DEFAULT NULL,
  `fantasia` varchar(250) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `complemento` varchar(30) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cep` varchar(15) DEFAULT NULL,
  `inscricao` varchar(25) DEFAULT NULL,
  `cnpj` varchar(25) DEFAULT NULL,
  `fone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `contato` varchar(25) DEFAULT NULL,
  `PRAZO` varchar(3) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL,
  `cadastro` datetime DEFAULT NULL,
  `grupo` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `dataatualizacao` datetime DEFAULT NULL COMMENT 'Guarda data de ultima alteração no cadastro de fornecedor',
  `indicepedido` int(11) DEFAULT NULL,
  `grade` varchar(5) DEFAULT NULL,
  `comissaorepresentante` decimal(10,4) DEFAULT NULL,
  `comissaovendedor` decimal(10,4) DEFAULT '0.0000',
  `modelograde` varchar(2) DEFAULT NULL,
  `fabricante` varchar(5) DEFAULT NULL,
  `observacao` varchar(100) DEFAULT NULL,
  `tipopedido` varchar(2) DEFAULT NULL,
  `freteminimo` decimal(10,4) DEFAULT NULL,
  `codigorecebimento` varchar(3) DEFAULT NULL,
  `recebimento` varchar(30) DEFAULT NULL,
  `referencias` varchar(4000) DEFAULT NULL,
  `planocontas` varchar(20) DEFAULT NULL,
  `codigocidade` varchar(18) DEFAULT NULL,
  `codigouf` varchar(12) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `cfop` varchar(100) DEFAULT NULL,
  `plano` varchar(20) DEFAULT NULL,
  `auxiliar` varchar(15) DEFAULT NULL,
  `sincronizado` varchar(5) DEFAULT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(15) DEFAULT NULL COMMENT 'Guarda número físico do endereço do fornecedor',
  `celular` varchar(50) DEFAULT NULL COMMENT 'Guarda número do telefone móvel do fornecedor',
  `pontoreferencia` varchar(100) DEFAULT NULL COMMENT 'Guarda ponto de referência do endereço do fornecedor',
  `inscricaomunicipal` varchar(25) DEFAULT NULL COMMENT 'Guarda inscrição municipal do seu fornecedor',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.funcionarios
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `CODIGO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME` varchar(50) DEFAULT NULL,
  `DEPARTAMENTO` varchar(20) DEFAULT NULL,
  `FUNCAO` varchar(50) DEFAULT NULL,
  `SALARIO` double DEFAULT NULL,
  `CTPS` varchar(20) DEFAULT NULL,
  `ADMISSAO` datetime(6) DEFAULT NULL,
  `NASCIMENTO` datetime(6) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `ENDERECO` varchar(50) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `CEP` varchar(12) DEFAULT NULL,
  `FONE` varchar(15) DEFAULT NULL,
  `PIS` varchar(30) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `OBSERVACAO` varchar(255) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `SERIECTPS` varchar(10) DEFAULT NULL,
  `FONE2` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `BANCO` varchar(530) DEFAULT NULL,
  `AGENCIA` varchar(20) DEFAULT NULL,
  `CONTA` varchar(50) DEFAULT NULL,
  `DADOSCOMPLEMENTARES` varchar(500) DEFAULT NULL,
  `COMISSAO` double DEFAULT NULL,
  `INATIVO` varchar(5) DEFAULT NULL,
  `META` double DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.grupo_produtos
CREATE TABLE IF NOT EXISTS `grupo_produtos` (
  `GRUPO` varchar(6) DEFAULT NULL,
  `DESCRICAO` varchar(30) DEFAULT NULL,
  `COD_ATIVIDADE` varchar(20) DEFAULT NULL,
  `ATIVIDADE` varchar(30) DEFAULT NULL,
  `DESATIVAR` varchar(5) DEFAULT NULL,
  `CARGATRIBUTARIA` decimal(10,4) DEFAULT NULL,
  `META` decimal(10,4) DEFAULT NULL,
  `Comissao` decimal(10,4) DEFAULT NULL,
  `SUPERVISOR` varchar(100) DEFAULT NULL,
  `CODIGOSUPERVISOR` varchar(20) DEFAULT NULL,
  `COLUNAS` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `nome_url` varchar(50) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.historicoarquivos
CREATE TABLE IF NOT EXISTS `historicoarquivos` (
  `Id` int(11) NOT NULL,
  `Documento` varchar(50) DEFAULT NULL,
  `Produto` varchar(50) DEFAULT NULL,
  `PathArquivo` varchar(1000) DEFAULT NULL,
  `CorPeca` varchar(50) DEFAULT NULL,
  `LocalPeca` varchar(50) DEFAULT NULL,
  `CorLinha` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.historicocartacorrecao
CREATE TABLE IF NOT EXISTS `historicocartacorrecao` (
  `CHAVE` int(11) NOT NULL,
  `DOCUMENTO` varchar(50) DEFAULT NULL,
  `MOTIVOCARTA` varchar(250) DEFAULT NULL,
  `DATA` varchar(10) DEFAULT NULL,
  `HORA` varchar(50) DEFAULT NULL,
  `RESPONSAVEL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.historicomatriz
CREATE TABLE IF NOT EXISTS `historicomatriz` (
  `ID` int(11) NOT NULL,
  `MATRIZ` varchar(50) DEFAULT NULL,
  `PRODUTO` varchar(10) DEFAULT NULL,
  `CLIENTE` varchar(6) DEFAULT NULL,
  `DOCUMENTO` varchar(10) DEFAULT NULL,
  `ESPESSURA` decimal(10,4) DEFAULT NULL,
  `COMPRIMENTO` decimal(10,4) DEFAULT NULL,
  `LARGURA` decimal(10,4) DEFAULT NULL,
  `MARGEMLATERAL` decimal(10,4) DEFAULT NULL,
  `MARGEMLATERAL2` decimal(10,4) DEFAULT NULL,
  `MARGEMTERMINAL` decimal(10,4) DEFAULT NULL,
  `MARGEMTERMINAL2` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.icms
CREATE TABLE IF NOT EXISTS `icms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UF` varchar(2) NOT NULL,
  `ICMS1` decimal(10,4) DEFAULT NULL,
  `REDUCAO1` decimal(10,4) DEFAULT NULL,
  `ICMS2` decimal(10,4) DEFAULT NULL,
  `REDUCAO2` decimal(10,4) DEFAULT NULL,
  `ST1` varchar(4) DEFAULT NULL,
  `ST2` varchar(4) DEFAULT NULL,
  `ICMS3` decimal(10,4) DEFAULT NULL,
  `ICMS4` decimal(10,4) DEFAULT NULL,
  `ICMS5` decimal(10,4) DEFAULT NULL,
  `ICMS6` decimal(10,4) DEFAULT NULL,
  `ICMS7` decimal(10,4) DEFAULT NULL,
  `ICMS8` decimal(10,4) DEFAULT NULL,
  `ICMS9` decimal(10,4) DEFAULT NULL,
  `ICMS10` decimal(10,4) DEFAULT NULL,
  `REDUCAO3` decimal(10,4) DEFAULT NULL,
  `REDUCAO4` decimal(10,4) DEFAULT NULL,
  `REDUCAO5` decimal(10,4) DEFAULT NULL,
  `REDUCAO6` decimal(10,4) DEFAULT NULL,
  `REDUCAO7` decimal(10,4) DEFAULT NULL,
  `REDUCAO8` decimal(10,4) DEFAULT NULL,
  `REDUCAO9` decimal(10,4) DEFAULT NULL,
  `REDUCAO10` decimal(10,4) DEFAULT NULL,
  `ST3` varchar(5) DEFAULT NULL,
  `ST4` varchar(5) DEFAULT NULL,
  `ST5` varchar(5) DEFAULT NULL,
  `ST6` varchar(5) DEFAULT NULL,
  `ST7` varchar(5) DEFAULT NULL,
  `ST8` varchar(5) DEFAULT NULL,
  `ST9` varchar(5) DEFAULT NULL,
  `ST10` varchar(5) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.inutilizacaonumeracao
CREATE TABLE IF NOT EXISTS `inutilizacaonumeracao` (
  `ID` int(11) NOT NULL,
  `NUMERACAO` varchar(50) DEFAULT NULL,
  `JUSTIFICATIVA` varchar(50) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `EMPRESA` varchar(10000) DEFAULT NULL,
  `SERIE` varchar(3) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.leiautemovimento
CREATE TABLE IF NOT EXISTS `leiautemovimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido` varchar(50) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `registro` varchar(50) NOT NULL,
  `camisafrentepeitodireito` varchar(50) NOT NULL,
  `camisafrentebolsodireito` varchar(50) NOT NULL,
  `camisafrentemangadireta` varchar(50) NOT NULL,
  `calcafrentebolsodireito` varchar(50) NOT NULL,
  `calcafrentepernadireita` varchar(50) NOT NULL,
  `camisafrentepeitoesquerdo` varchar(50) NOT NULL,
  `camisafrentevistabolso` varchar(50) NOT NULL,
  `camisafretebolsoesquerdo` varchar(50) NOT NULL,
  `camisafrentemangaesquerdo` varchar(50) NOT NULL,
  `calcafrentebolsoesquerdo` varchar(50) NOT NULL,
  `camisacosta` varchar(50) NOT NULL,
  `calcacostabolsodireito` varchar(50) NOT NULL,
  `calcacostabolsoesquerdo` varchar(50) NOT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.locais_entrega
CREATE TABLE IF NOT EXISTS `locais_entrega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bairro` varchar(100) NOT NULL,
  `taxa` decimal(18,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.log
CREATE TABLE IF NOT EXISTS `log` (
  `CHAVE` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO` int(11) NOT NULL,
  `ACAO` varchar(50) DEFAULT NULL,
  `SETOR` varchar(255) DEFAULT NULL,
  `DATAHORA` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`CHAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.matriz
CREATE TABLE IF NOT EXISTS `matriz` (
  `ID` int(11) NOT NULL,
  `MATRIZ` varchar(200) DEFAULT NULL,
  `TIPO` varchar(1) DEFAULT NULL,
  `FURO_MALHA` decimal(10,4) DEFAULT NULL,
  `FURO_MALHA_POR` decimal(10,4) DEFAULT NULL,
  `GRAU_FIO` decimal(10,4) DEFAULT NULL,
  `CORDAO` decimal(10,4) DEFAULT NULL,
  `CCL` decimal(10,4) DEFAULT NULL,
  `CC` decimal(10,4) DEFAULT NULL,
  `PASSO` decimal(10,4) DEFAULT NULL,
  `CRIQUE3` varchar(50) DEFAULT NULL,
  `KGM2` decimal(10,4) DEFAULT NULL,
  `ENGRENAGEM124` varchar(50) DEFAULT NULL,
  `CRIQUE124` varchar(50) DEFAULT NULL,
  `ENGRENAGEM_MAQ3` varchar(50) DEFAULT NULL,
  `AREAABERTA` decimal(10,4) DEFAULT NULL,
  `DISPOSICAO` varchar(100) DEFAULT NULL,
  `OBSERVACAO` varchar(10000) DEFAULT NULL,
  `RM` decimal(10,4) DEFAULT NULL,
  `ESPESSURA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfe
CREATE TABLE IF NOT EXISTS `mdfe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(25) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `modo` varchar(20) DEFAULT NULL,
  `ufcarregamento` varchar(2) DEFAULT NULL,
  `ufdescarregamento` varchar(2) DEFAULT NULL,
  `serie` varchar(5) DEFAULT NULL,
  `emissao` datetime DEFAULT NULL,
  `rntc` varchar(8) DEFAULT NULL,
  `ciot` varchar(12) DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `carroceria` varchar(20) DEFAULT NULL,
  `tara` decimal(18,2) DEFAULT NULL,
  `tiporodado` varchar(20) DEFAULT NULL,
  `capacidadekg` decimal(18,2) DEFAULT NULL,
  `capacidadem3` decimal(18,2) DEFAULT NULL,
  `propriedade` varchar(20) DEFAULT NULL,
  `proprietarionome` varchar(60) DEFAULT NULL,
  `proprietariocnpj` varchar(20) DEFAULT NULL,
  `proprietarioinscricao` varchar(20) DEFAULT NULL,
  `proprietariouf` varchar(2) DEFAULT NULL,
  `proprietariotipo` varchar(20) DEFAULT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `pesobruto` decimal(18,2) DEFAULT NULL,
  `valorcarga` decimal(18,2) DEFAULT NULL,
  `observacao` varchar(150) DEFAULT NULL,
  `CANCELADO` datetime DEFAULT NULL,
  `PROTOCOLO` varchar(1000) DEFAULT NULL,
  `CHAVENFE` varchar(100) DEFAULT NULL,
  `ENCERRAMENTO` varchar(200) DEFAULT NULL,
  `RECIBO` varchar(100) DEFAULT NULL,
  `PROPRIETARIORNTC` varchar(50) DEFAULT NULL,
  `justificativaCancelamento` varchar(1500) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `tipocarga` varchar(2) DEFAULT NULL,
  `produto` varchar(6) DEFAULT NULL,
  `cepcarregamento` varchar(10) DEFAULT NULL,
  `cepdescarregamento` varchar(10) DEFAULT NULL,
  `responsavelpagamentonome` varchar(100) DEFAULT NULL,
  `responsavelpagamentocnpj` varchar(25) DEFAULT NULL,
  `tipocomponente` varchar(2) DEFAULT NULL,
  `valorcomponente` decimal(18,2) DEFAULT '0.00',
  `valorcontrato` decimal(18,2) DEFAULT '0.00',
  `formapagamento` varchar(2) DEFAULT NULL,
  `cnpjipef` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfecidadecarregamento
CREATE TABLE IF NOT EXISTS `mdfecidadecarregamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoCidade` varchar(15) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `codigoUf` varchar(2) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `Documento` varchar(25) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfecidadedescarregamento
CREATE TABLE IF NOT EXISTS `mdfecidadedescarregamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoCidade` varchar(15) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `codigoUf` varchar(2) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `Documento` varchar(25) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfelistanfe
CREATE TABLE IF NOT EXISTS `mdfelistanfe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGOCIDADE` varchar(15) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `documento` varchar(25) DEFAULT NULL,
  `chavenfe` varchar(100) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfemotoristas
CREATE TABLE IF NOT EXISTS `mdfemotoristas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(25) DEFAULT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfereboque
CREATE TABLE IF NOT EXISTS `mdfereboque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(25) DEFAULT NULL,
  `placa` varchar(7) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `tara` decimal(18,2) DEFAULT NULL,
  `tiporodado` varchar(20) DEFAULT NULL,
  `capacidadekg` decimal(18,2) DEFAULT NULL,
  `capacidadem3` decimal(18,2) DEFAULT NULL,
  `propriedade` varchar(20) DEFAULT NULL,
  `proprietarionome` varchar(60) DEFAULT NULL,
  `proprietariocnpj` varchar(20) DEFAULT NULL,
  `proprietarioinscricao` varchar(20) DEFAULT NULL,
  `proprietariouf` varchar(2) DEFAULT NULL,
  `proprietariotipo` varchar(20) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mdfeufpercurso
CREATE TABLE IF NOT EXISTS `mdfeufpercurso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(25) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `EMPRESA` varchar(14) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.modelo
CREATE TABLE IF NOT EXISTS `modelo` (
  `CODIGO` int(11) NOT NULL,
  `DESCRICAO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.movimentocaixa
CREATE TABLE IF NOT EXISTS `movimentocaixa` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CHAVE` varchar(30) NOT NULL,
  `DOCUMENTO` varchar(50) DEFAULT NULL,
  `CODIGO` varchar(6) DEFAULT NULL,
  `HISTORICO` varchar(100) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `ORIGEM` varchar(3) DEFAULT NULL,
  `COMPETENCIA` datetime DEFAULT NULL,
  `concilacao` varchar(5) DEFAULT NULL,
  `CODIGOPLANO` varchar(50) DEFAULT NULL,
  `PLANOCONTAS` varchar(150) DEFAULT NULL,
  `CODIGORECEBIMENTO` varchar(4) DEFAULT NULL,
  `recebimento` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe',
  `USUARIO` varchar(30) DEFAULT NULL,
  `CODIGOBANCO` varchar(5) DEFAULT NULL,
  `BANCO` varchar(25) DEFAULT NULL,
  `NUMEROCONTA` varchar(5) DEFAULT NULL,
  `CONTACORRENTE` varchar(30) DEFAULT NULL,
  `TIPO` varchar(50) DEFAULT NULL,
  `VALOR` decimal(10,4) DEFAULT NULL,
  `AUDITORIA` varchar(5) DEFAULT NULL,
  `CANCELADO` varchar(5) DEFAULT NULL,
  `EMPRESA` varchar(10000) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.municipio
CREATE TABLE IF NOT EXISTS `municipio` (
  `id` int(11) NOT NULL,
  `codigo_cidade` int(11) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `codigo_uf` int(11) NOT NULL,
  `uf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.municipiosibge
CREATE TABLE IF NOT EXISTS `municipiosibge` (
  `ibgecidade` varchar(7) NOT NULL,
  `coduf` varchar(2) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.mva
CREATE TABLE IF NOT EXISTS `mva` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UF` varchar(2) NOT NULL,
  `MVA1` decimal(10,4) DEFAULT NULL,
  `ICMS1` decimal(10,4) DEFAULT NULL,
  `REDUCAO1` decimal(10,4) DEFAULT NULL,
  `MVA2` decimal(10,4) DEFAULT NULL,
  `ICMS2` decimal(10,4) DEFAULT NULL,
  `REDUCAO2` decimal(10,4) DEFAULT NULL,
  `MVA3` decimal(10,4) DEFAULT NULL,
  `ICMS3` decimal(10,4) DEFAULT NULL,
  `REDUCAO3` decimal(10,4) DEFAULT NULL,
  `MVA4` decimal(10,4) DEFAULT NULL,
  `ICMS4` decimal(10,4) DEFAULT NULL,
  `REDUCAO4` decimal(10,4) DEFAULT NULL,
  `MVA5` decimal(10,4) DEFAULT NULL,
  `ICMS5` decimal(10,4) DEFAULT NULL,
  `REDUCAO5` decimal(10,4) DEFAULT NULL,
  `MVA6` decimal(10,4) DEFAULT NULL,
  `ICMS6` decimal(10,4) DEFAULT NULL,
  `REDUCAO6` decimal(10,4) DEFAULT NULL,
  `MVA7` decimal(10,4) DEFAULT NULL,
  `ICMS7` decimal(10,4) DEFAULT NULL,
  `REDUCAO7` decimal(10,4) DEFAULT NULL,
  `MVA8` decimal(10,4) DEFAULT NULL,
  `ICMS8` decimal(10,4) DEFAULT NULL,
  `REDUCAO8` decimal(10,4) DEFAULT NULL,
  `MVA9` decimal(10,4) DEFAULT NULL,
  `ICMS9` decimal(10,4) DEFAULT NULL,
  `REDUCAO9` decimal(10,4) DEFAULT NULL,
  `MVA10` decimal(10,4) DEFAULT NULL,
  `ICMS10` decimal(10,4) DEFAULT NULL,
  `REDUCAO10` decimal(10,4) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.ncm
CREATE TABLE IF NOT EXISTS `ncm` (
  `ID` int(11) NOT NULL,
  `NCM` varchar(10) DEFAULT NULL,
  `CFOP` varchar(5) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `ST` varchar(5) DEFAULT NULL,
  `MVA` decimal(10,4) DEFAULT NULL,
  `REDUCAO` decimal(10,4) DEFAULT NULL,
  `ICMSINTERNO` decimal(10,4) DEFAULT NULL,
  `ICMS` decimal(10,4) DEFAULT NULL,
  `TIPO` varchar(50) DEFAULT NULL,
  `PIS` decimal(10,4) DEFAULT NULL,
  `COFINS` decimal(10,4) DEFAULT NULL,
  `CSTPIS` varchar(5) DEFAULT NULL,
  `CSTCOFINS` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.nfce_cabecalho
CREATE TABLE IF NOT EXISTS `nfce_cabecalho` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `id_nfce_movimento` int(11) DEFAULT NULL,
  `vendedor` varchar(4) DEFAULT NULL,
  `cliente` varchar(10) DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `data_emissao` datetime DEFAULT NULL,
  `hora_emissao` datetime DEFAULT NULL,
  `chave_acesso` varchar(50) DEFAULT NULL,
  `base_calculo_icms` decimal(18,4) DEFAULT NULL,
  `valor_icms` decimal(18,4) DEFAULT NULL,
  `base_calculo_icms_st` decimal(18,4) DEFAULT NULL,
  `valor_icms_st` decimal(18,4) DEFAULT NULL,
  `valor_total_produtos` decimal(18,4) DEFAULT NULL,
  `valor_desconto` decimal(18,4) DEFAULT NULL,
  `valor_ipi` decimal(18,4) DEFAULT NULL,
  `valor_pis` decimal(18,4) DEFAULT NULL,
  `valor_cofins` decimal(18,4) DEFAULT NULL,
  `valor_total` decimal(18,4) DEFAULT NULL,
  `status_nota` int(11) DEFAULT NULL,
  `troco` decimal(18,4) DEFAULT NULL,
  `numero_recibo` varchar(20) DEFAULT NULL,
  `numero_protocolo` varchar(25) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cpfcnpj` varchar(14) DEFAULT NULL,
  `id_operador` int(11) DEFAULT NULL,
  `desconto` decimal(18,4) DEFAULT NULL,
  `taxadesconto` decimal(18,4) DEFAULT NULL,
  `observacao` varchar(2000) DEFAULT NULL,
  `VIACARTAO` varchar(5000) DEFAULT NULL,
  `CNFCE` varchar(15) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `observacao2` varchar(500) DEFAULT NULL,
  `identregador` int(11) DEFAULT NULL,
  `hinicial` datetime DEFAULT NULL,
  `hfinal` datetime DEFAULT NULL,
  `delivery` int(11) DEFAULT NULL,
  `statusdelivery` int(11) DEFAULT NULL,
  `tpentrega` int(11) DEFAULT NULL,
  `idsuitetipo` int(11) DEFAULT NULL,
  `numero_suite` int(11) DEFAULT NULL,
  `xml_assinado` longtext,
  `xml_proc` longtext,
  `autorizacao_cartao` varchar(20) DEFAULT NULL,
  `valoracrescimo` decimal(18,2) DEFAULT '0.00',
  `taxaacrescimo` decimal(18,2) DEFAULT '0.00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2052 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

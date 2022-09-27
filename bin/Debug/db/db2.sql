USE `antares`;
-- Copiando estrutura para tabela wwtrin_albericoeletronicos.nfce_detalhe
CREATE TABLE IF NOT EXISTS `nfce_detalhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_produto` varchar(10) DEFAULT NULL,
  `id_nfe_cabecalho` int(11) DEFAULT NULL,
  `numero_item` int(11) DEFAULT NULL,
  `gtin` varchar(25) DEFAULT NULL,
  `nome_produto` varchar(100) DEFAULT NULL,
  `ncm` varchar(8) DEFAULT NULL,
  `cfop` varchar(5) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `quantidade` decimal(18,4) DEFAULT NULL,
  `valor_unitario` decimal(18,4) DEFAULT NULL,
  `valor_desconto` decimal(18,4) DEFAULT NULL,
  `valor_subtotal` decimal(18,4) DEFAULT NULL,
  `valor_total` decimal(18,4) DEFAULT NULL,
  `valor_total_tributos` decimal(18,4) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `documento` varchar(15) DEFAULT NULL,
  `cancelado` varchar(1) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `icms` decimal(18,4) DEFAULT NULL,
  `icms_reducao` decimal(18,4) DEFAULT NULL,
  `valor_icms` decimal(18,4) DEFAULT NULL,
  `base_icms` decimal(18,4) DEFAULT NULL,
  `mva` decimal(18,4) DEFAULT NULL,
  `mva_reducao` decimal(18,4) DEFAULT NULL,
  `mva_icms` decimal(18,4) DEFAULT NULL,
  `valor_icms_st` decimal(18,4) DEFAULT NULL,
  `base_icms_st` decimal(18,4) DEFAULT NULL,
  `fichatecnica` varchar(5) DEFAULT NULL,
  `movimentaestoque` varchar(5) DEFAULT 'true',
  `produtoficha` varchar(6) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `emitido` varchar(1) DEFAULT NULL,
  `codigovendedor` varchar(10) DEFAULT NULL,
  `nomevendedor` varchar(30) DEFAULT NULL,
  `comissao` decimal(18,2) DEFAULT '0.00',
  `valor_acrescimo` decimal(18,2) DEFAULT '0.00',
  `custo` decimal(18,2) DEFAULT '0.00' COMMENT 'Guarda o custo no dia da venda. Implementado em 11/01/2022',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2245 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.nfce_movimento
CREATE TABLE IF NOT EXISTS `nfce_movimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dataabertura` date DEFAULT NULL,
  `horaabertura` datetime DEFAULT NULL,
  `idusuarioabertura` int(11) DEFAULT NULL,
  `fundocaixa` decimal(18,4) DEFAULT NULL,
  `datafechamento` date DEFAULT NULL,
  `horafechamento` datetime DEFAULT NULL,
  `idusuariofechamento` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sincronizado` varchar(1) COLLATE latin1_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.nfce_movimento_operador
CREATE TABLE IF NOT EXISTS `nfce_movimento_operador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_operador` int(11) DEFAULT NULL,
  `id_movimento` int(11) DEFAULT NULL,
  `total` decimal(18,4) DEFAULT NULL,
  `total_cancelado` decimal(18,4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `id_recebimento` int(11) DEFAULT NULL,
  `DESCRICAORECEBIMENTO` varchar(50) DEFAULT NULL,
  `NOMEOPERADOR` varchar(50) DEFAULT NULL,
  `DATAMOVIMENTO` datetime DEFAULT NULL,
  `TOTAL_CALCULADO` decimal(18,4) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.nfce_sangria_suprimento
CREATE TABLE IF NOT EXISTS `nfce_sangria_suprimento` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `valor` decimal(18,4) DEFAULT NULL,
  `id_operador` int(11) DEFAULT NULL,
  `idmovimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.numeracao
CREATE TABLE IF NOT EXISTS `numeracao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigocliente` varchar(6) CHARACTER SET utf8 NOT NULL,
  `codigofornecedor` varchar(6) CHARACTER SET utf8 NOT NULL,
  `codigoproduto` varchar(6) CHARACTER SET utf8 NOT NULL,
  `codigousuario` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codigotippag` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codigobanco` varchar(2) CHARACTER SET utf8 NOT NULL,
  `codigovendedor` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codigofuncionario` varchar(3) CHARACTER SET utf8 NOT NULL,
  `codigogrupoproduto` varchar(6) CHARACTER SET utf8 NOT NULL,
  `codigoequipamento` varchar(6) CHARACTER SET utf8 NOT NULL,
  `codigotransportador` varchar(5) CHARACTER SET utf8 NOT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.numeracaocaixa
CREATE TABLE IF NOT EXISTS `numeracaocaixa` (
  `N_CAIXA` varchar(9) NOT NULL,
  `DATABERTURA` datetime DEFAULT NULL,
  `FECHADO` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.numeracaofiscal
CREATE TABLE IF NOT EXISTS `numeracaofiscal` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `DOCSAIDA` varchar(15) NOT NULL,
  `SELOFISCALSAIDA` varchar(15) NOT NULL,
  `NUMERONOTASAIDA` varchar(15) NOT NULL,
  `DOCENTRADA` varchar(15) NOT NULL,
  `SELOFISCALENTRADA` varchar(15) NOT NULL,
  `NUMERONOTAENTRADA` varchar(15) NOT NULL,
  `NUMERONOTASCAN` varchar(15) DEFAULT NULL,
  `LOTENFSE` varchar(15) DEFAULT NULL,
  `NUMEROLOTERPS` varchar(15) DEFAULT NULL,
  `EMPRESA` varchar(10000) DEFAULT NULL,
  `NUMERONOTANFCE` int(11) NOT NULL,
  `chave` int(11) NOT NULL,
  `NUMERONOTAMDFE` int(11) DEFAULT NULL,
  `numeroromaneio` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.numeracaopedidos
CREATE TABLE IF NOT EXISTS `numeracaopedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedidocompra` int(11) NOT NULL,
  `pedidovenda` int(11) NOT NULL,
  `contrato` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.ordemservico
CREATE TABLE IF NOT EXISTS `ordemservico` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(20) DEFAULT NULL,
  `cliente` varchar(6) DEFAULT NULL,
  `razao` varchar(150) DEFAULT NULL,
  `cnpjcpf` varchar(25) DEFAULT NULL,
  `entrada` datetime DEFAULT NULL,
  `horaentrada` varchar(10) DEFAULT NULL,
  `saida` datetime DEFAULT NULL,
  `horasaida` varchar(50) DEFAULT NULL,
  `tipodesconto` varchar(2) DEFAULT NULL,
  `desconto` decimal(10,4) DEFAULT NULL,
  `totalproduto` decimal(10,4) DEFAULT NULL,
  `totalservico` decimal(10,4) DEFAULT NULL,
  `total` decimal(10,4) DEFAULT NULL,
  `recebimento` varchar(4) DEFAULT NULL,
  `descricaorecebimento` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe',
  `usuario` varchar(5) DEFAULT NULL,
  `nomeusuario` varchar(30) DEFAULT NULL,
  `cancelado` datetime DEFAULT NULL,
  `atendente` varchar(5) DEFAULT NULL,
  `nomeatendente` varchar(50) DEFAULT NULL,
  `comissao1` decimal(10,4) DEFAULT NULL,
  `tecnico` varchar(5) DEFAULT NULL,
  `nometecnico` varchar(50) DEFAULT NULL,
  `comissao2` decimal(10,4) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `serie` varchar(50) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `defeito` varchar(500) DEFAULT NULL,
  `defeitoidentificado` varchar(500) DEFAULT NULL,
  `finalizada` varchar(5) DEFAULT NULL,
  `prisma` varchar(50) DEFAULT NULL,
  `tombo` varchar(50) DEFAULT NULL,
  `hodrometro` varchar(10) DEFAULT NULL,
  `tipocombustivel` varchar(50) DEFAULT NULL,
  `cor` varchar(30) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `potencia` varchar(15) DEFAULT NULL,
  `hodometro` varchar(10) DEFAULT NULL,
  `listaequipamentos` varchar(500) DEFAULT NULL,
  `listafuncionarios` varchar(500) DEFAULT NULL,
  `faturado` varchar(1) DEFAULT NULL,
  `orcamento` varchar(5) DEFAULT NULL,
  `previsao_saida` datetime DEFAULT NULL,
  `acessorio` varchar(500) DEFAULT NULL,
  `ordemap` varchar(10) DEFAULT NULL,
  `validadeproposta` int(11) DEFAULT NULL,
  `garantia` int(11) DEFAULT NULL,
  `numeroparcelas` int(11) DEFAULT NULL,
  `mododesconto` varchar(1) DEFAULT '',
  `fantasia` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.ordemservicomovimento
CREATE TABLE IF NOT EXISTS `ordemservicomovimento` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) DEFAULT NULL,
  `produto` varchar(20) DEFAULT NULL,
  `referencia` varchar(50) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `quantidade` decimal(10,4) DEFAULT NULL,
  `custo` decimal(10,4) DEFAULT NULL,
  `preco` decimal(10,4) DEFAULT NULL,
  `atendente` varchar(5) DEFAULT NULL,
  `nomeatendente` varchar(50) DEFAULT NULL,
  `comissvendedor` decimal(10,4) DEFAULT '0.0000',
  `comissvendedor2` decimal(10,4) DEFAULT '0.0000',
  `comissavendedor2` decimal(10,4) DEFAULT NULL,
  `cancelado` varchar(5) DEFAULT 'false',
  `icms` decimal(10,4) DEFAULT '0.0000',
  `mva` decimal(10,4) DEFAULT '0.0000',
  `reducao` decimal(10,4) DEFAULT '0.0000',
  `icmssub` decimal(10,4) DEFAULT '0.0000',
  `baseicms` decimal(10,4) DEFAULT '0.0000',
  `baseicmssub` decimal(10,4) DEFAULT '0.0000',
  `valoricms` decimal(10,4) DEFAULT '0.0000',
  `valoricmssub` decimal(10,4) DEFAULT '0.0000',
  `baseiss` decimal(10,4) DEFAULT '0.0000',
  `iss` decimal(10,4) DEFAULT '0.0000',
  `valoriss` decimal(10,4) DEFAULT '0.0000',
  `desconto` decimal(10,4) DEFAULT '0.0000',
  `movimentaestoque` varchar(5) DEFAULT 'true',
  `tecnico` varchar(5) DEFAULT NULL,
  `nometecnico` varchar(50) DEFAULT NULL,
  `pendente` varchar(50) DEFAULT NULL,
  `servico` varchar(5) DEFAULT NULL,
  `cliente` varchar(6) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `observacao` varchar(500) DEFAULT NULL,
  `numeropontos` varchar(50) DEFAULT NULL,
  `arquivobordado` varchar(150) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `fabricante` varchar(100) DEFAULT NULL,
  `capacidadeextintora` varchar(10) DEFAULT NULL,
  `tipo` varchar(1) DEFAULT NULL,
  `motivoreparo` varchar(250) DEFAULT NULL,
  `pgcomissao` varchar(1) DEFAULT NULL,
  `chave_original` varchar(10000) DEFAULT NULL,
  `registro_servico` int(11) DEFAULT NULL,
  `tipo_servico` varchar(255) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `TOTAL` double DEFAULT '0',
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.parametros
CREATE TABLE IF NOT EXISTS `parametros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` int(11) NOT NULL,
  `maxdescontossenha` decimal(10,4) DEFAULT '100.0000',
  `maxdescontocsenha` decimal(10,4) DEFAULT NULL,
  `casasdecimais` decimal(10,4) DEFAULT '2.0000' COMMENT 'controle geral de casas decimais',
  `casasdecimal_pedidocompra_compra` int(11) DEFAULT '2' COMMENT 'controle de casas decimais para telas de pedido de compra e compra',
  `casasdecimal_pedidovenda_venda` int(11) DEFAULT '2' COMMENT 'controle de casas decimais para venda e pre-venda',
  `casasdecimal_ordemservico` int(11) DEFAULT '2' COMMENT 'controle de casasdecimais para ordem de servico',
  `estoquenegativo` varchar(1) DEFAULT '1',
  `pendenciafinanceira` varchar(1) DEFAULT '0',
  `modelopedidovenda` varchar(10) DEFAULT NULL,
  `nomepedido` varchar(15) DEFAULT NULL,
  `logomarcacliente` varchar(100) DEFAULT NULL,
  `produtoautomatico` varchar(1) DEFAULT '1' COMMENT '0-Codigo do produto manual; 1- Codigo do produto automatico',
  `manterprevenda` varchar(1) DEFAULT '0',
  `manterpedidocompra` varchar(1) DEFAULT '0',
  `pdvcodigobarras` varchar(1) DEFAULT NULL,
  `alteradescricaoproduto` varchar(1) DEFAULT '0',
  `precocustovenda` varchar(1) DEFAULT NULL,
  `vendedorobservacao` varchar(1) DEFAULT NULL,
  `inativarprodutosprevenda` varchar(1) DEFAULT NULL,
  `obscfopvenda` varchar(1) DEFAULT NULL,
  `clienteobrigatorio` varchar(1) DEFAULT NULL,
  `mensagemordemservico` varchar(200) DEFAULT NULL,
  `pedidoclientelivre` varchar(1) DEFAULT NULL,
  `alterarestoqueminimo` varchar(1) DEFAULT NULL,
  `ativarlembrete` varchar(1) DEFAULT '0',
  `estoqueminimoavisar` varchar(1) DEFAULT '0',
  `nfeentradaigualsaida` varchar(1) DEFAULT '1',
  `cadprodutoprecoobrigatorio` varchar(1) DEFAULT '1',
  `nomevendapendente` varchar(50) DEFAULT NULL,
  `modelocomprovantevenda` varchar(2) DEFAULT NULL,
  `modeloordemservico` varchar(2) DEFAULT NULL,
  `supervisor` varchar(5) DEFAULT NULL,
  `nomesupervisor` varchar(50) DEFAULT NULL,
  `tempobackup` varchar(15) DEFAULT NULL,
  `previsualizarpv` varchar(5) DEFAULT NULL,
  `previsualizarpvms` varchar(5) DEFAULT NULL,
  `previsualizarvd` varchar(5) DEFAULT NULL,
  `previsualizarvdmp` varchar(5) DEFAULT NULL,
  `pendenciafinanceirasenha` varchar(1) DEFAULT '0',
  `modelocusto` varchar(20) DEFAULT NULL,
  `modelomapaseparacaopv` varchar(2) DEFAULT NULL,
  `nomecomprovantevenda` varchar(50) DEFAULT NULL,
  `nomemapaseparacao` varchar(50) DEFAULT NULL,
  `separarimposto` varchar(1) DEFAULT NULL,
  `validacnpj` varchar(1) DEFAULT '1',
  `preco2navenda` varchar(1) DEFAULT '0',
  `matriz` varchar(1) DEFAULT NULL,
  `rankingcomissaovenda` varchar(3) DEFAULT NULL,
  `descontoisspagamento` varchar(1) DEFAULT NULL,
  `prazocabecalhopedido` varchar(1) DEFAULT NULL,
  `loteobrigatorio` varchar(5) DEFAULT NULL,
  `avisoatualizacliente` varchar(1) DEFAULT NULL,
  `visualizarestoqueav` varchar(1) DEFAULT NULL,
  `modelocotacao` varchar(1) DEFAULT NULL,
  `arquivoconsultapreco` varchar(200) DEFAULT NULL,
  `alterartabelapreco` varchar(1) DEFAULT NULL,
  `nomeempresaemrelatorios` varchar(1) DEFAULT NULL,
  `tabelacomissao` varchar(5) DEFAULT NULL,
  `mensagemfixacomprovantecompra` varchar(500) DEFAULT NULL,
  `mensagemfixacomprovantevenda` varchar(500) DEFAULT NULL,
  `telamodeloos` varchar(2) DEFAULT NULL,
  `volumepedidovenda` varchar(5) DEFAULT NULL,
  `cabecalhoimpressaoopcional` varchar(5) DEFAULT NULL,
  `freteporproduto` varchar(5) DEFAULT NULL,
  `agruparproduto` varchar(5) DEFAULT NULL,
  `movimentarestoquenopedido` varchar(5) DEFAULT NULL,
  `patharquivos` varchar(2000) DEFAULT 'c:\\trinity',
  `caixaspaf` varchar(100) DEFAULT NULL,
  `modelorecibo` varchar(2) DEFAULT NULL,
  `letranumero` varchar(1) DEFAULT NULL,
  `utilizargrade` varchar(5) DEFAULT NULL,
  `utilizarlimitecliente` varchar(5) DEFAULT '0',
  `faturargerartitulo` varchar(1) DEFAULT NULL,
  `sequencialetiqueta` varchar(10) DEFAULT NULL,
  `naoavisaritemduplicado` varchar(5) DEFAULT '0',
  `lembraremailcar` varchar(5) DEFAULT NULL,
  `separafrete` varchar(5) DEFAULT NULL,
  `utilizarpaf` varchar(1) DEFAULT NULL,
  `planocontasobrigatorio` varchar(1) DEFAULT NULL,
  `backup1` varchar(500) DEFAULT NULL,
  `backup2` varchar(500) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `tokenversao` varchar(500) DEFAULT NULL,
  `fixavendedorconsultapedidovenda` varchar(1) DEFAULT NULL,
  `fixavendedorconsultavenda` varchar(1) DEFAULT NULL,
  `faturamentopessoafisicajuridica` decimal(10,2) DEFAULT NULL,
  `modeloimpressora` varchar(15) DEFAULT NULL,
  `apiboleto` varchar(1) DEFAULT NULL COMMENT 'Habilita e desabilita uso do Safe2pay como cobrança no Antares',
  `apitoken` varchar(100) DEFAULT NULL COMMENT 'Token de identificação Safe2pay',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.peca
CREATE TABLE IF NOT EXISTS `peca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(25) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.pedidocompra
CREATE TABLE IF NOT EXISTS `pedidocompra` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `DOCUMENTO` varchar(20) NOT NULL,
  `FORNECEDOR` varchar(5) DEFAULT NULL,
  `RAZAO` varchar(150) DEFAULT NULL,
  `FANTASIA` varchar(150) DEFAULT NULL,
  `CNPJCPF` varchar(25) DEFAULT NULL,
  `EMISSAO` datetime DEFAULT NULL,
  `ENTREGA` varchar(10) DEFAULT NULL,
  `ICMS` decimal(10,4) DEFAULT NULL,
  `ICMSSUBST` decimal(10,4) DEFAULT NULL,
  `IPI` decimal(10,4) DEFAULT NULL,
  `DEVOLUCAO` varchar(5) DEFAULT NULL,
  `DESCONTO` decimal(10,4) DEFAULT NULL,
  `FRETE` varchar(3) DEFAULT NULL,
  `FRETEVALOR` decimal(10,4) DEFAULT NULL,
  `ACRESCIMO` decimal(10,4) DEFAULT NULL,
  `TOTAL` decimal(10,4) DEFAULT NULL,
  `TOTALPRODUTOS` decimal(10,4) DEFAULT NULL,
  `OBSERVACAO` varchar(2000) DEFAULT NULL,
  `RECEBIMENTO` varchar(3) DEFAULT NULL,
  `descricaorecebimento` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe\n',
  `USUARIO` varchar(4) DEFAULT NULL,
  `NOMEUSUARIO` varchar(20) DEFAULT NULL,
  `PLANOCONTAS` varchar(20) DEFAULT NULL,
  `DESCRICAOPLANO` varchar(30) DEFAULT NULL,
  `CFOP` varchar(50) DEFAULT NULL,
  `DESCRICAOCFOP` varchar(50) DEFAULT NULL,
  `QTDPARCELAS` int(11) DEFAULT NULL,
  `CANCELADO` varchar(10) DEFAULT NULL,
  `AUDITORIA` varchar(25) DEFAULT NULL,
  `AU` varchar(5) DEFAULT NULL,
  `CODIGOTRANSPORTADORA` varchar(5) DEFAULT NULL,
  `TRANSPORTADORA` varchar(100) DEFAULT NULL,
  `PRAZOENTREGA` varchar(20) DEFAULT NULL,
  `FATURAMENTO` datetime DEFAULT NULL,
  `LIBERADO` varchar(5) DEFAULT NULL,
  `ORDEMCOMPRA` varchar(20) DEFAULT NULL,
  `COTACAO` varchar(5) DEFAULT NULL,
  `CodigoCentro` varchar(50) DEFAULT NULL,
  `CentroCusto` varchar(50) DEFAULT NULL,
  `CODIGOCUSTO` varchar(10) DEFAULT NULL,
  `BCICMS` decimal(10,4) DEFAULT NULL,
  `BCIPI` decimal(10,4) DEFAULT NULL,
  `VALORICMS` decimal(10,4) DEFAULT NULL,
  `VALORIPI` decimal(10,4) DEFAULT NULL,
  `NUMEROPARCELAS` int(11) DEFAULT NULL,
  `FATURADO` varchar(1) DEFAULT NULL,
  `VALORSUBTRIB` decimal(10,4) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.pedidocompramovimento
CREATE TABLE IF NOT EXISTS `pedidocompramovimento` (
  `chave` int(11) NOT NULL,
  `DATA` datetime DEFAULT NULL,
  `PRODUTO` varchar(15) DEFAULT NULL,
  `DESCRICAO` varchar(10000) DEFAULT NULL,
  `REFERENCIA` varchar(50) DEFAULT NULL,
  `QUANTIDADE` decimal(10,4) DEFAULT NULL,
  `CUSTO` decimal(10,4) DEFAULT NULL,
  `PRECO` decimal(10,4) DEFAULT NULL,
  `UPRECO` decimal(10,4) DEFAULT NULL,
  `COMISSVENDEDOR` decimal(10,4) DEFAULT NULL,
  `VENDEDOR` varchar(3) DEFAULT NULL,
  `NOMEVENDEDOR` varchar(30) DEFAULT NULL,
  `COMISSVENDEDOR2` decimal(10,4) DEFAULT NULL,
  `NOMEVENDEDOR2` varchar(25) DEFAULT NULL,
  `VENDEDOR2` varchar(2) DEFAULT NULL,
  `TIPO` varchar(20) DEFAULT NULL,
  `CFOP` varchar(8) DEFAULT NULL,
  `CLIENTE` varchar(5) DEFAULT NULL,
  `NOME` varchar(150) DEFAULT NULL,
  `HISTORICO` varchar(150) DEFAULT NULL,
  `DOCUMENTO` varchar(20) DEFAULT NULL,
  `UNIDADE` varchar(10) DEFAULT NULL,
  `GRUPO` varchar(10) DEFAULT NULL,
  `HORA` decimal(10,4) DEFAULT NULL,
  `CANCELADO` varchar(5) DEFAULT NULL,
  `ICMS` decimal(10,4) DEFAULT NULL,
  `DESCONTO` decimal(10,4) DEFAULT NULL,
  `RESPONSAVEL` varchar(20) DEFAULT NULL,
  `LOTE` varchar(20) DEFAULT NULL,
  `IPI` decimal(10,4) DEFAULT NULL,
  `VALORICMS` decimal(10,4) DEFAULT NULL,
  `VALORIPI` decimal(10,4) DEFAULT NULL,
  `REDUCAOBASE` decimal(10,4) DEFAULT NULL,
  `NOMEUSUARIO` varchar(25) DEFAULT NULL,
  `OBSERVACAO` varchar(30) DEFAULT NULL,
  `AUDITORIA` varchar(25) DEFAULT NULL,
  `AU` varchar(5) DEFAULT NULL,
  `P` int(11) DEFAULT NULL,
  `M` int(11) DEFAULT NULL,
  `G` int(11) DEFAULT NULL,
  `GG` int(11) DEFAULT NULL,
  `EG` int(11) DEFAULT NULL,
  `G28` int(11) DEFAULT NULL,
  `G29` int(11) DEFAULT NULL,
  `G30` int(11) DEFAULT NULL,
  `G31` int(11) DEFAULT NULL,
  `G32` int(11) DEFAULT NULL,
  `G33` int(11) DEFAULT NULL,
  `G34` int(11) DEFAULT NULL,
  `G35` int(11) DEFAULT NULL,
  `G36` int(11) DEFAULT NULL,
  `G37` int(11) DEFAULT NULL,
  `G38` int(11) DEFAULT NULL,
  `G39` int(11) DEFAULT NULL,
  `G40` int(11) DEFAULT NULL,
  `G41` int(11) DEFAULT NULL,
  `G42` int(11) DEFAULT NULL,
  `G43` int(11) DEFAULT NULL,
  `G44` int(11) DEFAULT NULL,
  `G45` int(11) DEFAULT NULL,
  `G46` int(11) DEFAULT NULL,
  `ATENDIDO` decimal(10,4) DEFAULT NULL,
  `QTDVOLUME` decimal(10,4) DEFAULT NULL,
  `MOVIMENTAESTOQUE` varchar(5) DEFAULT NULL,
  `REGISTRO` int(11) DEFAULT NULL,
  `ST` varchar(4) DEFAULT NULL,
  `FORNECEDOR` varchar(6) DEFAULT NULL,
  `CF` varchar(8) DEFAULT NULL,
  `total` decimal(18,4) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.pedidovenda
CREATE TABLE IF NOT EXISTS `pedidovenda` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `DOCUMENTO` varchar(50) NOT NULL,
  `cliente` varchar(10) DEFAULT NULL,
  `CODIGOAUXILIAR` varchar(50) DEFAULT NULL,
  `RAZAO` varchar(80) DEFAULT NULL,
  `FANTASIA` varchar(80) DEFAULT NULL,
  `CNPJCPF` varchar(25) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `FATURAMENTO` datetime DEFAULT NULL,
  `EMISSAO` datetime DEFAULT NULL,
  `ICMS` decimal(10,4) DEFAULT NULL,
  `ICMSSUBST` decimal(10,4) DEFAULT NULL,
  `IPI` decimal(10,4) DEFAULT NULL,
  `DEVOLUCAO` varchar(5) DEFAULT NULL,
  `TIPODESCONTO` varchar(2) DEFAULT NULL,
  `DESCONTO` decimal(10,4) DEFAULT NULL,
  `FRETE` varchar(10) DEFAULT NULL,
  `FRETEVALOR` decimal(10,4) DEFAULT NULL,
  `ACRESCIMO` decimal(10,4) DEFAULT NULL,
  `TOTALPRODUTO` decimal(10,4) DEFAULT NULL,
  `TOTAL` decimal(10,4) DEFAULT NULL,
  `OBSERVACAO` varchar(10000) DEFAULT NULL,
  `RECEBIMENTO` varchar(3) DEFAULT NULL,
  `DESCRICAORECEBIMENTO` varchar(25) DEFAULT NULL,
  `USUARIO` varchar(4) DEFAULT NULL,
  `NOMEUSUARIO` varchar(20) DEFAULT NULL,
  `PLANOCONTAS` varchar(20) DEFAULT NULL,
  `DESCRICAOPLANO` varchar(30) DEFAULT NULL,
  `CFOP` varchar(50) DEFAULT NULL,
  `DESCRICAOCFOP` varchar(255) DEFAULT NULL,
  `QTDPARCELAS` int(11) DEFAULT NULL,
  `CANCELADO` datetime DEFAULT NULL,
  `AUDITORIA` varchar(25) DEFAULT NULL,
  `AU` varchar(5) DEFAULT NULL,
  `VENDEDOR1` varchar(5) DEFAULT NULL,
  `NOMEVENDEDOR1` varchar(50) DEFAULT NULL,
  `COMISSAO1` decimal(10,4) DEFAULT NULL,
  `VENDEDOR2` varchar(5) DEFAULT NULL,
  `NOMEVENDEDOR2` varchar(50) DEFAULT NULL,
  `COMISSAO2` decimal(10,4) DEFAULT NULL,
  `COMISSAOREPRESENTANTE` decimal(10,4) DEFAULT NULL,
  `VALORCOMISSAOREPRESENTANTE` decimal(10,4) DEFAULT NULL,
  `CODIGOFORNECEDOR` varchar(5) DEFAULT NULL,
  `FANTASIAFORNECEDOR` varchar(50) DEFAULT NULL,
  `TRANSPORTADORA` varchar(100) DEFAULT NULL,
  `VALE` varchar(5) DEFAULT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `FORNECEDOR` varchar(50) DEFAULT NULL,
  `DESPESA` decimal(10,4) DEFAULT NULL,
  `COTACAO` varchar(5) DEFAULT NULL,
  `FATURAMENTOMINIMO` varchar(50) DEFAULT NULL,
  `GARANTIA` varchar(5) DEFAULT NULL,
  `VALIDADE` varchar(5) DEFAULT NULL,
  `IMPOSTOS` varchar(20) DEFAULT NULL,
  `REVISAO` int(11) DEFAULT NULL,
  `CONTATO` varchar(100) DEFAULT NULL,
  `ENDERECO` varchar(150) DEFAULT NULL,
  `FONE` varchar(30) DEFAULT NULL,
  `ORDEMCOMPRA` varchar(20) DEFAULT NULL,
  `CATEGORIA` varchar(100) DEFAULT NULL,
  `CONTRATO` varchar(100) DEFAULT NULL,
  `SITUACAO` varchar(1) DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL,
  `CODIGOENDERECO` int(11) DEFAULT NULL,
  `CODIGOCUSTO` varchar(10) DEFAULT NULL,
  `CENTROCUSTO` varchar(50) DEFAULT NULL,
  `NUMEROPARCELAS` int(11) DEFAULT NULL,
  `PLACA` varchar(10) DEFAULT NULL,
  `UFPLACA` varchar(2) DEFAULT NULL,
  `mododesconto` varchar(1) DEFAULT '',
  `codigotransportadora` varchar(5) DEFAULT NULL,
  `bcicms` decimal(18,4) DEFAULT '0.0000',
  `bcipi` decimal(18,4) DEFAULT '0.0000',
  `vicms` decimal(18,4) DEFAULT '0.0000',
  `vipi` decimal(18,4) DEFAULT '0.0000',
  `pliquido` decimal(18,4) DEFAULT '0.0000',
  `pbruto` decimal(18,4) DEFAULT '0.0000',
  `sincronizado` varchar(1) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.pedidovendadetalhebordado
CREATE TABLE IF NOT EXISTS `pedidovendadetalhebordado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(15) DEFAULT NULL,
  `peca` varchar(15) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  `produto` varchar(8) DEFAULT NULL,
  `documento` varchar(12) DEFAULT NULL,
  `registro` varchar(5) DEFAULT NULL,
  `tp` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.pedidovendamovimento
CREATE TABLE IF NOT EXISTS `pedidovendamovimento` (
  `CHAVE` int(11) NOT NULL AUTO_INCREMENT,
  `DATA` datetime DEFAULT NULL,
  `ENTREGA` datetime DEFAULT NULL,
  `PRODUTO` varchar(20) DEFAULT NULL,
  `DESCRICAO` varchar(500) DEFAULT NULL,
  `REFERENCIA` varchar(100) DEFAULT NULL,
  `QUANTIDADE` decimal(10,4) DEFAULT NULL,
  `ATENDIDO` decimal(10,4) DEFAULT NULL,
  `CUSTO` decimal(10,4) DEFAULT NULL,
  `PRECO` decimal(10,4) DEFAULT NULL,
  `FATOR` decimal(10,4) DEFAULT NULL,
  `COMISSVENDEDOR` decimal(10,4) DEFAULT NULL,
  `VENDEDOR` varchar(5) DEFAULT NULL,
  `NOMEVENDEDOR` varchar(50) DEFAULT NULL,
  `COMISSVENDEDOR2` decimal(10,4) DEFAULT NULL,
  `NOMEVENDEDOR2` varchar(50) DEFAULT NULL,
  `VENDEDOR2` varchar(5) DEFAULT NULL,
  `TIPO` varchar(20) DEFAULT NULL,
  `CFOP` varchar(8) DEFAULT NULL,
  `cliente` varchar(10) DEFAULT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `HISTORICO` varchar(100) DEFAULT NULL,
  `DOCUMENTO` varchar(20) DEFAULT NULL,
  `UNIDADE` varchar(10) DEFAULT NULL,
  `MODELO` varchar(25) DEFAULT NULL,
  `COR` varchar(25) DEFAULT NULL,
  `GRUPO` varchar(50) DEFAULT NULL,
  `EMISSAO` datetime DEFAULT NULL,
  `HORA` decimal(10,4) DEFAULT NULL,
  `CANCELADO` varchar(5) DEFAULT NULL,
  `ICMS` decimal(10,4) DEFAULT NULL,
  `ALIQUOTA` varchar(50) DEFAULT NULL,
  `DESCONTO` decimal(10,4) DEFAULT NULL,
  `RESPONSAVEL` varchar(50) DEFAULT NULL,
  `LOTE` varchar(20) DEFAULT NULL,
  `IPI` decimal(10,4) DEFAULT NULL,
  `VALORICMS` decimal(10,4) DEFAULT NULL,
  `VALORIPI` decimal(10,4) DEFAULT NULL,
  `REDUCAOBASE` decimal(10,4) DEFAULT NULL,
  `NOMEUSUARIO` varchar(50) DEFAULT NULL,
  `OBSERVACAO` varchar(500) DEFAULT NULL,
  `AUDITORIA` varchar(50) DEFAULT NULL,
  `AU` varchar(5) DEFAULT NULL,
  `FANTASIAFORNECEDOR` varchar(100) DEFAULT NULL,
  `VALE` varchar(5) DEFAULT NULL,
  `CODIGOFORNECEDOR` varchar(5) DEFAULT NULL,
  `PRECON` decimal(10,4) DEFAULT NULL,
  `COMISSAO` decimal(10,4) DEFAULT NULL,
  `CF` varchar(10) DEFAULT NULL,
  `ST` varchar(5) DEFAULT NULL,
  `COTACAO` varchar(5) DEFAULT NULL,
  `FICHATECNICA` varchar(10) DEFAULT NULL,
  `PRODUTOFICHA` varchar(20) DEFAULT NULL,
  `CBARRA` varchar(50) DEFAULT NULL,
  `MOVIMENTAESTOQUE` varchar(10) DEFAULT NULL,
  `VALIDADE` datetime DEFAULT NULL,
  `CREDITOICMS` decimal(10,4) DEFAULT NULL,
  `FABRICACAO` datetime DEFAULT NULL,
  `QTDVOLUME` decimal(10,4) DEFAULT NULL,
  `PLIQUIDO` decimal(10,4) DEFAULT NULL,
  `PBRUTO` decimal(10,4) DEFAULT NULL,
  `BOTIJOESREJEITADOSDESENBARQUE` int(11) DEFAULT NULL,
  `REGISTRO` varchar(3) DEFAULT NULL,
  `CATEGORIA` varchar(100) DEFAULT NULL,
  `ORDEMCOMPRA` varchar(50) DEFAULT NULL,
  `PRECOPAUTA` decimal(10,4) DEFAULT NULL,
  `Matriz` varchar(5) DEFAULT NULL,
  `FreteProduto` decimal(10,4) DEFAULT NULL,
  `ITEMAGRUPADOR` varchar(10) DEFAULT NULL,
  `ARQUIVO` varchar(50) DEFAULT NULL,
  `MODELOROUPA` varchar(50) DEFAULT NULL,
  `LOGO` varchar(500) DEFAULT NULL,
  `FITA` varchar(50) DEFAULT NULL,
  `TECIDO` varchar(50) DEFAULT NULL,
  `CAMPO1` varchar(50) DEFAULT NULL,
  `CAMPO2` varchar(50) DEFAULT NULL,
  `CAMPO3` varchar(50) DEFAULT NULL,
  `CAMPO4` varchar(50) DEFAULT NULL,
  `CAMPO5` varchar(100) DEFAULT NULL,
  `u` int(11) DEFAULT NULL,
  `p` int(11) DEFAULT NULL,
  `m` int(11) DEFAULT NULL,
  `g` int(11) DEFAULT NULL,
  `gg` int(11) DEFAULT NULL,
  `eg` int(11) DEFAULT NULL,
  `g28` int(11) DEFAULT NULL,
  `g29` int(11) DEFAULT NULL,
  `g30` int(11) DEFAULT NULL,
  `g31` int(11) DEFAULT NULL,
  `g32` int(11) DEFAULT NULL,
  `g33` int(11) DEFAULT NULL,
  `g34` int(11) DEFAULT NULL,
  `g35` int(11) DEFAULT NULL,
  `g36` int(11) DEFAULT NULL,
  `g37` int(11) DEFAULT NULL,
  `g38` int(11) DEFAULT NULL,
  `g39` int(11) DEFAULT NULL,
  `g40` int(11) DEFAULT NULL,
  `g41` int(11) DEFAULT NULL,
  `g42` int(11) DEFAULT NULL,
  `g43` int(11) DEFAULT NULL,
  `g44` int(11) DEFAULT NULL,
  `g45` int(11) DEFAULT NULL,
  `g46` int(11) DEFAULT NULL,
  `g3G` int(11) DEFAULT NULL,
  `g1` decimal(10,4) DEFAULT NULL,
  `g2` decimal(10,4) DEFAULT NULL,
  `g3` decimal(10,4) DEFAULT NULL,
  `g4` decimal(10,4) DEFAULT NULL,
  `g5` decimal(10,4) DEFAULT NULL,
  `g6` decimal(10,4) DEFAULT NULL,
  `g7` decimal(10,4) DEFAULT NULL,
  `g8` decimal(10,4) DEFAULT NULL,
  `g10` decimal(10,4) DEFAULT NULL,
  `g12` decimal(10,4) DEFAULT NULL,
  `g14` decimal(10,4) DEFAULT NULL,
  `gg1` decimal(10,4) DEFAULT NULL,
  `gg2` decimal(10,4) DEFAULT NULL,
  `gg3` decimal(10,4) DEFAULT NULL,
  `pp` decimal(10,4) DEFAULT NULL,
  `LOGOMARCA` varchar(100) DEFAULT NULL,
  `ARTIGO` varchar(100) DEFAULT NULL,
  `PRECOORIGINAL` decimal(10,4) DEFAULT NULL,
  `OBSERVACAO2` varchar(500) DEFAULT NULL,
  `bcicms` decimal(18,4) DEFAULT NULL,
  `bcipi` decimal(18,4) DEFAULT NULL,
  `total` decimal(18,4) DEFAULT NULL,
  `BICMS` decimal(18,4) DEFAULT NULL,
  `empresa` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CHAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.placas
CREATE TABLE IF NOT EXISTS `placas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transportadora` varchar(5) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.planocontas
CREATE TABLE IF NOT EXISTS `planocontas` (
  `codigoresumido` int(11) NOT NULL,
  `codigocontabil` varchar(50) NOT NULL,
  `DESCRICAO` varchar(50) DEFAULT NULL,
  `codigocentrocusto` varchar(5) DEFAULT NULL,
  `CENTROCUSTO` varchar(50) DEFAULT NULL,
  `movimento` varchar(5) DEFAULT NULL,
  `despesa` varchar(5) DEFAULT NULL,
  `Status` varchar(5) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.precoespecialcliente
CREATE TABLE IF NOT EXISTS `precoespecialcliente` (
  `id` int(11) NOT NULL,
  `CLIENTE` varchar(50) DEFAULT NULL,
  `PRODUTO` varchar(40) DEFAULT NULL,
  `VALOR` decimal(18,2) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `DESCRICAO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.producao
CREATE TABLE IF NOT EXISTS `producao` (
  `chave` int(11) NOT NULL,
  `DOCUMENTO` varchar(50) DEFAULT NULL,
  `DATAINICIO` datetime DEFAULT NULL,
  `HORAINICIO` varchar(10) DEFAULT NULL,
  `DATAFIM` datetime DEFAULT NULL,
  `HORAFIM` varchar(50) DEFAULT NULL,
  `STATUS` varchar(20) DEFAULT NULL,
  `RESPONSAVEL` varchar(50) DEFAULT NULL,
  `CANCELADO` datetime DEFAULT NULL,
  `OBSERVACAO` varchar(200) DEFAULT NULL,
  `TOTALPERDA` decimal(10,4) DEFAULT NULL,
  `IDTURMA` int(11) DEFAULT NULL,
  `ESPESSURA` varchar(50) DEFAULT NULL,
  `CRISTALIZACAO` varchar(10) DEFAULT NULL,
  `TEMPO1` int(11) DEFAULT NULL,
  `TEMPO2` int(11) DEFAULT NULL,
  `LIBERADO` varchar(5) DEFAULT NULL,
  `HORAINTERVALO` varchar(50) DEFAULT NULL,
  `TOTALCUSTO` decimal(18,4) DEFAULT '0.0000',
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.producaocontrolequalidade
CREATE TABLE IF NOT EXISTS `producaocontrolequalidade` (
  `ID` int(11) NOT NULL,
  `TIPO` varchar(10) DEFAULT NULL,
  `DOCUMENTO` varchar(50) DEFAULT NULL,
  `CONDICOESLABORATORIO` varchar(10) DEFAULT NULL,
  `CONDICOESTEMPERATURA` varchar(10) DEFAULT NULL,
  `CONDICOESUMIDADE` varchar(10) DEFAULT NULL,
  `TURNO` varchar(10) DEFAULT NULL,
  `FABRICACAO` datetime DEFAULT NULL,
  `QTDANALISADA` decimal(10,4) DEFAULT NULL,
  `ANALISE` datetime DEFAULT NULL,
  `LOTE` varchar(50) DEFAULT NULL,
  `TEMPERATURAMEDIAINICIAL` varchar(10) DEFAULT NULL,
  `TEMPERATURAMEDIAFINAL` varchar(10) DEFAULT NULL,
  `TRABABILIDADE` varchar(20) DEFAULT NULL,
  `TIPOPRODUTO` varchar(100) DEFAULT NULL,
  `EMBALAGEM` varchar(20) DEFAULT NULL,
  `CONTEUDOLIQUIDO` decimal(10,4) DEFAULT NULL,
  `MODULOFINURA` varchar(10) DEFAULT NULL,
  `MASSAUNITARIA` varchar(10) DEFAULT NULL,
  `AGUALIVRE` varchar(10) DEFAULT NULL,
  `AGUACRISTALIZACAO` varchar(10) DEFAULT NULL,
  `ANEDRIDOSUFURICO` varchar(10) DEFAULT NULL,
  `OXIDOCALCIO` varchar(10) DEFAULT NULL,
  `CONSISTENCIA` varchar(10) DEFAULT NULL,
  `TEMPODEPEGAINICIO` varchar(10) DEFAULT NULL,
  `TEMPODEPEGAFIM` varchar(10) DEFAULT NULL,
  `DUREZA` varchar(10) DEFAULT NULL,
  `RESISTENCIACOMPOSICAO` varchar(10) DEFAULT NULL,
  `METODOLOGIA` varchar(10) DEFAULT NULL,
  `ESPECIFICACAO` varchar(10) DEFAULT NULL,
  `UNIDADE` varchar(10) DEFAULT NULL,
  `MEDICOES` varchar(10) DEFAULT NULL,
  `RESULTADO` varchar(10) DEFAULT NULL,
  `GRANULOMETRIA` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.producaocustosadicionais
CREATE TABLE IF NOT EXISTS `producaocustosadicionais` (
  `ID` int(11) NOT NULL,
  `Descricao` varchar(100) DEFAULT NULL,
  `Producao` varchar(15) DEFAULT NULL,
  `Valor` decimal(10,4) DEFAULT NULL,
  `usuario` varchar(5) DEFAULT NULL,
  `Data` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.producaodetalhe
CREATE TABLE IF NOT EXISTS `producaodetalhe` (
  `CHAVE` int(11) NOT NULL,
  `DOCUMENTO` varchar(50) DEFAULT NULL,
  `PRODUTO` varchar(20) DEFAULT NULL,
  `DESCRICAO` varchar(500) DEFAULT NULL,
  `PRODUTOFICHA` varchar(15) DEFAULT NULL,
  `QUANTIDADE` decimal(10,4) DEFAULT NULL,
  `PERDA` decimal(10,4) DEFAULT NULL,
  `FICHA` varchar(5) DEFAULT NULL,
  `CUSTO` decimal(10,4) DEFAULT NULL,
  `QUANTIDADETOTAL` decimal(10,4) DEFAULT NULL,
  `CUSTOTOTAL` decimal(10,4) DEFAULT NULL,
  `CABIDEPRODUCAO` varchar(5) DEFAULT NULL,
  `QUANTIDADEPRODUZIDA` decimal(10,4) DEFAULT NULL,
  `ATENDIDO` decimal(10,4) DEFAULT NULL,
  `VOLUME` decimal(10,4) DEFAULT NULL,
  `LIBERADO` varchar(5) DEFAULT NULL,
  `PLIQUIDO` decimal(10,4) DEFAULT NULL,
  `PBRUTO` decimal(10,4) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.producaooperadores
CREATE TABLE IF NOT EXISTS `producaooperadores` (
  `ID` int(11) NOT NULL,
  `TIPO` char(2) DEFAULT NULL,
  `TEMPOINICIAL` varchar(10) DEFAULT NULL,
  `TEMPOINTERVALO` varchar(10) DEFAULT NULL,
  `HORAFIM` varchar(10) DEFAULT NULL,
  `TOTALHORAS` varchar(10) DEFAULT NULL,
  `OPERADOR` varchar(50) DEFAULT NULL,
  `DOCUMENTO` varchar(50) DEFAULT NULL,
  `PRODUCAOHORA` decimal(18,2) DEFAULT NULL,
  `META` varchar(20) DEFAULT NULL,
  `TEMPERATURAFORNO` varchar(10) DEFAULT NULL,
  `OBSERVACAO` varchar(500) DEFAULT NULL,
  `PRODUCAO` decimal(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.produtodetalhe
CREATE TABLE IF NOT EXISTS `produtodetalhe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CHAVE` int(11) DEFAULT NULL,
  `produto` varchar(20) DEFAULT NULL,
  `descricao` varchar(500) DEFAULT NULL,
  `qtd` decimal(10,4) DEFAULT NULL,
  `unidade` varchar(5) DEFAULT NULL,
  `produtoorigem` varchar(50) DEFAULT NULL,
  `FANTASIA` varchar(50) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(11) DEFAULT NULL,
  `LEMBRAR` varchar(10) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `cnpj` varchar(18) DEFAULT NULL,
  `ie` varchar(18) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.produtoimagens
CREATE TABLE IF NOT EXISTS `produtoimagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(50) DEFAULT NULL,
  `tipo1` varchar(50) DEFAULT NULL,
  `tipo2` varchar(50) DEFAULT NULL,
  `imagem` longblob,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `produtos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUTO` varchar(40) DEFAULT NULL,
  `C_TMP` varchar(40) DEFAULT NULL,
  `DESCRICAO` varchar(10000) DEFAULT NULL,
  `CODIGOGRUPO` varchar(6) DEFAULT NULL,
  `GRUPO` varchar(50) DEFAULT NULL,
  `DESCRICAOGRUPO` varchar(50) DEFAULT NULL,
  `CUSTO` decimal(10,4) DEFAULT NULL,
  `PRECOVENDA` decimal(10,4) DEFAULT '0.0000',
  `ICMS` decimal(10,4) DEFAULT NULL,
  `ICMSSUB` decimal(10,4) DEFAULT NULL,
  `MINIMO` decimal(10,4) DEFAULT NULL,
  `GROSSO` decimal(10,4) DEFAULT NULL,
  `VALORSUGERIDO` decimal(10,4) DEFAULT NULL,
  `MARGEM` decimal(10,4) DEFAULT NULL,
  `CODIGO` varchar(15) DEFAULT NULL,
  `SERVICO` varchar(5) DEFAULT NULL,
  `REFERENCIA` varchar(50) DEFAULT NULL,
  `CBARRA` varchar(20) DEFAULT NULL,
  `UNIDADE` varchar(15) DEFAULT NULL,
  `COR` varchar(25) DEFAULT NULL,
  `GRADE` varchar(10) DEFAULT NULL,
  `IPI` decimal(10,4) DEFAULT NULL,
  `APLICACAO` varchar(255) DEFAULT NULL,
  `MENSAGEM` varchar(200) DEFAULT NULL,
  `CF` varchar(10) DEFAULT NULL,
  `modelo` varchar(20) DEFAULT '2' COMMENT 'Campo que define se produto sincroniza com MeuMenu:\r\n0 sincroniza produto no MeuMenu\r\n1 desabilita produto noMeuMenu\r\n2 nao sincroniza produto no MeuMenu',
  `venda` varchar(5) DEFAULT 'true',
  `EMBALAGEM` varchar(100) DEFAULT NULL,
  `PLIQUIDO` decimal(10,4) DEFAULT NULL,
  `PBRUTO` decimal(10,4) DEFAULT NULL,
  `ULTIMACOMPRA` datetime DEFAULT NULL,
  `ULTIMOPRECO` decimal(10,4) DEFAULT NULL,
  `ULTIMOCUSTO` decimal(10,4) DEFAULT NULL,
  `CODIGOFORNECEDOR` varchar(6) DEFAULT NULL,
  `FORNECEDOR` varchar(300) DEFAULT NULL,
  `ST` varchar(4) DEFAULT NULL,
  `QTDMINIMA` decimal(10,4) DEFAULT NULL,
  `SUPERGRUPO` varchar(2) DEFAULT NULL,
  `PLANOCONTAS` varchar(20) DEFAULT NULL,
  `INATIVO` varchar(5) DEFAULT NULL,
  `PRECO1` decimal(10,4) DEFAULT NULL,
  `PRECO2` decimal(10,4) DEFAULT NULL,
  `PRECO3` decimal(10,4) DEFAULT NULL,
  `PRECO4` decimal(10,4) DEFAULT NULL,
  `PRECO5` decimal(10,4) DEFAULT NULL,
  `PRECO6` decimal(10,4) DEFAULT NULL,
  `PRECO7` decimal(10,4) DEFAULT NULL,
  `PRECO8` decimal(10,4) DEFAULT NULL,
  `TABELA` varchar(25) DEFAULT NULL,
  `ULTIMAVENDA` datetime DEFAULT NULL,
  `DESCONTOMAXIMO` decimal(10,4) DEFAULT NULL,
  `DATACADASTRO` datetime DEFAULT NULL,
  `QTD` decimal(10,4) DEFAULT NULL,
  `FICHATECNICA` varchar(5) DEFAULT NULL,
  `NOMEIMPRESSORA` varchar(25) DEFAULT NULL,
  `LOCALIMPRESSAO` varchar(100) DEFAULT NULL,
  `DESCONTOMAX` decimal(10,4) DEFAULT NULL,
  `OBSERVACAO` varchar(150) DEFAULT NULL,
  `ISS` decimal(10,4) DEFAULT NULL,
  `CUSTOICMS` decimal(10,4) DEFAULT NULL,
  `CUSTOIPI` decimal(10,4) DEFAULT NULL,
  `CUSTOFRETE` decimal(10,4) DEFAULT NULL,
  `CUSTOJUROS` decimal(10,4) DEFAULT NULL,
  `CUSTOADM` decimal(10,4) DEFAULT NULL,
  `CUSTOIMPOSTO` decimal(10,4) DEFAULT NULL,
  `CUSTOST` decimal(10,4) DEFAULT NULL,
  `CUSTOCOMISSAO` decimal(10,4) DEFAULT NULL,
  `DATAATUALIZACAO` varchar(15) DEFAULT NULL,
  `CALCULACUSTOST` varchar(5) DEFAULT NULL,
  `CUSTOMVA` decimal(10,4) DEFAULT NULL,
  `CUSTOICMSINTERNO` decimal(10,4) DEFAULT NULL,
  `AUDITORIA` varchar(20) DEFAULT NULL,
  `SINCRONIZADO` char(1) DEFAULT NULL,
  `movimentaestoque` varchar(5) DEFAULT 'true',
  `creditoicms` decimal(10,4) DEFAULT '0.0000',
  `cfopnfce` varchar(5) DEFAULT NULL,
  `st_nfce` varchar(4) DEFAULT NULL,
  `icms_nfce` int(11) unsigned DEFAULT '0',
  `icmssub_nfce` int(11) DEFAULT '0',
  `cstcofins_nfce` varchar(3) DEFAULT NULL,
  `cstpis_nfce` varchar(3) DEFAULT NULL,
  `aliquotapis_nfce` decimal(18,2) DEFAULT '0.00',
  `aliquotacofins_nfce` decimal(18,2) DEFAULT '0.00',
  `cstipi_nfce` varchar(3) DEFAULT NULL,
  `ipi_nfce` decimal(18,2) DEFAULT '0.00',
  `QTDVOLUME` decimal(10,4) DEFAULT NULL,
  `PREVISAO` decimal(10,4) DEFAULT NULL,
  `PENDENCIA` decimal(10,4) DEFAULT NULL,
  `ESTOQUE` decimal(10,4) DEFAULT NULL,
  `MARGEM1` decimal(10,4) DEFAULT NULL,
  `MARGEM2` decimal(10,4) DEFAULT NULL,
  `MARGEM3` decimal(10,4) DEFAULT NULL,
  `MARGEM4` decimal(10,4) DEFAULT NULL,
  `MARGEM5` decimal(10,4) DEFAULT NULL,
  `MARGEM6` decimal(10,4) DEFAULT NULL,
  `MARGEM7` decimal(10,4) DEFAULT NULL,
  `MARGEM8` decimal(10,4) DEFAULT NULL,
  `FATOR1` decimal(10,4) DEFAULT NULL,
  `FATOR2` decimal(10,4) DEFAULT NULL,
  `FATOR3` decimal(10,4) DEFAULT NULL,
  `FATOR4` decimal(10,4) DEFAULT NULL,
  `FATOR5` decimal(10,4) DEFAULT NULL,
  `FATOR6` decimal(10,4) DEFAULT NULL,
  `FATOR7` decimal(10,4) DEFAULT NULL,
  `FATOR8` decimal(10,4) DEFAULT NULL,
  `SIMILAR` varchar(10) DEFAULT NULL,
  `CODIGOANVISA` varchar(16) DEFAULT NULL,
  `INFORMACOESADICIONAIS` varchar(4000) DEFAULT NULL,
  `MARCA` varchar(50) DEFAULT NULL,
  `PRECOPAUTA` decimal(10,4) DEFAULT NULL,
  `PRECO9` decimal(10,4) DEFAULT NULL,
  `PRECO10` decimal(10,4) DEFAULT NULL,
  `SINCPAF` varchar(100) DEFAULT NULL,
  `ALTURA` decimal(10,4) DEFAULT NULL,
  `COMPRIMENTO` decimal(10,4) DEFAULT NULL,
  `LARGURA` decimal(10,4) DEFAULT NULL,
  `M3` decimal(10,4) DEFAULT NULL,
  `DIMENSOES` varchar(5) DEFAULT NULL,
  `PESO` varchar(1) DEFAULT NULL,
  `BALANCA` varchar(20) DEFAULT NULL,
  `IPIVALOR` decimal(10,4) DEFAULT NULL,
  `CSTPISCOFINS` varchar(5) DEFAULT NULL,
  `CSTPIS` varchar(5) DEFAULT NULL,
  `CSTCOFINS` varchar(5) DEFAULT NULL,
  `ALIQUOTAPIS` decimal(10,4) DEFAULT NULL,
  `ALIQUOTACOFINS` decimal(10,4) DEFAULT NULL,
  `FILIAIS` varchar(100) DEFAULT NULL,
  `LOTEPAF` varchar(1) DEFAULT NULL,
  `COMISSAO` decimal(10,4) DEFAULT NULL,
  `PRESTACAO` varchar(10000) DEFAULT NULL,
  `LOTE` varchar(1) DEFAULT NULL,
  `VALIDADE` datetime DEFAULT NULL,
  `PRECOTMP` decimal(10,4) DEFAULT NULL,
  `SERVICOMUNICIPAL` varchar(10) DEFAULT NULL,
  `PROPORCAOUNITARIA` decimal(10,4) DEFAULT NULL,
  `FATORPRODUCAO` decimal(10,4) DEFAULT NULL,
  `QTDVOLUMECOMPRA` decimal(10,4) DEFAULT NULL,
  `PESOESPECIFICO` varchar(50) DEFAULT NULL,
  `PESORM` varchar(50) DEFAULT NULL,
  `Fator0` decimal(10,4) DEFAULT NULL,
  `Fator9` decimal(10,4) DEFAULT NULL,
  `Fator10` decimal(10,4) DEFAULT NULL,
  `MENSAGEMPISCOFINS` varchar(2000) DEFAULT NULL,
  `IMPORTADO` varchar(15) DEFAULT NULL,
  `FABRICADO` varchar(20) DEFAULT NULL,
  `DESCRICAOETQ` varchar(50) DEFAULT NULL,
  `COMPOSICAO` varchar(20) DEFAULT NULL,
  `CENTROCUSTO` varchar(50) DEFAULT NULL,
  `CODIGOMARCA` int(11) DEFAULT NULL,
  `CODIGOUNIDADE` int(11) DEFAULT NULL,
  `VALIDACAO` datetime DEFAULT NULL,
  `CEST` varchar(7) DEFAULT NULL,
  `PFCPUFDEST` decimal(10,4) DEFAULT NULL,
  `PICMSINTER` decimal(10,4) DEFAULT NULL,
  `aliquota` varchar(50) DEFAULT NULL,
  `PICMSINTERPART` decimal(10,4) DEFAULT NULL,
  `ALMOXARIFADO` varchar(5) DEFAULT NULL,
  `CSTIPI` varchar(2) DEFAULT NULL,
  `IP_NACIONAL` decimal(10,2) DEFAULT NULL,
  `IP_ESTADUAL` decimal(10,2) DEFAULT NULL,
  `IP_IMPORTADO` decimal(10,2) DEFAULT NULL,
  `IP_MUNICIPAL` decimal(10,2) DEFAULT NULL,
  `IP_TIPO` decimal(10,2) DEFAULT NULL,
  `IP_VIGENCIAINICIO` datetime DEFAULT NULL,
  `IP_VIGENCIAFIM` datetime DEFAULT NULL,
  `IP_VERSAO` varchar(8) DEFAULT NULL,
  `IBPTPIS` decimal(10,2) DEFAULT NULL,
  `IBPTCOFINS` decimal(10,2) DEFAULT NULL,
  `IBPTCSLL` decimal(10,2) DEFAULT NULL,
  `IBPTIRPJ` decimal(10,2) DEFAULT NULL,
  `IBPTICMS` decimal(10,2) DEFAULT NULL,
  `PATHIMAGEM` varchar(5000) DEFAULT NULL,
  `DIASVALIDADE` varchar(5) DEFAULT NULL,
  `vendedores` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.produtoslinkfornecedores
CREATE TABLE IF NOT EXISTS `produtoslinkfornecedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` int(11) NOT NULL,
  `produtofornecedor` varchar(25) NOT NULL DEFAULT '',
  `cnpjfornecedor` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.produtosrankingcomissao
CREATE TABLE IF NOT EXISTS `produtosrankingcomissao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` int(11) DEFAULT NULL,
  `valorpadrao` decimal(18,2) DEFAULT '0.00',
  `margeminicial_p` decimal(18,2) DEFAULT '0.00',
  `margemfinal_p` decimal(18,2) DEFAULT '0.00',
  `margeminicial_v` decimal(18,2) DEFAULT '0.00',
  `margemfinal_v` decimal(18,2) DEFAULT '0.00',
  `comissao_p` decimal(18,2) DEFAULT '0.00',
  `comissao_v` decimal(18,2) DEFAULT '0.00',
  `data_atualizacao` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.prospeccao
CREATE TABLE IF NOT EXISTS `prospeccao` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Data` datetime DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Telefone` varchar(16) DEFAULT NULL,
  `Fax` varchar(16) DEFAULT NULL,
  `Contato` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `ProdutoServico` varchar(50) DEFAULT NULL,
  `FANTASIA` varchar(50) DEFAULT NULL,
  `ENDERECO` varchar(100) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(50) DEFAULT NULL,
  `CEP` varchar(11) DEFAULT NULL,
  `LEMBRAR` varchar(10) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `CNPJ` varchar(18) DEFAULT NULL,
  `IE` varchar(18) DEFAULT NULL,
  `REMOVERLEMBRETE` varchar(1) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.prospeccaocontato
CREATE TABLE IF NOT EXISTS `prospeccaocontato` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NOMECLIENTE` varchar(50) DEFAULT NULL,
  `CONTATO` varchar(50) DEFAULT NULL,
  `CARGO` varchar(30) DEFAULT NULL,
  `FONE` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.prospeccaodetalhe
CREATE TABLE IF NOT EXISTS `prospeccaodetalhe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDPROSPECCAO` int(11) DEFAULT NULL,
  `OBSERVACAO` varchar(500) DEFAULT NULL,
  `DATA` datetime DEFAULT NULL,
  `RESPONSAVEL` varchar(20) DEFAULT NULL,
  `PRIORIDADE` varchar(50) DEFAULT NULL,
  `CARGO` varchar(30) DEFAULT NULL,
  `LEMBRAR` datetime DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.reajustepreco
CREATE TABLE IF NOT EXISTS `reajustepreco` (
  `ID` int(11) NOT NULL,
  `DATA` datetime DEFAULT NULL,
  `PRODUTO` varchar(50) DEFAULT NULL,
  `PRECOATUAL` decimal(10,4) DEFAULT NULL,
  `PRECONOVO` decimal(10,4) DEFAULT NULL,
  `USUARIO` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.recebimento
CREATE TABLE IF NOT EXISTS `recebimento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(3) NOT NULL,
  `descricao` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe',
  `ativo` varchar(5) DEFAULT NULL,
  `forma` varchar(100) DEFAULT NULL,
  `permissoes` varchar(500) DEFAULT NULL,
  `ativfinanceira` varchar(5) DEFAULT NULL,
  `atividade_financeira` varchar(25) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `prazo1` varchar(4) DEFAULT NULL,
  `prazo2` varchar(4) DEFAULT NULL,
  `prazo3` varchar(4) DEFAULT NULL,
  `prazo4` varchar(4) DEFAULT NULL,
  `prazo5` varchar(4) DEFAULT NULL,
  `prazo6` varchar(4) DEFAULT NULL,
  `prazo7` varchar(4) DEFAULT NULL,
  `prazo8` varchar(4) DEFAULT NULL,
  `prazo9` varchar(4) DEFAULT NULL,
  `prazo10` varchar(4) DEFAULT NULL,
  `prazo11` varchar(4) DEFAULT NULL,
  `prazo12` varchar(4) DEFAULT NULL,
  `codigo_grupo` varchar(5) DEFAULT NULL,
  `descricao_grupo` varchar(25) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL,
  `condicoes` varchar(30) DEFAULT NULL,
  `tipopagamento` varchar(30) DEFAULT NULL,
  `limitetroco` decimal(10,4) DEFAULT NULL,
  `baixaautomatica` char(1) DEFAULT NULL,
  `tabela` varchar(10) DEFAULT NULL,
  `aliquota1` decimal(10,4) DEFAULT NULL,
  `aliquota2` decimal(10,4) DEFAULT NULL,
  `aliquota3` decimal(10,4) DEFAULT NULL,
  `aliquota4` decimal(10,4) DEFAULT NULL,
  `aliquota5` decimal(10,4) DEFAULT NULL,
  `aliquota6` decimal(10,4) DEFAULT NULL,
  `aliquota7` decimal(10,4) DEFAULT NULL,
  `aliquota8` decimal(10,4) DEFAULT NULL,
  `aliquota9` decimal(10,4) DEFAULT NULL,
  `aliquota10` decimal(10,4) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  `cnpj_operadora` varchar(20) DEFAULT NULL,
  `visualizar` varchar(10) NOT NULL DEFAULT 'CVS',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.status
CREATE TABLE IF NOT EXISTS `status` (
  `CHAVE` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CHAVE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.statusfinanceiro
CREATE TABLE IF NOT EXISTS `statusfinanceiro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.suites
CREATE TABLE IF NOT EXISTS `suites` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TIPO` varchar(15) NOT NULL,
  `DESCRICAO` varchar(500) NOT NULL,
  `RESERVA` int(11) NOT NULL,
  `ATIVO` int(11) DEFAULT NULL,
  `NUMERO` varchar(10) DEFAULT NULL,
  `VALOR` decimal(10,2) DEFAULT NULL,
  `TEMPO` datetime DEFAULT NULL,
  `VALOR_ADICIONAL` decimal(10,2) DEFAULT NULL,
  `IDPRODUTO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.suitetipos
CREATE TABLE IF NOT EXISTS `suitetipos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDSUITE` int(11) DEFAULT NULL,
  `DESCRICAO` varchar(50) DEFAULT NULL,
  `TEMPO` datetime DEFAULT NULL,
  `VALOR` decimal(10,2) DEFAULT NULL,
  `VALOREXCEDENTE` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.tabelaprecoclientes
CREATE TABLE IF NOT EXISTS `tabelaprecoclientes` (
  `CHAVE` int(11) NOT NULL,
  `PRODUTO` varchar(15) DEFAULT NULL,
  `CLIENTE` varchar(6) DEFAULT NULL,
  `PRECO` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.tabelapreconome
CREATE TABLE IF NOT EXISTS `tabelapreconome` (
  `CHAVE` int(11) NOT NULL,
  `NOME` varchar(20) NOT NULL,
  `DESCRICAO` varchar(20) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.tecido
CREATE TABLE IF NOT EXISTS `tecido` (
  `id` int(11) NOT NULL,
  `Descricao` varchar(50) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.transportadora
CREATE TABLE IF NOT EXISTS `transportadora` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) NOT NULL,
  `razao` varchar(100) DEFAULT NULL COMMENT 'Razão social do transportador',
  `fantasia` varchar(100) DEFAULT NULL COMMENT 'Nome fantasia do transportador',
  `endereco` varchar(100) DEFAULT NULL COMMENT 'Endereço do transportador',
  `bairro` varchar(50) DEFAULT NULL COMMENT 'Bairro do transportador',
  `cidade` varchar(100) DEFAULT NULL COMMENT 'Cidade do transportador',
  `codigocidade` varchar(10) DEFAULT NULL COMMENT 'Código da cidade do transportador de acordo com IBGE ',
  `uf` varchar(2) DEFAULT NULL COMMENT 'UF do transportador',
  `codigouf` varchar(10) DEFAULT NULL COMMENT 'Código da UF(Estado) do transportador de acordo com IBGE ',
  `cep` varchar(15) DEFAULT NULL COMMENT 'CEP do transportador de acordo com IBGE ',
  `telefone1` varchar(30) DEFAULT NULL,
  `telefone2` varchar(30) DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL,
  `contato` varchar(20) DEFAULT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL COMMENT 'CNPJ OU CPF do transportador',
  `rg_insc` varchar(20) DEFAULT NULL COMMENT 'Número da inscrição estadual do transportador. Caso seja pessoa física deve ser ISENTO',
  `email` varchar(50) DEFAULT NULL COMMENT 'Email do transportador',
  `datacad` datetime DEFAULT NULL COMMENT 'Data de cadastro dotransportador',
  `status` varchar(7) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT 'n',
  `plano` varchar(20) DEFAULT NULL,
  `tipotransportador` varchar(8) DEFAULT NULL,
  `homepage` varchar(50) DEFAULT NULL,
  `observacao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.turma
CREATE TABLE IF NOT EXISTS `turma` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `ativo` bit(1) NOT NULL,
  `datacadastro` datetime NOT NULL,
  `usuariocadastro` varchar(50) NOT NULL,
  `dataatualizacao` datetime DEFAULT NULL,
  `usuarioalteracao` varchar(50) DEFAULT NULL,
  `meta` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.unidades
CREATE TABLE IF NOT EXISTS `unidades` (
  `Chave` int(11) NOT NULL,
  `DESCRICAO` varchar(5) DEFAULT NULL,
  `sincronizado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.venda
CREATE TABLE IF NOT EXISTS `venda` (
  `chave` int(11) NOT NULL AUTO_INCREMENT,
  `documento` varchar(50) NOT NULL,
  `pedido` varchar(50) DEFAULT NULL,
  `cliente` varchar(10) DEFAULT NULL,
  `razao` varchar(150) DEFAULT NULL,
  `fantasia` varchar(150) DEFAULT NULL,
  `cnpjcpf` varchar(25) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  `faturamento` varchar(50) DEFAULT NULL,
  `emissao` datetime DEFAULT NULL,
  `icms` decimal(18,2) DEFAULT NULL,
  `icmssubst` decimal(18,2) DEFAULT NULL,
  `ipi` decimal(18,2) DEFAULT NULL,
  `devolucao` varchar(5) DEFAULT NULL,
  `tipodesconto` varchar(2) DEFAULT NULL,
  `desconto` decimal(18,4) NOT NULL,
  `frete` varchar(10) DEFAULT NULL,
  `fretevalor` decimal(18,4) DEFAULT NULL,
  `acrescimo` decimal(18,4) DEFAULT NULL,
  `totalproduto` decimal(18,2) DEFAULT NULL,
  `total` decimal(18,2) DEFAULT NULL,
  `observacao` varchar(1000) DEFAULT NULL,
  `observacaofisco` varchar(500) DEFAULT NULL,
  `recebimento` varchar(3) DEFAULT NULL,
  `descricaorecebimento` varchar(60) DEFAULT NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe',
  `usuario` varchar(4) DEFAULT NULL,
  `nomeusuario` varchar(20) DEFAULT NULL,
  `planocontas` varchar(20) DEFAULT NULL,
  `descricaoplano` varchar(150) DEFAULT NULL,
  `cfop` varchar(50) DEFAULT NULL,
  `descricaocfop` varchar(255) DEFAULT NULL,
  `qtdparcelas` int(11) DEFAULT NULL,
  `cancelado` varchar(30) DEFAULT NULL,
  `auditoria` varchar(25) DEFAULT NULL,
  `au` varchar(5) DEFAULT NULL,
  `vendedor1` varchar(5) DEFAULT NULL,
  `nomevendedor1` varchar(50) DEFAULT NULL,
  `comissao1` decimal(18,2) DEFAULT NULL,
  `vendedor2` varchar(5) DEFAULT NULL,
  `nomevendedor2` varchar(50) DEFAULT NULL,
  `comissao2` decimal(18,2) DEFAULT NULL,
  `comissaorepresentante` decimal(18,2) DEFAULT NULL,
  `valorcomissaorepresentante` decimal(18,2) DEFAULT NULL,
  `codigofornecedor` varchar(5) DEFAULT NULL,
  `fantasiafornecedor` varchar(50) DEFAULT NULL,
  `transportadora` varchar(100) DEFAULT NULL,
  `vale` varchar(5) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `fornecedor` varchar(50) DEFAULT NULL,
  `despesa` decimal(18,2) DEFAULT NULL,
  `especie` varchar(15) DEFAULT NULL,
  `icmsfrete` varchar(2) DEFAULT NULL,
  `cfoptrasnportador` varchar(5) DEFAULT NULL,
  `PLACA` varchar(8) DEFAULT NULL,
  `protocolo` varchar(20) DEFAULT NULL,
  `tipofrete` varchar(10) DEFAULT NULL,
  `tabela` varchar(50) DEFAULT NULL,
  `recibonfe` varchar(50) DEFAULT NULL,
  `chavenfe` varchar(200) DEFAULT NULL,
  `faturado` varchar(5) DEFAULT NULL,
  `numerovolume` varchar(10) DEFAULT NULL,
  `quantidadevol` varchar(50) DEFAULT NULL,
  `origem` varchar(50) DEFAULT NULL,
  `basecalculoicms` decimal(18,2) DEFAULT NULL,
  `valoricms` decimal(18,2) DEFAULT NULL,
  `basecalculoicmsst` decimal(18,2) DEFAULT NULL,
  `valoricmsst` decimal(18,2) DEFAULT NULL,
  `valoripi` decimal(18,2) DEFAULT NULL,
  `emitido` varchar(5) DEFAULT NULL,
  `tipoemissao` varchar(50) DEFAULT NULL,
  `fat` varchar(5) DEFAULT NULL,
  `saida` datetime DEFAULT NULL,
  `motivocancelamento` varchar(255) DEFAULT NULL,
  `seqcce` int(11) DEFAULT NULL,
  `st` varchar(5) DEFAULT NULL,
  `documento2` varchar(50) DEFAULT NULL,
  `NFEREF` varchar(44) DEFAULT NULL,
  `SAIDAROMANEIO` datetime DEFAULT NULL,
  `ENTREGAROMANEIO` datetime DEFAULT NULL,
  `MARCA` varchar(30) DEFAULT NULL,
  `ROMANEIO` varchar(50) DEFAULT NULL,
  `ORDEMCOMPRA` varchar(20) DEFAULT NULL,
  `LACRE1` varchar(20) DEFAULT NULL,
  `LACRE2` varchar(20) DEFAULT NULL,
  `KMANDAMENTO` varchar(24) DEFAULT NULL,
  `CLIENTE2` varchar(8) DEFAULT NULL,
  `RAZAO2` varchar(150) DEFAULT NULL,
  `PLACA1` varchar(8) DEFAULT NULL,
  `PLACA2` varchar(8) DEFAULT NULL,
  `HIDROMETRO` varchar(24) DEFAULT NULL,
  `CONTRATO` varchar(250) DEFAULT NULL,
  `CAMPO1` varchar(100) DEFAULT NULL,
  `CAMPO2` varchar(100) DEFAULT NULL,
  `CAMPO3` varchar(100) DEFAULT NULL,
  `CAMPO4` varchar(100) DEFAULT NULL,
  `NFSE` varchar(1) DEFAULT NULL,
  `DENEGADA` varchar(100) DEFAULT NULL,
  `TIPOCFOP` varchar(50) DEFAULT NULL,
  `GNRE` varchar(5) DEFAULT NULL,
  `pliquido` decimal(18,2) DEFAULT NULL,
  `pbruto` decimal(18,2) DEFAULT NULL,
  `CODIGOVERIFICACAONFSE` varchar(50) DEFAULT NULL,
  `totalproduto2` decimal(18,2) DEFAULT NULL,
  `total2` decimal(18,2) DEFAULT NULL,
  `percentual_` decimal(18,2) DEFAULT NULL,
  `percentualissretido` decimal(18,2) DEFAULT NULL,
  `valorissretido` decimal(18,2) DEFAULT NULL,
  `IPI_BCICMS` varchar(5) DEFAULT NULL,
  `MUNICIPIOPRESTACAOSERVICO` varchar(50) DEFAULT NULL,
  `modelobc` varchar(2) DEFAULT NULL,
  `UFPLACA` varchar(2) DEFAULT NULL,
  `CODIGOENDERECO` int(11) DEFAULT NULL,
  `STATUSVENDA` varchar(50) DEFAULT NULL,
  `CODIGOCUSTO` varchar(10) DEFAULT NULL,
  `CENTROCUSTO` varchar(50) DEFAULT NULL,
  `CODIGOTRANSPORTADOR` varchar(5) DEFAULT NULL,
  `impostoaproximado` decimal(18,2) DEFAULT NULL,
  `CODIGOANTT` varchar(50) DEFAULT NULL,
  `EMPRESA` varchar(25) DEFAULT NULL,
  `DOCUMENTOMDFE` varchar(20) DEFAULT NULL,
  `ALMOXARIFADO` varchar(5) DEFAULT NULL,
  `NUMEROPARCELAS` int(11) DEFAULT NULL,
  `MODODESCONTO` varchar(1) DEFAULT NULL,
  `HISTORICOREMOVERFINANCEIRO` varchar(50) DEFAULT NULL,
  `PIS` decimal(18,2) DEFAULT NULL,
  `COFINS` decimal(18,2) DEFAULT NULL,
  `CSLL` decimal(18,2) DEFAULT NULL,
  `INSS` decimal(18,2) DEFAULT NULL,
  `IRPJ` decimal(18,2) DEFAULT NULL,
  `VBCIPI` decimal(18,2) DEFAULT NULL,
  `vbsipi` decimal(18,2) DEFAULT NULL,
  `CNFE` varchar(15) DEFAULT NULL,
  `DESCONTO2` decimal(18,4) DEFAULT '0.0000',
  `sincronizado` varchar(1) DEFAULT NULL,
  `xml_assinado` longtext,
  `xml_proc` longtext,
  `localentrega` int(11) DEFAULT NULL,
  `serie` int(11) DEFAULT '1',
  PRIMARY KEY (`chave`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.vendedores
CREATE TABLE IF NOT EXISTS `vendedores` (
  `CHAVE` int(11) NOT NULL AUTO_INCREMENT,
  `VENDEDOR` varchar(3) NOT NULL,
  `NOME` varchar(45) DEFAULT NULL,
  `ENDERECO` varchar(55) DEFAULT NULL,
  `BAIRRO` varchar(50) DEFAULT NULL,
  `CIDADE` varchar(100) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `RG` varchar(18) DEFAULT NULL,
  `CPF` varchar(18) DEFAULT NULL,
  `FONE` varchar(30) DEFAULT NULL,
  `COMISSAO` double DEFAULT '0',
  `META` double DEFAULT '0',
  `BANCO` varchar(20) DEFAULT NULL,
  `AG` varchar(10) DEFAULT NULL,
  `CC` varchar(10) DEFAULT NULL,
  `INATIVO` varchar(5) DEFAULT 'F',
  `NASCIMENTO` datetime(6) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `DESCRICAO_GRUPO` varchar(15) DEFAULT NULL,
  `CODIGO_GRUPO` varchar(5) DEFAULT NULL,
  `CELULAR` varchar(30) DEFAULT NULL,
  `RELATORIOCOMISSAO` varchar(1) DEFAULT NULL,
  `CODIGOSUPERVISOR` varchar(10) DEFAULT NULL,
  `SUPERVISOR` varchar(100) DEFAULT NULL,
  `SUP` varchar(5) DEFAULT NULL,
  `TABELAVENDEDOR` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CHAVE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_comisliquidez1
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_comisliquidez1` (
	`razao` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`chave1` INT(11) NOT NULL,
	`emissao` DATETIME NULL,
	`vencimento` DATETIME NULL,
	`pagamento` DATETIME NULL,
	`documento2` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`documento3` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`documento` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`totalprodutos` DECIMAL(18,2) NULL,
	`codigovendedor` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`nomevendedor` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`valorbruto` DECIMAL(18,2) NULL,
	`comissao` DECIMAL(18,2) NULL,
	`total` DECIMAL(18,2) NULL,
	`empresa` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`percentualdiferenca` DECIMAL(31,10) NULL,
	`diferenca` DECIMAL(19,2) NULL,
	`valor` DECIMAL(51,12) NULL,
	`valorparcial` DECIMAL(65,18) NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_contaspagar
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_contaspagar` (
	`chave1` INT(11) NOT NULL,
	`fornecedor` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`razao` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`emissao` DATETIME NULL,
	`vencimento` DATETIME NULL,
	`dias` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`documento` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`valor` DECIMAL(10,4) NULL,
	`pagamento` DATETIME NULL,
	`responsavel` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`usuariobaixa` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`cancelado` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`documento2` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`historico` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`cheque` VARCHAR(15) NULL COLLATE 'utf8_general_ci',
	`estado` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`origem` VARCHAR(3) NULL COLLATE 'utf8_general_ci',
	`unificado` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`compra` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`planocontas` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`descricaoplano` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`bb` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`valorparcial` DECIMAL(10,4) NULL,
	`acompanhamento` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`codigobanco` VARCHAR(3) NULL COLLATE 'utf8_general_ci',
	`banco` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`ag` VARCHAR(15) NULL COLLATE 'utf8_general_ci',
	`cc` VARCHAR(15) NULL COLLATE 'utf8_general_ci',
	`responsavel_banco` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`liberacaodesconto` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`valordesconto` DECIMAL(10,4) NULL,
	`codigorecebimento` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`recebimento` VARCHAR(60) NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe' COLLATE 'utf8_general_ci',
	`observacao` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`au` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`chave2` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`documento3` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`ordemcompra` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`seqpagparcial` INT(11) NULL,
	`idmultibaixas` INT(11) NULL,
	`centrocusto` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`empresa` VARCHAR(10000) NULL COLLATE 'utf8_general_ci',
	`datacancelamento` DATETIME NULL,
	`cnpj` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_contasreceber
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_contasreceber` (
	`chave1` INT(11) NOT NULL,
	`chave2` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`cliente` VARCHAR(6) NULL COLLATE 'utf8_general_ci',
	`razao` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`emissao` DATETIME NULL,
	`vencimento` DATETIME NULL,
	`dias` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`documento` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`pedido` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`valor` DECIMAL(18,2) NULL,
	`pagamento` DATETIME NULL,
	`responsavel` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`usuariobaixa` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`cancelado` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`documento2` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`historico` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`cheque` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`estado` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`origem` VARCHAR(3) NULL COLLATE 'utf8_general_ci',
	`unificado` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`compra` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`planocontas` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`descricaoplano` VARCHAR(250) NULL COLLATE 'utf8_general_ci',
	`au` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`valorparcial` DECIMAL(18,2) NULL,
	`acompanhamento` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`codigobanco` VARCHAR(3) NULL COLLATE 'utf8_general_ci',
	`banco` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`modelobanco` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`ag` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`cc` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`responsavel_banco` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`liberacaodesconto` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`valordesconto` DECIMAL(18,2) NULL,
	`codigorecebimento` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`recebimento` VARCHAR(60) NULL COMMENT 'Descrição de recebimento com no máximo 60 caracteres de acordo com manual nfe' COLLATE 'utf8_general_ci',
	`observacao` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`documento3` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`romaneio` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`remessa` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`retorno` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`ordemcompra` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`situacao` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`dataremessa` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`dataretorno` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`seqpagparcial` INT(11) NULL,
	`backcampodocumento` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`ultimaparcela` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`ch` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`observacaoboleto` VARCHAR(255) NULL COLLATE 'utf8_general_ci',
	`data_pg_comissao` DATETIME NULL,
	`enviolembrete` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`referencias` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`lembraremailcar` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`empresa` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`forma` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`datacancelamento` DATETIME NULL,
	`cnpj` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`tipo` VARCHAR(11) NOT NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_estoque
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_estoque` (
	`produto` VARCHAR(40) NULL COLLATE 'latin1_swedish_ci',
	`referencia` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`descricao` VARCHAR(10000) NULL COLLATE 'latin1_swedish_ci',
	`unidade` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`cf` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`precovenda` DECIMAL(10,4) NULL,
	`almoxarifado` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`servico` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`id` INT(11) NOT NULL,
	`preco1` DECIMAL(10,4) NULL,
	`preco2` DECIMAL(10,4) NULL,
	`preco3` DECIMAL(10,4) NULL,
	`preco4` DECIMAL(10,4) NULL,
	`preco5` DECIMAL(10,4) NULL,
	`preco6` DECIMAL(10,4) NULL,
	`preco7` DECIMAL(10,4) NULL,
	`preco8` DECIMAL(10,4) NULL,
	`preco9` DECIMAL(10,4) NULL,
	`preco10` DECIMAL(10,4) NULL,
	`vendedores` VARCHAR(1000) NULL COLLATE 'latin1_swedish_ci',
	`previsao` INT(1) NOT NULL,
	`pendencia` INT(1) NOT NULL,
	`estoque` DECIMAL(14,2) NULL,
	`similar` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`qtd` DECIMAL(10,4) NULL,
	`marca` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`validade` DATETIME NULL,
	`inativo` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`venda` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`codigofornecedor` VARCHAR(6) NULL COLLATE 'latin1_swedish_ci',
	`fornecedor` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`calculacustost` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`aplicacao` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`informacoesadicionais` VARCHAR(4000) NULL COLLATE 'latin1_swedish_ci',
	`dataatualizacao` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`cbarra` VARCHAR(20) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_estoqueatual
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_estoqueatual` (
	`produto` VARCHAR(40) NULL COLLATE 'latin1_swedish_ci',
	`descricao` VARCHAR(10000) NULL COLLATE 'latin1_swedish_ci',
	`codigofornecedor` VARCHAR(6) NULL COLLATE 'latin1_swedish_ci',
	`fornecedor` VARCHAR(300) NULL COLLATE 'latin1_swedish_ci',
	`custo` DECIMAL(10,4) NULL,
	`precovenda` DECIMAL(10,4) NULL,
	`referencia` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`unidade` VARCHAR(15) NULL COLLATE 'latin1_swedish_ci',
	`qtdvolume` DECIMAL(10,4) NULL,
	`qtdminima` DECIMAL(10,4) NULL,
	`codigogrupo` VARCHAR(6) NULL COLLATE 'latin1_swedish_ci',
	`descricaogrupo` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`aplicacao` VARCHAR(255) NULL COLLATE 'latin1_swedish_ci',
	`id` INT(11) NOT NULL,
	`preco1` DECIMAL(10,4) NULL,
	`estoque` DECIMAL(14,2) NULL,
	`total` INT(1) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_estoquelote
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_estoquelote` (
	`id` INT(11) NOT NULL,
	`produto` VARCHAR(40) NULL COLLATE 'utf8_general_ci',
	`descricao` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`quantidade` DECIMAL(40,4) NULL,
	`lote` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`localizacao` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`validade` DATETIME NULL,
	`fabricacao` DATETIME NULL,
	`cancelado` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`movimentaestoque` VARCHAR(5) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_legendaproducao
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_legendaproducao` (
	`produto` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`descricao` VARCHAR(500) NULL COLLATE 'utf8_general_ci',
	`quantidade` DECIMAL(32,4) NULL,
	`marca` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`ficha` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`liberado` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`documento` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_compras
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_lista_compras` (
	`chave` INT(11) NOT NULL,
	`documento` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`emissao` DATETIME(6) NULL,
	`razao` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`fantasia` VARCHAR(150) NULL COLLATE 'latin1_swedish_ci',
	`total` DOUBLE(22,0) NULL,
	`cnpjcpf` VARCHAR(25) NULL COLLATE 'latin1_swedish_ci',
	`cancelado` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`emitido` VARCHAR(5) NULL COLLATE 'latin1_swedish_ci',
	`denegada` VARCHAR(12) NULL COLLATE 'latin1_swedish_ci',
	`empresa` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_ordemservico
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_lista_ordemservico` (
	`chave` INT(11) NOT NULL,
	`documento` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`entrada` DATETIME NULL,
	`razao` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`cnpjcpf` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(10,4) NULL,
	`finalizada` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`faturado` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`status` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_pedidocompra
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_lista_pedidocompra` (
	`chave` INT(11) NOT NULL,
	`documento` VARCHAR(20) NOT NULL COLLATE 'utf8_general_ci',
	`emissao` DATETIME NULL,
	`razao` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`cnpjcpf` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(10,4) NULL,
	`empresa` VARCHAR(20) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_pedidovenda
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_lista_pedidovenda` (
	`chave` INT(11) NOT NULL,
	`documento` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`emissao` DATETIME NULL,
	`razao` VARCHAR(80) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(80) NULL COLLATE 'utf8_general_ci',
	`cnpjcpf` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(10,4) NULL,
	`cancelado` DATETIME NULL,
	`situacao` VARCHAR(1) NULL COLLATE 'utf8_general_ci',
	`empresa` VARCHAR(20) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_vendas
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_lista_vendas` (
	`chave` INT(11) NOT NULL,
	`documento` VARCHAR(50) NOT NULL COLLATE 'utf8_general_ci',
	`emissao` DATETIME NULL,
	`razao` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`fantasia` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`total` DECIMAL(18,2) NULL,
	`cnpjcpf` VARCHAR(25) NULL COLLATE 'utf8_general_ci',
	`cancelado` VARCHAR(30) NULL COLLATE 'utf8_general_ci',
	`emitido` VARCHAR(5) NULL COLLATE 'utf8_general_ci',
	`denegada` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`empresa` VARCHAR(25) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_somaestoque
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_somaestoque` (
	`estoque` DECIMAL(40,4) NOT NULL,
	`produto` VARCHAR(40) NULL COLLATE 'utf8_general_ci',
	`data` DATETIME NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_somanfce
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_somanfce` (
	`estoque` DECIMAL(40,4) NOT NULL,
	`produto` VARCHAR(10) NULL COLLATE 'utf8_general_ci',
	`data` DATETIME NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_somaordemservico
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `vw_somaordemservico` (
	`estoque` DECIMAL(32,4) NOT NULL,
	`produto` VARCHAR(20) NULL COLLATE 'utf8_general_ci',
	`data` DATETIME NULL
) ENGINE=MyISAM;

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.webservices
CREATE TABLE IF NOT EXISTS `webservices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recepcao` varchar(500) DEFAULT NULL,
  `retrecepcao` varchar(500) DEFAULT NULL,
  `consultaprotocolo` varchar(500) DEFAULT NULL,
  `inutilizacao` varchar(500) DEFAULT NULL,
  `recepcaoevento` varchar(500) DEFAULT NULL,
  `consultastatus` varchar(500) DEFAULT NULL,
  `versao` varchar(5) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `ambiente` int(11) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela wwtrin_albericoeletronicos.y1
CREATE TABLE IF NOT EXISTS `y1` (
  `Id` int(11) NOT NULL,
  `SH` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `y2` (
  `INSCRICAO` varchar(100) NOT NULL,
  `VALIDA` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `vw_comisliquidez1`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_comisliquidez1` AS select `v`.`razao` AS `razao`,`v`.`fantasia` AS `fantasia`,`r`.`chave1` AS `chave1`,`r`.`emissao` AS `emissao`,`r`.`vencimento` AS `vencimento`,`r`.`pagamento` AS `pagamento`,`r`.`documento2` AS `documento2`,`r`.`documento` AS `documento3`,`v`.`documento` AS `documento`,`v`.`totalproduto` AS `totalprodutos`,`v`.`vendedor1` AS `codigovendedor`,`v`.`nomevendedor1` AS `nomevendedor`,`r`.`valor` AS `valorbruto`,`v`.`comissao1` AS `comissao`,`v`.`total` AS `total`,`v`.`EMPRESA` AS `empresa`,(((`r`.`valor` * 100) / `v`.`total`) / 100) AS `percentualdiferenca`,(`v`.`total` - `v`.`totalproduto`) AS `diferenca`,(`r`.`valor` - ((`v`.`total` - `v`.`totalproduto`) * (((`r`.`valor` * 100) / `v`.`total`) / 100))) AS `valor`,((`r`.`valor` - ((`v`.`total` - `v`.`totalproduto`) * (((`r`.`valor` * 100) / `v`.`total`) / 100))) * (`v`.`comissao1` / 100)) AS `valorparcial` from (`venda` `v` join `contasreceber` `r` on((`r`.`documento2` = `v`.`documento`)));

DROP TABLE IF EXISTS `vw_contaspagar`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_contaspagar` AS select `c`.`chave1` AS `chave1`,`c`.`fornecedor` AS `fornecedor`,`c`.`razao` AS `razao`,`c`.`fantasia` AS `fantasia`,`c`.`emissao` AS `emissao`,`c`.`vencimento` AS `vencimento`,`c`.`dias` AS `dias`,`c`.`documento` AS `documento`,`c`.`valor` AS `valor`,`c`.`pagamento` AS `pagamento`,`c`.`responsavel` AS `responsavel`,`c`.`usuariobaixa` AS `usuariobaixa`,`c`.`cancelado` AS `cancelado`,`c`.`documento2` AS `documento2`,`c`.`historico` AS `historico`,`c`.`cheque` AS `cheque`,`c`.`estado` AS `estado`,`c`.`origem` AS `origem`,`c`.`unificado` AS `unificado`,`c`.`compra` AS `compra`,`c`.`planocontas` AS `planocontas`,`c`.`descricaoplano` AS `descricaoplano`,`c`.`bb` AS `bb`,`c`.`valorparcial` AS `valorparcial`,`c`.`acompanhamento` AS `acompanhamento`,`c`.`codigobanco` AS `codigobanco`,`c`.`banco` AS `banco`,`c`.`ag` AS `ag`,`c`.`cc` AS `cc`,`c`.`responsavel_banco` AS `responsavel_banco`,`c`.`liberacaodesconto` AS `liberacaodesconto`,`c`.`valordesconto` AS `valordesconto`,`c`.`codigorecebimento` AS `codigorecebimento`,`c`.`recebimento` AS `recebimento`,`c`.`observacao` AS `observacao`,`c`.`au` AS `au`,`c`.`chave2` AS `chave2`,`c`.`documento3` AS `documento3`,`c`.`ordemcompra` AS `ordemcompra`,`c`.`seqpagparcial` AS `seqpagparcial`,`c`.`idmultibaixas` AS `idmultibaixas`,`c`.`centrocusto` AS `centrocusto`,`c`.`empresa` AS `empresa`,`c`.`datacancelamento` AS `datacancelamento`,`c`.`cnpj` AS `cnpj`,(case when ((`c`.`vencimento` < date_format(now(),'%Y-%m-%d')) and isnull(`c`.`pagamento`)) then 'red' when ((`c`.`vencimento` = date_format(now(),'%Y-%m-%d')) and isnull(`c`.`pagamento`)) then 'springgreen' else 'white' end) AS `tipo` from `contaspagar` `c`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_contasreceber
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_contasreceber`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_contasreceber` AS select `c`.`chave1` AS `chave1`,`c`.`chave2` AS `chave2`,`c`.`cliente` AS `cliente`,`c`.`razao` AS `razao`,`c`.`fantasia` AS `fantasia`,`c`.`emissao` AS `emissao`,`c`.`vencimento` AS `vencimento`,`c`.`dias` AS `dias`,`c`.`documento` AS `documento`,`c`.`pedido` AS `pedido`,`c`.`valor` AS `valor`,`c`.`pagamento` AS `pagamento`,`c`.`responsavel` AS `responsavel`,`c`.`usuariobaixa` AS `usuariobaixa`,`c`.`cancelado` AS `cancelado`,`c`.`documento2` AS `documento2`,`c`.`historico` AS `historico`,`c`.`cheque` AS `cheque`,`c`.`estado` AS `estado`,`c`.`origem` AS `origem`,`c`.`unificado` AS `unificado`,`c`.`compra` AS `compra`,`c`.`planocontas` AS `planocontas`,`c`.`descricaoplano` AS `descricaoplano`,`c`.`au` AS `au`,`c`.`valorparcial` AS `valorparcial`,`c`.`acompanhamento` AS `acompanhamento`,`c`.`codigobanco` AS `codigobanco`,`c`.`banco` AS `banco`,`c`.`modelobanco` AS `modelobanco`,`c`.`ag` AS `ag`,`c`.`cc` AS `cc`,`c`.`responsavel_banco` AS `responsavel_banco`,`c`.`liberacaodesconto` AS `liberacaodesconto`,`c`.`valordesconto` AS `valordesconto`,`c`.`codigorecebimento` AS `codigorecebimento`,`c`.`recebimento` AS `recebimento`,`c`.`observacao` AS `observacao`,`c`.`documento3` AS `documento3`,`c`.`romaneio` AS `romaneio`,`c`.`remessa` AS `remessa`,`c`.`retorno` AS `retorno`,`c`.`ordemcompra` AS `ordemcompra`,`c`.`situacao` AS `situacao`,`c`.`dataremessa` AS `dataremessa`,`c`.`dataretorno` AS `dataretorno`,`c`.`seqpagparcial` AS `seqpagparcial`,`c`.`backcampodocumento` AS `backcampodocumento`,`c`.`ultimaparcela` AS `ultimaparcela`,`c`.`ch` AS `ch`,`c`.`observacaoboleto` AS `observacaoboleto`,`c`.`data_pg_comissao` AS `data_pg_comissao`,`c`.`enviolembrete` AS `enviolembrete`,`c`.`referencias` AS `referencias`,`c`.`lembraremailcar` AS `lembraremailcar`,`c`.`empresa` AS `empresa`,`c`.`forma` AS `forma`,`c`.`datacancelamento` AS `datacancelamento`,`c`.`cnpj` AS `cnpj`,(case when ((`c`.`vencimento` < date_format(now(),'%Y-%m-%d')) and isnull(`c`.`pagamento`)) then 'red' when ((`c`.`vencimento` = date_format(now(),'%Y-%m-%d')) and isnull(`c`.`pagamento`)) then 'springgreen' else 'white' end) AS `tipo` from `contasreceber` `c`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_estoque
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_estoque`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_estoque` AS select `a`.`PRODUTO` AS `produto`,`a`.`REFERENCIA` AS `referencia`,`a`.`DESCRICAO` AS `descricao`,`a`.`UNIDADE` AS `unidade`,`a`.`CF` AS `cf`,`a`.`PRECOVENDA` AS `precovenda`,`a`.`ALMOXARIFADO` AS `almoxarifado`,`a`.`SERVICO` AS `servico`,`a`.`ID` AS `id`,`a`.`PRECO1` AS `preco1`,`a`.`PRECO2` AS `preco2`,`a`.`PRECO3` AS `preco3`,`a`.`PRECO4` AS `preco4`,`a`.`PRECO5` AS `preco5`,`a`.`PRECO6` AS `preco6`,`a`.`PRECO7` AS `preco7`,`a`.`PRECO8` AS `preco8`,`a`.`PRECO9` AS `preco9`,`a`.`PRECO10` AS `preco10`,`a`.`vendedores` AS `vendedores`,0 AS `previsao`,0 AS `pendencia`,((cast((select ifnull(sum(`vw_somaestoque`.`estoque`),0) from `vw_somaestoque` where (`vw_somaestoque`.`produto` = convert(`a`.`PRODUTO` using utf8))) as decimal(12,2)) - cast((select ifnull(sum(`vw_somanfce`.`estoque`),0) from `vw_somanfce` where (`vw_somanfce`.`produto` = convert(`a`.`PRODUTO` using utf8))) as decimal(12,2))) - cast((select ifnull(sum(`vw_somaordemservico`.`estoque`),0) from `vw_somaordemservico` where (`vw_somaordemservico`.`produto` = convert(`a`.`PRODUTO` using utf8))) as decimal(12,2))) AS `estoque`,`a`.`SIMILAR` AS `similar`,`a`.`QTD` AS `qtd`,`a`.`MARCA` AS `marca`,`a`.`VALIDADE` AS `validade`,`a`.`INATIVO` AS `inativo`,`a`.`venda` AS `venda`,`a`.`CODIGOFORNECEDOR` AS `codigofornecedor`,`a`.`FORNECEDOR` AS `fornecedor`,`a`.`CALCULACUSTOST` AS `calculacustost`,`a`.`APLICACAO` AS `aplicacao`,`a`.`INFORMACOESADICIONAIS` AS `informacoesadicionais`,`a`.`DATAATUALIZACAO` AS `dataatualizacao`,`a`.`CBARRA` AS `cbarra` from `produtos` `a`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_estoqueatual
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_estoqueatual`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_estoqueatual` AS select `a`.`PRODUTO` AS `produto`,`a`.`DESCRICAO` AS `descricao`,`a`.`CODIGOFORNECEDOR` AS `codigofornecedor`,`a`.`FORNECEDOR` AS `fornecedor`,`a`.`CUSTO` AS `custo`,`a`.`PRECOVENDA` AS `precovenda`,`a`.`REFERENCIA` AS `referencia`,`a`.`UNIDADE` AS `unidade`,`a`.`QTDVOLUME` AS `qtdvolume`,`a`.`QTDMINIMA` AS `qtdminima`,`a`.`CODIGOGRUPO` AS `codigogrupo`,`a`.`DESCRICAOGRUPO` AS `descricaogrupo`,`a`.`APLICACAO` AS `aplicacao`,`a`.`ID` AS `id`,`a`.`PRECO1` AS `preco1`,((cast((select ifnull(sum(`vw_somaestoque`.`estoque`),0) from `vw_somaestoque` where (`vw_somaestoque`.`produto` = convert(`a`.`PRODUTO` using utf8))) as decimal(12,2)) - cast((select ifnull(sum(`vw_somanfce`.`estoque`),0) from `vw_somanfce` where (`vw_somanfce`.`produto` = convert(`a`.`PRODUTO` using utf8))) as decimal(12,2))) - cast((select ifnull(sum(`vw_somaordemservico`.`estoque`),0) from `vw_somaordemservico` where (`vw_somaordemservico`.`produto` = convert(`a`.`PRODUTO` using utf8))) as decimal(12,2))) AS `estoque`,0 AS `total` from `produtos` `a` where (`a`.`INATIVO` = 'false');

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_estoquelote
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_estoquelote`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_estoquelote` AS select `estoque`.`chave2` AS `id`,`estoque`.`produto` AS `produto`,`estoque`.`descricao` AS `descricao`,sum(`estoque`.`quantidade`) AS `quantidade`,`estoque`.`lote` AS `lote`,`estoque`.`localizacao` AS `localizacao`,`estoque`.`validade` AS `validade`,`estoque`.`fabricacao` AS `fabricacao`,`estoque`.`cancelado` AS `cancelado`,`estoque`.`movimentaestoque` AS `movimentaestoque` from `estoque` group by `estoque`.`produto`,`estoque`.`lote`,`estoque`.`validade`,`estoque`.`fabricacao`,`estoque`.`localizacao`,`estoque`.`descricao`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_legendaproducao
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_legendaproducao`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_legendaproducao` AS select `d`.`PRODUTO` AS `produto`,`d`.`DESCRICAO` AS `descricao`,sum(`d`.`QUANTIDADE`) AS `quantidade`,`p`.`MARCA` AS `marca`,`d`.`FICHA` AS `ficha`,`d`.`LIBERADO` AS `liberado`,`d`.`DOCUMENTO` AS `documento` from (`producaodetalhe` `d` join `produtos` `p` on((convert(`p`.`PRODUTO` using utf8) = `d`.`PRODUTO`))) group by `p`.`MARCA`,`d`.`DOCUMENTO`,`d`.`FICHA`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_compras
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_lista_compras`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_lista_compras` AS select `compra`.`CHAVE` AS `chave`,`compra`.`DOCUMENTO` AS `documento`,`compra`.`EMISSAO` AS `emissao`,`compra`.`RAZAO` AS `razao`,`compra`.`FANTASIA` AS `fantasia`,`compra`.`TOTALNOTA` AS `total`,`compra`.`CNPJCPF` AS `cnpjcpf`,`compra`.`CANCELADO` AS `cancelado`,`compra`.`EMITIDO` AS `emitido`,`compra`.`DENEGADA` AS `denegada`,`compra`.`EMPRESA` AS `empresa` from `compra`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_ordemservico
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_lista_ordemservico`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_lista_ordemservico` AS select `ordemservico`.`chave` AS `chave`,`ordemservico`.`documento` AS `documento`,`ordemservico`.`entrada` AS `entrada`,`ordemservico`.`razao` AS `razao`,`ordemservico`.`fantasia` AS `fantasia`,`ordemservico`.`cnpjcpf` AS `cnpjcpf`,`ordemservico`.`total` AS `total`,`ordemservico`.`finalizada` AS `finalizada`,`ordemservico`.`faturado` AS `faturado`,`ordemservico`.`status` AS `status` from `ordemservico`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_pedidocompra
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_lista_pedidocompra`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_lista_pedidocompra` AS select `pedidocompra`.`chave` AS `chave`,`pedidocompra`.`DOCUMENTO` AS `documento`,`pedidocompra`.`EMISSAO` AS `emissao`,`pedidocompra`.`RAZAO` AS `razao`,`pedidocompra`.`FANTASIA` AS `fantasia`,`pedidocompra`.`CNPJCPF` AS `cnpjcpf`,`pedidocompra`.`TOTAL` AS `total`,`pedidocompra`.`empresa` AS `empresa` from `pedidocompra`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_pedidovenda
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_lista_pedidovenda`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_lista_pedidovenda` AS select `pedidovenda`.`chave` AS `chave`,`pedidovenda`.`DOCUMENTO` AS `documento`,`pedidovenda`.`EMISSAO` AS `emissao`,`pedidovenda`.`RAZAO` AS `razao`,`pedidovenda`.`FANTASIA` AS `fantasia`,`pedidovenda`.`CNPJCPF` AS `cnpjcpf`,`pedidovenda`.`TOTAL` AS `total`,`pedidovenda`.`CANCELADO` AS `cancelado`,`pedidovenda`.`SITUACAO` AS `situacao`,`pedidovenda`.`empresa` AS `empresa` from `pedidovenda`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_lista_vendas
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_lista_vendas`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_lista_vendas` AS select `venda`.`chave` AS `chave`,`venda`.`documento` AS `documento`,`venda`.`emissao` AS `emissao`,`venda`.`razao` AS `razao`,`venda`.`fantasia` AS `fantasia`,`venda`.`total` AS `total`,`venda`.`cnpjcpf` AS `cnpjcpf`,`venda`.`cancelado` AS `cancelado`,`venda`.`emitido` AS `emitido`,`venda`.`DENEGADA` AS `denegada`,`venda`.`EMPRESA` AS `empresa` from `venda`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_somaestoque
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_somaestoque`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_somaestoque` AS select ifnull(sum(`estoque`.`quantidade`),0) AS `estoque`,`estoque`.`produto` AS `produto`,`estoque`.`data` AS `data` from `estoque` where ((`estoque`.`cancelado` = 'false') and (`estoque`.`movimentaestoque` = 'true')) group by `estoque`.`produto`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_somanfce
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_somanfce`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_somanfce` AS select ifnull(sum(`nfce_detalhe`.`quantidade`),0) AS `estoque`,`nfce_detalhe`.`codigo_produto` AS `produto`,`nfce_detalhe`.`data` AS `data` from `nfce_detalhe` where ((`nfce_detalhe`.`cancelado` = 'n') and (`nfce_detalhe`.`movimentaestoque` = 'true')) group by `nfce_detalhe`.`codigo_produto`;

-- Copiando estrutura para view wwtrin_albericoeletronicos.vw_somaordemservico
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `vw_somaordemservico`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `vw_somaordemservico` AS select ifnull(sum(`ordemservicomovimento`.`quantidade`),0) AS `estoque`,`ordemservicomovimento`.`produto` AS `produto`,`ordemservicomovimento`.`data` AS `data` from `ordemservicomovimento` where (((`ordemservicomovimento`.`cancelado` = 'false') or isnull(`ordemservicomovimento`.`cancelado`)) and (`ordemservicomovimento`.`movimentaestoque` = 'true')) group by `ordemservicomovimento`.`produto`;

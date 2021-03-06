-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Abr-2020 às 01:17
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aulateste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `categoria` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `categoria`) VALUES
(1, 'Cama Mesa Banho'),
(2, 'Eletrodomestico'),
(3, 'Informatica'),
(4, 'Movel'),
(5, 'Roupa'),
(6, 'Eltrônicos TV e Audio'),
(7, 'Celular'),
(8, 'Livro'),
(9, 'PET'),
(10, 'PET2'),
(11, 'PET2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `cidade` varchar(30) DEFAULT NULL,
  `estado` enum('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO') DEFAULT NULL,
  `celular` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`idCliente`, `nome`, `cpf`, `email`, `senha`, `cidade`, `estado`, `celular`) VALUES
(1, 'Alícia Allana Baptista', '32405513730', 'aliciaallanabaptista-92@outlook.com', '1020040', 'São Paulo', 'AC', '11988700396'),
(2, 'Levi Noah Rodrigues', '51931061610', 'levinoahrodrigues_@edu.uniso.br', '81020542', 'Curitiba', 'AC', '41992800949'),
(3, 'Paulo Gustavo Bernardo Novaes', '17107102176', 'ppaulogustavo@clinicasilhouette.com.br', '60110500', 'Fortaleza', 'AC', '85981727654'),
(4, 'Letícia Tereza Giovana Moraes', '18580346800', 'leticiaterezagiovana@rotauniformes.com.br', '79822110', 'Dourados', 'AL', '67996841618'),
(5, 'Elaine Maitê Milena Pinto', '15190251063', 'elainemaitemilenapinto@bom.com.br', '65085076', 'São Luís', 'AM', '98995832767'),
(6, 'Aline Heloisa Nogueira', '95379555322', 'aalineheloisanogueira@engineer.com', '89201510', 'Joinville', 'AM', '47996469558'),
(7, 'Clarice Julia Nascimento', '2272820190', 'claricejulianascimento-95@artelazer.com', '70660021', 'Brasília', 'AP', '61991686598'),
(8, 'Carolina Mariah Bernardes', '38525024899', 'carolinamariahbernardes-97@valdulion.com.br', '68903494', 'Macapá', 'AP', '96992332200'),
(9, 'Thomas Danilo Filipe Silva', '15549769794', 'thomasdanilofilipesilva@quimicaindaiatuba.com.br', '74937570', 'Aparecida de Goiânia', 'AP', '62985494800'),
(10, 'Luan Bento Bernardo Galvão', '13352843970', 'lluanbentobernardogalvao@agaxtur.com.br', '89040050', 'Blumenau', 'AP', '47993689218'),
(11, 'Isaac Giovanni Thiago Silva', '79538469348', 'isaacgiovanni@sociedadeweb.com.br', '92325000', 'Canoas', 'BA', '51999490350'),
(12, 'Otávio Renan Breno dos Santos', '45836287813', 'otaviorenanbrenodossantos-83@alkbrasil.com.br', '69048386', 'Manaus', 'BA', '92991366222'),
(13, 'Clarice Andreia Heloisa das Neves', '61808420780', 'cclariceandreiaheloisadasneves@boldcron.com.br', '58800595', 'Sousa', 'CE', '83985088850'),
(14, 'Daniela Camila Galvão', '92081942640', 'danielacamilagalvao-99@cteep.com.br', '68903378', 'Macapá', 'CE', '96996953956'),
(15, 'Jorge Paulo Sebastião da Rocha', '39824229906', 'jorgepaulosebastiao@pibnet.com.br', '81590548', 'Curitiba', 'DF', '41993054777'),
(16, 'Isis Jaqueline Louise Santos', '20084752718', 'isisjaquelinelouisesantos-98@imeio.com', '38046716', 'Uberaba', 'DF', '34989485353'),
(17, 'Marcela Josefa Sara Ribeiro', '72120656096', 'marcelajosefasararibeiro_@flexchange.com.br', '24420060', 'São Gonçalo', 'DF', '21981391103'),
(18, 'Milena Cristiane Teixeira', '18209403656', 'milenacristianeteixeira-96@cedda.com.br', '9061580', 'Santo André', 'ES', '11993143621'),
(19, 'Pedro Henrique Manuel José Lima', '57772134215', 'pedrohenriquemanueljoselima@fibran.com.br', '68908789', 'Macapá', 'ES', '96993961979'),
(20, 'Luan Vinicius da Cunha', '40847034003', 'luanviniciusdacunha@belbrindes.com', '69312133', 'Boa Vista', 'GO', '95993225370'),
(21, 'Simone Jéssica Antonella da Paz', '4727255219', 'simonejessicaantonelladapaz@outlock.com', '86188786', 'Cambé', 'MA', '43982092968'),
(22, 'Enzo Gael Nicolas Ferreira', '66376562329', 'enzogaelnicolasferreira_@dmadvogados.com', '89226130', 'Joinville', 'MA', '47995998505'),
(23, 'Nelson Luiz Samuel Dias', '49838799270', 'nelsonluizsamueldias@meteorus.com.br', '40490292', 'Salvador', 'MA', '71987309658'),
(24, 'Paulo Márcio José Lima', '94093642052', 'paulomarciojoselima-90@saojose.biz', '53270210', 'Olinda', 'MA', '81986623591'),
(25, 'Liz Patrícia Carvalho', '83517009245', 'lizpatriciacarvalho-98@casaarte.com.br', '72329206', 'Brasília', 'MG', '61999300947'),
(26, 'Caleb Levi Kevin da Rocha', '30161166857', 'caleblevikevindarocha_@aedu.com', '17604540', 'Tupã', 'MG', '14989355121'),
(27, 'Alessandra Betina Gonçalves', '3248851996', 'alessandrabetinagoncalves@solarisbrasil.com.br', '58806390', 'Sousa', 'MS', '83997561700'),
(28, 'Breno Thomas das Neves', '83645456554', 'brenothomasdasneves-73@hellokitty.com', '53402310', 'Paulista', 'MS', '81996379925'),
(29, 'Alice Lívia Rezende', '11849841403', 'aliceliviarezende@nipbr.com', '7942165', 'Francisco Morato', 'MS', '11997531723'),
(30, 'André Henrique Diogo da Conceição', '39293366690', 'andrehenriquediogodaconceicao@jammer.com.br', '64090830', 'Teresina', 'PA', '86983449983'),
(31, 'Sônia Pietra Barros', '6106422788', 'soniapietrabarros@engeseg.com.br', '31990070', 'Belo Horizonte', 'PB', '31987830141'),
(32, 'Sarah Isabella Patrícia Caldeira', '37110135209', 'sarahisabellapatriciacaldeira@eletroaquila.net', '55608270', 'Vitória de Santo Antão', 'PB', '81986893848'),
(33, 'Nicole Liz Barbosa', '64368206398', 'nicolelizbarbosa-85@torah.com.br', '48903906', 'Juazeiro', 'PB', '74986459077'),
(34, 'Luiza Sabrina da Rosa', '84129037730', 'luizasabrinadarosa..luizasabrinadarosa@technocut.com.br', '77024754', 'Palmas', 'PB', '63992329311'),
(35, 'Maya Luciana dos Santos', '47867288104', 'mayalucianadossantos-85@leonardocordeiro.com', '83511304', 'Almirante Tamandaré', 'PE', '41986067543'),
(36, 'Diogo Anderson Iago Freitas', '25421285618', 'ddiogoandersoniagofreitas@tlmix.com.br', '69028130', 'Manaus', 'PE', '92985498409'),
(37, 'Isis Kamilly Araújo', '61160560838', 'isiskamillyaraujo-90@terra.com', '68376787', 'Altamira', 'PE', '93992813939'),
(38, 'Tomás José da Silva', '59740034039', 'tomasjosedasilva@ritmolog.com.br', '79117640', 'Campo Grande', 'PI', '67982972224'),
(39, 'Igor Samuel Pires', '18406739150', 'igorsamuelpires@vetech.vet.br', '63504335', 'Iguatu', 'PI', '88998214523'),
(40, 'Clara Heloise de Paula', '63785248580', 'cclaraheloisedepaula@cvc.com.br', '65917687', 'Imperatriz', 'PR', '98997226271'),
(41, 'Lorenzo Davi Viana', '62095622804', 'lorenzodaviviana@igui.com.br', '65058018', 'São Luís', 'PR', '98995870075'),
(42, 'Benedita Natália Castro', '25503500148', 'beneditanataliacastro_@previeweventos.com.br', '69908872', 'Rio Branco', 'PR', '68983232671'),
(43, 'Filipe Edson Gonçalves', '22546713914', 'filipeedsongoncalves@delboux.com.br', '17523125', 'Marília', 'PR', '14997893990'),
(44, 'Vicente Sérgio Tiago da Rocha', '84074364379', 'vicentesergiotiagodarocha@contabilidade.com.br', '29936225', 'São Mateus', 'PR', '27986621695'),
(45, 'Tiago Levi Felipe de Paula', '15577647193', 'ttiagolevifelipedepaula@uol.com', '68927200', 'Santana', 'RJ', '96985755626'),
(46, 'Tânia Sophia Regina Gomes', '58434996693', 'ttaniasophiareginagomes@techs.com.br', '57083430', 'Maceió', 'RR', '82996273928'),
(47, 'Tatiane Bárbara da Luz', '35762165965', 'tatianebarbaradaluz_@zf-lenksysteme.com', '49087681', 'Aracaju', 'RS', '79996214601'),
(48, 'Betina Bruna Vanessa Porto', '28959420565', 'betinabrunavanessaporto@soulcomunicacao.com.br', '58419180', 'Campina Grande', 'SC', '83989099962'),
(49, 'Mateus Thiago Fogaça', '54763669974', 'mmateusthiagofogaca@grupompe.com.br', '65071300', 'São Luís', 'SC', '98997678931'),
(50, 'Nair Heloise Aragão', '34892696757', 'nairheloisearagao_@img.com.br', '89167186', 'Rio do Sul', 'SC', '47993920165'),
(51, 'Leonardo Ricardo Vieira', '2404411098', 'leonardoricardovieira_@solucao.adm.br', '72015622', 'Brasília', 'SC', '61995965007'),
(52, 'Juan Renan Freitas', '64750260002', 'juanrenanfreitas@moderna.com.br', '13920970', 'Pedreira', 'SE', '19981321382'),
(53, 'Antonio Raimundo Davi Dias', '74507735033', 'antonioraimundodavidias@fcacomputers.com.br', '69917544', 'Rio Branco', 'SP', '68994436176'),
(54, 'Rita Marcela da Silva', '92246953537', 'rritamarceladasilva@vitalliimoveis.com', '79113060', 'Campo Grande', 'SP', '67981212458'),
(55, 'Daniela Nicole Brito', '9130485347', 'danielanicolebrito_@supracolor.com.br', '85060070', 'Guarapuava', 'SP', '42998446903'),
(56, 'Antônia Tânia Fernanda Duarte', '79214804117', 'antoniataniafernandaduarte@life.com', '58069345', 'João Pessoa', 'SP', '83989205166'),
(57, 'Benício Rafael Vitor Farias', '35956572175', 'beniciorafaelvitorfarias_@balloons.com.br', '69921178', 'Rio Branco', 'SP', '68985058710'),
(58, 'Vicente Fábio da Conceição', '14310291309', 'vvicentefabiodaconceicao@dgh.com.br', '64012025', 'Teresina', 'SP', '86981235655'),
(59, 'Gabriel Kevin Pietro Brito', '56781337211', 'gabrielkevinpietrobrito-85@elimco.com', '14807112', 'Araraquara', 'SP', '16983878334'),
(60, 'Pedro Henrique Luan Galvão', '78256681624', 'pedrohenriqueluangalvao-84@inglesasset.com.br', '29111660', 'Vila Velha', 'TO', '27993175091');

-- --------------------------------------------------------

--
-- Estrutura da tabela `detpedidos`
--

CREATE TABLE `detpedidos` (
  `iddetPedido` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `idPedido` int(11) DEFAULT NULL,
  `idProduto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `detpedidos`
--

INSERT INTO `detpedidos` (`iddetPedido`, `quantidade`, `idPedido`, `idProduto`) VALUES
(1, 2, 9, 27),
(2, 2, 14, 5),
(3, 3, 185, 27),
(4, 4, 176, 17),
(5, 1, 96, 1),
(6, 6, 176, 11),
(7, 1, 124, 26),
(8, 2, 199, 23),
(9, 1, 188, 8),
(10, 3, 190, 11),
(11, 3, 143, 27),
(12, 3, 115, 29),
(13, 2, 16, 20),
(14, 2, 74, 6),
(15, 2, 21, 27),
(16, 3, 65, 29),
(17, 1, 183, 2),
(18, 5, 82, 14),
(19, 5, 191, 16),
(20, 3, 142, 21),
(21, 5, 135, 3),
(22, 4, 146, 14),
(23, 3, 101, 24),
(24, 3, 80, 6),
(25, 6, 181, 3),
(26, 5, 13, 24),
(27, 1, 22, 23),
(28, 2, 55, 2),
(29, 1, 17, 28),
(30, 4, 24, 3),
(31, 2, 125, 14),
(32, 5, 15, 8),
(33, 5, 64, 3),
(34, 2, 171, 23),
(35, 2, 172, 1),
(36, 3, 98, 21),
(37, 3, 27, 21),
(38, 6, 164, 9),
(39, 5, 166, 11),
(40, 2, 90, 13),
(41, 5, 112, 1),
(42, 4, 193, 16),
(43, 4, 189, 26),
(44, 1, 183, 18),
(45, 2, 198, 25),
(46, 6, 169, 18),
(47, 2, 40, 11),
(48, 6, 71, 14),
(49, 1, 138, 27),
(50, 4, 114, 28),
(51, 2, 175, 30),
(52, 5, 79, 18),
(53, 6, 170, 21),
(54, 5, 149, 2),
(55, 5, 128, 5),
(56, 6, 77, 21),
(57, 2, 104, 1),
(58, 5, 75, 30),
(59, 1, 101, 13),
(60, 2, 88, 28),
(61, 2, 133, 3),
(62, 4, 130, 28),
(63, 5, 45, 28),
(64, 2, 171, 14),
(65, 1, 135, 9),
(66, 4, 154, 4),
(67, 3, 138, 2),
(68, 5, 103, 30),
(69, 3, 113, 15),
(70, 1, 102, 14),
(71, 5, 72, 8),
(72, 6, 87, 28),
(73, 1, 196, 22),
(74, 5, 184, 16),
(75, 1, 98, 30),
(76, 4, 26, 8),
(77, 5, 144, 20),
(78, 1, 111, 5),
(79, 3, 197, 28),
(80, 6, 81, 12),
(81, 1, 141, 19),
(82, 3, 107, 6),
(83, 1, 140, 30),
(84, 4, 117, 6),
(85, 6, 86, 12),
(86, 1, 164, 7),
(87, 5, 48, 27),
(88, 6, 89, 17),
(89, 1, 168, 28),
(90, 6, 71, 5),
(91, 2, 17, 13),
(92, 6, 99, 27),
(93, 5, 47, 14),
(94, 4, 100, 28),
(95, 5, 77, 26),
(96, 4, 75, 1),
(97, 2, 17, 25),
(98, 2, 141, 19),
(99, 6, 13, 1),
(100, 5, 72, 10),
(101, 2, 43, 23),
(102, 1, 196, 16),
(103, 5, 114, 4),
(104, 2, 86, 27),
(105, 6, 18, 29),
(106, 1, 154, 6),
(107, 4, 52, 2),
(108, 2, 22, 15),
(109, 3, 34, 24),
(110, 3, 99, 29),
(111, 3, 17, 1),
(112, 3, 57, 3),
(113, 2, 115, 5),
(114, 1, 112, 24),
(115, 4, 144, 25),
(116, 3, 147, 19),
(117, 1, 128, 15),
(118, 2, 107, 6),
(119, 3, 183, 21),
(120, 6, 107, 27),
(121, 5, 129, 18),
(122, 5, 105, 25),
(123, 2, 68, 6),
(124, 5, 145, 11),
(125, 4, 56, 30),
(126, 6, 81, 7),
(127, 1, 60, 23),
(128, 2, 191, 30),
(129, 3, 54, 20),
(130, 5, 47, 26),
(131, 6, 1, 1),
(132, 1, 195, 14),
(133, 2, 3, 3),
(134, 1, 8, 10),
(135, 1, 148, 21),
(136, 4, 135, 2),
(137, 1, 34, 16),
(138, 3, 2, 5),
(139, 5, 145, 5),
(140, 5, 177, 21),
(141, 5, 8, 1),
(142, 3, 68, 13),
(143, 1, 161, 29),
(144, 1, 125, 25),
(145, 5, 113, 19),
(146, 4, 180, 13),
(147, 5, 81, 10),
(148, 3, 182, 28),
(149, 5, 60, 25),
(150, 2, 108, 26),
(151, 5, 170, 9),
(152, 6, 86, 26),
(153, 6, 103, 1),
(154, 5, 195, 15),
(155, 2, 160, 19),
(156, 4, 159, 7),
(157, 1, 153, 7),
(158, 5, 135, 13),
(159, 3, 141, 30),
(160, 3, 107, 30),
(161, 5, 48, 18),
(162, 6, 65, 25),
(163, 6, 56, 15),
(164, 2, 71, 18),
(165, 5, 43, 1),
(166, 1, 180, 16),
(167, 4, 166, 14),
(168, 4, 31, 27),
(169, 6, 116, 3),
(170, 1, 2, 14),
(171, 1, 193, 26),
(172, 4, 8, 18),
(173, 2, 144, 26),
(174, 3, 116, 28),
(175, 4, 183, 17),
(176, 3, 40, 3),
(177, 3, 123, 4),
(178, 5, 114, 17),
(179, 1, 21, 8),
(180, 4, 117, 30),
(181, 6, 66, 7),
(182, 3, 87, 9),
(183, 1, 75, 1),
(184, 6, 83, 21),
(185, 1, 25, 24),
(186, 2, 135, 7),
(187, 3, 145, 26),
(188, 6, 94, 22),
(189, 1, 68, 14),
(190, 4, 50, 10),
(191, 2, 7, 14),
(192, 3, 142, 20),
(193, 6, 155, 9),
(194, 2, 14, 8),
(195, 2, 141, 1),
(196, 3, 81, 11),
(197, 6, 172, 4),
(198, 2, 46, 5),
(199, 6, 161, 30),
(200, 3, 101, 10),
(201, 1, 52, 22),
(202, 4, 105, 12),
(203, 1, 79, 18),
(204, 5, 130, 4),
(205, 4, 24, 11),
(206, 5, 178, 7),
(207, 4, 164, 23),
(208, 6, 147, 23),
(209, 6, 134, 16),
(210, 5, 89, 5),
(211, 2, 64, 14),
(212, 3, 15, 26),
(213, 1, 161, 25),
(214, 5, 121, 14),
(215, 2, 48, 26),
(216, 5, 94, 17),
(217, 6, 68, 2),
(218, 1, 85, 7),
(219, 4, 128, 14),
(220, 4, 24, 16),
(221, 6, 81, 22),
(222, 4, 160, 4),
(223, 2, 103, 16),
(224, 5, 94, 17),
(225, 3, 38, 24),
(226, 5, 112, 8),
(227, 1, 84, 12),
(228, 5, 150, 14),
(229, 4, 14, 30),
(230, 5, 70, 19),
(231, 2, 111, 17),
(232, 6, 56, 16),
(233, 4, 112, 30),
(234, 2, 198, 22),
(235, 3, 93, 12),
(236, 3, 101, 25),
(237, 2, 70, 6),
(238, 1, 197, 20),
(239, 5, 18, 7),
(240, 6, 23, 10),
(241, 2, 108, 5),
(242, 2, 110, 1),
(243, 2, 155, 8),
(244, 4, 67, 15),
(245, 1, 69, 20),
(246, 1, 22, 19),
(247, 6, 110, 3),
(248, 1, 61, 8),
(249, 2, 60, 9),
(250, 6, 149, 26),
(251, 5, 44, 8),
(252, 5, 109, 21),
(253, 1, 59, 7),
(254, 6, 94, 22),
(255, 2, 162, 22),
(256, 1, 150, 5),
(257, 4, 153, 18),
(258, 5, 159, 18),
(259, 4, 78, 2),
(260, 1, 184, 7),
(261, 2, 152, 29),
(262, 1, 130, 1),
(263, 1, 106, 29),
(264, 1, 74, 19),
(265, 1, 17, 23),
(266, 6, 148, 8),
(267, 6, 160, 29),
(268, 1, 196, 26),
(269, 1, 89, 18),
(270, 3, 57, 9),
(271, 4, 108, 3),
(272, 6, 87, 26),
(273, 4, 40, 23),
(274, 3, 43, 25),
(275, 2, 121, 9),
(276, 5, 198, 8),
(277, 5, 10, 15),
(278, 3, 120, 3),
(279, 5, 47, 12),
(280, 5, 65, 21),
(281, 6, 195, 20),
(282, 2, 77, 24),
(283, 4, 87, 18),
(284, 2, 82, 27),
(285, 5, 177, 16),
(286, 6, 196, 27),
(287, 1, 21, 22),
(288, 6, 172, 1),
(289, 5, 164, 9),
(290, 3, 172, 23),
(291, 4, 4, 14),
(292, 1, 13, 16),
(293, 6, 138, 17),
(294, 4, 185, 8),
(295, 6, 164, 4),
(296, 6, 155, 28),
(297, 5, 115, 26),
(298, 5, 157, 24),
(299, 2, 130, 23),
(300, 2, 5, 10),
(301, 3, 20, 16),
(302, 1, 23, 21),
(303, 6, 159, 10),
(304, 6, 7, 25),
(305, 4, 27, 3),
(306, 3, 119, 17),
(307, 5, 62, 23),
(308, 1, 190, 5),
(309, 2, 13, 14),
(310, 1, 15, 22),
(311, 2, 131, 23),
(312, 2, 57, 9),
(313, 1, 178, 23),
(314, 5, 176, 15),
(315, 1, 109, 16),
(316, 2, 71, 1),
(317, 2, 99, 21),
(318, 3, 78, 9),
(319, 3, 59, 27),
(320, 3, 3, 11),
(321, 2, 165, 6),
(322, 3, 41, 19),
(323, 2, 154, 4),
(324, 5, 58, 7),
(325, 4, 16, 11),
(326, 5, 113, 27),
(327, 5, 125, 20),
(328, 5, 177, 11),
(329, 4, 105, 2),
(330, 4, 5, 24),
(331, 1, 194, 22),
(332, 6, 192, 6),
(333, 6, 133, 14),
(334, 5, 35, 12),
(335, 4, 56, 16),
(336, 3, 163, 7),
(337, 1, 189, 14),
(338, 6, 93, 10),
(339, 5, 110, 12),
(340, 3, 149, 11),
(341, 6, 115, 13),
(342, 3, 190, 9),
(343, 3, 12, 24),
(344, 6, 44, 10),
(345, 4, 68, 2),
(346, 1, 55, 17),
(347, 6, 152, 30),
(348, 3, 97, 7),
(349, 1, 198, 21),
(350, 4, 64, 25),
(351, 3, 126, 11),
(352, 4, 135, 10),
(353, 6, 110, 2),
(354, 1, 98, 10),
(355, 2, 151, 10),
(356, 3, 181, 23),
(357, 2, 144, 5),
(358, 6, 66, 10),
(359, 2, 182, 11),
(360, 4, 186, 22),
(361, 2, 80, 30),
(362, 2, 111, 5),
(363, 3, 167, 16),
(364, 5, 184, 12),
(365, 3, 200, 2),
(366, 2, 117, 12),
(367, 4, 51, 13),
(368, 6, 57, 29),
(369, 1, 107, 29),
(370, 1, 155, 18),
(371, 5, 21, 16),
(372, 5, 148, 16),
(373, 5, 126, 7),
(374, 1, 107, 28),
(375, 6, 73, 26),
(376, 1, 199, 27),
(377, 4, 148, 17),
(378, 2, 15, 12),
(379, 5, 148, 11),
(380, 2, 61, 25),
(381, 2, 119, 20),
(382, 2, 71, 15),
(383, 2, 52, 20),
(384, 3, 131, 23),
(385, 2, 110, 26),
(386, 5, 135, 17),
(387, 2, 34, 18),
(388, 6, 172, 14),
(389, 2, 122, 15),
(390, 4, 56, 5),
(391, 5, 95, 26),
(392, 4, 133, 20),
(393, 2, 135, 3),
(394, 5, 177, 29),
(395, 2, 41, 8),
(396, 6, 51, 3),
(397, 2, 39, 7),
(398, 5, 151, 12),
(399, 2, 29, 6),
(400, 2, 22, 30),
(401, 5, 25, 17),
(402, 2, 86, 28),
(403, 5, 72, 22),
(404, 5, 73, 4),
(405, 4, 179, 4),
(406, 6, 37, 26),
(407, 1, 149, 29),
(408, 5, 56, 22),
(409, 2, 32, 3),
(410, 2, 71, 18),
(411, 4, 19, 18),
(412, 3, 73, 9),
(413, 1, 56, 18),
(414, 3, 83, 28),
(415, 2, 134, 16),
(416, 4, 177, 10),
(417, 3, 94, 3),
(418, 4, 68, 23),
(419, 6, 163, 11),
(420, 2, 164, 12),
(421, 6, 83, 29),
(422, 1, 23, 29),
(423, 4, 79, 24),
(424, 6, 88, 11),
(425, 4, 64, 27),
(426, 2, 123, 29),
(427, 6, 28, 23),
(428, 3, 190, 13),
(429, 6, 153, 29),
(430, 3, 67, 9),
(431, 3, 14, 25),
(432, 5, 125, 9),
(433, 3, 98, 29),
(434, 2, 76, 30),
(435, 4, 50, 5),
(436, 6, 72, 8),
(437, 1, 180, 16),
(438, 6, 39, 24),
(439, 3, 143, 21),
(440, 1, 173, 25),
(441, 6, 23, 6),
(442, 5, 60, 23),
(443, 6, 92, 17),
(444, 5, 171, 23),
(445, 6, 41, 16),
(446, 3, 148, 4),
(447, 1, 24, 20),
(448, 5, 156, 19),
(449, 5, 33, 8),
(450, 2, 145, 8),
(451, 3, 30, 14),
(452, 4, 97, 14),
(453, 1, 172, 25),
(454, 2, 76, 30),
(455, 5, 162, 1),
(456, 6, 23, 3),
(457, 4, 181, 8),
(458, 3, 39, 19),
(459, 6, 37, 17),
(460, 3, 127, 19),
(461, 3, 183, 8),
(462, 5, 131, 24),
(463, 3, 166, 1),
(464, 6, 100, 15),
(465, 3, 46, 9),
(466, 6, 86, 24),
(467, 1, 183, 1),
(468, 2, 134, 22),
(469, 3, 2, 13),
(470, 6, 52, 5),
(471, 6, 132, 2),
(472, 5, 7, 6),
(473, 5, 103, 8),
(474, 5, 79, 24),
(475, 3, 7, 14),
(476, 4, 56, 18),
(477, 4, 195, 15),
(478, 1, 116, 23),
(479, 6, 144, 25),
(480, 5, 105, 20),
(481, 6, 74, 17),
(482, 6, 186, 9),
(483, 2, 186, 21),
(484, 6, 62, 6),
(485, 4, 184, 13),
(486, 4, 51, 13),
(487, 4, 166, 16),
(488, 3, 118, 5),
(489, 4, 29, 3),
(490, 2, 17, 4),
(491, 3, 58, 21),
(492, 4, 109, 8),
(493, 4, 178, 30),
(494, 2, 180, 1),
(495, 4, 64, 16),
(496, 4, 64, 16),
(497, 5, 187, 12),
(498, 4, 164, 18),
(499, 5, 102, 15),
(500, 2, 90, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idPedido` int(11) NOT NULL,
  `dataPedido` datetime DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idPedido`, `dataPedido`, `idCliente`) VALUES
(1, '2019-03-11 00:00:00', 32),
(2, '2019-03-30 00:00:00', 38),
(3, '2019-03-04 00:00:00', NULL),
(4, '2019-03-10 00:00:00', 51),
(5, '2019-03-27 00:00:00', 38),
(6, '2019-03-17 00:00:00', 19),
(7, '2019-03-09 00:00:00', 6),
(8, '2019-03-13 00:00:00', 43),
(9, '2019-03-30 00:00:00', 47),
(10, '2019-03-09 00:00:00', 5),
(11, '2019-03-11 00:00:00', 37),
(12, '2019-03-06 00:00:00', 36),
(13, '2019-03-07 00:00:00', 33),
(14, '2019-03-03 00:00:00', 45),
(15, '2019-03-12 00:00:00', 44),
(16, '2019-03-26 00:00:00', 42),
(17, '2019-03-11 00:00:00', 51),
(18, '2019-03-04 00:00:00', 43),
(19, '2019-03-29 00:00:00', 21),
(20, '2019-03-29 00:00:00', 17),
(21, '2019-03-07 00:00:00', 24),
(22, '2019-03-05 00:00:00', 1),
(23, '2019-03-25 00:00:00', NULL),
(24, '2019-03-27 00:00:00', 3),
(25, '2019-03-11 00:00:00', 17),
(26, '2019-03-30 00:00:00', 50),
(27, '2019-03-26 00:00:00', NULL),
(28, '2019-03-03 00:00:00', 37),
(29, '2019-03-27 00:00:00', 17),
(30, '2019-03-18 00:00:00', 52),
(31, '2019-03-20 00:00:00', 50),
(32, '2019-03-20 00:00:00', 32),
(33, '2019-03-30 00:00:00', NULL),
(34, '2019-03-29 00:00:00', 10),
(35, '2019-03-11 00:00:00', 33),
(36, '2019-03-05 00:00:00', 41),
(37, '2019-03-02 00:00:00', 26),
(38, '2019-03-01 00:00:00', 45),
(39, '2019-03-22 00:00:00', 54),
(40, '2019-03-23 00:00:00', 36),
(41, '2019-03-24 00:00:00', 9),
(42, '2019-03-05 00:00:00', 53),
(43, '2019-03-18 00:00:00', 13),
(44, '2019-03-08 00:00:00', 19),
(45, '2019-03-25 00:00:00', 14),
(46, '2019-03-28 00:00:00', 14),
(47, '2019-03-23 00:00:00', 8),
(48, '2019-03-01 00:00:00', 9),
(49, '2019-03-17 00:00:00', 20),
(50, '2019-03-18 00:00:00', 11),
(51, '2019-03-01 00:00:00', 40),
(52, '2019-03-20 00:00:00', 43),
(53, '2019-03-02 00:00:00', 48),
(54, '2019-03-03 00:00:00', 8),
(55, '2019-03-14 00:00:00', 13),
(56, '2019-03-22 00:00:00', 21),
(57, '2019-03-12 00:00:00', 41),
(58, '2019-03-03 00:00:00', 41),
(59, '2019-03-03 00:00:00', 4),
(60, '2019-03-09 00:00:00', 43),
(61, '2019-03-04 00:00:00', NULL),
(62, '2019-03-03 00:00:00', 44),
(63, '2019-03-13 00:00:00', 36),
(64, '2019-03-27 00:00:00', 30),
(65, '2019-03-18 00:00:00', 38),
(66, '2019-03-29 00:00:00', 25),
(67, '2019-03-01 00:00:00', NULL),
(68, '2019-03-22 00:00:00', 49),
(69, '2019-03-11 00:00:00', 49),
(70, '2019-03-02 00:00:00', 33),
(71, '2019-03-11 00:00:00', 20),
(72, '2019-03-13 00:00:00', 28),
(73, '2019-03-15 00:00:00', 28),
(74, '2019-03-06 00:00:00', 19),
(75, '2019-03-13 00:00:00', 33),
(76, '2019-03-08 00:00:00', 5),
(77, '2019-03-29 00:00:00', 12),
(78, '2019-03-01 00:00:00', 35),
(79, '2019-03-19 00:00:00', NULL),
(80, '2019-03-26 00:00:00', 49),
(81, '2019-03-25 00:00:00', 39),
(82, '2019-03-24 00:00:00', 1),
(83, '2019-03-21 00:00:00', NULL),
(84, '2019-03-23 00:00:00', 51),
(85, '2019-03-04 00:00:00', 18),
(86, '2019-03-11 00:00:00', 29),
(87, '2019-03-22 00:00:00', 10),
(88, '2019-03-01 00:00:00', 6),
(89, '2019-03-14 00:00:00', NULL),
(90, '2019-03-07 00:00:00', 35),
(91, '2019-03-05 00:00:00', 31),
(92, '2019-03-11 00:00:00', 25),
(93, '2019-03-03 00:00:00', 26),
(94, '2019-03-26 00:00:00', 51),
(95, '2019-03-30 00:00:00', 29),
(96, '2019-03-10 00:00:00', 49),
(97, '2019-03-06 00:00:00', NULL),
(98, '2019-03-10 00:00:00', 3),
(99, '2019-03-07 00:00:00', 45),
(100, '2019-03-29 00:00:00', 35),
(101, '2019-03-12 00:00:00', 3),
(102, '2019-03-01 00:00:00', NULL),
(103, '2019-03-06 00:00:00', 37),
(104, '2019-03-21 00:00:00', 9),
(105, '2019-03-21 00:00:00', 34),
(106, '2019-03-02 00:00:00', 36),
(107, '2019-03-18 00:00:00', 46),
(108, '2019-03-22 00:00:00', 44),
(109, '2019-03-24 00:00:00', NULL),
(110, '2019-03-16 00:00:00', NULL),
(111, '2019-03-12 00:00:00', 38),
(112, '2019-03-26 00:00:00', 18),
(113, '2019-03-10 00:00:00', 51),
(114, '2019-03-30 00:00:00', 28),
(115, '2019-03-25 00:00:00', 22),
(116, '2019-03-27 00:00:00', 29),
(117, '2019-03-28 00:00:00', 37),
(118, '2019-03-07 00:00:00', 52),
(119, '2019-03-07 00:00:00', 19),
(120, '2019-03-11 00:00:00', 37),
(121, '2019-03-20 00:00:00', 11),
(122, '2019-03-11 00:00:00', 31),
(123, '2019-03-30 00:00:00', NULL),
(124, '2019-03-29 00:00:00', 3),
(125, '2019-03-14 00:00:00', 10),
(126, '2019-03-20 00:00:00', 7),
(127, '2019-03-28 00:00:00', 25),
(128, '2019-03-26 00:00:00', 35),
(129, '2019-03-20 00:00:00', NULL),
(130, '2019-03-26 00:00:00', 52),
(131, '2019-03-10 00:00:00', 43),
(132, '2019-03-14 00:00:00', 35),
(133, '2019-03-18 00:00:00', 4),
(134, '2019-03-12 00:00:00', 1),
(135, '2019-03-18 00:00:00', 25),
(136, '2019-03-24 00:00:00', 38),
(137, '2019-03-16 00:00:00', 55),
(138, '2019-03-04 00:00:00', 54),
(139, '2019-03-28 00:00:00', 27),
(140, '2019-03-23 00:00:00', 33),
(141, '2019-03-17 00:00:00', 17),
(142, '2019-03-13 00:00:00', 46),
(143, '2019-03-25 00:00:00', 53),
(144, '2019-03-01 00:00:00', 21),
(145, '2019-03-13 00:00:00', 50),
(146, '2019-03-08 00:00:00', 29),
(147, '2019-03-04 00:00:00', 15),
(148, '2019-03-08 00:00:00', 12),
(149, '2019-03-23 00:00:00', 42),
(150, '2019-03-09 00:00:00', 54),
(151, '2019-03-27 00:00:00', 2),
(152, '2019-03-15 00:00:00', 40),
(153, '2019-03-26 00:00:00', 10),
(154, '2019-03-01 00:00:00', 20),
(155, '2019-03-22 00:00:00', 7),
(156, '2019-03-18 00:00:00', 48),
(157, '2019-03-02 00:00:00', 11),
(158, '2019-03-25 00:00:00', 6),
(159, '2019-03-17 00:00:00', 10),
(160, '2019-03-10 00:00:00', 21),
(161, '2019-03-16 00:00:00', 2),
(162, '2019-03-14 00:00:00', 27),
(163, '2019-03-09 00:00:00', 26),
(164, '2019-03-17 00:00:00', 3),
(165, '2019-03-28 00:00:00', NULL),
(166, '2019-03-19 00:00:00', NULL),
(167, '2019-03-06 00:00:00', 13),
(168, '2019-03-12 00:00:00', NULL),
(169, '2019-03-20 00:00:00', 4),
(170, '2019-03-03 00:00:00', 47),
(171, '2019-03-02 00:00:00', 48),
(172, '2019-03-16 00:00:00', 9),
(173, '2019-03-10 00:00:00', 18),
(174, '2019-03-16 00:00:00', 40),
(175, '2019-03-08 00:00:00', 12),
(176, '2019-03-14 00:00:00', 40),
(177, '2019-03-26 00:00:00', 16),
(178, '2019-03-29 00:00:00', 7),
(179, '2019-03-09 00:00:00', 33),
(180, '2019-03-01 00:00:00', 4),
(181, '2019-03-21 00:00:00', 42),
(182, '2019-03-10 00:00:00', 48),
(183, '2019-03-23 00:00:00', NULL),
(184, '2019-03-07 00:00:00', 44),
(185, '2019-03-18 00:00:00', 40),
(186, '2019-03-25 00:00:00', NULL),
(187, '2019-03-25 00:00:00', 3),
(188, '2019-03-03 00:00:00', 33),
(189, '2019-03-21 00:00:00', NULL),
(190, '2019-03-25 00:00:00', 15),
(191, '2019-03-09 00:00:00', 8),
(192, '2019-03-07 00:00:00', 8),
(193, '2019-03-15 00:00:00', 45),
(194, '2019-03-28 00:00:00', NULL),
(195, '2019-03-12 00:00:00', 46),
(196, '2019-03-13 00:00:00', 30),
(197, '2019-03-12 00:00:00', 12),
(198, '2019-03-01 00:00:00', 27),
(199, '2019-03-20 00:00:00', 37),
(200, '2019-03-16 00:00:00', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProduto` int(11) NOT NULL,
  `produto` varchar(100) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProduto`, `produto`, `preco`, `idCategoria`) VALUES
(1, 'Toalha de mesa', 45, 1),
(2, 'Geladeira 1 porta Electrolux Cycle', 1274, 2),
(3, 'Fogao 4 bocas Esmaltec Bali', 422, 2),
(4, 'Notebook', 1200, 3),
(5, 'Tablet', 900, 3),
(6, 'Ultrabook', 2100, 3),
(7, 'Sofa', 1500, 4),
(8, 'Cama', 800, 4),
(9, 'Cadeira', 400, 4),
(10, 'Mesa', 1450, 4),
(11, 'Calca', 59.99, 5),
(12, 'Camisa', 44.99, 5),
(13, 'Blusa', 80.9, 5),
(14, 'Short', 40.5, 5),
(15, 'Meia', 15.25, 5),
(16, 'CD Player', 180, 6),
(17, 'Microsystem', 1350.75, 6),
(18, 'TV', 1459.99, 6),
(19, 'Blue Ray', 724.99, 6),
(20, 'Home Teather', 1879.99, 6),
(21, 'IPhone Xs', 6769.67, 7),
(22, 'Galaxy M10', 699, 7),
(23, 'Moto G6', 829, 7),
(24, 'Calça Jeans Levis Feminina 720', 279.9, 5),
(25, 'Protetor de travesseiro Percal', 19.9, 1),
(26, 'Jogo de Cama Casal 150 fios', 179.9, 1),
(27, 'Fronha Avulsa Cetim 300', 29.9, 1),
(28, 'Jogo de Cama Casal 135 fios - Angelita Azul', 157.9, 1),
(29, 'Fogão de mesa 4 bocas', 166, 2),
(30, 'Geladeira 2 portas Consul CRD37EB', 1559, 2),
(31, 'Lampada de Teto', 20, NULL),
(32, 'CADERNO JANDAIA 96 fls', 7.5, 8),
(33, 'Casinha PET 50cmx20cmx50cm', 200, 9),
(34, 'CADERNO JANDAIA 96 fls', 7.5, 8),
(35, 'CASA PET 20x20x50', 200, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idCliente`,`nome`);

--
-- Indexes for table `detpedidos`
--
ALTER TABLE `detpedidos`
  ADD PRIMARY KEY (`iddetPedido`),
  ADD KEY `idPedido` (`idPedido`),
  ADD KEY `idProduto` (`idProduto`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idPedido`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `detpedidos`
--
ALTER TABLE `detpedidos`
  MODIFY `iddetPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `detpedidos`
--
ALTER TABLE `detpedidos`
  ADD CONSTRAINT `detpedidos_ibfk_1` FOREIGN KEY (`idPedido`) REFERENCES `pedidos` (`idPedido`),
  ADD CONSTRAINT `detpedidos_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `produtos` (`idProduto`);

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

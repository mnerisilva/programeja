-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Ago-2022 às 05:53
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programeja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descricao_categoria` varchar(50) NOT NULL,
  `abrev_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descricao_categoria`, `abrev_categoria`) VALUES
(1, 'css', 'css'),
(2, 'html', 'html'),
(3, 'javascritpt', 'js'),
(4, 'sem categoria', 'sem categoria'),
(6, 'Lógica de programação', 'Lógica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `id_conteudo_indice` int(11) NOT NULL,
  `conteudo_descricao` varchar(150) NOT NULL,
  `conteudo_codigoyoutube` varchar(30) NOT NULL,
  `id_conteudotipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id_conteudo`, `id_conteudo_indice`, `conteudo_descricao`, `conteudo_codigoyoutube`, `id_conteudotipo`) VALUES
(5, 5, 'HTML em 7 minutos', '0X1OUnQuY5c', 2),
(6, 6, '10 ideias de projetos em HTML e CSS para adicionar no portfólio!', 'y4ltLH9iK8E', 2),
(84, 84, 'HTML o ESSENCIAL pra programação Front-end', 'qHHXjEmOJyk', 2),
(85, 85, 'Como INSERIR IMAGEM no HTML - COMPLETO!!!! Passo a Passo!', '6U0l5cVAef0', 2),
(86, 86, 'HTML in 100 Seconds', 'ok-plXXHlWw', 2),
(87, 87, 'O que é HTML 2022 - Hostinger Brasil', 'jOqaeGC90D0', 2),
(88, 88, 'Aprendendo o básico de html (web) | Web #1', 'DG8b1Ud4Mr8', 2),
(89, 89, 'Curso de JavaScript para iniciantes - aprenda os fundamentos de JavaScript', 'hyMCPZNLXps', 2),
(90, 90, 'JAVASCRIPT FUNDAMENTOS - 044 - PROPRIEDADES E MÉTODOS PRIVADOS', 'lbN2c989Pa8', 2),
(91, 91, 'Tutorial JavaScript - fundamentos da linguagem', 'x9KfwLds33Y', 2),
(92, 92, 'JavaScript para Iniciantes 2020 - 100% Prático!', 'WcIIUmDch94', 2),
(93, 93, 'APRENDA CSS EM 10 MINUTOS', 'lsxBlQWNdUQ', 2),
(94, 94, 'CSS3: Aprenda como Funciona a Estrutura CSS', 'qdTDp7Wr0DU', 2),
(95, 95, 'O QUE É CSS? (SELETORES, PROPRIEDADES E VALORES)', 'LWU2OR19ZG4', 2),
(96, 96, 'CSS (Cascading Style Sheets) // Dicionário do Programador', '229xfk3EEM8', 2),
(97, 97, 'A malas sem alça', '0X1OUnQuY5c', 2),
(98, 98, 'Como a Internet funciona? - @Curso em Vídeo HTML5 e CSS3', 'nlO5hySqJFA', 2),
(99, 99, 'Lógica de Programação - Aula 01 - Introdução', '4ZAOWlZRbZk', 2),
(100, 100, 'Aprendendo Lógica de Programação', 'AhHPE_93nAk', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_indice`
--

CREATE TABLE `conteudo_indice` (
  `id_conteudo_indice` int(11) NOT NULL,
  `id_conteudotipo` int(11) NOT NULL,
  `conteudo_titulo` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conteudo_indice`
--

INSERT INTO `conteudo_indice` (`id_conteudo_indice`, `id_conteudotipo`, `conteudo_titulo`, `id_categoria`, `id_subcategoria`) VALUES
(4, 2, 'Os setes pecados da gula', 2, 0),
(5, 2, 'HTML em 7 minutos', 2, 0),
(6, 2, '10 ideias de projetos em HTML e CSS para adicionar no portfólio!', 2, 0),
(60, 2, 'HTML em 7 minutos', 2, 0),
(61, 2, 'HTML 5 - Meu primeiro Hello World em HTML (Aula 01)', 2, 0),
(62, 2, 'TUTORIAL BÁSICO HTML e CSS: Introdução a código para não-programadores', 2, 0),
(63, 2, 'Curso HTML Completo (4 Horas)', 2, 0),
(64, 2, 'O MÍNIMO NECESSÁRIO PARA SER UM DESENVOLVEDOR', 2, 0),
(71, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(72, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(73, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(74, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(75, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(76, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(77, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(78, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(79, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(80, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(81, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(82, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(83, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(84, 2, 'HTML o ESSENCIAL pra programação Front-end', 2, 0),
(85, 2, 'Como INSERIR IMAGEM no HTML - COMPLETO!!!! Passo a Passo!', 2, 0),
(86, 2, 'HTML in 100 Seconds', 2, 0),
(87, 2, 'O que é HTML 2022 - Hostinger Brasil', 2, 0),
(88, 2, 'Aprendendo o básico de html (web) | Web #1', 2, 0),
(89, 2, 'Curso de JavaScript para iniciantes - aprenda os fundamentos de JavaScript', 3, 0),
(90, 2, 'JAVASCRIPT FUNDAMENTOS - 044 - PROPRIEDADES E MÉTODOS PRIVADOS', 3, 0),
(91, 2, 'Tutorial JavaScript - fundamentos da linguagem', 3, 0),
(92, 2, 'JavaScript para Iniciantes 2020 - 100% Prático!', 3, 0),
(93, 2, 'APRENDA CSS EM 10 MINUTOS', 1, 0),
(94, 2, 'CSS3: Aprenda como Funciona a Estrutura CSS', 1, 0),
(95, 2, 'O QUE É CSS? (SELETORES, PROPRIEDADES E VALORES)', 1, 0),
(96, 2, 'CSS (Cascading Style Sheets) // Dicionário do Programador', 1, 0),
(97, 2, 'A malas sem alça', 1, 0),
(98, 2, 'Como a Internet funciona? - @Curso em Vídeo HTML5 e CSS3', 2, 0),
(99, 2, 'Lógica de Programação - Aula 01 - Introdução', 6, 0),
(100, 2, 'Aprendendo Lógica de Programação', 6, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_tipo`
--

CREATE TABLE `conteudo_tipo` (
  `id_conteudotipo` int(11) NOT NULL,
  `descricao_tipo` varchar(150) NOT NULL,
  `icone_tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `conteudo_tipo`
--

INSERT INTO `conteudo_tipo` (`id_conteudotipo`, `descricao_tipo`, `icone_tipo`) VALUES
(1, 'link', '<i class=\"fa-solid fa-link\"></i>'),
(2, 'video', '<i class=\"fa-brands fa-youtube\"></i>'),
(3, 'playlist', '<i class=\"fa-solid fa-list\"></i>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `id_conteudo` int(11) NOT NULL,
  `trilha_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_title` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `post` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `post_datepublish` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_dateupdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`post_id`, `id_conteudo`, `trilha_id`, `user_id`, `post_title`, `post`, `post_datepublish`, `post_dateupdate`) VALUES
(55, 86, 51, 29, 'Os profissionais de programação', '<p>Os profissionais de programa&ccedil;&atilde;o s&atilde;o muito requisitados. Os sal&aacute;rios s&atilde;o muito atrativos.</p>\n\n<p>M&eacute;dia salarial dos profissionais:</p>\n\n<p>Junior: &nbsp; &nbsp; &nbsp; R$ &nbsp; <strong>4.000,00</strong><br />\nS&ecirc;nior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 8.000,00<br />\nPleno: &nbsp; &nbsp; &nbsp; &nbsp;R$ 10.000,00</p>\n', '2022-08-18 12:47:25', '2022-08-18 12:47:25'),
(56, 86, 51, 29, 'O que faz um Programador?', '<p>O que faz um Programador?</p>\n\n<p>O programador &eacute; o profissional que cria, desenvolve e mant&eacute;m diferentes tipos de softwares em sistemas amplos ou para uso em computadores pessoais. Ele usa linguagens de programa&ccedil;&atilde;o, como html, java, c++, para criar comandos em programas, criando novas funcionalidades e utilidades.</p>\n\n<p>Os programadores desenvolvem e aperfei&ccedil;oam websites, aplicativos, programas de computador, sistemas operacionais, sistemas de empresas, redes sociais, com infinitas possibilidades de atua&ccedil;&atilde;o quando falamos de algo t&atilde;o extenso quanto a rede e a tecnologia. Por isso, &eacute; um profissional cada vez mais essencial em qualquer ramo do mercado de trabalho.</p>\n\n<p>O programador tamb&eacute;m lida com coleta de dados de usu&aacute;rios e posterior an&aacute;lise para tomadas de decis&otilde;es assertivas e bem fundamentadas no desenvolvimento de produtos e servi&ccedil;os.<br />\n&nbsp;</p>\n', '2022-08-18 13:15:58', '2022-08-18 13:15:58'),
(70, 86, 51, 29, 'Reputação dos profissionais de programação', '<p>Os profissionais de programa&ccedil;&atilde;o s&atilde;o muito requisitados. Os sal&aacute;rios s&atilde;o muito atrativos.</p>\n\n<p>M&eacute;dia salarial dos profissionais:</p>\n\n<p>Junior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 4.000,00<br />\nS&ecirc;nior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 8.000,00<br />\nPleno: &nbsp; &nbsp; &nbsp; &nbsp;R$ 10.000,00</p>\n', '2022-08-18 23:10:39', '2022-08-18 23:10:39'),
(93, 86, 51, 29, 'Entenda quais as funções de um programador', '<p>Para quem deseja atuar na &aacute;rea ou est&aacute; buscando mais informa&ccedil;&otilde;es a respeito da profiss&atilde;o, &eacute; interessante entender quais s&atilde;o as suas fun&ccedil;&otilde;es desempenhadas profissionalmente e quais os principais conhecimentos que algu&eacute;m que atua na &aacute;rea deve ter.</p>\n\n<p>Por estar em forte crescimento, a &aacute;rea de programa&ccedil;&atilde;o &eacute; uma excelente op&ccedil;&atilde;o profissional, mas &eacute; necess&aacute;rio saber que n&atilde;o basta ter o interesse por computadores. &Eacute; essencial ter racioc&iacute;nio l&oacute;gico, sendo interessante tamb&eacute;m conhecimentos de ingl&ecirc;s, para compreender o conte&uacute;do t&eacute;cnico e, tamb&eacute;m, estudar uma ou mais linguagens de programa&ccedil;&atilde;o.<br />\n&nbsp;</p>\n', '2022-08-19 00:29:17', '2022-08-19 00:29:17'),
(98, 86, 51, 29, 'De acordo com seu estado', '<p>Um dos principais pontos a se levar em considera&ccedil;&atilde;o &eacute; entender em qual estado do pa&iacute;s a pessoa se encontra, j&aacute; que existe uma grande varia&ccedil;&atilde;o salarial entre os estados, de acordo com a demanda, a maturidade do mercado profissional e a oferta de profissionais capacitados.</p>\n\n<p>Em geral, os estados de S&atilde;o Paulo, Rio Grande do Sul, Santa Catarina, Paran&aacute; e Distrito Federal apresentam uma m&eacute;dia salarial mais alta para os cargos na &aacute;rea de programa&ccedil;&atilde;o, enquanto estados como Bahia, Esp&iacute;rito Santo, Cear&aacute;, Pernambuco e Minas Gerais costumam ter uma m&eacute;dia salarial menor.<br />\n&nbsp;</p>\n', '2022-08-19 01:29:23', '2022-08-19 01:29:23'),
(100, 86, 51, 29, 'Entenda quais as funções de um programador', '<p>Para quem deseja atuar na &aacute;rea ou est&aacute; buscando mais informa&ccedil;&otilde;es a respeito da profiss&atilde;o, &eacute; interessante entender quais s&atilde;o as suas fun&ccedil;&otilde;es desempenhadas profissionalmente e quais os principais conhecimentos que algu&eacute;m que atua na &aacute;rea deve ter.</p>\n\n<h3><strong><span style=\"color:#e74c3c\">Entenda.</span></strong></h3>\n\n<p>Por estar em forte crescimento, a &aacute;rea de programa&ccedil;&atilde;o &eacute; uma excelente op&ccedil;&atilde;o profissional, mas &eacute; necess&aacute;rio saber que n&atilde;o basta ter o interesse por computadores. &Eacute; essencial ter racioc&iacute;nio l&oacute;gico, sendo interessante tamb&eacute;m conhecimentos de ingl&ecirc;s, para compreender o conte&uacute;do t&eacute;cnico e, tamb&eacute;m, estudar uma ou mais linguagens de programa&ccedil;&atilde;o.<br />\n&nbsp;</p>\n', '2022-08-19 03:08:47', '2022-08-19 03:08:47'),
(101, 99, 8, 29, 'Reputação dos profissionais de programação', '<p>Os <strong>profissionais </strong>de programa&ccedil;&atilde;o s&atilde;o muito requisitados. Os sal&aacute;rios s&atilde;o muito atrativos.</p>\n\n<p>M&eacute;dia salarial dos profissionais:</p>\n\n<p>Junior: &nbsp; &nbsp; &nbsp; R$ <s>&nbsp; 4.000,00</s><br />\nS&ecirc;nior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 8.000,00<br />\nPleno: &nbsp; &nbsp; &nbsp; &nbsp;R$ 10.000,00</p>\n', '2022-08-19 03:11:52', '2022-08-19 03:11:52');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id_subcategoria` int(11) NOT NULL,
  `descricao_subcategoria` varchar(50) NOT NULL,
  `abrev_subcategoria` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `trilha`
--

CREATE TABLE `trilha` (
  `trilha_id` int(11) NOT NULL,
  `trilha_name` varchar(250) NOT NULL,
  `trilha_type_id` int(11) NOT NULL,
  `trilha_descricao` text NOT NULL,
  `trilha_nomeamigavel` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `trilha_status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `trilha`
--

INSERT INTO `trilha` (`trilha_id`, `trilha_name`, `trilha_type_id`, `trilha_descricao`, `trilha_nomeamigavel`, `id_categoria`, `trilha_status_id`) VALUES
(1, 'Html nível básico trilha 1', 1, 'Trilha html básica geral', 'Html 1', 2, 1),
(2, 'Css básico nível 1', 1, 'Aula introdutório css.', 'Css básico nível 1', 1, 1),
(3, 'Fundamentos de Javascript I', 1, 'Comando básicos e visão geral.', 'Fundamentos de Javascript I', 3, 1),
(6, 'Banco de dados', 1, 'Banco de dados', 'Banco de dados', 1, 1),
(8, 'Iniciando com lógica de programação', 1, 'Primeiros passos na disciplina.', 'Iniciando com lógica de programação', 6, 1),
(9, 'Html nível básico trilha 2', 1, 'Fase 2 dos fundamentos de html', 'Html 2', 2, 2),
(51, 'Primeiro Html', 1, 'Primeiro Html', 'Primeiro Html', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `trilha_status`
--

CREATE TABLE `trilha_status` (
  `trilha_status_id` int(11) NOT NULL,
  `trilha_status_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `trilha_status`
--

INSERT INTO `trilha_status` (`trilha_status_id`, `trilha_status_name`) VALUES
(1, 'on'),
(2, 'off');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trilha_tipo`
--

CREATE TABLE `trilha_tipo` (
  `trilha_type_id` int(11) NOT NULL,
  `trilha_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `trilha_tipo`
--

INSERT INTO `trilha_tipo` (`trilha_type_id`, `trilha_type_name`) VALUES
(1, 'geral'),
(2, 'provisória');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trilha_videos`
--

CREATE TABLE `trilha_videos` (
  `trilha_videos_id` int(11) NOT NULL,
  `trilha_id` int(11) NOT NULL,
  `id_conteudo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `trilha_videos`
--

INSERT INTO `trilha_videos` (`trilha_videos_id`, `trilha_id`, `id_conteudo`) VALUES
(1, 1, 5),
(2, 1, 84),
(3, 1, 86),
(4, 1, 6),
(7, 2, 93),
(8, 2, 94),
(9, 2, 95),
(10, 2, 96),
(11, 3, 89),
(12, 3, 90),
(13, 3, 91),
(14, 3, 92),
(15, 1, 85),
(17, 1, 88),
(26, 2, 6),
(30, 2, 97),
(31, 2, 88),
(33, 1, 97),
(34, 1, 93),
(35, 51, 85),
(36, 51, 5),
(37, 51, 86),
(38, 8, 99),
(39, 8, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_sexo` varchar(1) NOT NULL,
  `user_access_type` int(3) NOT NULL,
  `user_whatsapp` varchar(50) NOT NULL,
  `user_logradouro` varchar(200) NOT NULL,
  `user_numero` varchar(15) NOT NULL,
  `user_complemento` varchar(100) NOT NULL,
  `user_cep` varchar(8) NOT NULL,
  `user_bairro` varchar(100) NOT NULL,
  `user_cidade` varchar(100) NOT NULL,
  `user_uf` varchar(2) NOT NULL,
  `user_cpf` varchar(11) NOT NULL,
  `user_idade` varchar(15) NOT NULL,
  `user_login` varchar(30) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_pix` varchar(100) NOT NULL,
  `user_photo` varchar(400) NOT NULL,
  `user_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_sexo`, `user_access_type`, `user_whatsapp`, `user_logradouro`, `user_numero`, `user_complemento`, `user_cep`, `user_bairro`, `user_cidade`, `user_uf`, `user_cpf`, `user_idade`, `user_login`, `user_password`, `user_pix`, `user_photo`, `user_date`) VALUES
(1, 'Marcio Henrique da Silva', 'marciosilva@xpto.com', '1', 2, '', '', '', '', '', '', '', '', '', '', '', '123456', '', 'https://userstock.io/data/wp-content/uploads/2020/05/imansyah-muhamad-putera-n4KewLKFOZw-1024x1024.jpg', ''),
(2, 'Giberto Pereira Santos', 'gilbertosantos@xpto.com', '1', 2, '', '', '', '', '88085888', '', '', '', '', '', '', '123456', '', 'https://userstock.io/data/wp-content/uploads/2020/06/tyler-nix-PQeoQdkU9jQ-1024x1024.jpg', ''),
(3, 'Sandra Mara Garcia', 'sandragarcia@xpto.com', '2', 2, '', '', '', '', '', '', '', '', '', '', '', '123456', '', 'https://userstock.io/data/wp-content/uploads/2017/09/janko-ferlic-289675-1024x1021.jpg', ''),
(13, 'Julia Cristina Carvalho', 'juliacristinaxpto@xpto.com', '2', 2, '44949499499', 'rua das acácias', '12', 'fundos', '88888888', 'Centro', 'Florianópolis', 'SC', '55555555555', '30', '', '', 'julia@sdfdsfdsa', 'https://userstock.io/data/wp-content/uploads/2017/09/michael-dam-258165-300x300.jpg', ''),
(28, 'Mauro Gonçalves Oliveira', 'mauro@xpto.com', '1', 2, '48988026426', 'Rua das Casas', '15', '', '88085260', 'Centro', 'Florianópolis', 'SC', '55853676920', '26', 'mauro@xpto.com', '', 'mauro@dfsfsdf', 'images/users/avatar.png', ''),
(29, 'Adriele Santos', 'nana@xpto.com', '2', 2, '48488999999', 'Rua das Casas', '15', 'funcods', '88888888', 'Centro', 'São José', 'SC', '99999999999', '30', 'nana@xpto.com', 'e10adc3949ba59abbe56e057f20f883e', 'nana@dfddfsd', 'https://userstock.io/data/wp-content/uploads/2017/07/pexels-photo-26939-1-300x300.jpg', ''),
(30, 'Marcelo Neri da Silva', 'marceloneri@gmail.com', '1', 1, '48988026426', 'Rua Fernando Ferreira de Mello', '234', 'bloco B apto 201', '88085260', 'Bom Abrigo', 'Florianópolis', 'SC', '55853676920', '58', 'marceloneri@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'marcelo@dfdfsdsdf', 'images/users/foto_marcelo.jpg', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_trilha`
--

CREATE TABLE `user_trilha` (
  `usertrilha_id` int(11) NOT NULL,
  `trilha_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `user_trilha`
--

INSERT INTO `user_trilha` (`usertrilha_id`, `trilha_id`, `user_id`) VALUES
(1, 1, 3),
(2, 51, 3),
(3, 51, 29),
(4, 8, 29);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Marcelo Neri', 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Adriele Santos', 'nana', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indexes for table `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id_conteudo`);

--
-- Indexes for table `conteudo_indice`
--
ALTER TABLE `conteudo_indice`
  ADD PRIMARY KEY (`id_conteudo_indice`);

--
-- Indexes for table `conteudo_tipo`
--
ALTER TABLE `conteudo_tipo`
  ADD PRIMARY KEY (`id_conteudotipo`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Indexes for table `trilha`
--
ALTER TABLE `trilha`
  ADD PRIMARY KEY (`trilha_id`);

--
-- Indexes for table `trilha_status`
--
ALTER TABLE `trilha_status`
  ADD PRIMARY KEY (`trilha_status_id`);

--
-- Indexes for table `trilha_tipo`
--
ALTER TABLE `trilha_tipo`
  ADD PRIMARY KEY (`trilha_type_id`);

--
-- Indexes for table `trilha_videos`
--
ALTER TABLE `trilha_videos`
  ADD PRIMARY KEY (`trilha_videos_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_trilha`
--
ALTER TABLE `user_trilha`
  ADD PRIMARY KEY (`usertrilha_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `conteudo_indice`
--
ALTER TABLE `conteudo_indice`
  MODIFY `id_conteudo_indice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `conteudo_tipo`
--
ALTER TABLE `conteudo_tipo`
  MODIFY `id_conteudotipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trilha`
--
ALTER TABLE `trilha`
  MODIFY `trilha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `trilha_status`
--
ALTER TABLE `trilha_status`
  MODIFY `trilha_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trilha_tipo`
--
ALTER TABLE `trilha_tipo`
  MODIFY `trilha_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trilha_videos`
--
ALTER TABLE `trilha_videos`
  MODIFY `trilha_videos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_trilha`
--
ALTER TABLE `user_trilha`
  MODIFY `usertrilha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

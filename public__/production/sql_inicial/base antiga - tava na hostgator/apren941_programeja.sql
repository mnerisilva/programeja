-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 03/02/2023 às 15:47
-- Versão do servidor: 5.7.23-23
-- Versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `apren941_programeja`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descricao_categoria` varchar(50) NOT NULL,
  `abrev_categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descricao_categoria`, `abrev_categoria`) VALUES
(1, 'css', 'css'),
(2, 'html', 'html'),
(3, 'javascritpt', 'js'),
(4, 'sem categoria', 'sem categoria');

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `id_conteudo_indice` int(11) NOT NULL,
  `conteudo_descricao` varchar(150) NOT NULL,
  `conteudo_codigoyoutube` varchar(30) NOT NULL,
  `id_conteudotipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `conteudo`
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
(97, 97, 'HTML em 7 minutos', '0X1OUnQuY5c', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo_indice`
--

CREATE TABLE `conteudo_indice` (
  `id_conteudo_indice` int(11) NOT NULL,
  `id_conteudotipo` int(11) NOT NULL,
  `conteudo_titulo` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `conteudo_indice`
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
(97, 2, 'HTML em 7 minutos', 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conteudo_tipo`
--

CREATE TABLE `conteudo_tipo` (
  `id_conteudotipo` int(11) NOT NULL,
  `descricao_tipo` varchar(150) NOT NULL,
  `icone_tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `conteudo_tipo`
--

INSERT INTO `conteudo_tipo` (`id_conteudotipo`, `descricao_tipo`, `icone_tipo`) VALUES
(1, 'link', '<i class=\"fa-solid fa-link\"></i>'),
(2, 'video', '<i class=\"fa-brands fa-youtube\"></i>'),
(3, 'playlist', '<i class=\"fa-solid fa-list\"></i>');

-- --------------------------------------------------------

--
-- Estrutura para tabela `subcategoria`
--

CREATE TABLE `subcategoria` (
  `id_subcategoria` int(11) NOT NULL,
  `descricao_subcategoria` varchar(50) NOT NULL,
  `abrev_subcategoria` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `trilha`
--

CREATE TABLE `trilha` (
  `trilha_id` int(11) NOT NULL,
  `trilha_name` varchar(250) NOT NULL,
  `trilha_type` varchar(50) NOT NULL,
  `trilha_descricao` text NOT NULL,
  `trilha_nomeamigavel` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `trilha_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `trilha`
--

INSERT INTO `trilha` (`trilha_id`, `trilha_name`, `trilha_type`, `trilha_descricao`, `trilha_nomeamigavel`, `id_categoria`, `trilha_status`) VALUES
(1, 'Html nível básico trilha 1', '1', 'Trilha html básica geral', 'Html 1', 2, 1),
(2, 'Css básico nível 1', '1', 'Aula introdutório css.', 'Css básico nível 1', 1, 1),
(3, 'Fundamentos de Javascript I', '1', 'Comando básicos e visão geral.', 'Fundamentos de Javascript I', 3, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `trilha_tipo`
--

CREATE TABLE `trilha_tipo` (
  `trilha_type_id` int(11) NOT NULL,
  `trilha_type_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `trilha_tipo`
--

INSERT INTO `trilha_tipo` (`trilha_type_id`, `trilha_type_name`) VALUES
(1, 'geral'),
(2, 'provisória');

-- --------------------------------------------------------

--
-- Estrutura para tabela `trilha_videos`
--

CREATE TABLE `trilha_videos` (
  `trilha_videos_id` int(11) NOT NULL,
  `trilha_id` int(11) NOT NULL,
  `id_conteudo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `trilha_videos`
--

INSERT INTO `trilha_videos` (`trilha_videos_id`, `trilha_id`, `id_conteudo`) VALUES
(2, 1, 84),
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
(16, 1, 87),
(17, 1, 88),
(18, 1, 97);

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_photo` varchar(400) NOT NULL,
  `user_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_photo`, `user_date`) VALUES
(1, 'Marcio Henrique da Silva', '123456', 'https://userstock.io/data/wp-content/uploads/2020/05/imansyah-muhamad-putera-n4KewLKFOZw-1024x1024.jpg', ''),
(2, 'Giberto Pereira Santos', '123456', 'https://userstock.io/data/wp-content/uploads/2020/06/tyler-nix-PQeoQdkU9jQ-1024x1024.jpg', ''),
(3, 'Sandra Mara Garcia', '123456', 'https://userstock.io/data/wp-content/uploads/2017/09/janko-ferlic-289675-1024x1021.jpg', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user_trilha`
--

CREATE TABLE `user_trilha` (
  `usertrilha_id` int(11) NOT NULL,
  `trilha_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Despejando dados para a tabela `user_trilha`
--

INSERT INTO `user_trilha` (`usertrilha_id`, `trilha_id`, `user_id`) VALUES
(1, 1, 3);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices de tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id_conteudo`);

--
-- Índices de tabela `conteudo_indice`
--
ALTER TABLE `conteudo_indice`
  ADD PRIMARY KEY (`id_conteudo_indice`);

--
-- Índices de tabela `conteudo_tipo`
--
ALTER TABLE `conteudo_tipo`
  ADD PRIMARY KEY (`id_conteudotipo`);

--
-- Índices de tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Índices de tabela `trilha`
--
ALTER TABLE `trilha`
  ADD PRIMARY KEY (`trilha_id`);

--
-- Índices de tabela `trilha_tipo`
--
ALTER TABLE `trilha_tipo`
  ADD PRIMARY KEY (`trilha_type_id`);

--
-- Índices de tabela `trilha_videos`
--
ALTER TABLE `trilha_videos`
  ADD PRIMARY KEY (`trilha_videos_id`);

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices de tabela `user_trilha`
--
ALTER TABLE `user_trilha`
  ADD PRIMARY KEY (`usertrilha_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de tabela `conteudo_indice`
--
ALTER TABLE `conteudo_indice`
  MODIFY `id_conteudo_indice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de tabela `conteudo_tipo`
--
ALTER TABLE `conteudo_tipo`
  MODIFY `id_conteudotipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `trilha`
--
ALTER TABLE `trilha`
  MODIFY `trilha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `trilha_tipo`
--
ALTER TABLE `trilha_tipo`
  MODIFY `trilha_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `trilha_videos`
--
ALTER TABLE `trilha_videos`
  MODIFY `trilha_videos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `user_trilha`
--
ALTER TABLE `user_trilha`
  MODIFY `usertrilha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

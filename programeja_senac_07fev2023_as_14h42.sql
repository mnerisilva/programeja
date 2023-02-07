-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Fev-2023 às 18:42
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `programeja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `descricao_categoria` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `abrev_categoria` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `icon_categoria` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `descricao_categoria`, `abrev_categoria`, `icon_categoria`) VALUES
(1, 'css', 'css', '<i class=\"fa-brands fa-css3-alt\" title=\"Css\"></i>'),
(2, 'html', 'html', '<i class=\"fa-brands fa-html5\" title=\"Html\"></i>'),
(3, 'javascritpt', 'js', '<i class=\"fa-brands fa-js\" title=\"Javascript\"></i>'),
(4, 'sem categoria', 'sem categoria', '<i class=\"fa-solid fa-genderless\" title=\"Sem categoria\"></i>'),
(6, 'Lógica de programação', 'Lógica', '<i class=\"fa-solid fa-boxes-stacked\" title=\"Lógica\"></i>'),
(7, 'metting', 'metting', '<i class=\"fa-solid fa-boxes-stacked\" title=\"Lógica\"></i>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo`
--

CREATE TABLE `conteudo` (
  `id_conteudo` int(11) NOT NULL,
  `id_conteudo_indice` int(11) NOT NULL,
  `conteudo_descricao` text COLLATE latin1_general_ci NOT NULL,
  `conteudo_codigoyoutube` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `id_conteudotipo` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `conteudo`
--

INSERT INTO `conteudo` (`id_conteudo`, `id_conteudo_indice`, `conteudo_descricao`, `conteudo_codigoyoutube`, `id_conteudotipo`, `id_categoria`) VALUES
(5, 5, 'HTML em 7 minutos', '0X1OUnQuY5c', 2, 2),
(6, 6, '10 ideias de projetos em HTML e CSS para adicionar no portfólio!', 'y4ltLH9iK8E', 2, 2),
(84, 84, 'HTML o ESSENCIAL pra programação Front-end', 'qHHXjEmOJyk', 2, 2),
(85, 85, 'Como INSERIR IMAGEM no HTML - COMPLETO!!!! Passo a Passo!', '6U0l5cVAef0', 2, 2),
(86, 86, 'HTML in 100 Seconds', 'ok-plXXHlWw', 2, 2),
(87, 87, 'O que é HTML 2022 - Hostinger Brasil', 'jOqaeGC90D0', 2, 2),
(88, 88, 'Aprendendo o básico de html (web) | Web #1', 'DG8b1Ud4Mr8', 2, 2),
(89, 89, 'Curso de JavaScript para iniciantes - aprenda os fundamentos de JavaScript', 'hyMCPZNLXps', 2, 3),
(90, 90, 'JAVASCRIPT FUNDAMENTOS - 044 - PROPRIEDADES E MÉTODOS PRIVADOS', 'lbN2c989Pa8', 2, 3),
(91, 91, 'Tutorial JavaScript - fundamentos da linguagem', 'x9KfwLds33Y', 2, 3),
(92, 92, 'JavaScript para Iniciantes 2020 - 100% Prático!', 'WcIIUmDch94', 2, 3),
(93, 93, 'APRENDA CSS EM 10 MINUTOS', 'lsxBlQWNdUQ', 2, 1),
(94, 94, 'CSS3: Aprenda como Funciona a Estrutura CSS', 'qdTDp7Wr0DU', 2, 1),
(95, 95, 'O QUE É CSS? (SELETORES, PROPRIEDADES E VALORES)', 'LWU2OR19ZG4', 2, 1),
(96, 96, 'CSS (Cascading Style Sheets) // Dicionário do Programador', '229xfk3EEM8', 2, 1),
(97, 97, 'A malas sem alça', '0X1OUnQuY5c', 2, 2),
(98, 98, 'Como a Internet funciona? - @Curso em Vídeo HTML5 e CSS3', 'nlO5hySqJFA', 2, 2),
(99, 99, 'Lógica de Programação - Aula 01 - Introdução', '4ZAOWlZRbZk', 2, 6),
(100, 100, 'Aprendendo Lógica de Programação', 'AhHPE_93nAk', 2, 6),
(104, 104, 'Condicional IF', '', 4, 3),
(105, 105, 'Fetch API', '', 4, 3),
(106, 106, 'Pointer-events - controla como eventos de mouse afetam um elemento', '', 4, 1),
(107, 107, 'babel - Usando Babel standalone', '', 4, 3),
(108, 108, 'SVG carregamento com FETCH API', '', 4, 3),
(109, 109, 'Funções javascript auto executáveis', '', 4, 3),
(110, 110, 'while', '', 4, 3),
(111, 111, 'Estrutura básica', '', 4, 2),
(112, 112, 'Tutorial Zoom Meetings [2022]. Zoom Meetings do ZERO para Iniciantes. Curso Completo Zoom Meetings.', '4h7QPzJ8-Cw', 2, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_indice`
--

CREATE TABLE `conteudo_indice` (
  `id_conteudo_indice` int(11) NOT NULL,
  `id_conteudotipo` int(11) NOT NULL,
  `conteudo_titulo` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

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
(100, 2, 'Aprendendo Lógica de Programação', 6, 0),
(104, 4, 'Condicional IF', 3, 0),
(105, 4, 'Fetch API', 3, 0),
(106, 4, 'Pointer-events - controla como eventos de mouse afetam um elemento', 1, 0),
(107, 4, 'babel - Usando Babel standalone', 3, 0),
(108, 4, 'SVG carregamento com FETCH API', 3, 0),
(109, 4, 'Funções javascript auto executáveis', 3, 0),
(110, 4, 'while', 3, 0),
(111, 4, 'Estrutura básica', 2, 0),
(112, 2, 'Tutorial Zoom Meetings [2022]. Zoom Meetings do ZERO para Iniciantes. Curso Completo Zoom Meetings.', 7, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `conteudo_tipo`
--

CREATE TABLE `conteudo_tipo` (
  `id_conteudotipo` int(11) NOT NULL,
  `descricao_tipo` varchar(150) COLLATE latin1_general_ci NOT NULL,
  `icone_tipo` varchar(200) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `conteudo_tipo`
--

INSERT INTO `conteudo_tipo` (`id_conteudotipo`, `descricao_tipo`, `icone_tipo`) VALUES
(1, 'link', '<i class=\"fa-solid fa-link\"></i>'),
(2, 'video', '<i class=\"fa-brands fa-youtube\"></i>'),
(3, 'playlist', '<i class=\"fa-solid fa-list\"></i>'),
(4, 'snippet', '<i class=\"fa-solid fa-code\"></i>');

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
  `post_datepublish` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `post_dateupdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`post_id`, `id_conteudo`, `trilha_id`, `user_id`, `post_title`, `post`, `post_datepublish`, `post_dateupdate`) VALUES
(55, 86, 51, 29, 'Os profissionais de programação', '<p>Os profissionais de programa&ccedil;&atilde;o s&atilde;o muito requisitados. Os sal&aacute;rios s&atilde;o muito atrativos.</p>\n<p>M&eacute;dia salarial dos profissionais:</p>\n<p>Junior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 4.000,00<br>S&ecirc;nior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 8.000,00<br>Pleno: &nbsp; &nbsp; &nbsp; &nbsp;R$ 10.000,00</p>', '2023-02-07 13:59:49', '2022-08-18 12:47:25'),
(56, 86, 51, 29, 'O que faz um Programador?', '<p>O que faz um Programador?</p>\n\n<p>O programador &eacute; o profissional que cria, desenvolve e mant&eacute;m diferentes tipos de softwares em sistemas amplos ou para uso em computadores pessoais. Ele usa linguagens de programa&ccedil;&atilde;o, como html, java, c++, para criar comandos em programas, criando novas funcionalidades e utilidades.</p>\n\n<p>Os programadores desenvolvem e aperfei&ccedil;oam websites, aplicativos, programas de computador, sistemas operacionais, sistemas de empresas, redes sociais, com infinitas possibilidades de atua&ccedil;&atilde;o quando falamos de algo t&atilde;o extenso quanto a rede e a tecnologia. Por isso, &eacute; um profissional cada vez mais essencial em qualquer ramo do mercado de trabalho.</p>\n\n<p>O programador tamb&eacute;m lida com coleta de dados de usu&aacute;rios e posterior an&aacute;lise para tomadas de decis&otilde;es assertivas e bem fundamentadas no desenvolvimento de produtos e servi&ccedil;os.<br />\n&nbsp;</p>\n', '2022-08-18 13:15:58', '2022-08-18 13:15:58'),
(70, 86, 51, 29, 'Reputação dos profissionais de programação', '<p>Os profissionais de programa&ccedil;&atilde;o s&atilde;o muito requisitados. Os sal&aacute;rios s&atilde;o muito atrativos.</p>\n<p>M&eacute;dia salarial dos profissionais:</p>\n<p>Junior: &nbsp; &nbsp; &nbsp; R$ 14.000,00<br>S&ecirc;nior: &nbsp; &nbsp; &nbsp; R$&nbsp; &nbsp; &nbsp;800,00<br>Pleno: &nbsp; &nbsp; &nbsp; &nbsp;R$ 10.000,00</p>', '2023-02-01 17:26:27', '2022-08-18 23:10:39'),
(93, 86, 51, 29, 'Entenda quais as funções de um programador', '<p>Para quem deseja atuar na &aacute;rea ou est&aacute; buscando mais informa&ccedil;&otilde;es a respeito da profiss&atilde;o, &eacute; interessante entender quais s&atilde;o as suas fun&ccedil;&otilde;es desempenhadas profissionalmente e quais os principais conhecimentos que algu&eacute;m que atua na &aacute;rea deve ter.</p>\n\n<p>Por estar em forte crescimento, a &aacute;rea de programa&ccedil;&atilde;o &eacute; uma excelente op&ccedil;&atilde;o profissional, mas &eacute; necess&aacute;rio saber que n&atilde;o basta ter o interesse por computadores. &Eacute; essencial ter racioc&iacute;nio l&oacute;gico, sendo interessante tamb&eacute;m conhecimentos de ingl&ecirc;s, para compreender o conte&uacute;do t&eacute;cnico e, tamb&eacute;m, estudar uma ou mais linguagens de programa&ccedil;&atilde;o.<br />\n&nbsp;</p>\n', '2022-08-19 00:29:17', '2022-08-19 00:29:17'),
(98, 86, 51, 29, 'De acordo com seu estado', '<p>Um dos principais pontos a se levar em considera&ccedil;&atilde;o &eacute; entender em qual estado do pa&iacute;s a pessoa se encontra, j&aacute; que existe uma grande varia&ccedil;&atilde;o salarial entre os estados, de acordo com a demanda, a maturidade do mercado profissional e a oferta de profissionais capacitados.</p>\n\n<p>Em geral, os estados de S&atilde;o Paulo, Rio Grande do Sul, Santa Catarina, Paran&aacute; e Distrito Federal apresentam uma m&eacute;dia salarial mais alta para os cargos na &aacute;rea de programa&ccedil;&atilde;o, enquanto estados como Bahia, Esp&iacute;rito Santo, Cear&aacute;, Pernambuco e Minas Gerais costumam ter uma m&eacute;dia salarial menor.<br />\n&nbsp;</p>\n', '2022-08-19 01:29:23', '2022-08-19 01:29:23'),
(101, 99, 8, 29, 'Reputação dos profissionais de programação', '<p>Os <strong>profissionais </strong>de programa&ccedil;&atilde;o s&atilde;o muito requisitados. Os sal&aacute;rios s&atilde;o muito atrativos.</p>\n\n<p>M&eacute;dia salarial dos profissionais:</p>\n\n<p>Junior: &nbsp; &nbsp; &nbsp; R$ <s>&nbsp; 4.000,00</s><br />\nS&ecirc;nior: &nbsp; &nbsp; &nbsp; R$ &nbsp; 8.000,00<br />\nPleno: &nbsp; &nbsp; &nbsp; &nbsp;R$ 10.000,00</p>\n', '2022-08-19 03:11:52', '2022-08-19 03:11:52'),
(106, 104, 0, 29, 'Condicional IF', '<p>Muitas vezes, ao escrever codigo, voce deseja executar acoes diferentes para decisoes diferentes. Voce pode usar instrucoes condicionais no seu codigo para fazer isso. Em JavaScript, temos as seguintes instrucoes condicionais IF.</p>\n\n<pre>\n<code class=\"language-javascript\">if (hour &lt; 18) {\n  greeting = \"Good day\";\n} else {\n  greeting = \"Good evening\";\n}</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-26 02:44:05', '2022-08-26 02:44:05'),
(107, 105, 0, 29, 'Fetch API', '<pre>\n<code class=\"language-javascript\">// GET WEATHER FROM API PROVIDER\nfunction getWeather(latitude, longitude){\n    let api = `http://api.openweathermap.org/data/2.5/weather?lat=${latitude}&amp;lon=${longitude}&amp;appid=${key}`;\n\n    fetch(api)\n        .then(function(response){\n            let data = response.json();\n            return data;\n        })\n        .then(function(data){\n            weather.temperature.value = Math.floor(data.main.temp - KELVIN);\n            weather.description = data.weather[0].description;\n            weather.iconId = data.weather[0].icon;\n            weather.city = data.name;\n            weather.country = data.sys.country;\n        })\n        .then(function(){\n            displayWeather();\n        });\n}</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-26 12:28:32', '2022-08-26 12:28:32'),
(108, 106, 0, 29, 'Pointer-events - controla como eventos de mouse afetam um elemento', '<p>Desabilitar eventos de mouse sobre os elementos alterando o atributo pointer-events do estilo CSS do elemento. Em seu caso espec&iacute;fico, no in&iacute;cio de seu m&eacute;todo voc&ecirc; deve executar o c&oacute;digo abaixo para desabilitar os clicks na div:</p>\n\n<p><a href=\"https://pt.stackoverflow.com/questions/76491/desabilitar-fun%C3%A7%C3%A3o-click-em-div\">Desabilitar Fun&ccedil;&atilde;o .click em DIV</a></p>\n\n<pre>\n<code class=\"language-javascript\">// Desabilita todos os eventos de mouse/click na div.\n$(\".conteudo\").css(\"pointer-events\", \"none\");\n\n\n// Ao final de seu método, para reativar os eventos de click na div, você executa o código a seguir:\n\n\n// Habilita novamente os eventos de click/mouse na div.\n$(\"#button_id\").css(\"pointer-events\", \"auto\");</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-26 12:40:12', '2022-08-26 12:40:12'),
(109, 107, 0, 29, 'babel - Usando Babel standalone', '<p>Instrui o Babel a transpilar e processar o JavaScript nessas tags. Esse c&oacute;digo agora ser&aacute; executado em navegadores t&atilde;o antigos quanto o IE 11.</p>\n\n<p><a href=\"https://tinyurl.com/t7axmdd\" target=\"_blank\">https://tinyurl.com/t7axmdd</a></p>\n\n<pre>\n<code class=\"language-javascript\">&lt;script src=\"https://unpkg.com/@babel/polyfill@7.6.0/dist/polyfill.min.js\"&gt;&lt;/script&gt;\n&lt;script src=\"https://unpkg.com/@babel/standalone/babel.min.js\"&gt;&lt;/script&gt;\n\n\n\n  //--- Especifique text/babel como a typetag do script anterior:\n\n\n\n&lt;script type=\"text/babel\"&gt;\n  var button = document.querySelector(\'button\')\n\n  button.addEventListener(\'click\', () =&gt; {\n    alert(\'You Clicked Me!\')\n  })\n&lt;/script&gt;</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-27 02:11:31', '2022-08-27 02:11:31'),
(110, 108, 0, 29, 'SVG carregamento com FETCH API', '<p><strong>Carregamento SVG com FETCH</strong></p>\n\n<pre>\n<code class=\"language-javascript\">fetch(\"https://s3-us-west-2.amazonaws.com/s.cdpn.io/106114/tiger.svg\")\n  .then(response =&gt; response.text())\n  .then(svg =&gt; document.body.insertAdjacentHTML(\"afterbegin\", svg));</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-29 02:08:15', '2022-08-29 02:08:15'),
(111, 109, 0, 29, 'Funções javascript auto executáveis', '<p><strong>IIFE </strong>(Immediately Invoked Function Expression) &eacute; uma fun&ccedil;&atilde;o em JavaScript que &eacute; executada assim que definida.</p>\n\n<p>&Eacute; um Design Pattern tamb&eacute;m conhecido como Self-Executing Anonymous Function e cont&eacute;m duas partes principais. A primeira &eacute; a fun&ccedil;&atilde;o an&ocirc;nima cujo escopo l&eacute;xico &eacute; encapsulado entre par&ecirc;nteses. Isso previne o acesso externo &agrave;s vari&aacute;veis declaradas na IIFE, bem como evita que estas vari&aacute;veis locais poluam o escopo global.</p>\n\n<p>A segunda parte corresponde &agrave; cria&ccedil;&atilde;o da express&atilde;o (), por meio da qual o interpretador JavaScript avaliar&aacute; e executar&aacute; a fun&ccedil;&atilde;o.</p>\n\n<p><a href=\"https://developer.mozilla.org/pt-BR/docs/Glossario/IIFE\" target=\"_blank\">https://developer.mozilla.org/pt-BR/docs/Glossario/IIFE</a></p>\n\n<pre>\n<code class=\"language-javascript\">(function () {\n    ...\n})();</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-29 02:12:33', '2022-08-29 02:12:33'),
(112, 110, 0, 29, 'while', '<pre>\n<code class=\"language-javascript\">while (var i &lt; 10) {\n  text += \"The number is \" + i;\n  i++;\n}</code></pre>\n\n<p>&nbsp;</p>\n', '2022-08-29 02:15:44', '2022-08-29 02:15:44'),
(128, 111, 0, 29, '', '<pre>\n<code class=\"language-javascript\">&lt;!DOCTYPE html&gt;\n&lt;html lang=\"pt-br\"&gt;\n  &lt;head&gt;\n    &lt;title&gt;Título da página&lt;/title&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n  &lt;/head&gt;\n  &lt;body&gt;\n    Aqui vai o código HTML que fará seu site aparecer.\n  &lt;/body&gt;\n&lt;/html&gt;</code></pre>\n\n<p>&nbsp;</p>\n', '2022-11-11 11:34:55', '2022-11-11 11:34:55'),
(132, 99, 8, 29, 'Estrutura básica', '<pre>\n<code class=\"language-javascript\">&lt;!DOCTYPE html&gt;\n&lt;html lang=\"pt-br\"&gt;\n  &lt;head&gt;\n    &lt;title&gt;Título da página&lt;/title&gt;\n    &lt;meta charset=\"utf-8\"&gt;\n  &lt;/head&gt;\n  &lt;body&gt;\n    Aqui vai o código HTML que fará seu site aparecer.\n  &lt;/body&gt;\n&lt;/html&gt;</code></pre>\n\n<p>&nbsp;</p>\n', '2022-11-16 13:04:05', '2022-11-16 13:04:05'),
(133, 6, 1, 30, 'Primeiros passos', '<p>A primeiroa dafasdfsdafsdaf</p>\n', '2022-12-15 20:19:24', '2022-12-15 20:19:24'),
(137, 5, 51, 29, 'Aspectos importantes', '<p>Nunca esque&ccedil;a que qualquer conceito, desde o mais b&aacute;sico poss&iacute;vel, &eacute; muito importante para o todos.</p>', '2023-02-07 16:27:10', '2023-01-20 17:58:41'),
(223, 85, 51, 29, 'Cabeçalhos', '<p>&lt;!DOCTYPE html&gt; &mdash; o doctype. &Eacute; a parte inicial obrigat&oacute;ria do documento. Nas n&eacute;voas do tempo, quando o HTML era novo (por volta de 1991/2), doctypes eram criados para agir como links para um conjunto de regras que a p&aacute;gina <strong>HTML </strong>tinha que seguir para ser considerada um bom HTML, o que poderia significar checagem autom&aacute;tica de erros e outras coisas &uacute;teis. No entanto, atualmente, eles n&atilde;o fazem muito sentido e s&atilde;o basicamente necess&aacute;rios apenas para garantir que o documento se comporte corretamente. Isso &eacute; tudo que voc&ecirc; precisa saber agora.</p>\n<div class=\"code-toolbar\">\n<pre class=\"language-ruby\" tabindex=\"0\"><code>&lt;body&gt;\n      &lt;h1&gt;Meu t&iacute;tulo principal&lt;/h1&gt;\n      &lt;h2&gt;Meu t&iacute;tulo de alto n&iacute;vel&lt;/h2&gt;\n      &lt;h3&gt;Meu subt&iacute;tulo&lt;/h3&gt;\n      &lt;h4&gt;Meu segundo subt&iacute;tulo&lt;/h4&gt;\n&lt;/body&gt;</code></pre>\n<div class=\"toolbar\">\n<div class=\"toolbar-item\">&nbsp;</div>\n</div>\n</div>', '2023-02-01 18:20:18', '2023-01-30 13:29:45'),
(225, 85, 51, 29, 'Imagens', '<p>Links s&atilde;o muito importantes &mdash; eles s&atilde;o o que faz da web ser de fato uma REDE! Para adicionar um link, precisamos usar um elemento simples &mdash; &lt;a&gt; &mdash; \"a\" &eacute; a forma abreviada de \"&acirc;ncora\". Para transformar o texto do seu par&aacute;grafo em um link, siga estas etapas:</p>\n<div class=\"code-toolbar\">\n<pre class=\"language-ruby\" tabindex=\"0\"><code>&lt;img src=\"imagens/firefox-icon.png\" alt=\"Minha imagem de teste Microsoft Edge - \"&gt;</code></pre>\n</div>', '2023-02-07 15:50:22', '2023-01-31 12:37:34'),
(226, 85, 51, 29, 'Anatomia de um documento HTML', '<p>Isso resume o b&aacute;sico dos elementos HTML individuais, mas eles n&atilde;o s&atilde;o &uacute;teis por si s&oacute;. Agora vamos ver como elementos individuais s&atilde;o combinados para formar uma p&aacute;gina HTML inteira. Vamos visitar novamente os c&oacute;digos que colocamos no exemplo de index.html (que vimos no artigo.</p>\n<div class=\"code-toolbar\">\n<pre class=\"line-numbers language-ruby\" tabindex=\"0\"><code>&lt;!DOCTYPE html&gt;\n&lt;html&gt;\n  &lt;head&gt;\n    &lt;meta charset=\"utf-8\" /&gt;\n    &lt;meta name=\"viewport\" content=\"width=device-width\" /&gt;\n    &lt;title&gt;Minha p&aacute;gina de teste&lt;/title&gt;\n  &lt;/head&gt;\n  &lt;body&gt;\n    &lt;img src=\"images/firefox-icon.png\" alt=\"minha p&aacute;gina de teste\"&gt;\n  &lt;/body&gt;\n&lt;/html&gt;\n</code></pre>\n<div class=\"toolbar\">&nbsp;</div>\n</div>', '2023-02-03 17:59:20', '2023-02-01 11:46:29'),
(228, 85, 51, 29, 'Parágrafo', '<p>Como explicado acima, os elementos &lt;p&gt; s&atilde;o para conter par&aacute;grafos de texto; voc&ecirc; os usar&aacute; com frequ&ecirc;ncia ao marcar um conte&uacute;do de texto regular:</p>\n<pre class=\"language-ruby\"><code>&lt;body&gt;\n      &lt;p&gt;Este &eacute; um par&aacute;grafo simples, b&aacute;sico&lt;/p&gt;\n&lt;/body&gt;</code></pre>', '2023-02-07 16:27:37', '2023-02-01 18:21:14'),
(232, 112, 52, 29, 'Detalhes importantes no cadastro', '<p>Habilite a ado&ccedil;&atilde;o r&aacute;pida com recursos de reuni&atilde;o virtual que facilitam iniciar, acessar, colaborar e agendar reuni&otilde;es em qualquer dispositivo.</p>\n<div class=\"ez__contentBox\">\n<p>Leve v&iacute;deo e &aacute;udio HD para suas reuni&otilde;es virtuais com suporte para at&eacute; 1.000 participantes de v&iacute;deo e 49 v&iacute;deos na tela.</p>\n</div>', '2023-02-07 17:41:18', '2023-02-07 17:41:18');

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
(51, 'Primeiro Html', 1, 'Primeiro Html', 'Primeiro Html', 2, 1),
(52, 'Zoom para iniciantes', 1, 'dfsdf', 'Zoom para iniciantes', 7, 1);

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
(39, 8, 100),
(40, 6, 98),
(41, 52, 112);

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
(13, 'Julia Cristina Carvalho', 'juliacristinaxpto@xpto.com', '2', 2, '44949499499', 'rua das acácias', '12', 'fundos', '88888888', 'Centro', 'Florianópolis', 'SC', '55555555555', '30', '', '123456', 'julia@sdfdsfdsa', 'https://userstock.io/data/wp-content/uploads/2017/09/michael-dam-258165-300x300.jpg', ''),
(28, 'Mauro Gonçalves Oliveira', 'mauro@xpto.com', '1', 2, '48988026426', 'Rua das Casas', '15', '', '88085260', 'Centro', 'Florianópolis', 'SC', '55853676920', '26', 'mauro@xpto.com', '123456', 'mauro@dfsfsdf', '../../images/users/avatar.png', ''),
(29, 'Adriele Santos', 'nana@xpto.com', '2', 2, '48488999999', 'Rua das Casas', '15', 'funcods', '88888888', 'Centro', 'São José', 'SC', '99999999999', '30', 'nana@xpto.com', '123456', 'nana@dfddfsd', 'https://userstock.io/data/wp-content/uploads/2020/06/women-s-white-and-black-button-up-collared-shirt-774909-2-1024x1024.jpg', ''),
(30, 'Marcelo Neri da Silva', 'marceloneri@gmail.com', 'A', 1, 'sdsdsa', 'asdsa', 'asdsad', 'ASDS', '88085260', 'ASDSAD', 'Florianópolis', 'as', 'asdsad', 'ASDSA', 'marceloneri@gmail.com', 'CZI2KQlb', 'asdsa', '../../images/users/avatar.png', '');

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
(4, 8, 29),
(5, 1, 30),
(6, 6, 30),
(7, 52, 29);

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
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `conteudo`
--
ALTER TABLE `conteudo`
  ADD PRIMARY KEY (`id_conteudo`);

--
-- Índices para tabela `conteudo_indice`
--
ALTER TABLE `conteudo_indice`
  ADD PRIMARY KEY (`id_conteudo_indice`);

--
-- Índices para tabela `conteudo_tipo`
--
ALTER TABLE `conteudo_tipo`
  ADD PRIMARY KEY (`id_conteudotipo`);

--
-- Índices para tabela `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Índices para tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Índices para tabela `trilha`
--
ALTER TABLE `trilha`
  ADD PRIMARY KEY (`trilha_id`);

--
-- Índices para tabela `trilha_status`
--
ALTER TABLE `trilha_status`
  ADD PRIMARY KEY (`trilha_status_id`);

--
-- Índices para tabela `trilha_tipo`
--
ALTER TABLE `trilha_tipo`
  ADD PRIMARY KEY (`trilha_type_id`);

--
-- Índices para tabela `trilha_videos`
--
ALTER TABLE `trilha_videos`
  ADD PRIMARY KEY (`trilha_videos_id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices para tabela `user_trilha`
--
ALTER TABLE `user_trilha`
  ADD PRIMARY KEY (`usertrilha_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `conteudo`
--
ALTER TABLE `conteudo`
  MODIFY `id_conteudo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `conteudo_indice`
--
ALTER TABLE `conteudo_indice`
  MODIFY `id_conteudo_indice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `conteudo_tipo`
--
ALTER TABLE `conteudo_tipo`
  MODIFY `id_conteudotipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de tabela `subcategoria`
--
ALTER TABLE `subcategoria`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `trilha`
--
ALTER TABLE `trilha`
  MODIFY `trilha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `trilha_status`
--
ALTER TABLE `trilha_status`
  MODIFY `trilha_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `trilha_tipo`
--
ALTER TABLE `trilha_tipo`
  MODIFY `trilha_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `trilha_videos`
--
ALTER TABLE `trilha_videos`
  MODIFY `trilha_videos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `user_trilha`
--
ALTER TABLE `user_trilha`
  MODIFY `usertrilha_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

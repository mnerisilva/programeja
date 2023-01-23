-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 14-Ago-2022 às 21:02
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
-- Estrutura da tabela `posts`
--



--
-- Extraindo dados da tabela `posts`
--

INSERT INTO `posts` (`post_id`, `id_conteudo`, `trilha_id`, `user_id`, `post`) VALUES
(9, 96, 2, 29, '<h3>Entenda quais as fun&ccedil;&otilde;es de um programador</h3>\n\n<p>Para quem deseja atuar na &aacute;rea ou est&aacute; buscando mais informa&ccedil;&otilde;es a respeito da profiss&atilde;o, &eacute; interessante entender quais s&atilde;o as suas fun&ccedil;&otilde;es desempenhadas profissionalmente e quais os principais conhecimentos que algu&eacute;m que atua na &aacute;rea deve ter.</p>\n\n<p>Por estar em forte crescimento, a &aacute;rea de <strong>programa&ccedil;&atilde;o </strong>&eacute; uma excelente op&ccedil;&atilde;o profissional, mas &eacute; necess&aacute;rio saber que n&atilde;o basta ter o interesse por computadores. &Eacute; essencial ter racioc&iacute;nio l&oacute;gico, sendo interessante tamb&eacute;m conhecimentos de ingl&ecirc;s, para compreender o conte&uacute;do t&eacute;cnico e, tamb&eacute;m, estudar uma ou mais linguagens de programa&ccedil;&atilde;o.<br />\n&nbsp;</p>\n\n<pre>\n<code class=\"language-javascript\">function removeAtivo(el){\n    el.forEach(function(item){\n        item.querySelector(\'a\').classList.remove(\'ativo\');\n    });\n}</code></pre>\n\n<h3>De acordo com seu estado</h3>\n\n<p>Um dos principais pontos a se levar em considera&ccedil;&atilde;o &eacute; entender em qual estado do pa&iacute;s a pessoa se encontra, j&aacute; que existe uma grande varia&ccedil;&atilde;o salarial entre os estados, de acordo com a demanda, a maturidade do mercado profissional e a oferta de profissionais capacitados.</p>\n\n<p>Em geral, os estados de S&atilde;o Paulo, Rio Grande do Sul, <strong><em>Santa Catarina</em></strong>, Paran&aacute; e Distrito Federal apresentam uma m&eacute;dia salarial mais alta para os cargos na &aacute;rea de programa&ccedil;&atilde;o, enquanto estados como Bahia, Esp&iacute;rito Santo, Cear&aacute;, Pernambuco e Minas Gerais costumam ter uma m&eacute;dia salarial menor.<br />\n&nbsp;</p>\n'),
(10, 96, 2, 29, '<h3>Conforme a linguagem de programa&ccedil;&atilde;o</h3>\n\n<p>Outro fator que influencia diretamente os rendimentos de uma pessoa programadora diz respeito &agrave; linguagem ou linguagens de programa&ccedil;&atilde;o dominadas por ela. Isso porque<strong> </strong><strong>algumas linguagens de programa&ccedil;&atilde;o t&ecirc;m maior demanda por pessoas especializadas</strong>, enquanto outras podem ter menos procura por especialistas, reduzindo a m&eacute;dia salarial.</p>\n\n<p>No mercado brasileiro, as linguagens de programa&ccedil;&atilde;o com maior demanda e, por consequ&ecirc;ncia, pagamentos maiores s&atilde;o:</p>\n\n<ul>\n	<li><strong>JavaScript e o Java (para Android)</strong>: j&aacute; para a pessoa desenvolvedora JavaScript e Java para Android o sal&aacute;rio m&eacute;dio na cidade de S&atilde;o Paulo &eacute; de R$ 6.400,00;</li>\n	<li><strong>Swift (linguagem para iOS)</strong>: o sal&aacute;rio m&eacute;dio para um (a) especialista em Swift, levando em considera&ccedil;&atilde;o a cidade de S&atilde;o Paulo, &eacute; de R$ 6.800,00;</li>\n	<li><strong>Ruby on Rails</strong>: para o (a) profissional especializado (a) em Ruby on Rails, em S&atilde;o Paulo, capital, tem m&eacute;dia salarial de R$ 4.400,00;</li>\n	<li><strong>PHP</strong>: j&aacute; a pessoa programadora PHP, na cidade de S&atilde;o Paulo, costuma ter sal&aacute;rio m&eacute;dio de R$ 4.500,00;</li>\n	<li><strong>Kotlin</strong>: considerando a pessoa especializada em Kotlin e situado na cidade de S&atilde;o Paulo, &eacute; poss&iacute;vel estimar um sal&aacute;rio m&eacute;dio de R$ 8.000,00.</li>\n</ul>\n\n<p>Vale destacar que esses valores, de quanto ganha um (a) programador (a), s&atilde;o estimativas e consideram apenas os dados informados para a cidade de S&atilde;o Paulo, podendo variar para mais ou para menos de acordo com a localiza&ccedil;&atilde;o e o n&iacute;vel de experi&ecirc;ncia profissional, de acordo com os dados dispon&iacute;veis na Glassdoor.</p>\n'),
(11, 96, 2, 29, '<h3>WordPress vs Medium: Qual a Diferen&ccedil;a Entre Eles?</h3>\n\n<p>O WordPress e o Medium possuem diferentes abordagens para seu funcionamento. Antes de escolher qual &eacute; o mais apropriado para suas necessidades, vamos ver quais s&atilde;o as diferen&ccedil;as entre eles.</p>\n\n<h3>Facilidade de Uso</h3>\n\n<p>Como uma plataforma vers&aacute;til, o WordPress pode exigir que alguns iniciantes aprendam algumas coisas para utiliz&aacute;-lo adequadamente.</p>\n\n<p>Apesar do processo de instala&ccedil;&atilde;o e configura&ccedil;&atilde;o ser f&aacute;cil, h&aacute; uma curva de aprendizado na hora de aprender recursos avan&ccedil;ados. Por sorte, h&aacute; muitos lugares para estudar WordPress online.</p>\n\n<p>De modo geral, o WordPress &eacute; f&aacute;cil de usar. Com seu rec&eacute;m-introduzido editor Gutenberg, publicar um post de torna ainda mais f&aacute;cil.</p>\n'),
(12, 94, 2, 29, '<h3>Equipe de Suporte Sempre Online</h3>\n\n<p>N&atilde;o sabe se vai receber ajuda quando mais precisa? N&atilde;o se preocupe. Aqui na <strong>Hostinger</strong>, temos uma equipe de suporte profissional e formada por pessoas reais pronta para atend&ecirc;-lo 24h, todos os dias da semana e no ano inteiro.</p>\n\n<p>&nbsp;</p>\n\n<h3>Sites R&aacute;pidos e Tecnologia de Ponta</h3>\n\n<p>N&atilde;o deixe que a <em>velocidade </em>baixa afete o desempenho do seu site na internet. Ofere&ccedil;a a mais r&aacute;pida experi&ecirc;ncia de navega&ccedil;&atilde;o aos seus usu&aacute;rios com HTTP/3, infraestrutura robusta, servidores SSD e largura de banda ilimitada.</p>\n'),
(13, 94, 2, 29, '<h3>Migra&ccedil;&atilde;o Gratuita e F&aacute;cil</h3>\n\n<p>Trabalhamos para ver o seu sucesso, n&atilde;o o contr&aacute;rio. Por isso, voc&ecirc; n&atilde;o precisar&aacute; gastar nada para migrar seu site para a Hostinger. Al&eacute;m disso, cuidaremos de todo o processo para que voc&ecirc; foque no que realmente importa: seu sucesso online.</p>\n\n<p>&nbsp;</p>\n'),
(14, 96, 2, 29, '<p>pois e asfsaf</p>\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

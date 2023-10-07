-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/10/2023 às 16:42
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastros`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastropessoas`
--

CREATE TABLE `cadastropessoas` (
  `id` int(225) NOT NULL,
  `Nome` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Telefone` varchar(15) NOT NULL,
  `Bairro` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cadastropessoas`
--

INSERT INTO `cadastropessoas` (`id`, `Nome`, `Usuario`, `Telefone`, `Bairro`, `Email`, `Senha`) VALUES
(2, 'Julia de Oliveira', 'JuliaOliveira', '16991567452', 'Centro', 'juliaOliveira@hotmail.com', '123'),
(5, 'Eliana Oliveira', 'ElianaOliveira', '16996004515', 'Ricetti', 'Eliana@hotmail.com', '123'),
(6, 'Marilia Kasmin', 'MariliaKasmin', '16987562311', 'Itamaraty', 'Marilia@hotmail.com', '123'),
(7, 'Vinicius Kasmin', 'Vinicius', '12345779652', 'Itamaraty', 'Vinicius@hotmail.com', '123'),
(8, 'Bianca Konczikoviski', 'BiaK', '16884651212', 'Vila São José', 'Bianca@hotmail.com', '123'),
(9, 'Kathlen', 'Kathlen', '16994456823', 'Vila Prado', 'Kathlen@hotmail.com', '123'),
(10, 'Rosa', 'Rosa', '16996667896', 'Redenção', 'Rosa@hotmail.com', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cadastropet`
--

CREATE TABLE `cadastropet` (
  `Imagem` varchar(350) NOT NULL,
  `id` int(11) NOT NULL,
  `Nome` varchar(30) DEFAULT NULL,
  `Raca` varchar(30) NOT NULL,
  `Especie` enum('Gato','Cachorro') NOT NULL,
  `Genero` enum('Femea','Macho') NOT NULL,
  `Porte` enum('Pequeno','Médio','Grande') NOT NULL,
  `Idade` enum('Filhote','Adulto','Sênior') DEFAULT NULL,
  `Cor` enum('Branco','Preto','Cinza','Laranja','Duas Cores','Três Cores','Quatro Cores') NOT NULL,
  `Castrado` enum('Sim','Não') NOT NULL,
  `Doenca` enum('Sim','Não') DEFAULT NULL,
  `Medicamento` enum('Sim','Não') DEFAULT NULL,
  `Agressivo` enum('Sim','Não') NOT NULL,
  `CorDosOlhos` enum('Azul','Verde','Castanho','Preto','Amarelo','Heterocromia') NOT NULL,
  `pessoa_id` int(11) DEFAULT NULL,
  `Situacao` enum('Pet com dono','Pet perdido') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cadastropet`
--

INSERT INTO `cadastropet` (`Imagem`, `id`, `Nome`, `Raca`, `Especie`, `Genero`, `Porte`, `Idade`, `Cor`, `Castrado`, `Doenca`, `Medicamento`, `Agressivo`, `CorDosOlhos`, `pessoa_id`, `Situacao`) VALUES
('Luna.jpeg', 1, 'Luna', 'Vira-Lata', 'Gato', 'Femea', 'Pequeno', 'Adulto', 'Três Cores', 'Sim', 'Não', 'Não', 'Não', 'Azul', 2, 'Pet com dono'),
('Ice.jpeg', 3, 'ice', 'vira-lata', 'Cachorro', 'Macho', 'Pequeno', 'Sênior', 'Duas Cores', 'Sim', 'Não', 'Não', 'Sim', 'Castanho', 5, 'Pet com dono'),
('Theo.jpeg', 4, 'Théo', 'Vira-Lata', 'Gato', 'Macho', 'Pequeno', 'Filhote', 'Laranja', 'Sim', 'Não', 'Não', 'Não', 'Verde', 5, 'Pet com dono'),
('Blue.jpeg', 14, 'Blue', 'Border Collie', 'Cachorro', 'Macho', 'Médio', 'Adulto', 'Três Cores', 'Sim', 'Não', 'Não', 'Não', 'Castanho', 6, 'Pet com dono'),
('Brown.jpeg', 15, 'Brown', 'Border Collie', 'Cachorro', 'Macho', 'Médio', 'Adulto', 'Duas Cores', 'Sim', 'Não', 'Não', 'Não', 'Castanho', 6, 'Pet com dono'),
('Zoe.jpeg', 16, 'Zoe', 'Vira-Lata', 'Gato', 'Femea', 'Pequeno', 'Filhote', 'Três Cores', 'Sim', 'Não', 'Não', 'Sim', 'Verde', 8, 'Pet com dono'),
('Pandora.jpeg', 19, 'Pandora', 'Vira-Lata', 'Gato', 'Femea', 'Pequeno', 'Filhote', 'Duas Cores', 'Sim', 'Não', 'Não', 'Não', 'Azul', 2, 'Pet com dono'),
('Cacau.jpeg', 20, 'Cacau', 'Shitszu ', 'Cachorro', 'Femea', 'Pequeno', 'Adulto', 'Duas Cores', 'Não', 'Não', 'Não', 'Não', 'Castanho', 8, 'Pet com dono'),
('Mel.jpeg', 22, 'Mel', 'Vira-Lata', 'Gato', 'Femea', 'Pequeno', 'Sênior', 'Duas Cores', 'Sim', 'Sim', 'Sim', 'Não', 'Azul', 8, 'Pet com dono'),
('Melcachorro.jpeg', 28, 'Mel', 'SRD', 'Cachorro', 'Femea', 'Médio', 'Adulto', 'Três Cores', 'Sim', 'Não', 'Não', 'Não', 'Castanho', 9, 'Pet com dono'),
('July.jpeg', 29, 'July', 'SRD', 'Cachorro', 'Femea', 'Pequeno', 'Sênior', 'Branco', 'Não', 'Sim', 'Sim', 'Sim', 'Castanho', 9, 'Pet com dono'),
('Nick.jpeg', 30, 'Nick', 'SRD', 'Cachorro', 'Macho', 'Grande', 'Adulto', 'Três Cores', 'Sim', 'Não', 'Não', 'Não', 'Castanho', 9, 'Pet com dono'),
('Nina.jpeg', 31, 'Nina', 'SRD', 'Gato', 'Femea', 'Pequeno', 'Sênior', 'Branco', 'Sim', 'Não', 'Não', 'Não', 'Azul', 9, 'Pet com dono'),
('Branco.jpeg', 32, 'Branco', 'SRD', 'Gato', 'Macho', 'Pequeno', 'Adulto', 'Branco', 'Sim', 'Não', 'Não', 'Não', 'Verde', 10, 'Pet com dono'),
('Kibe.jpeg', 33, 'Kibe', 'SRD', 'Gato', 'Macho', 'Pequeno', 'Adulto', 'Duas Cores', 'Sim', 'Não', 'Não', 'Não', 'Amarelo', 10, 'Pet com dono'),
('Pirulito.jpeg', 34, 'Pirulito', 'SRD', 'Gato', 'Macho', 'Pequeno', 'Adulto', 'Duas Cores', 'Sim', 'Não', 'Não', 'Não', 'Verde', 10, 'Pet com dono'),
('Folhinha.jpeg', 35, 'Folhinha', 'SRD', 'Gato', 'Femea', 'Pequeno', 'Adulto', 'Duas Cores', 'Sim', 'Não', 'Não', 'Não', 'Azul', 10, 'Pet com dono'),
('Folhinha.jpeg', 36, 'Animal perdido', 'SRD', 'Gato', 'Femea', 'Pequeno', 'Adulto', 'Duas Cores', 'Sim', 'Não', 'Não', 'Não', 'Azul', 2, 'Pet perdido');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cadastropessoas`
--
ALTER TABLE `cadastropessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cadastropet`
--
ALTER TABLE `cadastropet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pessoa_pet` (`pessoa_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastropessoas`
--
ALTER TABLE `cadastropessoas`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cadastropet`
--
ALTER TABLE `cadastropet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `cadastropet`
--
ALTER TABLE `cadastropet`
  ADD CONSTRAINT `FK_pessoa_pet` FOREIGN KEY (`pessoa_id`) REFERENCES `cadastropessoas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

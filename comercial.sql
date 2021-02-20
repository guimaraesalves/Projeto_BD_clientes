-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/02/2021 às 18:30
-- Versão do servidor: 10.4.17-MariaDB
-- Versão do PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `comercial`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `comclien`
--

CREATE TABLE `comclien` (
  `n_numeclien` int(11) NOT NULL,
  `c_codiclien` varchar(10) DEFAULT NULL,
  `c_nomeclien` varchar(100) DEFAULT NULL,
  `c_razaclien` varchar(100) DEFAULT NULL,
  `d_dataclien` date DEFAULT NULL,
  `c_cnpjclien` varchar(20) DEFAULT NULL,
  `c_foneclien` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comforne`
--

CREATE TABLE `comforne` (
  `n_numeforne` int(11) NOT NULL,
  `c_codiforne` varchar(10) DEFAULT NULL,
  `c_nomeforne` varchar(100) DEFAULT NULL,
  `c_razaforne` varchar(100) DEFAULT NULL,
  `c_foneforne` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comivenda`
--

CREATE TABLE `comivenda` (
  `n_numeivenda` int(11) NOT NULL,
  `n_numevenda` int(11) NOT NULL,
  `n_numeprod` int(11) NOT NULL,
  `n_valoivenda` float(10,2) DEFAULT NULL,
  `n_qtdeivenda` int(11) DEFAULT NULL,
  `n_descivenda` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comprodu`
--

CREATE TABLE `comprodu` (
  `n_numeprodu` int(11) NOT NULL,
  `c_codiprodu` varchar(20) DEFAULT NULL,
  `c_descprodu` varchar(100) DEFAULT NULL,
  `n_valoprodu` float(10,2) DEFAULT NULL,
  `c_situprodu` varchar(1) DEFAULT NULL,
  `n_numeforne` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comvenda`
--

CREATE TABLE `comvenda` (
  `n_numevenda` int(11) NOT NULL,
  `c_codivenda` varchar(10) DEFAULT NULL,
  `n_numeclien` int(11) NOT NULL,
  `n_numeforne` int(11) NOT NULL,
  `n_numevende` int(11) NOT NULL,
  `n_valovenda` float(10,2) DEFAULT NULL,
  `n_descvenda` float(10,2) DEFAULT NULL,
  `n_totavenda` float(10,2) DEFAULT NULL,
  `d_datavenda` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comvendas`
--

CREATE TABLE `comvendas` (
  `n_numevenda` int(11) NOT NULL,
  `c_codivenda` varchar(10) DEFAULT NULL,
  `n_numeclien` int(11) NOT NULL,
  `n_numeforne` int(11) NOT NULL,
  `n_numevende` int(11) NOT NULL,
  `n_valovenda` float(10,2) DEFAULT NULL,
  `n_descvenda` float(10,2) DEFAULT NULL,
  `n_totavenda` float(10,2) DEFAULT NULL,
  `d_datavenda` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura para tabela `comvende`
--

CREATE TABLE `comvende` (
  `n_numevende` int(11) NOT NULL,
  `c_codivende` varchar(10) DEFAULT NULL,
  `c_nomevende` varchar(100) DEFAULT NULL,
  `c_razavende` varchar(100) DEFAULT NULL,
  `c_fonevende` varchar(20) DEFAULT NULL,
  `n_porcvende` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `comclien`
--
ALTER TABLE `comclien`
  ADD PRIMARY KEY (`n_numeclien`);

--
-- Índices de tabela `comforne`
--
ALTER TABLE `comforne`
  ADD PRIMARY KEY (`n_numeforne`);

--
-- Índices de tabela `comivenda`
--
ALTER TABLE `comivenda`
  ADD PRIMARY KEY (`n_numeivenda`);

--
-- Índices de tabela `comprodu`
--
ALTER TABLE `comprodu`
  ADD PRIMARY KEY (`n_numeprodu`);

--
-- Índices de tabela `comvenda`
--
ALTER TABLE `comvenda`
  ADD PRIMARY KEY (`n_numevenda`);

--
-- Índices de tabela `comvendas`
--
ALTER TABLE `comvendas`
  ADD PRIMARY KEY (`n_numevenda`);

--
-- Índices de tabela `comvende`
--
ALTER TABLE `comvende`
  ADD PRIMARY KEY (`n_numevende`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comclien`
--
ALTER TABLE `comclien`
  MODIFY `n_numeclien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comforne`
--
ALTER TABLE `comforne`
  MODIFY `n_numeforne` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comivenda`
--
ALTER TABLE `comivenda`
  MODIFY `n_numeivenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comprodu`
--
ALTER TABLE `comprodu`
  MODIFY `n_numeprodu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comvenda`
--
ALTER TABLE `comvenda`
  MODIFY `n_numevenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comvendas`
--
ALTER TABLE `comvendas`
  MODIFY `n_numevenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `comvende`
--
ALTER TABLE `comvende`
  MODIFY `n_numevende` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

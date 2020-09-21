

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tjw Murilo`
--
CREATE database gym;
use gym;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

 CREATE TABLE `clientes` (
   `id` int(11) NOT NULL,
   `nome` text NOT NULL,
   `endereco` text NOT NULL,
   `telefone` text NOT NULL,
   `modalidade` text NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `endereco`, `telefone`,`modalidade`) VALUES
(1, 'MURILO', 'Rua 7', '(85) 999999999', 'Kickboxing');

INSERT INTO `clientes` (`id`, `nome`, `endereco`, `telefone`, `modalidade`) VALUES
(2, 'ARTHUR', 'Rua 11', '(85) 999998888', 'Musculação');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_user`
--

  CREATE TABLE `modalidade` (
   `id` int(11) NOT NULL,
   `type` text NOT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Fazendo dump de dados para tabela `modalidade`
--

INSERT INTO `modalidade` (`id`, `type`) VALUES
(1, 'Musculação');

INSERT INTO `modalidade` (`id`, `type`) VALUES
(2, 'Crossfit');

INSERT INTO `modalidade` (`id`, `type`) VALUES
(3, 'Funcional');

INSERT INTO `modalidade` (`id`, `type`) VALUES
(4, 'Dança');

INSERT INTO `modalidade` (`id`, `type`) VALUES
(5, 'Lutas');



--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabelas `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

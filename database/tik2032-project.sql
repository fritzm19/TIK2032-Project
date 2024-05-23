-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 05:27 PM
-- Server version: 10.11.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tik2032-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `image_path`, `date_created`) VALUES
(1, 'A first-ever complete map for elastic strain engineering', 'Without a map, it can be just about impossible to know not just where you are, but where you\'re going, and that\'s especially true when it comes to materials properties. For decades, scientists have understood that while bulk materials behave in certain ways, those rules can break down for materials at the micro- and nano-scales, and often in surprising ways. One of those surprises was the finding that, for some materials, applying even modest strains — a concept known as elastic strain engineering — on materials can dramatically improve certain properties, provided those strains stay elastic and do not relax away by plasticity, fracture, or phase transformations. Micro- and nano-scale materials are especially good at holding applied strains in the elastic form.', 'images/Blog/MIT-phonon-stability-boundary_article1.jpg', '2024-05-22 01:07:34'),
(2, 'Kolmogorov-Arnold Networks (KANs): A New Era of Interpretability and Accuracy in Deep Learning', 'Multi-layer perceptrons (MLPs), or fully-connected feedforward neural networks, are fundamental in deep learning, serving as default models for approximating nonlinear functions. Despite their importance affirmed by the universal approximation theorem, they possess drawbacks. In applications like transformers, MLPs often monopolize parameters and lack interpretability compared to attention layers. While exploring alternatives, such as the Kolmogorov-Arnold representation theorem, research has primarily focused on traditional depth-2 width-(2n+1) architectures, neglecting modern training techniques like backpropagation. Thus, while MLPs remain crucial, there’s ongoing exploration for more effective nonlinear regressors in neural network design.', 'images/Blog/Kolmogorov-Arnold--Networks_article2.png', '2024-05-22 01:09:31'),
(3, 'Huawei AI Introduces \'Kangaroo\': A Novel Self-Speculative Decoding Framework Tailored for Accelerating the Inference of Large Language Models', 'The development of natural language processing has been significantly propelled by the advancements in large language models (LLMs). These models have showcased remarkable performance in tasks like translation, question answering, and text summarization, proving their efficiency in generating high-quality text. However, despite their effectiveness, one major limitation remains their slow inference speed, which hinders their use in real-time applications. This challenge predominantly arises from the memory bandwidth bottleneck rather than a lack of computational power, leading to researchers seeking innovative ways to speed up their inference process.', 'images/Blog/Kangaroo-framework_article3.png', '2024-05-22 01:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `image_alt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_path`, `image_alt`) VALUES
(1, 'images/Gallery/IMG-20240509-WA0005.jpg', 'Sunset1'),
(2, 'images/Gallery/IMG-20240509-WA0006.jpg', 'Manado-port'),
(3, 'images/Gallery/IMG-20240509-WA0007.jpg', 'Sunset2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

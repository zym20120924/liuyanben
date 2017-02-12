-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-12-29 17:48:10
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itcast_eric`
--
CREATE DATABASE IF NOT EXISTS `itcast_eric` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `itcast_eric`;

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代表id',
  `title` varchar(100) NOT NULL COMMENT '代表日记标题',
  `content` text NOT NULL COMMENT '代表日记内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`) VALUES
(1, '征服 JavaScript 面试：什么是闭包？', '什么是闭包？\n简言之，闭包是由函数引用其周边状态（词法环境）绑在一起形成的（封装）组合结构。在 JavaScript 中，闭包在每个函数被创建时形成。\n\n这是基本原理，但为什么我们关心这些？实际上，由于闭包与它的词法环境绑在一起，因此闭包让我们能够从一个函数内部访问其外部函数的作用域。\n\n要使用闭包，只需要简单地将一个函数定义在另一个函数内部，并将它暴露出来。要暴露一个函数，可以将它返回或者传给其他函数。\n\n内部函数将能够访问到外部函数作用域中的变量，即使外部函数已经执行完毕。\n\n闭包使用的例子\n闭包的用途之一是实现对象的私有数据。数据私有是让我们能够面向接口编程而不是面向实现编程的基础。而面向接口编程是一个重要的概念，有助于我们创建更加健壮的软件，因为实现细节比接口约定相对来说更加容易被改变。'),
(2, '如何理解JavaScript中的函数调用和“this”', '长期以来，我发现很多人对Javascript的函数调用过程表示迷惑不解，尤其是函数中"this"的含义更让人抓狂。\n\n在我看来，当你明白了JS函数调用的核心原语，然后把其他的函数调用方式都看做是在建立在核心原语上的一种“糖衣”，这些困惑基本就能迎刃而解了。事实上，ECMAScript的说明文档也正是采用了相同的策略。在某些方面，这篇文章所表述的就是ECMA文档所描述的一种简化版，但是其基本思想是一致的。\n\n核心原语\n\n首先我们来了解下JS的核心函数原语——函数的call方法[1]。call方法的使用方式相对来说还是比较简洁明了的。我们看下如何使用call方法来调用函数：\n\n1. 创建一个参数列表(argList)，参数个数大于等于1；\n\n2. 第一个参数作为thisValue\n\n3. 开始调用函数，将thisValue的值赋值给this。参数表中的其余参数作为函数的调用参数。'),
(3, '配置一个简单而实用的 JavaScript 开发环境', '根据我的经验，写一个模块或 CLI 工具前你所要做的第一件事就是设置一个开发环境。对这个步骤有人喜欢有人愁。但不管怎样，它可能总是花掉你很多时间，你得不停地调整你配置的方方面面。\n\n当然，你可能使用 webpack、eslint、jasmine 甚至是 TypeScript（而最终可能只换来“很棒”的编译错误信息）。事实上，大部分情况下，作为开发者，我们可以使用一些几乎不用配置的工具。通常来说，这些“开箱即用”的工具是完全可以接受的，并将帮助我们直接解决问题，同时还能提供几乎实时的反馈闭环。\n\n当我们谈论最小化配置，我们最关注的是测试、代码规范检查、监控文件内容改变以及确保你在提交代码前没搞砸前面这些点。'),
(4, '想说爱你不容易——致Javascript的一封信', '关于我们开源社区，有一个问题我需要在这里着重讨论一下。\n\n我是社区里很多开源项目（如Babel、Flow、Yarn、Lerna等）的贡献者和维护者。在社区里，我度过了许多美好的时光，同时也有过一些不愉快的体验。\n\n因为参与社区，我受邀到世界各地参会讲演，也因此足迹遍布全球，广交天下好友。一些挚友正是通过这些开源工作才有幸得以结识。 不过恐怕不是所有的体验都能如此美好。\n\n维护这些拥有成百上千用户的项目，意味着你要直面来自用户的诸多批评。这种感觉有时很像当一名政客。虽然有些并没什么价值，但是多数的批评还是很中肯的。然而，很多批评往往带有极度的负面情绪，令人好生难受。');

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '代表的是索引',
  `name` varchar(30) NOT NULL COMMENT '代表的是菜名',
  `price` int(11) NOT NULL COMMENT '代表的是价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`) VALUES
(1, '宫保鸡丁', 15),
(2, '剁掉鱼头', 20),
(3, '葱爆鸡蛋', 12),
(4, '盐酥鸡', 16);

-- --------------------------------------------------------

--
-- 表的结构 `todo`
--

CREATE TABLE IF NOT EXISTS `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `taskName` varchar(50) NOT NULL COMMENT '代表要做的事情',
  `isCompleted` int(11) NOT NULL COMMENT '代表是否完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `todo`
--

INSERT INTO `todo` (`id`, `taskName`, `isCompleted`) VALUES
(1, '吃饭', 0),
(2, '睡觉', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

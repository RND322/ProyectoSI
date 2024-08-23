-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2024 at 05:41 AM
-- Server version: 8.0.36
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tilapias_prueba`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `area_code` int NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`area_code`, `description`, `inactive`) VALUES
(1, 'Global', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int UNSIGNED NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `type_no` int NOT NULL DEFAULT '0',
  `trans_no` int NOT NULL DEFAULT '0',
  `unique_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `filename` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `filesize` int NOT NULL DEFAULT '0',
  `filetype` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `id` int NOT NULL,
  `type` smallint UNSIGNED NOT NULL DEFAULT '0',
  `trans_no` int UNSIGNED NOT NULL DEFAULT '0',
  `user` smallint UNSIGNED NOT NULL DEFAULT '0',
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fiscal_year` int NOT NULL DEFAULT '0',
  `gl_date` date NOT NULL DEFAULT '0000-00-00',
  `gl_seq` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`id`, `type`, `trans_no`, `user`, `stamp`, `description`, `fiscal_year`, `gl_date`, `gl_seq`) VALUES
(1, 17, 1, 1, '2024-08-11 00:21:40', '', 4, '2024-08-11', 0),
(2, 17, 2, 1, '2024-08-11 00:52:45', '', 4, '2024-08-11', 0),
(3, 30, 1, 1, '2024-08-11 01:51:50', '', 4, '2024-08-11', 0),
(4, 13, 1, 1, '2024-08-11 01:51:51', '', 4, '2024-08-11', 0),
(5, 10, 1, 1, '2024-08-11 01:51:51', '', 4, '2024-08-11', 0),
(6, 12, 1, 1, '2024-08-11 01:51:51', '', 4, '2024-08-11', 0),
(7, 30, 2, 1, '2024-08-11 01:53:01', '', 4, '2024-08-11', 0),
(8, 13, 2, 1, '2024-08-11 01:53:01', '', 4, '2024-08-11', 0),
(9, 10, 2, 1, '2024-08-11 01:53:02', '', 4, '2024-08-11', 0),
(10, 12, 2, 1, '2024-08-11 01:53:02', '', 4, '2024-08-11', 0),
(11, 18, 1, 1, '2024-08-11 02:02:01', '', 4, '2024-08-11', 0),
(12, 25, 1, 1, '2024-08-11 02:02:01', '', 4, '2024-08-11', 0),
(13, 20, 1, 1, '2024-08-11 02:02:01', '', 4, '2024-08-11', 0),
(14, 30, 3, 1, '2024-08-11 02:03:40', '', 4, '2024-08-11', 0),
(15, 13, 3, 1, '2024-08-11 02:03:40', '', 4, '2024-08-11', 0),
(16, 10, 3, 1, '2024-08-11 02:03:41', '', 4, '2024-08-11', 0),
(17, 12, 3, 1, '2024-08-11 02:03:41', '', 4, '2024-08-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `account_code` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `account_type` smallint NOT NULL DEFAULT '0',
  `bank_account_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `bank_account_number` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `bank_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `bank_address` tinytext COLLATE utf8mb3_unicode_ci,
  `bank_curr_code` char(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_curr_act` tinyint(1) NOT NULL DEFAULT '0',
  `id` smallint NOT NULL,
  `bank_charge_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `last_reconciled_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ending_reconcile_balance` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`account_code`, `account_type`, `bank_account_name`, `bank_account_number`, `bank_name`, `bank_address`, `bank_curr_code`, `dflt_curr_act`, `id`, `bank_charge_act`, `last_reconciled_date`, `ending_reconcile_balance`, `inactive`) VALUES
('1060', 3, 'Cuenta Corriente', '015423', 'BAC', '', 'LPS', 1, 1, '5690', '0000-00-00 00:00:00', 0, 0),
('1065', 3, 'Petty Cash account', 'N/A', 'N/A', NULL, 'USD', 0, 2, '5690', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bank_trans`
--

CREATE TABLE `bank_trans` (
  `id` int NOT NULL,
  `type` smallint DEFAULT NULL,
  `trans_no` int DEFAULT NULL,
  `bank_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `ref` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `trans_date` date NOT NULL DEFAULT '0000-00-00',
  `amount` double DEFAULT NULL,
  `dimension_id` int NOT NULL DEFAULT '0',
  `dimension2_id` int NOT NULL DEFAULT '0',
  `person_type_id` int NOT NULL DEFAULT '0',
  `person_id` tinyblob,
  `reconciled` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `bank_trans`
--

INSERT INTO `bank_trans` (`id`, `type`, `trans_no`, `bank_act`, `ref`, `trans_date`, `amount`, `dimension_id`, `dimension2_id`, `person_type_id`, `person_id`, `reconciled`) VALUES
(1, 12, 1, '2', '001/2024', '2024-08-11', 120, 0, 0, 2, 0x31, NULL),
(2, 12, 2, '2', '002/2024', '2024-08-11', 270, 0, 0, 2, 0x31, NULL),
(3, 12, 3, '2', '003/2024', '2024-08-11', 9.76, 0, 0, 2, 0x31, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bom`
--

CREATE TABLE `bom` (
  `id` int NOT NULL,
  `parent` char(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `component` char(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `workcentre_added` int NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `quantity` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `budget_trans`
--

CREATE TABLE `budget_trans` (
  `id` int NOT NULL,
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int DEFAULT '0',
  `dimension2_id` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_class`
--

CREATE TABLE `chart_class` (
  `cid` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `ctype` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chart_class`
--

INSERT INTO `chart_class` (`cid`, `class_name`, `ctype`, `inactive`) VALUES
('1', 'Assets', 1, 0),
('2', 'Liabilities', 2, 0),
('3', 'Income', 4, 0),
('4', 'Costs', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chart_master`
--

CREATE TABLE `chart_master` (
  `account_code` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `account_code2` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `account_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `account_type` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chart_master`
--

INSERT INTO `chart_master` (`account_code`, `account_code2`, `account_name`, `account_type`, `inactive`) VALUES
('1060', '', 'Checking Account', '1', 0),
('1065', '', 'Petty Cash', '1', 0),
('1200', '', 'Accounts Receivables', '1', 0),
('1205', '', 'Allowance for doubtful accounts', '1', 0),
('1510', '', 'Inventory', '2', 0),
('1520', '', 'Stocks of Raw Materials', '2', 0),
('1530', '', 'Stocks of Work In Progress', '2', 0),
('1540', '', 'Stocks of Finished Goods', '2', 0),
('1550', '', 'Goods Received Clearing account', '2', 0),
('1820', '', 'Office Furniture &amp; Equipment', '3', 0),
('1825', '', 'Accum. Amort. -Furn. &amp; Equip.', '3', 0),
('1840', '', 'Vehicle', '3', 0),
('1845', '', 'Accum. Amort. -Vehicle', '3', 0),
('2100', '', 'Accounts Payable', '4', 0),
('2105', '', 'Deferred Income', '4', 0),
('2110', '', 'Accrued Income Tax - Federal', '4', 0),
('2120', '', 'Accrued Income Tax - State', '4', 0),
('2130', '', 'Accrued Franchise Tax', '4', 0),
('2140', '', 'Accrued Real &amp; Personal Prop Tax', '4', 0),
('2150', '', 'Sales Tax', '4', 0),
('2160', '', 'Accrued Use Tax Payable', '4', 0),
('2210', '', 'Accrued Wages', '4', 0),
('2220', '', 'Accrued Comp Time', '4', 0),
('2230', '', 'Accrued Holiday Pay', '4', 0),
('2240', '', 'Accrued Vacation Pay', '4', 0),
('2310', '', 'Accr. Benefits - 401K', '4', 0),
('2320', '', 'Accr. Benefits - Stock Purchase', '4', 0),
('2330', '', 'Accr. Benefits - Med, Den', '4', 0),
('2340', '', 'Accr. Benefits - Payroll Taxes', '4', 0),
('2350', '', 'Accr. Benefits - Credit Union', '4', 0),
('2360', '', 'Accr. Benefits - Savings Bond', '4', 0),
('2370', '', 'Accr. Benefits - Garnish', '4', 0),
('2380', '', 'Accr. Benefits - Charity Cont.', '4', 0),
('2620', '', 'Bank Loans', '5', 0),
('2680', '', 'Loans from Shareholders', '5', 0),
('3350', '', 'Common Shares', '6', 0),
('3590', '', 'Retained Earnings - prior years', '7', 0),
('4010', '', 'Sales', '8', 0),
('4430', '', 'Shipping &amp; Handling', '9', 0),
('4440', '', 'Interest', '9', 0),
('4450', '', 'Foreign Exchange Gain', '9', 0),
('4500', '', 'Prompt Payment Discounts', '9', 0),
('4510', '', 'Discounts Given', '9', 0),
('5010', '', 'Cost of Goods Sold - Retail', '10', 0),
('5020', '', 'Material Usage Varaiance', '10', 0),
('5030', '', 'Consumable Materials', '10', 0),
('5040', '', 'Purchase price Variance', '10', 0),
('5050', '', 'Purchases of materials', '10', 0),
('5060', '', 'Discounts Received', '10', 0),
('5100', '', 'Freight', '10', 0),
('5410', '', 'Wages &amp; Salaries', '11', 0),
('5420', '', 'Wages - Overtime', '11', 0),
('5430', '', 'Benefits - Comp Time', '11', 0),
('5440', '', 'Benefits - Payroll Taxes', '11', 0),
('5450', '', 'Benefits - Workers Comp', '11', 0),
('5460', '', 'Benefits - Pension', '11', 0),
('5470', '', 'Benefits - General Benefits', '11', 0),
('5510', '', 'Inc Tax Exp - Federal', '11', 0),
('5520', '', 'Inc Tax Exp - State', '11', 0),
('5530', '', 'Taxes - Real Estate', '11', 0),
('5540', '', 'Taxes - Personal Property', '11', 0),
('5550', '', 'Taxes - Franchise', '11', 0),
('5560', '', 'Taxes - Foreign Withholding', '11', 0),
('5610', '', 'Accounting &amp; Legal', '12', 0),
('5615', '', 'Advertising &amp; Promotions', '12', 0),
('5620', '', 'Bad Debts', '12', 0),
('5660', '', 'Amortization Expense', '12', 0),
('5685', '', 'Insurance', '12', 0),
('5690', '', 'Interest &amp; Bank Charges', '12', 0),
('5700', '', 'Office Supplies', '12', 0),
('5760', '', 'Rent', '12', 0),
('5765', '', 'Repair &amp; Maintenance', '12', 0),
('5780', '', 'Telephone', '12', 0),
('5785', '', 'Travel &amp; Entertainment', '12', 0),
('5790', '', 'Utilities', '12', 0),
('5795', '', 'Registrations', '12', 0),
('5800', '', 'Licenses', '12', 0),
('5810', '', 'Foreign Exchange Loss', '12', 0),
('9990', '', 'Year Profit/Loss', '12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chart_types`
--

CREATE TABLE `chart_types` (
  `id` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `class_id` varchar(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '-1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `chart_types`
--

INSERT INTO `chart_types` (`id`, `name`, `class_id`, `parent`, `inactive`) VALUES
('1', 'Current Assets', '1', '', 0),
('10', 'Cost of Goods Sold', '4', '', 0),
('11', 'Payroll Expenses', '4', '', 0),
('12', 'General &amp; Administrative expenses', '4', '', 0),
('2', 'Inventory Assets', '1', '', 0),
('3', 'Capital Assets', '1', '', 0),
('4', 'Current Liabilities', '2', '', 0),
('5', 'Long Term Liabilities', '2', '', 0),
('6', 'Share Capital', '2', '', 0),
('7', 'Retained Earnings', '2', '', 0),
('8', 'Sales Revenue', '3', '', 0),
('9', 'Other Revenue', '3', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `type` int NOT NULL DEFAULT '0',
  `id` int NOT NULL DEFAULT '0',
  `date_` date DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8mb3_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`type`, `id`, `date_`, `memo_`) VALUES
(12, 1, '2024-08-11', 'Default #1'),
(13, 2, '2024-08-11', 'Agua'),
(10, 2, '2024-08-11', 'Agua'),
(12, 2, '2024-08-11', 'Default #2'),
(12, 3, '2024-08-11', 'Default #3');

-- --------------------------------------------------------

--
-- Table structure for table `credit_status`
--

CREATE TABLE `credit_status` (
  `id` int NOT NULL,
  `reason_description` char(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dissallow_invoices` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `credit_status`
--

INSERT INTO `credit_status` (`id`, `reason_description`, `dissallow_invoices`, `inactive`) VALUES
(1, 'Good History', 0, 0),
(3, 'No more work until payment received', 1, 0),
(4, 'In liquidation', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_categories`
--

CREATE TABLE `crm_categories` (
  `id` int NOT NULL COMMENT 'pure technical key',
  `type` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'contact type e.g. customer',
  `action` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'detailed usage e.g. department',
  `name` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'for category selector',
  `description` tinytext COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'usage description',
  `system` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'nonzero for core system usage',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `crm_categories`
--

INSERT INTO `crm_categories` (`id`, `type`, `action`, `name`, `description`, `system`, `inactive`) VALUES
(1, 'cust_branch', 'general', 'General', 'General contact data for customer branch (overrides company setting)', 1, 0),
(2, 'cust_branch', 'invoice', 'Invoices', 'Invoice posting (overrides company setting)', 1, 0),
(3, 'cust_branch', 'order', 'Orders', 'Order confirmation (overrides company setting)', 1, 0),
(4, 'cust_branch', 'delivery', 'Deliveries', 'Delivery coordination (overrides company setting)', 1, 0),
(5, 'customer', 'general', 'General', 'General contact data for customer', 1, 0),
(6, 'customer', 'order', 'Orders', 'Order confirmation', 1, 0),
(7, 'customer', 'delivery', 'Deliveries', 'Delivery coordination', 1, 0),
(8, 'customer', 'invoice', 'Invoices', 'Invoice posting', 1, 0),
(9, 'supplier', 'general', 'General', 'General contact data for supplier', 1, 0),
(10, 'supplier', 'order', 'Orders', 'Order confirmation', 1, 0),
(11, 'supplier', 'delivery', 'Deliveries', 'Delivery coordination', 1, 0),
(12, 'supplier', 'invoice', 'Invoices', 'Invoice posting', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_contacts`
--

CREATE TABLE `crm_contacts` (
  `id` int NOT NULL,
  `person_id` int NOT NULL DEFAULT '0' COMMENT 'foreign key to crm_persons',
  `type` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `action` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'foreign key to crm_categories',
  `entity_id` varchar(11) COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'entity id in related class table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `crm_contacts`
--

INSERT INTO `crm_contacts` (`id`, `person_id`, `type`, `action`, `entity_id`) VALUES
(1, 1, 'supplier', 'general', '1'),
(2, 2, 'cust_branch', 'general', '1'),
(3, 2, 'customer', 'general', '1');

-- --------------------------------------------------------

--
-- Table structure for table `crm_persons`
--

CREATE TABLE `crm_persons` (
  `id` int NOT NULL,
  `ref` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name2` varchar(60) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` tinytext COLLATE utf8mb3_unicode_ci,
  `phone` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone2` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `fax` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `lang` char(5) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `notes` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `crm_persons`
--

INSERT INTO `crm_persons` (`id`, `ref`, `name`, `name2`, `address`, `phone`, `phone2`, `fax`, `email`, `lang`, `notes`, `inactive`) VALUES
(1, 'KDK', 'Peter', '', '', '2442 2444', '', '', 'servicio@polloreyalimentos.com', 'C', '', 0),
(2, 'Cliente Final Efectivo', 'Cliente Final Efectivo', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `currency` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `curr_abrev` char(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `curr_symbol` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `hundreds_name` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `auto_update` tinyint(1) NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`currency`, `curr_abrev`, `curr_symbol`, `country`, `hundreds_name`, `auto_update`, `inactive`) VALUES
('CA Dollars', 'CAD', '$', 'Canada', 'Cents', 1, 0),
('Euro', 'EUR', 'â‚¬', 'Europe', 'Cents', 1, 0),
('Lempiras', 'LPS', 'L', 'Honduras', 'Centavos', 1, 0),
('US Dollars', 'USD', '$', 'United States', 'Cents', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cust_allocations`
--

CREATE TABLE `cust_allocations` (
  `id` int NOT NULL,
  `person_id` int DEFAULT NULL,
  `amt` double UNSIGNED DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int DEFAULT NULL,
  `trans_type_from` int DEFAULT NULL,
  `trans_no_to` int DEFAULT NULL,
  `trans_type_to` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cust_allocations`
--

INSERT INTO `cust_allocations` (`id`, `person_id`, `amt`, `date_alloc`, `trans_no_from`, `trans_type_from`, `trans_no_to`, `trans_type_to`) VALUES
(1, 1, 120, '2024-08-11', 1, 12, 1, 10),
(2, 1, 270, '2024-08-11', 2, 12, 2, 10),
(3, 1, 240, '2024-08-11', 3, 12, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cust_branch`
--

CREATE TABLE `cust_branch` (
  `branch_code` int NOT NULL,
  `debtor_no` int NOT NULL DEFAULT '0',
  `br_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `branch_ref` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `br_address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `area` int DEFAULT NULL,
  `salesman` int NOT NULL DEFAULT '0',
  `default_location` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tax_group_id` int DEFAULT NULL,
  `sales_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sales_discount_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `receivables_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `default_ship_via` int NOT NULL DEFAULT '1',
  `br_post_address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_no` int NOT NULL DEFAULT '0',
  `notes` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `bank_account` varchar(60) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `cust_branch`
--

INSERT INTO `cust_branch` (`branch_code`, `debtor_no`, `br_name`, `branch_ref`, `br_address`, `area`, `salesman`, `default_location`, `tax_group_id`, `sales_account`, `sales_discount_account`, `receivables_account`, `payment_discount_account`, `default_ship_via`, `br_post_address`, `group_no`, `notes`, `bank_account`, `inactive`) VALUES
(1, 1, 'Cliente Final Efectivo', 'Cliente Final Efectivo', '', 1, 1, 'DEF', 1, '', '4510', '1200', '4500', 1, '', 0, '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `debtors_master`
--

CREATE TABLE `debtors_master` (
  `debtor_no` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `debtor_ref` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8mb3_unicode_ci,
  `tax_id` varchar(55) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sales_type` int NOT NULL DEFAULT '1',
  `dimension_id` int NOT NULL DEFAULT '0',
  `dimension2_id` int NOT NULL DEFAULT '0',
  `credit_status` int NOT NULL DEFAULT '0',
  `payment_terms` int DEFAULT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `pymt_discount` double NOT NULL DEFAULT '0',
  `credit_limit` float NOT NULL DEFAULT '1000',
  `notes` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `debtors_master`
--

INSERT INTO `debtors_master` (`debtor_no`, `name`, `debtor_ref`, `address`, `tax_id`, `curr_code`, `sales_type`, `dimension_id`, `dimension2_id`, `credit_status`, `payment_terms`, `discount`, `pymt_discount`, `credit_limit`, `notes`, `inactive`) VALUES
(1, 'Cliente Final Efectivo', 'Cliente Final Efectivo', '', '', 'LPS', 1, 0, 0, 1, 4, 0, 0, 200, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `debtor_trans`
--

CREATE TABLE `debtor_trans` (
  `trans_no` int UNSIGNED NOT NULL DEFAULT '0',
  `type` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `debtor_no` int UNSIGNED NOT NULL,
  `branch_code` int NOT NULL DEFAULT '-1',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tpe` int NOT NULL DEFAULT '0',
  `order_` int NOT NULL DEFAULT '0',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `ov_freight` double NOT NULL DEFAULT '0',
  `ov_freight_tax` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `ship_via` int DEFAULT NULL,
  `dimension_id` int NOT NULL DEFAULT '0',
  `dimension2_id` int NOT NULL DEFAULT '0',
  `payment_terms` int DEFAULT NULL,
  `tax_included` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `debtor_trans`
--

INSERT INTO `debtor_trans` (`trans_no`, `type`, `version`, `debtor_no`, `branch_code`, `tran_date`, `due_date`, `reference`, `tpe`, `order_`, `ov_amount`, `ov_gst`, `ov_freight`, `ov_freight_tax`, `ov_discount`, `alloc`, `prep_amount`, `rate`, `ship_via`, `dimension_id`, `dimension2_id`, `payment_terms`, `tax_included`) VALUES
(1, 10, 0, 1, 1, '2024-08-11', '2024-08-11', '001/2024', 1, 1, 120, 0, 0, 0, 0, 120, 0, 1, 1, 0, 0, 4, 1),
(2, 10, 0, 1, 1, '2024-08-11', '2024-08-11', '002/2024', 1, 2, 120, 0, 150, 0, 0, 270, 0, 1, 1, 0, 0, 4, 1),
(3, 10, 0, 1, 1, '2024-08-11', '2024-08-11', '003/2024', 1, 3, 120, 0, 120, 0, 0, 240, 0, 1, 1, 0, 0, 4, 1),
(1, 12, 0, 1, 1, '2024-08-11', '0000-00-00', '001/2024', 0, 0, 120, 0, 0, 0, 0, 120, 0, 1, 0, 0, 0, NULL, 0),
(2, 12, 0, 1, 1, '2024-08-11', '0000-00-00', '002/2024', 0, 0, 270, 0, 0, 0, 0, 270, 0, 1, 0, 0, 0, NULL, 0),
(3, 12, 0, 1, 1, '2024-08-11', '0000-00-00', '003/2024', 0, 0, 240, 0, 0, 0, 0, 240, 0, 1, 0, 0, 0, NULL, 0),
(1, 13, 1, 1, 1, '2024-08-11', '2024-08-11', 'auto', 1, 1, 120, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1),
(2, 13, 1, 1, 1, '2024-08-11', '2024-08-11', 'auto', 1, 2, 120, 0, 150, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1),
(3, 13, 1, 1, 1, '2024-08-11', '2024-08-11', 'auto', 1, 3, 120, 0, 120, 0, 0, 0, 0, 1, 1, 0, 0, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `debtor_trans_details`
--

CREATE TABLE `debtor_trans_details` (
  `id` int NOT NULL,
  `debtor_trans_no` int DEFAULT NULL,
  `debtor_trans_type` int DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8mb3_unicode_ci,
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0',
  `standard_cost` double NOT NULL DEFAULT '0',
  `qty_done` double NOT NULL DEFAULT '0',
  `src_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `debtor_trans_details`
--

INSERT INTO `debtor_trans_details` (`id`, `debtor_trans_no`, `debtor_trans_type`, `stock_id`, `description`, `unit_price`, `unit_tax`, `quantity`, `discount_percent`, `standard_cost`, `qty_done`, `src_id`) VALUES
(1, 1, 13, '101', 'Pollo Chuco', 120, 15.65, 1, 0, 120, 1, 1),
(2, 1, 10, '101', 'Pollo Chuco', 120, 15.65, 1, 0, 120, 0, 1),
(3, 2, 13, '101', 'Pollo Chuco', 120, 15.65, 1, 0, 120, 1, 2),
(4, 2, 10, '101', 'Pollo Chuco', 120, 15.65, 1, 0, 120, 0, 3),
(5, 3, 13, '101', 'Pollo Chuco', 120, 15.65, 1, 0, 90, 1, 3),
(6, 3, 10, '101', 'Pollo Chuco', 120, 15.65, 1, 0, 90, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dimensions`
--

CREATE TABLE `dimensions` (
  `id` int NOT NULL,
  `reference` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `type_` tinyint(1) NOT NULL DEFAULT '1',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exchange_rates`
--

CREATE TABLE `exchange_rates` (
  `id` int NOT NULL,
  `curr_code` char(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `rate_buy` double NOT NULL DEFAULT '0',
  `rate_sell` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `exchange_rates`
--

INSERT INTO `exchange_rates` (`id`, `curr_code`, `rate_buy`, `rate_sell`, `date_`) VALUES
(1, 'USD', 0.041, 0.041, '2024-08-11'),
(2, 'EUR', 0.037, 0.037, '2024-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_year`
--

CREATE TABLE `fiscal_year` (
  `id` int NOT NULL,
  `begin` date DEFAULT '0000-00-00',
  `end` date DEFAULT '0000-00-00',
  `closed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `fiscal_year`
--

INSERT INTO `fiscal_year` (`id`, `begin`, `end`, `closed`) VALUES
(1, '2021-01-01', '2021-12-31', 1),
(2, '2022-01-01', '2022-12-31', 1),
(3, '2023-01-01', '2023-12-31', 1),
(4, '2024-01-01', '2024-12-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gl_trans`
--

CREATE TABLE `gl_trans` (
  `counter` int NOT NULL,
  `type` smallint NOT NULL DEFAULT '0',
  `type_no` int NOT NULL DEFAULT '0',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `memo_` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `dimension_id` int NOT NULL DEFAULT '0',
  `dimension2_id` int NOT NULL DEFAULT '0',
  `person_type_id` int DEFAULT NULL,
  `person_id` tinyblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `gl_trans`
--

INSERT INTO `gl_trans` (`counter`, `type`, `type_no`, `tran_date`, `account`, `memo_`, `amount`, `dimension_id`, `dimension2_id`, `person_type_id`, `person_id`) VALUES
(1, 17, 1, '2024-08-11', '5040', '', -120, 0, 0, NULL, NULL),
(2, 17, 1, '2024-08-11', '1510', '', 120, 0, 0, NULL, NULL),
(3, 17, 2, '2024-08-11', '5040', '', -120, 0, 0, NULL, NULL),
(4, 17, 2, '2024-08-11', '1510', '', 120, 0, 0, NULL, NULL),
(5, 13, 1, '2024-08-11', '5010', '', 120, 0, 0, NULL, NULL),
(6, 13, 1, '2024-08-11', '1510', '', -120, 0, 0, NULL, NULL),
(7, 10, 1, '2024-08-11', '4010', '', -104.35, 0, 0, NULL, NULL),
(8, 10, 1, '2024-08-11', '1200', '', 120, 0, 0, 2, 0x31),
(9, 10, 1, '2024-08-11', '2150', '', -15.65, 0, 0, NULL, NULL),
(10, 12, 1, '2024-08-11', '1065', '', 120, 0, 0, NULL, NULL),
(11, 12, 1, '2024-08-11', '1200', '', -120, 0, 0, 2, 0x31),
(12, 13, 2, '2024-08-11', '5010', '', 120, 0, 0, NULL, NULL),
(13, 13, 2, '2024-08-11', '1510', '', -120, 0, 0, NULL, NULL),
(14, 10, 2, '2024-08-11', '4010', '', -104.35, 0, 0, NULL, NULL),
(15, 10, 2, '2024-08-11', '1200', '', 270, 0, 0, 2, 0x31),
(16, 10, 2, '2024-08-11', '4430', '', -130.43, 0, 0, NULL, NULL),
(17, 10, 2, '2024-08-11', '2150', '', -35.22, 0, 0, NULL, NULL),
(18, 12, 2, '2024-08-11', '1065', '', 270, 0, 0, NULL, NULL),
(19, 12, 2, '2024-08-11', '1200', '', -270, 0, 0, 2, 0x31),
(20, 25, 1, '2024-08-11', '1510', '101', 450, 0, 0, NULL, NULL),
(21, 25, 1, '2024-08-11', '1550', '', -450, 0, 0, NULL, NULL),
(22, 20, 1, '2024-08-11', '2100', '', -450, 0, 0, 3, 0x31),
(23, 20, 1, '2024-08-11', '1550', '', 450, 0, 0, NULL, NULL),
(24, 13, 3, '2024-08-11', '5010', '', 90, 0, 0, NULL, NULL),
(25, 13, 3, '2024-08-11', '1510', '', -90, 0, 0, NULL, NULL),
(26, 10, 3, '2024-08-11', '4010', '', -104.35, 0, 0, NULL, NULL),
(27, 10, 3, '2024-08-11', '1200', '', 240, 0, 0, 2, 0x31),
(28, 10, 3, '2024-08-11', '4430', '', -104.35, 0, 0, NULL, NULL),
(29, 10, 3, '2024-08-11', '2150', '', -31.31, 0, 0, NULL, NULL),
(30, 10, 3, '2024-08-11', '4450', '', 0.01, 0, 0, NULL, NULL),
(31, 12, 3, '2024-08-11', '1065', '', 240, 0, 0, NULL, NULL),
(32, 12, 3, '2024-08-11', '1200', '', -240, 0, 0, 2, 0x31);

-- --------------------------------------------------------

--
-- Table structure for table `grn_batch`
--

CREATE TABLE `grn_batch` (
  `id` int NOT NULL,
  `supplier_id` int NOT NULL DEFAULT '0',
  `purch_order_no` int DEFAULT NULL,
  `reference` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `loc_code` varchar(5) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `rate` double DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `grn_batch`
--

INSERT INTO `grn_batch` (`id`, `supplier_id`, `purch_order_no`, `reference`, `delivery_date`, `loc_code`, `rate`) VALUES
(1, 1, 1, 'auto', '2024-08-11', 'DEF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grn_items`
--

CREATE TABLE `grn_items` (
  `id` int NOT NULL,
  `grn_batch_id` int DEFAULT NULL,
  `po_detail_item` int NOT NULL DEFAULT '0',
  `item_code` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8mb3_unicode_ci,
  `qty_recd` double NOT NULL DEFAULT '0',
  `quantity_inv` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `grn_items`
--

INSERT INTO `grn_items` (`id`, `grn_batch_id`, `po_detail_item`, `item_code`, `description`, `qty_recd`, `quantity_inv`) VALUES
(1, 1, 1, '101', 'Pollo Chuco', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` smallint UNSIGNED NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `description`, `inactive`) VALUES
(1, 'Small', 0),
(2, 'Medium', 0),
(3, 'Large', 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_codes`
--

CREATE TABLE `item_codes` (
  `id` int UNSIGNED NOT NULL,
  `item_code` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `stock_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `category_id` smallint UNSIGNED NOT NULL,
  `quantity` double NOT NULL DEFAULT '1',
  `is_foreign` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `item_codes`
--

INSERT INTO `item_codes` (`id`, `item_code`, `stock_id`, `description`, `category_id`, `quantity`, `is_foreign`, `inactive`) VALUES
(1, '101', '101', 'Anafre Mixto', 5, 1, 0, 0),
(3, '102', '102', 'Anafre Sencillo', 5, 1, 0, 0),
(4, '103', '103', 'Ceviche Mixto', 5, 1, 0, 0),
(5, '104', '104', 'Ceviche de Caracol', 5, 1, 0, 0),
(6, '105', '105', 'Ceviche de Camaron', 5, 1, 0, 0),
(7, '106', '106', 'Ceviche de Pescado', 5, 1, 0, 0),
(8, '201', '201', 'Carne de Res a la Plancha', 5, 1, 0, 0),
(9, '202', '202', 'Carne de Cerdo a la Plancha', 5, 1, 0, 0),
(10, '203', '203', 'Carne Mixta', 5, 1, 0, 0),
(11, '204', '204', 'Boca Especial', 5, 1, 0, 0),
(12, '205', '205', 'Puyazo con Chorizo', 5, 1, 0, 0),
(13, '301', '301', 'Filete de Pescado Empanizado', 5, 1, 0, 0),
(14, '302', '302', 'Filete de Pescado al Ajillo', 5, 1, 0, 0),
(15, '303', '303', 'Filete de Pescado a la Diabla', 5, 1, 0, 0),
(16, '304', '304', 'Deditos de Pescado', 5, 1, 0, 0),
(17, '305', '305', 'Filete de Pollo a la Plancha', 5, 1, 0, 0),
(18, '401', '401', 'Pescado Frito P', 5, 1, 0, 0),
(19, '402', '402', 'Pescado Frito M', 5, 1, 0, 0),
(20, '403', '403', 'Pescado Frito G', 5, 1, 0, 0),
(21, '501', '501', 'Sopa Marinera', 5, 1, 0, 0),
(22, '502', '502', 'Sopa de Pescado', 5, 1, 0, 0),
(23, '503', '503', 'Sopa de Camaron', 5, 1, 0, 0),
(24, '504', '504', 'Sopa de Caracol', 5, 1, 0, 0),
(25, '505', '505', 'Sopa de Jaiba', 5, 1, 0, 0),
(26, '601', '601', 'Hamburguesa de Res', 5, 1, 0, 0),
(27, '602', '602', 'Hamburguesa de Pollo', 5, 1, 0, 0),
(28, '603', '603', 'Tenders de Pollo', 5, 1, 0, 0),
(29, '604', '604', 'Orden de Papas', 5, 1, 0, 0),
(30, '605', '605', 'Orden de Alitas 6P', 5, 1, 0, 0),
(31, '606', '606', 'Orden de Alitas 12P', 5, 1, 0, 0),
(32, '701', '701', 'Camarones Empanizados', 5, 1, 0, 0),
(33, '702', '702', 'Camarones a la Diabla', 5, 1, 0, 0),
(34, '703', '703', 'Camarones al Ajillo', 5, 1, 0, 0),
(35, '801', '801', 'Metro Olanchano', 5, 1, 0, 0),
(36, '802', '802', 'Medio Metro Olanchano', 5, 1, 0, 0),
(37, '803', '803', 'Metro de Aire Mar y Tierra', 5, 1, 0, 0),
(38, '804', '804', 'Medio Metro de Aire Mar y Tierra', 5, 1, 0, 0),
(39, '901', '901', 'Refresco 12Oz', 1, 1, 0, 0),
(40, '902', '902', 'Refresco Desechable', 1, 1, 0, 0),
(41, '903', '903', 'Refresco Mini', 1, 1, 0, 0),
(42, '904', '904', 'Refresco Natural', 1, 1, 0, 0),
(43, '905', '905', 'Adrenalina', 1, 1, 0, 0),
(44, '906', '906', 'Agua en Bote', 1, 1, 0, 0),
(45, '907', '907', 'Jugo California', 1, 1, 0, 0),
(46, '908', '908', 'Te Lipton', 1, 1, 0, 0),
(47, '909', '909', 'Gatorade', 1, 1, 0, 0),
(48, '910', '910', 'Cerveza Nacional', 1, 1, 0, 0),
(49, '911', '911', 'Ultra', 1, 1, 0, 0),
(50, '912', '912', 'Corona', 1, 1, 0, 0),
(51, '913', '913', 'Miller Light', 1, 1, 0, 0),
(52, '914', '914', 'Coors Light', 1, 1, 0, 0),
(53, '920', '920', 'Vodka Cranberry Sencillo', 1, 1, 0, 0),
(54, '921', '921', 'Vodka Cranberry Doble', 1, 1, 0, 0),
(55, '922', '922', 'Ron Flor de Cana 4A Sencillo', 1, 1, 0, 0),
(56, '923', '923', 'Ron Flor de Cana 4A Doble', 1, 1, 0, 0),
(57, '924', '924', 'Whisky Chivas Regal Sencillo', 1, 1, 0, 0),
(58, '925', '925', 'Whisky Chivas Regal Doble', 1, 1, 0, 0),
(59, '926', '926', 'Whisky Black Label Sencillo', 1, 1, 0, 0),
(60, '927', '927', 'Whisky Black Label Doble', 1, 1, 0, 0),
(61, '928', '928', 'Tequila Sencillo', 1, 1, 0, 0),
(62, '929', '929', 'Tequila Doble', 1, 1, 0, 0),
(63, '930', '930', 'Ron Bacardi Sencillo', 1, 1, 0, 0),
(64, '931', '931', 'Ron Bacardi Doble', 1, 1, 0, 0),
(65, '932', '932', 'Margarita', 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_tax_types`
--

CREATE TABLE `item_tax_types` (
  `id` int NOT NULL,
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `exempt` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `item_tax_types`
--

INSERT INTO `item_tax_types` (`id`, `name`, `exempt`, `inactive`) VALUES
(1, 'Regular', 0, 0),
(2, 'Bebidas', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_tax_type_exemptions`
--

CREATE TABLE `item_tax_type_exemptions` (
  `item_tax_type_id` int NOT NULL DEFAULT '0',
  `tax_type_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `item_tax_type_exemptions`
--

INSERT INTO `item_tax_type_exemptions` (`item_tax_type_id`, `tax_type_id`) VALUES
(1, 3),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_units`
--

CREATE TABLE `item_units` (
  `abbr` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `decimals` tinyint NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `item_units`
--

INSERT INTO `item_units` (`abbr`, `name`, `decimals`, `inactive`) VALUES
('each', 'Each', 0, 0),
('hr', 'Hours', 0, 0),
('unit', 'Unidad', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `type` smallint NOT NULL DEFAULT '0',
  `trans_no` int NOT NULL DEFAULT '0',
  `tran_date` date DEFAULT '0000-00-00',
  `reference` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `source_ref` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `event_date` date DEFAULT '0000-00-00',
  `doc_date` date NOT NULL DEFAULT '0000-00-00',
  `currency` char(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `amount` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `loc_code` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `location_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `fixed_asset` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`loc_code`, `location_name`, `delivery_address`, `phone`, `phone2`, `fax`, `email`, `contact`, `fixed_asset`, `inactive`) VALUES
('001', 'Central', 'Barrio el Centro, Catacamas Olancho.', '27994544', '', '', 'alejandrapabe@yahoo.com', '', 0, 0),
('DEF', 'Default', 'N/A', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loc_stock`
--

CREATE TABLE `loc_stock` (
  `loc_code` char(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `stock_id` char(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `reorder_level` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `loc_stock`
--

INSERT INTO `loc_stock` (`loc_code`, `stock_id`, `reorder_level`) VALUES
('001', '101', 0),
('001', '102', 0),
('001', '103', 0),
('001', '104', 0),
('001', '105', 0),
('001', '106', 0),
('001', '201', 0),
('001', '202', 0),
('001', '203', 0),
('001', '204', 0),
('001', '205', 0),
('001', '301', 0),
('001', '302', 0),
('001', '303', 0),
('001', '304', 0),
('001', '305', 0),
('001', '401', 0),
('001', '402', 0),
('001', '403', 0),
('001', '501', 0),
('001', '502', 0),
('001', '503', 0),
('001', '504', 0),
('001', '505', 0),
('001', '601', 0),
('001', '602', 0),
('001', '603', 0),
('001', '604', 0),
('001', '605', 0),
('001', '606', 0),
('001', '701', 0),
('001', '702', 0),
('001', '703', 0),
('001', '801', 0),
('001', '802', 0),
('001', '803', 0),
('001', '804', 0),
('001', '901', 0),
('001', '902', 0),
('001', '903', 0),
('001', '904', 0),
('001', '905', 0),
('001', '906', 0),
('001', '907', 0),
('001', '908', 0),
('001', '909', 0),
('001', '910', 0),
('001', '911', 0),
('001', '912', 0),
('001', '913', 0),
('001', '914', 0),
('001', '920', 0),
('001', '921', 0),
('001', '922', 0),
('001', '923', 0),
('001', '924', 0),
('001', '925', 0),
('001', '926', 0),
('001', '927', 0),
('001', '928', 0),
('001', '929', 0),
('001', '930', 0),
('001', '931', 0),
('001', '932', 0),
('DEF', '101', 5),
('DEF', '102', 0),
('DEF', '103', 0),
('DEF', '104', 0),
('DEF', '105', 0),
('DEF', '106', 0),
('DEF', '201', 0),
('DEF', '202', 0),
('DEF', '203', 0),
('DEF', '204', 0),
('DEF', '205', 0),
('DEF', '301', 0),
('DEF', '302', 0),
('DEF', '303', 0),
('DEF', '304', 0),
('DEF', '305', 0),
('DEF', '401', 0),
('DEF', '402', 0),
('DEF', '403', 0),
('DEF', '501', 0),
('DEF', '502', 0),
('DEF', '503', 0),
('DEF', '504', 0),
('DEF', '505', 0),
('DEF', '601', 0),
('DEF', '602', 0),
('DEF', '603', 0),
('DEF', '604', 0),
('DEF', '605', 0),
('DEF', '606', 0),
('DEF', '701', 0),
('DEF', '702', 0),
('DEF', '703', 0),
('DEF', '801', 0),
('DEF', '802', 0),
('DEF', '803', 0),
('DEF', '804', 0),
('DEF', '901', 0),
('DEF', '902', 0),
('DEF', '903', 0),
('DEF', '904', 0),
('DEF', '905', 0),
('DEF', '906', 0),
('DEF', '907', 0),
('DEF', '908', 0),
('DEF', '909', 0),
('DEF', '910', 0),
('DEF', '911', 0),
('DEF', '912', 0),
('DEF', '913', 0),
('DEF', '914', 0),
('DEF', '920', 0),
('DEF', '921', 0),
('DEF', '922', 0),
('DEF', '923', 0),
('DEF', '924', 0),
('DEF', '925', 0),
('DEF', '926', 0),
('DEF', '927', 0),
('DEF', '928', 0),
('DEF', '929', 0),
('DEF', '930', 0),
('DEF', '931', 0),
('DEF', '932', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `terms_indicator` int NOT NULL,
  `terms` char(80) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `days_before_due` smallint NOT NULL DEFAULT '0',
  `day_in_following_month` smallint NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `payment_terms`
--

INSERT INTO `payment_terms` (`terms_indicator`, `terms`, `days_before_due`, `day_in_following_month`, `inactive`) VALUES
(4, 'Efectivo', 0, 0, 0),
(5, 'Credito/Debito', -1, 0, 0),
(6, 'Transferencia', -1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int NOT NULL,
  `stock_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `sales_type_id` int NOT NULL DEFAULT '0',
  `curr_abrev` char(3) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `stock_id`, `sales_type_id`, `curr_abrev`, `price`) VALUES
(1, '101', 1, 'LPS', 115),
(2, '102', 1, 'LPS', 90),
(3, '103', 1, 'LPS', 190),
(4, '104', 1, 'LPS', 180),
(5, '105', 1, 'LPS', 180),
(6, '106', 1, 'LPS', 150),
(7, '201', 1, 'LPS', 165),
(8, '202', 1, 'LPS', 155),
(9, '203', 1, 'LPS', 175),
(10, '204', 1, 'LPS', 299),
(11, '205', 1, 'LPS', 295),
(12, '301', 1, 'LPS', 190),
(13, '302', 1, 'LPS', 190),
(14, '303', 1, 'LPS', 190),
(15, '304', 1, 'LPS', 120),
(16, '305', 1, 'LPS', 150),
(17, '401', 1, 'LPS', 149),
(18, '402', 1, 'LPS', 169),
(19, '403', 1, 'LPS', 200),
(20, '501', 1, 'LPS', 275),
(21, '502', 1, 'LPS', 189),
(22, '503', 1, 'LPS', 199),
(23, '504', 1, 'LPS', 199),
(24, '505', 1, 'LPS', 169),
(25, '601', 1, 'LPS', 130),
(26, '602', 1, 'LPS', 150),
(27, '603', 1, 'LPS', 105),
(28, '604', 1, 'LPS', 40),
(29, '605', 1, 'LPS', 140),
(30, '606', 1, 'LPS', 240),
(31, '701', 1, 'LPS', 290),
(32, '702', 1, 'LPS', 290),
(33, '703', 1, 'LPS', 290),
(34, '801', 1, 'LPS', 920),
(35, '802', 1, 'LPS', 470),
(36, '803', 1, 'LPS', 920),
(37, '804', 1, 'LPS', 470),
(38, '901', 1, 'LPS', 20),
(39, '902', 1, 'LPS', 25),
(40, '903', 1, 'LPS', 15),
(41, '904', 1, 'LPS', 40),
(42, '905', 1, 'LPS', 40),
(43, '906', 1, 'LPS', 20),
(44, '907', 1, 'LPS', 25),
(45, '908', 1, 'LPS', 25),
(46, '909', 1, 'LPS', 35),
(47, '910', 1, 'LPS', 45),
(48, '911', 1, 'LPS', 55),
(49, '912', 1, 'LPS', 60),
(50, '913', 1, 'LPS', 47),
(51, '914', 1, 'LPS', 55),
(52, '920', 1, 'LPS', 55),
(53, '921', 1, 'LPS', 95),
(54, '922', 1, 'LPS', 40),
(55, '923', 1, 'LPS', 60),
(56, '924', 1, 'LPS', 60),
(57, '925', 1, 'LPS', 100),
(58, '926', 1, 'LPS', 70),
(59, '927', 1, 'LPS', 120),
(60, '928', 1, 'LPS', 60),
(61, '929', 1, 'LPS', 95),
(62, '930', 1, 'LPS', 40),
(63, '931', 1, 'LPS', 60),
(64, '932', 1, 'LPS', 80);

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` tinyint UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `host` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `port` smallint UNSIGNED NOT NULL,
  `timeout` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `printers`
--

INSERT INTO `printers` (`id`, `name`, `description`, `queue`, `host`, `port`, `timeout`) VALUES
(1, 'QL500', 'Label printer', 'QL500', 'server', 127, 20),
(2, 'Samsung', 'Main network printer', 'scx4521F', 'server', 515, 5),
(3, 'Local', 'Local print server at user IP', 'lp', '', 515, 10);

-- --------------------------------------------------------

--
-- Table structure for table `print_profiles`
--

CREATE TABLE `print_profiles` (
  `id` smallint UNSIGNED NOT NULL,
  `profile` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `report` varchar(5) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `printer` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `print_profiles`
--

INSERT INTO `print_profiles` (`id`, `profile`, `report`, `printer`) VALUES
(1, 'Out of office', NULL, 0),
(2, 'Sales Department', NULL, 0),
(3, 'Central', NULL, 2),
(4, 'Sales Department', '104', 2),
(5, 'Sales Department', '105', 2),
(6, 'Sales Department', '107', 2),
(7, 'Sales Department', '109', 2),
(8, 'Sales Department', '110', 2),
(9, 'Sales Department', '201', 2);

-- --------------------------------------------------------

--
-- Table structure for table `purch_data`
--

CREATE TABLE `purch_data` (
  `supplier_id` int NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `price` double NOT NULL DEFAULT '0',
  `suppliers_uom` char(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `conversion_factor` double NOT NULL DEFAULT '1',
  `supplier_description` char(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purch_orders`
--

CREATE TABLE `purch_orders` (
  `order_no` int NOT NULL,
  `supplier_id` int NOT NULL DEFAULT '0',
  `comments` tinytext COLLATE utf8mb3_unicode_ci,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `reference` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `requisition_no` tinytext COLLATE utf8mb3_unicode_ci,
  `into_stock_location` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `purch_orders`
--

INSERT INTO `purch_orders` (`order_no`, `supplier_id`, `comments`, `ord_date`, `reference`, `requisition_no`, `into_stock_location`, `delivery_address`, `total`, `prep_amount`, `alloc`, `tax_included`) VALUES
(1, 1, '', '2024-08-11', 'auto', 'KDK', 'DEF', 'N/A', 450, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `purch_order_details`
--

CREATE TABLE `purch_order_details` (
  `po_detail_item` int NOT NULL,
  `order_no` int NOT NULL DEFAULT '0',
  `item_code` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8mb3_unicode_ci,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `qty_invoiced` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `act_price` double NOT NULL DEFAULT '0',
  `std_cost_unit` double NOT NULL DEFAULT '0',
  `quantity_ordered` double NOT NULL DEFAULT '0',
  `quantity_received` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `purch_order_details`
--

INSERT INTO `purch_order_details` (`po_detail_item`, `order_no`, `item_code`, `description`, `delivery_date`, `qty_invoiced`, `unit_price`, `act_price`, `std_cost_unit`, `quantity_ordered`, `quantity_received`) VALUES
(1, 1, '101', 'Pollo Chuco', '2024-08-11', 5, 90, 90, 90, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quick_entries`
--

CREATE TABLE `quick_entries` (
  `id` smallint UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL,
  `usage` varchar(120) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `base_amount` double NOT NULL DEFAULT '0',
  `base_desc` varchar(60) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bal_type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `quick_entries`
--

INSERT INTO `quick_entries` (`id`, `type`, `description`, `usage`, `base_amount`, `base_desc`, `bal_type`) VALUES
(1, 1, 'Maintenance', NULL, 0, 'Amount', 0),
(2, 4, 'Phone', NULL, 0, 'Amount', 0),
(3, 2, 'Cash Sales', 'Retail sales without invoice', 0, 'Amount', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quick_entry_lines`
--

CREATE TABLE `quick_entry_lines` (
  `id` smallint UNSIGNED NOT NULL,
  `qid` smallint UNSIGNED NOT NULL,
  `amount` double DEFAULT '0',
  `memo` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `action` varchar(2) COLLATE utf8mb3_unicode_ci NOT NULL,
  `dest_id` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` smallint UNSIGNED DEFAULT NULL,
  `dimension2_id` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `quick_entry_lines`
--

INSERT INTO `quick_entry_lines` (`id`, `qid`, `amount`, `memo`, `action`, `dest_id`, `dimension_id`, `dimension2_id`) VALUES
(1, 1, 0, '', 't-', '1', 0, 0),
(2, 2, 0, '', 't-', '1', 0, 0),
(3, 3, 0, '', 't-', '1', 0, 0),
(4, 3, 0, '', '=', '4010', 0, 0),
(5, 1, 0, '', '=', '5765', 0, 0),
(6, 2, 0, '', '=', '5780', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recurrent_invoices`
--

CREATE TABLE `recurrent_invoices` (
  `id` smallint UNSIGNED NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `order_no` int UNSIGNED NOT NULL,
  `debtor_no` int UNSIGNED DEFAULT NULL,
  `group_no` smallint UNSIGNED DEFAULT NULL,
  `days` int NOT NULL DEFAULT '0',
  `monthly` int NOT NULL DEFAULT '0',
  `begin` date NOT NULL DEFAULT '0000-00-00',
  `end` date NOT NULL DEFAULT '0000-00-00',
  `last_sent` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reflines`
--

CREATE TABLE `reflines` (
  `id` int NOT NULL,
  `trans_type` int NOT NULL,
  `prefix` char(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `pattern` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '1',
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `reflines`
--

INSERT INTO `reflines` (`id`, `trans_type`, `prefix`, `pattern`, `description`, `default`, `inactive`) VALUES
(1, 0, '', '{001}/{YYYY}', '', 1, 0),
(2, 1, '', '{001}/{YYYY}', '', 1, 0),
(3, 2, '', '{001}/{YYYY}', '', 1, 0),
(4, 4, '', '{001}/{YYYY}', '', 1, 0),
(5, 10, '', '{001}/{YYYY}', '', 1, 0),
(6, 11, '', '{001}/{YYYY}', '', 1, 0),
(7, 12, '', '{001}/{YYYY}', '', 1, 0),
(8, 13, '', '{001}/{YYYY}', '', 1, 0),
(9, 16, '', '{001}/{YYYY}', '', 1, 0),
(10, 17, '', '{001}/{YYYY}', '', 1, 0),
(11, 18, '', '{001}/{YYYY}', '', 1, 0),
(12, 20, '', '{001}/{YYYY}', '', 1, 0),
(13, 21, '', '{001}/{YYYY}', '', 1, 0),
(14, 22, '', '{001}/{YYYY}', '', 1, 0),
(15, 25, '', '{001}/{YYYY}', '', 1, 0),
(16, 26, '', '{001}/{YYYY}', '', 1, 0),
(17, 28, '', '{001}/{YYYY}', '', 1, 0),
(18, 29, '', '{001}/{YYYY}', '', 1, 0),
(19, 30, '', '{001}/{YYYY}', '', 1, 0),
(20, 32, '', '{001}/{YYYY}', '', 1, 0),
(21, 35, '', '{001}/{YYYY}', '', 1, 0),
(22, 40, '', '{001}/{YYYY}', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `refs`
--

CREATE TABLE `refs` (
  `id` int NOT NULL DEFAULT '0',
  `type` int NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `refs`
--

INSERT INTO `refs` (`id`, `type`, `reference`) VALUES
(1, 10, '001/2024'),
(2, 10, '002/2024'),
(3, 10, '003/2024'),
(1, 12, '001/2024'),
(2, 12, '002/2024'),
(3, 12, '003/2024'),
(1, 17, '001/2024'),
(2, 17, '002/2024'),
(1, 20, '001/2024');

-- --------------------------------------------------------

--
-- Table structure for table `salesman`
--

CREATE TABLE `salesman` (
  `salesman_code` int NOT NULL,
  `salesman_name` char(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `salesman_phone` char(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `salesman_fax` char(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `salesman_email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `provision` double NOT NULL DEFAULT '0',
  `break_pt` double NOT NULL DEFAULT '0',
  `provision2` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `salesman`
--

INSERT INTO `salesman` (`salesman_code`, `salesman_name`, `salesman_phone`, `salesman_fax`, `salesman_email`, `provision`, `break_pt`, `provision2`, `inactive`) VALUES
(1, 'Sales Person', '', '', '', 5, 1000, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `order_no` int NOT NULL,
  `trans_type` smallint NOT NULL DEFAULT '30',
  `version` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `debtor_no` int NOT NULL DEFAULT '0',
  `branch_code` int NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `customer_ref` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `comments` tinytext COLLATE utf8mb3_unicode_ci,
  `ord_date` date NOT NULL DEFAULT '0000-00-00',
  `order_type` int NOT NULL DEFAULT '0',
  `ship_via` int NOT NULL DEFAULT '0',
  `delivery_address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact_phone` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `deliver_to` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `freight_cost` double NOT NULL DEFAULT '0',
  `from_stk_loc` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `payment_terms` int DEFAULT NULL,
  `total` double NOT NULL DEFAULT '0',
  `prep_amount` double NOT NULL DEFAULT '0',
  `alloc` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sales_orders`
--

INSERT INTO `sales_orders` (`order_no`, `trans_type`, `version`, `type`, `debtor_no`, `branch_code`, `reference`, `customer_ref`, `comments`, `ord_date`, `order_type`, `ship_via`, `delivery_address`, `contact_phone`, `contact_email`, `deliver_to`, `freight_cost`, `from_stk_loc`, `delivery_date`, `payment_terms`, `total`, `prep_amount`, `alloc`) VALUES
(1, 30, 1, 0, 1, 1, 'auto', '', '', '2024-08-11', 1, 1, '', '', NULL, 'Cliente Final Efectivo', 0, 'DEF', '2024-08-11', 4, 120, 0, 0),
(2, 30, 1, 0, 1, 1, 'auto', '', 'Agua', '2024-08-11', 1, 1, '', '', NULL, 'Cliente Final Efectivo', 150, 'DEF', '2024-08-11', 4, 270, 0, 0),
(3, 30, 1, 0, 1, 1, 'auto', '', '', '2024-08-11', 1, 1, '', '', NULL, 'Cliente Final Efectivo', 120, 'DEF', '2024-08-11', 4, 240, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_details`
--

CREATE TABLE `sales_order_details` (
  `id` int NOT NULL,
  `order_no` int NOT NULL DEFAULT '0',
  `trans_type` smallint NOT NULL DEFAULT '30',
  `stk_code` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8mb3_unicode_ci,
  `qty_sent` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `invoiced` double NOT NULL DEFAULT '0',
  `discount_percent` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sales_order_details`
--

INSERT INTO `sales_order_details` (`id`, `order_no`, `trans_type`, `stk_code`, `description`, `qty_sent`, `unit_price`, `quantity`, `invoiced`, `discount_percent`) VALUES
(1, 1, 30, '101', 'Pollo Chuco', 1, 120, 1, 0, 0),
(2, 2, 30, '101', 'Pollo Chuco', 1, 120, 1, 0, 0),
(3, 3, 30, '101', 'Pollo Chuco', 1, 120, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_pos`
--

CREATE TABLE `sales_pos` (
  `id` smallint UNSIGNED NOT NULL,
  `pos_name` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cash_sale` tinyint(1) NOT NULL,
  `credit_sale` tinyint(1) NOT NULL,
  `pos_location` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL,
  `pos_account` smallint UNSIGNED NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sales_pos`
--

INSERT INTO `sales_pos` (`id`, `pos_name`, `cash_sale`, `credit_sale`, `pos_location`, `pos_account`, `inactive`) VALUES
(1, 'Default', 1, 0, 'DEF', 2, 0),
(2, 'Tilapias El Centro', 1, 0, 'DEF', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_types`
--

CREATE TABLE `sales_types` (
  `id` int NOT NULL,
  `sales_type` char(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tax_included` int NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sales_types`
--

INSERT INTO `sales_types` (`id`, `sales_type`, `tax_included`, `factor`, `inactive`) VALUES
(1, 'General', 1, 1, 0),
(3, 'ONG', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `security_roles`
--

CREATE TABLE `security_roles` (
  `id` int NOT NULL,
  `role` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sections` text COLLATE utf8mb3_unicode_ci,
  `areas` text COLLATE utf8mb3_unicode_ci,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `security_roles`
--

INSERT INTO `security_roles` (`id`, `role`, `description`, `sections`, `areas`, `inactive`) VALUES
(1, 'Inquiries', 'Inquiries', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;773;774;2822;3073;3075;3076;3077;3329;3330;3331;3332;3333;3334;3335;5377;5633;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8450;8451;10497;10753;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15622;15623;15624;15625;15626;15873;15882;16129;16130;16131;16132;775', 0),
(2, 'System Administrator', 'System Administrator', '256;512;768;2816;3072;3328;5376;5632;5888;7936;8192;8448;9472;9728;10496;10752;11008;13056;13312;15616;15872;16128', '257;258;259;260;513;514;515;516;517;518;519;520;521;522;523;524;525;526;769;770;771;772;773;774;2817;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5636;5637;5641;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8195;8196;8197;8449;8450;8451;9217;9218;9220;9473;9474;9475;9476;9729;10497;10753;10754;10755;10756;10757;11009;11010;11011;11012;13057;13313;13314;13315;15617;15618;15619;15620;15621;15622;15623;15624;15628;15625;15626;15627;15873;15874;15875;15876;15877;15878;15879;15880;15883;15881;15882;16129;16130;16131;16132;775', 0),
(3, 'Salesman', 'Salesman', '768;3072;5632;8192;15872', '773;774;3073;3075;3081;5633;8194;15873;775', 0),
(4, 'Stock Manager', 'Stock Manager', '768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15872;16128', '2818;2822;3073;3076;3077;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5889;5890;5891;8193;8194;8450;8451;10753;11009;11010;11012;13313;13315;15882;16129;16130;16131;16132;775', 0),
(5, 'Production Manager', 'Production Manager', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5640;5640;5889;5890;5891;8193;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', 0),
(6, 'Purchase Officer', 'Purchase Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;2818;2819;2820;2821;2822;2823;3073;3074;3076;3077;3078;3079;3080;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5377;5633;5635;5640;5640;5889;5890;5891;8193;8194;8196;8197;8449;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', 0),
(7, 'AR Officer', 'AR Officer', '512;768;2816;3072;3328;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '521;523;524;771;773;774;2818;2819;2820;2821;2822;2823;3073;3073;3074;3075;3076;3077;3078;3079;3080;3081;3081;3329;3330;3330;3330;3331;3331;3332;3333;3334;3335;5633;5633;5634;5637;5638;5639;5640;5640;5889;5890;5891;8193;8194;8194;8196;8197;8450;8451;10753;10755;11009;11010;11012;13313;13315;15617;15619;15620;15621;15624;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', 0),
(8, 'AP Officer', 'AP Officer', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;769;770;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5635;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15876;15877;15880;15882;16129;16130;16131;16132;775', 0),
(9, 'Accountant', 'New Accountant', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13313;13315;15617;15618;15619;15620;15621;15624;15873;15876;15877;15878;15880;15882;16129;16130;16131;16132;775', 0),
(10, 'Sub Admin', 'Sub Admin', '512;768;2816;3072;3328;5376;5632;5888;8192;8448;10752;11008;13312;15616;15872;16128', '257;258;259;260;521;523;524;771;772;773;774;2818;2819;2820;2821;2822;2823;3073;3074;3082;3075;3076;3077;3078;3079;3080;3081;3329;3330;3331;3332;3333;3334;3335;5377;5633;5634;5635;5637;5638;5639;5640;5889;5890;5891;7937;7938;7939;7940;8193;8194;8196;8197;8449;8450;8451;10497;10753;10755;11009;11010;11012;13057;13313;13315;15617;15619;15620;15621;15624;15873;15874;15876;15877;15878;15879;15880;15882;16129;16130;16131;16132;775', 0);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shipper_id` int NOT NULL,
  `shipper_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `phone2` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `contact` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipper_id`, `shipper_name`, `phone`, `phone2`, `contact`, `address`, `inactive`) VALUES
(1, 'Default', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sql_trail`
--

CREATE TABLE `sql_trail` (
  `id` int UNSIGNED NOT NULL,
  `sql` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `result` tinyint(1) NOT NULL,
  `msg` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_category`
--

CREATE TABLE `stock_category` (
  `category_id` int NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_tax_type` int NOT NULL DEFAULT '1',
  `dflt_units` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'each',
  `dflt_mb_flag` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'B',
  `dflt_sales_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_cogs_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_inventory_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_adjustment_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_wip_act` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dflt_dim1` int DEFAULT NULL,
  `dflt_dim2` int DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `dflt_no_purchase` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `stock_category`
--

INSERT INTO `stock_category` (`category_id`, `description`, `dflt_tax_type`, `dflt_units`, `dflt_mb_flag`, `dflt_sales_act`, `dflt_cogs_act`, `dflt_inventory_act`, `dflt_adjustment_act`, `dflt_wip_act`, `dflt_dim1`, `dflt_dim2`, `inactive`, `dflt_no_sale`, `dflt_no_purchase`) VALUES
(1, 'Bebidas', 1, 'unit', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0),
(5, 'Alimento', 1, 'unit', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_fa_class`
--

CREATE TABLE `stock_fa_class` (
  `fa_class_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `parent_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `depreciation_rate` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_master`
--

CREATE TABLE `stock_master` (
  `stock_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `category_id` int NOT NULL DEFAULT '0',
  `tax_type_id` int NOT NULL DEFAULT '0',
  `description` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `long_description` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `units` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'each',
  `mb_flag` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'B',
  `sales_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `cogs_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `inventory_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `adjustment_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `wip_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `dimension_id` int DEFAULT NULL,
  `dimension2_id` int DEFAULT NULL,
  `purchase_cost` double NOT NULL DEFAULT '0',
  `material_cost` double NOT NULL DEFAULT '0',
  `labour_cost` double NOT NULL DEFAULT '0',
  `overhead_cost` double NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0',
  `no_sale` tinyint(1) NOT NULL DEFAULT '0',
  `no_purchase` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `depreciation_method` char(1) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'S',
  `depreciation_rate` double NOT NULL DEFAULT '0',
  `depreciation_factor` double NOT NULL DEFAULT '1',
  `depreciation_start` date NOT NULL DEFAULT '0000-00-00',
  `depreciation_date` date NOT NULL DEFAULT '0000-00-00',
  `fa_class_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `stock_master`
--

INSERT INTO `stock_master` (`stock_id`, `category_id`, `tax_type_id`, `description`, `long_description`, `units`, `mb_flag`, `sales_account`, `cogs_account`, `inventory_account`, `adjustment_account`, `wip_account`, `dimension_id`, `dimension2_id`, `purchase_cost`, `material_cost`, `labour_cost`, `overhead_cost`, `inactive`, `no_sale`, `no_purchase`, `editable`, `depreciation_method`, `depreciation_rate`, `depreciation_factor`, `depreciation_start`, `depreciation_date`, `fa_class_id`) VALUES
('101', 5, 1, 'Anafre Mixto', 'Anafre, con frijoles, quesillo y chorizo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 90, 90, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('102', 5, 1, 'Anafre Sencillo', 'Anafre, con frijoles y quesillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('103', 5, 1, 'Ceviche Mixto', 'Ceviche, con camaron, caraco, pescado', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('104', 5, 1, 'Ceviche de Caracol', 'Ceviche de caracol', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('105', 5, 1, 'Ceviche de Camaron', 'Ceviche de camaron', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('106', 5, 1, 'Ceviche de Pescado', 'Ceviche de pescado', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('201', 5, 1, 'Carne de Res a la Plancha', 'Carne de res a la plancha', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('202', 5, 1, 'Carne de Cerdo a la Plancha', 'Carne de cerdo a la plancha', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('203', 5, 1, 'Carne Mixta', 'Carne mixta acompanada de chismol, queso, frijoles, tajadas de platano y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('204', 5, 1, 'Boca Especial', 'Boca especial acompanado de carne de res, cerdo, chorizo, tajaditas de platano, queso cebolla roja y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('205', 5, 1, 'Puyazo con Chorizo', 'Puyazo con chorizo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('301', 5, 1, 'Filete de Pescado Empanizado', 'Filete de pescado empanizado', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('302', 5, 1, 'Filete de Pescado al Ajillo', 'Filete de pescado al ajillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('303', 5, 1, 'Filete de Pescado a la Diabla', 'Filete de pescado a la diabla', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('304', 5, 1, 'Deditos de Pescado', 'Deditos de pescado con papas', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('305', 5, 1, 'Filete de Pollo a la Plancha', 'Filete de pollo a la plancha acompanado de papas fritas, ensalada de lechuga y arroz', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('401', 5, 1, 'Pescado Frito P', 'Pescado frito pequeno', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('402', 5, 1, 'Pescado Frito M', 'Pescado frito mediano', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('403', 5, 1, 'Pescado Frito G', 'Pescado frito grande', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('501', 5, 1, 'Sopa Marinera', 'Sopa Marinera, con pescado, jaiba, camaron y caracol', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('502', 5, 1, 'Sopa de Pescado', 'Sopa de pescado', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('503', 5, 1, 'Sopa de Camaron', 'Sopa de camaron', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('504', 5, 1, 'Sopa de Caracol', 'Sopa de caracol', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('505', 5, 1, 'Sopa de Jaiba', 'Sopa de jaiba, acompanada con tajadas y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('601', 5, 1, 'Hamburguesa de Res', 'Hamburguesa de res con papas', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('602', 5, 1, 'Hamburguesa de Pollo', 'Hamburguesa de pollo con papas', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('603', 5, 1, 'Tenders de Pollo', 'Tenders de pollo con papas', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('604', 5, 1, 'Orden de Papas', 'Orden de papas', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('605', 5, 1, 'Orden de Alitas 6P', 'Orden de 6 (seis) alitas, picantes o barbacoa', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('606', 5, 1, 'Orden de Alitas 12P', 'Orden de 12 (doce) alitas, picantes o barbacoa', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('701', 5, 1, 'Camarones Empanizados', 'Camarones empanizados', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('702', 5, 1, 'Camarones a la Diabla', 'Camarones a la diabla', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('703', 5, 1, 'Camarones al Ajillo', 'Camarones al ajillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('801', 5, 1, 'Metro Olanchano', 'Metro olanchano, acompanado de res, cerdo, costilla fresca de cerdo, chorizo ahumado, chuleta con frijoles, queso, tajadas verdes, cebolla roja, chismol y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('802', 5, 1, 'Medio Metro Olanchano', 'Medio metro olanchano, acompanado de res, cerdo, costilla fresca de cerdo, chorizo ahumado, chuleta con frijoles, queso, tajadas verdes, cebolla roja, chismol y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('803', 5, 1, 'Metro de Aire Mar y Tierra', 'Metro de aire, mar y tierra, acompanado de res, cerdo, pescado, pollo, chorizo con frijoles, queso, tajadas verdes, cebolla roja, chismol y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('804', 5, 1, 'Medio Metro de Aire Mar y Tierra', 'Medio metro de aire, mar y tierra, acompanado de res, cerdo, pescado, pollo, chorizo con frijoles, queso, tajadas verdes, cebolla roja, chismol y limon', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('901', 1, 1, 'Refresco 12Oz', 'Refresco 12Oz (doce onzas)', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('902', 1, 1, 'Refresco Desechable', 'Refresco desechable', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('903', 1, 1, 'Refresco Mini', 'Refresco mini', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('904', 1, 1, 'Refresco Natural', 'Refresco natural', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('905', 1, 1, 'Adrenalina', 'Adrenalina', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('906', 1, 1, 'Agua en Bote', 'Agua en bote (Bote con agua)', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('907', 1, 1, 'Jugo California', 'Jugo california', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('908', 1, 1, 'Te Lipton', 'Refresco Te Lipton', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('909', 1, 1, 'Gatorade', 'Bebida Gatorade', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('910', 1, 2, 'Cerveza Nacional', 'Cerveza nacional individual', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('911', 1, 2, 'Ultra', 'Cerveza ultra', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('912', 1, 2, 'Corona', 'Cerveza corona', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('913', 1, 2, 'Miller Light', 'Cerveza miller light', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('914', 1, 2, 'Coors Light', 'Cerveza coors light', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('920', 1, 2, 'Vodka Cranberry Sencillo', 'Vodka con cranberry sencillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('921', 1, 2, 'Vodka Cranberry Doble', 'Vodka con cranberry doble', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('922', 1, 2, 'Ron Flor de Cana 4A Sencillo', 'Ron flor de cana 4a sencillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('923', 1, 2, 'Ron Flor de Cana 4A Doble', 'Ron flor de cana 4a doble', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('924', 1, 2, 'Whisky Chivas Regal Sencillo', 'Whisky chivas regal sencillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('925', 1, 2, 'Whisky Chivas Regal Doble', 'Whisky chivas regal doble', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('926', 1, 2, 'Whisky Black Label Sencillo', 'Whisky black label sencillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('927', 1, 2, 'Whisky Black Label Doble', 'Whisky black label doble', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('928', 1, 2, 'Tequila Sencillo', 'Tequila sencillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('929', 1, 2, 'Tequila Doble', 'Tequila doble', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('930', 1, 2, 'Ron Bacardi Sencillo', 'Ron bacardi sencillo', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('931', 1, 2, 'Ron Bacardi Doble', 'Ron bacardi doble', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', ''),
('932', 1, 2, 'Margarita', 'Margarita', 'each', 'B', '4010', '5010', '1510', '5040', '1530', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', 0, 0, '0000-00-00', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_moves`
--

CREATE TABLE `stock_moves` (
  `trans_id` int NOT NULL,
  `trans_no` int NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `type` smallint NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `price` double NOT NULL DEFAULT '0',
  `reference` char(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `qty` double NOT NULL DEFAULT '1',
  `standard_cost` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `stock_moves`
--

INSERT INTO `stock_moves` (`trans_id`, `trans_no`, `stock_id`, `type`, `loc_code`, `tran_date`, `price`, `reference`, `qty`, `standard_cost`) VALUES
(1, 1, '101', 17, 'DEF', '2024-08-11', 0, '001/2024', 1, 120),
(2, 2, '101', 17, 'DEF', '2024-08-11', 0, '002/2024', 1, 120),
(3, 1, '101', 13, 'DEF', '2024-08-11', 120, 'auto', -1, 120),
(4, 2, '101', 13, 'DEF', '2024-08-11', 120, 'auto', -1, 120),
(5, 1, '101', 25, 'DEF', '2024-08-11', 90, '', 5, 90),
(6, 3, '101', 13, 'DEF', '2024-08-11', 120, 'auto', -1, 90);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int NOT NULL,
  `supp_name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `supp_ref` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `supp_address` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `gst_no` varchar(25) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `supp_account_no` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `bank_account` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `curr_code` char(3) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `payment_terms` int DEFAULT NULL,
  `tax_included` tinyint(1) NOT NULL DEFAULT '0',
  `dimension_id` int DEFAULT '0',
  `dimension2_id` int DEFAULT '0',
  `tax_group_id` int DEFAULT NULL,
  `credit_limit` double NOT NULL DEFAULT '0',
  `purchase_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `payable_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `payment_discount_account` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `notes` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supp_name`, `supp_ref`, `address`, `supp_address`, `gst_no`, `contact`, `supp_account_no`, `website`, `bank_account`, `curr_code`, `payment_terms`, `tax_included`, `dimension_id`, `dimension2_id`, `tax_group_id`, `credit_limit`, `purchase_account`, `payable_account`, `payment_discount_account`, `notes`, `inactive`) VALUES
(1, 'Pollo Rey', 'KDK', '', '', '', '', '035', '', '', 'LPS', 4, 1, 0, 0, 2, 0, '', '2100', '5060', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supp_allocations`
--

CREATE TABLE `supp_allocations` (
  `id` int NOT NULL,
  `person_id` int DEFAULT NULL,
  `amt` double UNSIGNED DEFAULT NULL,
  `date_alloc` date NOT NULL DEFAULT '0000-00-00',
  `trans_no_from` int DEFAULT NULL,
  `trans_type_from` int DEFAULT NULL,
  `trans_no_to` int DEFAULT NULL,
  `trans_type_to` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supp_invoice_items`
--

CREATE TABLE `supp_invoice_items` (
  `id` int NOT NULL,
  `supp_trans_no` int DEFAULT NULL,
  `supp_trans_type` int DEFAULT NULL,
  `gl_code` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `grn_item_id` int DEFAULT NULL,
  `po_detail_item_id` int DEFAULT NULL,
  `stock_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` tinytext COLLATE utf8mb3_unicode_ci,
  `quantity` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `unit_tax` double NOT NULL DEFAULT '0',
  `memo_` tinytext COLLATE utf8mb3_unicode_ci,
  `dimension_id` int NOT NULL DEFAULT '0',
  `dimension2_id` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `supp_invoice_items`
--

INSERT INTO `supp_invoice_items` (`id`, `supp_trans_no`, `supp_trans_type`, `gl_code`, `grn_item_id`, `po_detail_item_id`, `stock_id`, `description`, `quantity`, `unit_price`, `unit_tax`, `memo_`, `dimension_id`, `dimension2_id`) VALUES
(1, 1, 20, '0', 1, 1, '101', 'Pollo Chuco', 5, 90, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supp_trans`
--

CREATE TABLE `supp_trans` (
  `trans_no` int UNSIGNED NOT NULL DEFAULT '0',
  `type` smallint UNSIGNED NOT NULL DEFAULT '0',
  `supplier_id` int UNSIGNED NOT NULL,
  `reference` tinytext COLLATE utf8mb3_unicode_ci NOT NULL,
  `supp_reference` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tran_date` date NOT NULL DEFAULT '0000-00-00',
  `due_date` date NOT NULL DEFAULT '0000-00-00',
  `ov_amount` double NOT NULL DEFAULT '0',
  `ov_discount` double NOT NULL DEFAULT '0',
  `ov_gst` double NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '1',
  `alloc` double NOT NULL DEFAULT '0',
  `tax_included` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `supp_trans`
--

INSERT INTO `supp_trans` (`trans_no`, `type`, `supplier_id`, `reference`, `supp_reference`, `tran_date`, `due_date`, `ov_amount`, `ov_discount`, `ov_gst`, `rate`, `alloc`, `tax_included`) VALUES
(1, 20, 1, '001/2024', 'KDK', '2024-08-11', '2024-08-11', 450, 0, 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_prefs`
--

CREATE TABLE `sys_prefs` (
  `name` varchar(35) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `category` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `length` smallint DEFAULT NULL,
  `value` text COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `sys_prefs`
--

INSERT INTO `sys_prefs` (`name`, `category`, `type`, `length`, `value`) VALUES
('accounts_alpha', 'glsetup.general', 'tinyint', 1, '0'),
('accumulate_shipping', 'glsetup.customer', 'tinyint', 1, '0'),
('add_pct', 'setup.company', 'int', 5, '-1'),
('allow_negative_prices', 'glsetup.inventory', 'tinyint', 1, '1'),
('allow_negative_stock', 'glsetup.inventory', 'tinyint', 1, '0'),
('alternative_tax_include_on_docs', 'setup.company', 'tinyint', 1, ''),
('auto_curr_reval', 'setup.company', 'smallint', 6, '1'),
('bank_charge_act', 'glsetup.general', 'varchar', 15, '5690'),
('barcodes_on_stock', 'setup.company', 'tinyint', 1, '0'),
('base_sales', 'setup.company', 'int', 11, '1'),
('bcc_email', 'setup.company', 'varchar', 100, ''),
('company_logo_on_views', 'setup.company', 'tinyint', 1, '0'),
('company_logo_report', 'setup.company', 'tinyint', 1, '0'),
('coy_logo', 'setup.company', 'varchar', 100, 'Logo_Empresarial__1_.jpg'),
('coy_name', 'setup.company', 'varchar', 60, 'Tilapias Centro'),
('coy_no', 'setup.company', 'varchar', 25, ''),
('creditors_act', 'glsetup.purchase', 'varchar', 15, '2100'),
('curr_default', 'setup.company', 'char', 3, 'LPS'),
('debtors_act', 'glsetup.sales', 'varchar', 15, '1200'),
('default_adj_act', 'glsetup.items', 'varchar', 15, '5040'),
('default_cogs_act', 'glsetup.items', 'varchar', 15, '5010'),
('default_credit_limit', 'glsetup.customer', 'int', 11, '1000'),
('default_delivery_required', 'glsetup.sales', 'smallint', 6, '1'),
('default_dim_required', 'glsetup.dims', 'int', 11, '20'),
('default_inv_sales_act', 'glsetup.items', 'varchar', 15, '4010'),
('default_inventory_act', 'glsetup.items', 'varchar', 15, '1510'),
('default_loss_on_asset_disposal_act', 'glsetup.items', 'varchar', 15, '5660'),
('default_prompt_payment_act', 'glsetup.sales', 'varchar', 15, '4500'),
('default_quote_valid_days', 'glsetup.sales', 'smallint', 6, '30'),
('default_receival_required', 'glsetup.purchase', 'smallint', 6, '10'),
('default_sales_act', 'glsetup.sales', 'varchar', 15, '4010'),
('default_sales_discount_act', 'glsetup.sales', 'varchar', 15, '4510'),
('default_wip_act', 'glsetup.items', 'varchar', 15, '1530'),
('default_workorder_required', 'glsetup.manuf', 'int', 11, '20'),
('deferred_income_act', 'glsetup.sales', 'varchar', 15, '2105'),
('depreciation_period', 'glsetup.company', 'tinyint', 1, '1'),
('dim_on_recurrent_invoice', 'setup.company', 'tinyint', 1, '0'),
('domicile', 'setup.company', 'varchar', 55, ''),
('email', 'setup.company', 'varchar', 100, ''),
('exchange_diff_act', 'glsetup.general', 'varchar', 15, '4450'),
('f_year', 'setup.company', 'int', 11, '4'),
('fax', 'setup.company', 'varchar', 30, ''),
('freight_act', 'glsetup.customer', 'varchar', 15, '4430'),
('gl_closing_date', 'setup.closing_date', 'date', 8, '2023-12-31'),
('grn_clearing_act', 'glsetup.purchase', 'varchar', 15, '1550'),
('gst_no', 'setup.company', 'varchar', 25, ''),
('legal_text', 'glsetup.customer', 'tinytext', 0, ''),
('loc_notification', 'glsetup.inventory', 'tinyint', 1, '0'),
('login_tout', 'setup.company', 'smallint', 6, '3600'),
('long_description_invoice', 'setup.company', 'tinyint', 1, '0'),
('max_days_in_docs', 'setup.company', 'smallint', 5, '180'),
('no_customer_list', 'setup.company', 'tinyint', 1, '0'),
('no_item_list', 'setup.company', 'tinyint', 1, '1'),
('no_supplier_list', 'setup.company', 'tinyint', 1, '1'),
('no_zero_lines_amount', 'glsetup.sales', 'tinyint', 1, '1'),
('past_due_days', 'glsetup.general', 'int', 11, '30'),
('phone', 'setup.company', 'varchar', 30, '9984-1989'),
('po_over_charge', 'glsetup.purchase', 'int', 11, '10'),
('po_over_receive', 'glsetup.purchase', 'int', 11, '10'),
('postal_address', 'setup.company', 'tinytext', 0, 'Frente a la Municipalidad de Catacamas, Olancho, Honduras.'),
('print_dialog_direct', 'setup.company', 'tinyint', 1, '0'),
('print_invoice_no', 'glsetup.sales', 'tinyint', 1, '0'),
('print_item_images_on_quote', 'glsetup.inventory', 'tinyint', 1, '0'),
('profit_loss_year_act', 'glsetup.general', 'varchar', 15, '9990'),
('pyt_discount_act', 'glsetup.purchase', 'varchar', 15, '5060'),
('ref_no_auto_increase', 'setup.company', 'tinyint', 1, '0'),
('retained_earnings_act', 'glsetup.general', 'varchar', 15, '3590'),
('round_to', 'setup.company', 'int', 5, '1'),
('shortname_name_in_list', 'setup.company', 'tinyint', 1, ''),
('show_po_item_codes', 'glsetup.purchase', 'tinyint', 1, '0'),
('suppress_tax_rates', 'setup.company', 'tinyint', 1, ''),
('tax_algorithm', 'glsetup.customer', 'tinyint', 1, '1'),
('tax_last', 'setup.company', 'int', 11, '1'),
('tax_prd', 'setup.company', 'int', 11, '1'),
('time_zone', 'setup.company', 'tinyint', 1, '0'),
('use_dimension', 'setup.company', 'tinyint', 1, '1'),
('use_fixed_assets', 'setup.company', 'tinyint', 1, ''),
('use_manufacturing', 'setup.company', 'tinyint', 1, ''),
('version_id', 'system', 'varchar', 11, '2.4.1');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `type` smallint NOT NULL,
  `name` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(60) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_associations`
--

CREATE TABLE `tag_associations` (
  `record_id` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_groups`
--

CREATE TABLE `tax_groups` (
  `id` int NOT NULL,
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tax_groups`
--

INSERT INTO `tax_groups` (`id`, `name`, `inactive`) VALUES
(1, 'Impuestos', 0),
(2, 'Tax Exempt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_group_items`
--

CREATE TABLE `tax_group_items` (
  `tax_group_id` int NOT NULL DEFAULT '0',
  `tax_type_id` int NOT NULL DEFAULT '0',
  `tax_shipping` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tax_group_items`
--

INSERT INTO `tax_group_items` (`tax_group_id`, `tax_type_id`, `tax_shipping`) VALUES
(1, 1, 0),
(1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `id` int NOT NULL,
  `rate` double NOT NULL DEFAULT '0',
  `sales_gl_code` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `purchasing_gl_code` varchar(15) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tax_types`
--

INSERT INTO `tax_types` (`id`, `rate`, `sales_gl_code`, `purchasing_gl_code`, `name`, `inactive`) VALUES
(1, 15, '2150', '2150', 'I.S.V', 0),
(3, 18, '1060', '1060', 'I.S.C', 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans_tax_details`
--

CREATE TABLE `trans_tax_details` (
  `id` int NOT NULL,
  `trans_type` smallint DEFAULT NULL,
  `trans_no` int DEFAULT NULL,
  `tran_date` date NOT NULL,
  `tax_type_id` int NOT NULL DEFAULT '0',
  `rate` double NOT NULL DEFAULT '0',
  `ex_rate` double NOT NULL DEFAULT '1',
  `included_in_price` tinyint(1) NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `memo` tinytext COLLATE utf8mb3_unicode_ci,
  `reg_type` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `trans_tax_details`
--

INSERT INTO `trans_tax_details` (`id`, `trans_type`, `trans_no`, `tran_date`, `tax_type_id`, `rate`, `ex_rate`, `included_in_price`, `net_amount`, `amount`, `memo`, `reg_type`) VALUES
(1, 13, 1, '2024-08-11', 1, 15, 1, 1, 104.35, 15.65, 'auto', NULL),
(2, 10, 1, '2024-08-11', 1, 15, 1, 1, 104.35, 15.65, '001/2024', 0),
(3, 13, 2, '2024-08-11', 1, 15, 1, 1, 234.78, 35.22, 'auto', NULL),
(4, 10, 2, '2024-08-11', 1, 15, 1, 1, 234.78, 35.22, '002/2024', 0),
(5, 20, 1, '2024-08-11', 0, 0, 1, 1, 450, 0, 'KDK', 1),
(6, 13, 3, '2024-08-11', 1, 15, 1, 1, 208.7, 31.31, 'auto', NULL),
(7, 10, 3, '2024-08-11', 1, 15, 1, 1, 208.7, 31.31, '003/2024', 0);

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int NOT NULL,
  `timestamp` int NOT NULL DEFAULT '0',
  `ip` varchar(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` smallint NOT NULL,
  `user_id` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `role_id` int NOT NULL DEFAULT '1',
  `phone` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `date_format` tinyint(1) NOT NULL DEFAULT '0',
  `date_sep` tinyint(1) NOT NULL DEFAULT '0',
  `tho_sep` tinyint(1) NOT NULL DEFAULT '0',
  `dec_sep` tinyint(1) NOT NULL DEFAULT '0',
  `theme` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'default',
  `page_size` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'A4',
  `prices_dec` smallint NOT NULL DEFAULT '2',
  `qty_dec` smallint NOT NULL DEFAULT '2',
  `rates_dec` smallint NOT NULL DEFAULT '4',
  `percent_dec` smallint NOT NULL DEFAULT '1',
  `show_gl` tinyint(1) NOT NULL DEFAULT '1',
  `show_codes` tinyint(1) NOT NULL DEFAULT '0',
  `show_hints` tinyint(1) NOT NULL DEFAULT '0',
  `last_visit_date` datetime DEFAULT NULL,
  `query_size` tinyint UNSIGNED NOT NULL DEFAULT '10',
  `graphic_links` tinyint(1) DEFAULT '1',
  `pos` smallint DEFAULT '1',
  `print_profile` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `rep_popup` tinyint(1) DEFAULT '1',
  `sticky_doc_date` tinyint(1) DEFAULT '0',
  `startup_tab` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `transaction_days` smallint NOT NULL DEFAULT '30',
  `save_report_selections` smallint NOT NULL DEFAULT '0',
  `use_date_picker` tinyint(1) NOT NULL DEFAULT '1',
  `def_print_destination` tinyint(1) NOT NULL DEFAULT '0',
  `def_print_orientation` tinyint(1) NOT NULL DEFAULT '0',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `password`, `real_name`, `role_id`, `phone`, `email`, `language`, `date_format`, `date_sep`, `tho_sep`, `dec_sep`, `theme`, `page_size`, `prices_dec`, `qty_dec`, `rates_dec`, `percent_dec`, `show_gl`, `show_codes`, `show_hints`, `last_visit_date`, `query_size`, `graphic_links`, `pos`, `print_profile`, `rep_popup`, `sticky_doc_date`, `startup_tab`, `transaction_days`, `save_report_selections`, `use_date_picker`, `def_print_destination`, `def_print_orientation`, `inactive`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Administrator', 2, '', 'adm@example.com', 'es_ES', 4, 0, 0, 0, 'default', 'Letter', 2, 2, 4, 1, 0, 0, 0, '2024-08-19 05:26:22', 10, 1, 1, '', 1, 0, 'orders', 30, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `voided`
--

CREATE TABLE `voided` (
  `type` int NOT NULL DEFAULT '0',
  `id` int NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `memo_` tinytext COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workcentres`
--

CREATE TABLE `workcentres` (
  `id` int NOT NULL,
  `name` char(40) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `description` char(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `inactive` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `workcentres`
--

INSERT INTO `workcentres` (`id`, `name`, `description`, `inactive`) VALUES
(1, 'Work Centre', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `workorders`
--

CREATE TABLE `workorders` (
  `id` int NOT NULL,
  `wo_ref` varchar(60) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `loc_code` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `units_reqd` double NOT NULL DEFAULT '1',
  `stock_id` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `date_` date NOT NULL DEFAULT '0000-00-00',
  `type` tinyint NOT NULL DEFAULT '0',
  `required_by` date NOT NULL DEFAULT '0000-00-00',
  `released_date` date NOT NULL DEFAULT '0000-00-00',
  `units_issued` double NOT NULL DEFAULT '0',
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `released` tinyint(1) NOT NULL DEFAULT '0',
  `additional_costs` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wo_costing`
--

CREATE TABLE `wo_costing` (
  `id` int NOT NULL,
  `workorder_id` int NOT NULL DEFAULT '0',
  `cost_type` tinyint(1) NOT NULL DEFAULT '0',
  `trans_type` int NOT NULL DEFAULT '0',
  `trans_no` int NOT NULL DEFAULT '0',
  `factor` double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wo_issues`
--

CREATE TABLE `wo_issues` (
  `issue_no` int NOT NULL,
  `workorder_id` int NOT NULL DEFAULT '0',
  `reference` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `loc_code` varchar(5) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `workcentre_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wo_issue_items`
--

CREATE TABLE `wo_issue_items` (
  `id` int NOT NULL,
  `stock_id` varchar(40) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `issue_id` int DEFAULT NULL,
  `qty_issued` double DEFAULT NULL,
  `unit_cost` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wo_manufacture`
--

CREATE TABLE `wo_manufacture` (
  `id` int NOT NULL,
  `reference` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `workorder_id` int NOT NULL DEFAULT '0',
  `quantity` double NOT NULL DEFAULT '0',
  `date_` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wo_requirements`
--

CREATE TABLE `wo_requirements` (
  `id` int NOT NULL,
  `workorder_id` int NOT NULL DEFAULT '0',
  `stock_id` char(20) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `workcentre` int NOT NULL DEFAULT '0',
  `units_req` double NOT NULL DEFAULT '1',
  `unit_cost` double NOT NULL DEFAULT '0',
  `loc_code` char(5) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `units_issued` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`area_code`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_no` (`type_no`,`trans_no`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Seq` (`fiscal_year`,`gl_date`,`gl_seq`),
  ADD KEY `Type_and_Number` (`type`,`trans_no`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_account_name` (`bank_account_name`),
  ADD KEY `bank_account_number` (`bank_account_number`),
  ADD KEY `account_code` (`account_code`);

--
-- Indexes for table `bank_trans`
--
ALTER TABLE `bank_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_act` (`bank_act`,`ref`),
  ADD KEY `type` (`type`,`trans_no`),
  ADD KEY `bank_act_2` (`bank_act`,`reconciled`),
  ADD KEY `bank_act_3` (`bank_act`,`trans_date`);

--
-- Indexes for table `bom`
--
ALTER TABLE `bom`
  ADD PRIMARY KEY (`parent`,`component`,`workcentre_added`,`loc_code`),
  ADD KEY `component` (`component`),
  ADD KEY `id` (`id`),
  ADD KEY `loc_code` (`loc_code`),
  ADD KEY `parent` (`parent`,`loc_code`),
  ADD KEY `workcentre_added` (`workcentre_added`);

--
-- Indexes for table `budget_trans`
--
ALTER TABLE `budget_trans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Account` (`account`,`tran_date`,`dimension_id`,`dimension2_id`);

--
-- Indexes for table `chart_class`
--
ALTER TABLE `chart_class`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `chart_master`
--
ALTER TABLE `chart_master`
  ADD PRIMARY KEY (`account_code`),
  ADD KEY `account_name` (`account_name`),
  ADD KEY `accounts_by_type` (`account_type`,`account_code`);

--
-- Indexes for table `chart_types`
--
ALTER TABLE `chart_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD KEY `type_and_id` (`type`,`id`);

--
-- Indexes for table `credit_status`
--
ALTER TABLE `credit_status`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reason_description` (`reason_description`);

--
-- Indexes for table `crm_categories`
--
ALTER TABLE `crm_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`action`),
  ADD UNIQUE KEY `type_2` (`type`,`name`);

--
-- Indexes for table `crm_contacts`
--
ALTER TABLE `crm_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`,`action`);

--
-- Indexes for table `crm_persons`
--
ALTER TABLE `crm_persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref` (`ref`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`curr_abrev`);

--
-- Indexes for table `cust_allocations`
--
ALTER TABLE `cust_allocations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  ADD KEY `From` (`trans_type_from`,`trans_no_from`),
  ADD KEY `To` (`trans_type_to`,`trans_no_to`);

--
-- Indexes for table `cust_branch`
--
ALTER TABLE `cust_branch`
  ADD PRIMARY KEY (`branch_code`,`debtor_no`),
  ADD KEY `branch_ref` (`branch_ref`),
  ADD KEY `group_no` (`group_no`);

--
-- Indexes for table `debtors_master`
--
ALTER TABLE `debtors_master`
  ADD PRIMARY KEY (`debtor_no`),
  ADD UNIQUE KEY `debtor_ref` (`debtor_ref`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `debtor_trans`
--
ALTER TABLE `debtor_trans`
  ADD PRIMARY KEY (`type`,`trans_no`,`debtor_no`),
  ADD KEY `debtor_no` (`debtor_no`,`branch_code`),
  ADD KEY `tran_date` (`tran_date`),
  ADD KEY `order_` (`order_`);

--
-- Indexes for table `debtor_trans_details`
--
ALTER TABLE `debtor_trans_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transaction` (`debtor_trans_type`,`debtor_trans_no`),
  ADD KEY `src_id` (`src_id`);

--
-- Indexes for table `dimensions`
--
ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference` (`reference`),
  ADD KEY `date_` (`date_`),
  ADD KEY `due_date` (`due_date`),
  ADD KEY `type_` (`type_`);

--
-- Indexes for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `curr_code` (`curr_code`,`date_`);

--
-- Indexes for table `fiscal_year`
--
ALTER TABLE `fiscal_year`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `begin` (`begin`),
  ADD UNIQUE KEY `end` (`end`);

--
-- Indexes for table `gl_trans`
--
ALTER TABLE `gl_trans`
  ADD PRIMARY KEY (`counter`),
  ADD KEY `Type_and_Number` (`type`,`type_no`),
  ADD KEY `dimension_id` (`dimension_id`),
  ADD KEY `dimension2_id` (`dimension2_id`),
  ADD KEY `tran_date` (`tran_date`),
  ADD KEY `account_and_tran_date` (`account`,`tran_date`);

--
-- Indexes for table `grn_batch`
--
ALTER TABLE `grn_batch`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_date` (`delivery_date`),
  ADD KEY `purch_order_no` (`purch_order_no`);

--
-- Indexes for table `grn_items`
--
ALTER TABLE `grn_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grn_batch_id` (`grn_batch_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `item_codes`
--
ALTER TABLE `item_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_id` (`stock_id`,`item_code`),
  ADD KEY `item_code` (`item_code`);

--
-- Indexes for table `item_tax_types`
--
ALTER TABLE `item_tax_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `item_tax_type_exemptions`
--
ALTER TABLE `item_tax_type_exemptions`
  ADD PRIMARY KEY (`item_tax_type_id`,`tax_type_id`);

--
-- Indexes for table `item_units`
--
ALTER TABLE `item_units`
  ADD PRIMARY KEY (`abbr`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`type`,`trans_no`),
  ADD KEY `tran_date` (`tran_date`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`loc_code`);

--
-- Indexes for table `loc_stock`
--
ALTER TABLE `loc_stock`
  ADD PRIMARY KEY (`loc_code`,`stock_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`terms_indicator`),
  ADD UNIQUE KEY `terms` (`terms`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `price` (`stock_id`,`sales_type_id`,`curr_abrev`);

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `print_profiles`
--
ALTER TABLE `print_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile` (`profile`,`report`);

--
-- Indexes for table `purch_data`
--
ALTER TABLE `purch_data`
  ADD PRIMARY KEY (`supplier_id`,`stock_id`);

--
-- Indexes for table `purch_orders`
--
ALTER TABLE `purch_orders`
  ADD PRIMARY KEY (`order_no`),
  ADD KEY `ord_date` (`ord_date`);

--
-- Indexes for table `purch_order_details`
--
ALTER TABLE `purch_order_details`
  ADD PRIMARY KEY (`po_detail_item`),
  ADD KEY `order` (`order_no`,`po_detail_item`),
  ADD KEY `itemcode` (`item_code`);

--
-- Indexes for table `quick_entries`
--
ALTER TABLE `quick_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `description` (`description`);

--
-- Indexes for table `quick_entry_lines`
--
ALTER TABLE `quick_entry_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qid` (`qid`);

--
-- Indexes for table `recurrent_invoices`
--
ALTER TABLE `recurrent_invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `reflines`
--
ALTER TABLE `reflines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prefix` (`trans_type`,`prefix`);

--
-- Indexes for table `refs`
--
ALTER TABLE `refs`
  ADD PRIMARY KEY (`id`,`type`),
  ADD KEY `Type_and_Reference` (`type`,`reference`);

--
-- Indexes for table `salesman`
--
ALTER TABLE `salesman`
  ADD PRIMARY KEY (`salesman_code`),
  ADD UNIQUE KEY `salesman_name` (`salesman_name`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`trans_type`,`order_no`);

--
-- Indexes for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sorder` (`trans_type`,`order_no`),
  ADD KEY `stkcode` (`stk_code`);

--
-- Indexes for table `sales_pos`
--
ALTER TABLE `sales_pos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pos_name` (`pos_name`);

--
-- Indexes for table `sales_types`
--
ALTER TABLE `sales_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_type` (`sales_type`);

--
-- Indexes for table `security_roles`
--
ALTER TABLE `security_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`shipper_id`),
  ADD UNIQUE KEY `name` (`shipper_name`);

--
-- Indexes for table `sql_trail`
--
ALTER TABLE `sql_trail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_category`
--
ALTER TABLE `stock_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `description` (`description`);

--
-- Indexes for table `stock_fa_class`
--
ALTER TABLE `stock_fa_class`
  ADD PRIMARY KEY (`fa_class_id`);

--
-- Indexes for table `stock_master`
--
ALTER TABLE `stock_master`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `stock_moves`
--
ALTER TABLE `stock_moves`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `type` (`type`,`trans_no`),
  ADD KEY `Move` (`stock_id`,`loc_code`,`tran_date`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`),
  ADD KEY `supp_ref` (`supp_ref`);

--
-- Indexes for table `supp_allocations`
--
ALTER TABLE `supp_allocations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_type_from` (`person_id`,`trans_type_from`,`trans_no_from`,`trans_type_to`,`trans_no_to`),
  ADD KEY `From` (`trans_type_from`,`trans_no_from`),
  ADD KEY `To` (`trans_type_to`,`trans_no_to`);

--
-- Indexes for table `supp_invoice_items`
--
ALTER TABLE `supp_invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transaction` (`supp_trans_type`,`supp_trans_no`,`stock_id`);

--
-- Indexes for table `supp_trans`
--
ALTER TABLE `supp_trans`
  ADD PRIMARY KEY (`type`,`trans_no`,`supplier_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `tran_date` (`tran_date`);

--
-- Indexes for table `sys_prefs`
--
ALTER TABLE `sys_prefs`
  ADD PRIMARY KEY (`name`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`,`name`);

--
-- Indexes for table `tag_associations`
--
ALTER TABLE `tag_associations`
  ADD PRIMARY KEY (`record_id`,`tag_id`);

--
-- Indexes for table `tax_groups`
--
ALTER TABLE `tax_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tax_group_items`
--
ALTER TABLE `tax_group_items`
  ADD PRIMARY KEY (`tax_group_id`,`tax_type_id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_tax_details`
--
ALTER TABLE `trans_tax_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Type_and_Number` (`trans_type`,`trans_no`),
  ADD KEY `tran_date` (`tran_date`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `voided`
--
ALTER TABLE `voided`
  ADD UNIQUE KEY `id` (`type`,`id`);

--
-- Indexes for table `workcentres`
--
ALTER TABLE `workcentres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `workorders`
--
ALTER TABLE `workorders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wo_ref` (`wo_ref`);

--
-- Indexes for table `wo_costing`
--
ALTER TABLE `wo_costing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_issues`
--
ALTER TABLE `wo_issues`
  ADD PRIMARY KEY (`issue_no`),
  ADD KEY `workorder_id` (`workorder_id`);

--
-- Indexes for table `wo_issue_items`
--
ALTER TABLE `wo_issue_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wo_manufacture`
--
ALTER TABLE `wo_manufacture`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_id` (`workorder_id`);

--
-- Indexes for table `wo_requirements`
--
ALTER TABLE `wo_requirements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workorder_id` (`workorder_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `area_code` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_trans`
--
ALTER TABLE `bank_trans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bom`
--
ALTER TABLE `bom`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `budget_trans`
--
ALTER TABLE `budget_trans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_status`
--
ALTER TABLE `credit_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `crm_categories`
--
ALTER TABLE `crm_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'pure technical key', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `crm_contacts`
--
ALTER TABLE `crm_contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `crm_persons`
--
ALTER TABLE `crm_persons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cust_allocations`
--
ALTER TABLE `cust_allocations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cust_branch`
--
ALTER TABLE `cust_branch`
  MODIFY `branch_code` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debtors_master`
--
ALTER TABLE `debtors_master`
  MODIFY `debtor_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `debtor_trans_details`
--
ALTER TABLE `debtor_trans_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dimensions`
--
ALTER TABLE `dimensions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exchange_rates`
--
ALTER TABLE `exchange_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fiscal_year`
--
ALTER TABLE `fiscal_year`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gl_trans`
--
ALTER TABLE `gl_trans`
  MODIFY `counter` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `grn_batch`
--
ALTER TABLE `grn_batch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grn_items`
--
ALTER TABLE `grn_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_codes`
--
ALTER TABLE `item_codes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `item_tax_types`
--
ALTER TABLE `item_tax_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_terms`
--
ALTER TABLE `payment_terms`
  MODIFY `terms_indicator` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `print_profiles`
--
ALTER TABLE `print_profiles`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `purch_orders`
--
ALTER TABLE `purch_orders`
  MODIFY `order_no` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purch_order_details`
--
ALTER TABLE `purch_order_details`
  MODIFY `po_detail_item` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quick_entries`
--
ALTER TABLE `quick_entries`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quick_entry_lines`
--
ALTER TABLE `quick_entry_lines`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recurrent_invoices`
--
ALTER TABLE `recurrent_invoices`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reflines`
--
ALTER TABLE `reflines`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `salesman`
--
ALTER TABLE `salesman`
  MODIFY `salesman_code` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_pos`
--
ALTER TABLE `sales_pos`
  MODIFY `id` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_types`
--
ALTER TABLE `sales_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `security_roles`
--
ALTER TABLE `security_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `shipper_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sql_trail`
--
ALTER TABLE `sql_trail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_category`
--
ALTER TABLE `stock_category`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_moves`
--
ALTER TABLE `stock_moves`
  MODIFY `trans_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supp_allocations`
--
ALTER TABLE `supp_allocations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supp_invoice_items`
--
ALTER TABLE `supp_invoice_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_groups`
--
ALTER TABLE `tax_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trans_tax_details`
--
ALTER TABLE `trans_tax_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workcentres`
--
ALTER TABLE `workcentres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `workorders`
--
ALTER TABLE `workorders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wo_costing`
--
ALTER TABLE `wo_costing`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wo_issues`
--
ALTER TABLE `wo_issues`
  MODIFY `issue_no` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wo_issue_items`
--
ALTER TABLE `wo_issue_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wo_manufacture`
--
ALTER TABLE `wo_manufacture`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wo_requirements`
--
ALTER TABLE `wo_requirements`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2021 at 09:59 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql6455345`
--

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoleClaims`
--

CREATE TABLE `AspNetRoleClaims` (
  `Id` int NOT NULL,
  `RoleId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetRoles`
--

CREATE TABLE `AspNetRoles` (
  `Id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserClaims`
--

CREATE TABLE `AspNetUserClaims` (
  `Id` int NOT NULL,
  `UserId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ClaimType` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ClaimValue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserLogins`
--

CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderKey` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProviderDisplayName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `UserId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserRoles`
--

CREATE TABLE `AspNetUserRoles` (
  `UserId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `RoleId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUsers`
--

CREATE TABLE `AspNetUsers` (
  `Id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `UserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedUserName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `NormalizedEmail` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `SecurityStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ConcurrencyStamp` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEnd` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `AspNetUsers`
--

INSERT INTO `AspNetUsers` (`Id`, `UserName`, `NormalizedUserName`, `Email`, `NormalizedEmail`, `EmailConfirmed`, `PasswordHash`, `SecurityStamp`, `ConcurrencyStamp`, `PhoneNumber`, `PhoneNumberConfirmed`, `TwoFactorEnabled`, `LockoutEnd`, `LockoutEnabled`, `AccessFailedCount`) VALUES
('695551b0-ab8f-4a9b-b57f-902921be0d4b', 'pieter6@email.com', 'PIETER6@EMAIL.COM', 'pieter6@email.com', 'PIETER6@EMAIL.COM', 0, 'AQAAAAEAACcQAAAAEOymW3A9tCwtr8iNs2bap+Ypet2XmGOfRXkzuuPVo0uZkaAF4u1SK6YFV6UaKn+7sg==', 'MWAQ2Q5BZTVGNU3DTSQYNQGIERK4WLJI', 'd08e0a6e-154a-4177-a366-c1e505306ad0', NULL, 0, 0, NULL, 1, 0),
('d8730637-3ac5-4253-97db-2f7d90e36b52', 'pieter@email.com', 'PIETER@EMAIL.COM', 'pieter@email.com', 'PIETER@EMAIL.COM', 0, 'AQAAAAEAACcQAAAAEFGf00LpBqmdzCJP1lD0xgD+tLsGegDctkULedmVvLMazLR4IBtYW4F5h5OGsGA8Rg==', '2NWWDFUQYBERH3ZQL53GB3V5WADZMR3Q', 'c8d5d1ac-3bbf-4c40-b111-20e9f67cf104', NULL, 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AspNetUserTokens`
--

CREATE TABLE `AspNetUserTokens` (
  `UserId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `LoginProvider` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PaymentDetail`
--

CREATE TABLE `PaymentDetail` (
  `PaymentDetailId` int NOT NULL,
  `CardOwnerName` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `CardNumber` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `ExpirationDate` datetime NOT NULL,
  `SecurityCode` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `PaymentDetail`
--

INSERT INTO `PaymentDetail` (`PaymentDetailId`, `CardOwnerName`, `CardNumber`, `ExpirationDate`, `SecurityCode`) VALUES
(2, 'Nusrat Beckenbauer', '5152911421956429', '2021-04-01 00:00:00', '4321'),
(3, 'Quirino Wu', '5379414697109291', '2022-02-01 00:00:00', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `RefreshTokens`
--

CREATE TABLE `RefreshTokens` (
  `Id` int NOT NULL,
  `UserId` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `JwtId` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `IsUsed` tinyint(1) NOT NULL,
  `IsRevorked` tinyint(1) NOT NULL,
  `AddedDate` datetime NOT NULL,
  `ExpiryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RefreshTokens`
--

INSERT INTO `RefreshTokens` (`Id`, `UserId`, `Token`, `JwtId`, `IsUsed`, `IsRevorked`, `AddedDate`, `ExpiryDate`) VALUES
(1, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'NOXJYVSECZKRQWGSZBLBRLEQRRTZERTYIUWe6e494df-0fe1-4338-a1bd-876d6d4d85fb', '5dc9e6d3-3ec5-416c-bba7-ff6577d6dfca', 0, 0, '2021-11-30 18:58:08', '2022-05-30 18:58:08'),
(2, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'MVKEWEVRETDGWGXYFEKDTNFMTWSFSCXVKOV59edf23d-1c7a-40b7-bc7a-91a07d620638', '66135f68-de81-434d-985f-89839a175c5a', 0, 0, '2021-11-30 18:58:40', '2022-05-30 18:58:40'),
(3, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'OEJWIBTUMGWXLGETEKHLAZINFYGLXQTPYNVb23da32b-9fef-4b73-aa8b-b788dde7fb9d', 'c4688372-74d9-457e-a899-5f209ebb44a3', 0, 0, '2021-12-01 00:54:49', '2022-06-01 00:54:49'),
(4, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'ACTKSGBLVEUSYSULSYPIAWOKKWLPJMRMMPV94c1d27f-36a3-4f67-a82e-65532e7761d2', 'ae0b4925-027a-47ce-adc3-252a41c6f3a5', 0, 0, '2021-12-01 01:08:12', '2022-06-01 01:08:12'),
(5, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'DQECYDVLAOLFVOWHYQHNIRPSGCMOJWXCCRD1a5c0016-bad5-4b05-bf5b-2a05be1dc48a', '20dd5480-76a2-4012-9c98-cb645ff390f4', 0, 0, '2021-12-01 01:55:47', '2022-06-01 01:55:47'),
(6, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'NTDWVBSUYJSJPTOGPLZYCYUEXIJPOCVXTYY56c18e43-af56-4b90-8fac-f37583db8d03', 'ad5677d0-c41f-471a-b84e-39f9d798d9a2', 0, 0, '2021-12-01 01:58:21', '2022-06-01 01:58:21'),
(7, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'GSCCDBPXOHJTHJVDOJJPTGMQPXTELZSQSTE84f794cf-30c7-4436-ab36-97bf89ed2ab4', 'e4f89f3a-88b8-4101-831a-291cab4d5feb', 0, 0, '2021-12-01 03:10:35', '2022-06-01 03:10:35'),
(8, 'd8730637-3ac5-4253-97db-2f7d90e36b52', 'QMBXSLLHYYYTWOQZSRUCPEFLWZVBZOAZVSY85717aca-ecb9-45f4-8258-91a278a1f334', '2d950110-e984-4f71-823e-69baaf585785', 0, 0, '2021-12-01 04:04:21', '2022-06-01 04:04:21'),
(9, '695551b0-ab8f-4a9b-b57f-902921be0d4b', 'ABWXNCZKDJLHADYWZCXZJIMYTMUUNUNCWTG836f4316-3102-4f5f-a5ea-67ab1b0afea5', 'ec49b680-7e63-416e-b271-3282ffd28a3c', 0, 0, '2021-12-01 07:02:59', '2022-06-01 07:02:59'),
(10, '695551b0-ab8f-4a9b-b57f-902921be0d4b', 'LWMJXATULDBHPUGFNSBYMWVEHZSFVDXXXFL7fd0d31b-f178-4121-b434-cf3855438c2d', 'cd5f4eca-68fd-4ec7-81d8-d3c625416439', 0, 0, '2021-12-01 07:04:55', '2022-06-01 07:04:55'),
(11, '695551b0-ab8f-4a9b-b57f-902921be0d4b', 'FBKWIPGGNOIRDUSHHLKAECIGJAXQOXCAPONfc359b1a-6f5f-4993-a269-923afc376986', '4246c357-684d-4b2d-8431-0c3df5d7ee5d', 0, 0, '2021-12-01 07:15:18', '2022-06-01 07:15:18'),
(12, '695551b0-ab8f-4a9b-b57f-902921be0d4b', 'VTGSJFFCKQEWPHFFMOVGXXEPUNOKORUTRCT4a3b5cc1-0c6c-43a5-be63-5d69ffc77c52', 'fb46ab3d-2f5d-4ead-ab74-42b59ef0bc7b', 0, 0, '2021-12-01 07:33:31', '2022-06-01 07:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `__EFMigrationsHistory`
--

CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `__EFMigrationsHistory`
--

INSERT INTO `__EFMigrationsHistory` (`MigrationId`, `ProductVersion`) VALUES
('20211130155846_initial', '5.0.12'),
('20211130164701_Addig authentication to our Api', '5.0.12'),
('20211130175044_Added refresh tokens table', '5.0.12'),
('20211130181153_Added refresh tokens table 2', '5.0.12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetRoles`
--
ALTER TABLE `AspNetRoles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `AspNetUsers`
--
ALTER TABLE `AspNetUsers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `PaymentDetail`
--
ALTER TABLE `PaymentDetail`
  ADD PRIMARY KEY (`PaymentDetailId`);

--
-- Indexes for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_RefreshTokens_UserId` (`UserId`);

--
-- Indexes for table `__EFMigrationsHistory`
--
ALTER TABLE `__EFMigrationsHistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PaymentDetail`
--
ALTER TABLE `PaymentDetail`
  MODIFY `PaymentDetailId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AspNetRoleClaims`
--
ALTER TABLE `AspNetRoleClaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserClaims`
--
ALTER TABLE `AspNetUserClaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserLogins`
--
ALTER TABLE `AspNetUserLogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserRoles`
--
ALTER TABLE `AspNetUserRoles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `AspNetRoles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `AspNetUserTokens`
--
ALTER TABLE `AspNetUserTokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `RefreshTokens`
--
ALTER TABLE `RefreshTokens`
  ADD CONSTRAINT `FK_RefreshTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `AspNetUsers` (`Id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET NAMES utf8 ;
DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `Facilities`;
CREATE TABLE `Facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facilityCode` varchar(45) NOT NULL,
  `DHIS2OrganizationalUnitCode` varchar(255) DEFAULT NULL,
  `openLMISFacilityCode` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `Failqueue`;
CREATE TABLE `Failqueue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NOT NULL,
  `migrationId` int(11) NOT NULL,
  `attempts` int(11) NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `Migration`;
CREATE TABLE `Migration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channelId` varchar(255) NOT NULL DEFAULT `channelId`,
  `uploadedAt` datetime DEFAULT NULL,
  `structureValidatedAt` datetime DEFAULT NULL,
  `structureFailedValidationAt` datetime DEFAULT NULL,
  `elementsAuthorizationAt` datetime DEFAULT NULL,
  `elementsFailedAuthorizationAt` datetime DEFAULT NULL,
  `valuesValidatedAt` datetime DEFAULT NULL,
  `valuesFailedValidationAt` datetime DEFAULT NULL,
  `reportDispatchedAt` datetime DEFAULT NULL,
  `totalMigratedElements` int(11) DEFAULT NULL,
  `totalDataElements` int(11) DEFAULT NULL,
  `totalFailedElements` int(11) DEFAULT NULL,
  `migrationCompletedAt` datetime DEFAULT NULL,
  `clientId` int(10) NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `Migrationdataelements`;
CREATE TABLE `Migrationdataelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `migrationId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `facilityId` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `dataElementCode` varchar(255) NOT NULL,
  `organizationUnitCode` varchar(255) NOT NULL,
  `isProcessed` tinyint(1) NOT NULL,
  `migratedAt` datetime DEFAULT NULL,
  `reportingPeriod` varchar(255) NOT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `Products`;
CREATE TABLE `Products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productCode` varchar(45) NOT NULL,
  `dataElementCode` varchar(45) NOT NULL,
  `openLMISCode` varchar(45) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS `Validationfailures`;
CREATE TABLE `Validationfailures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `migrationId` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `fileName` varchar(45) DEFAULT NULL,
  `createdAt` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


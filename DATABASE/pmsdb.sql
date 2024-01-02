

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


INSERT INTO tbladmin VALUES
("1","test","admin","7898799799","tester1@gmail.com","5f4dcc3b5aa765d61d8327deb882cf99","2019-07-08 09:55:14");




CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PharmacistId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `ProductQty` int(11) NOT NULL,
  `IsCheckOut` int(11) DEFAULT NULL,
  `CartDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;


INSERT INTO tblcart VALUES
("2","1","2","122562633","1","1","2019-07-11 20:46:57"),
("3","1","1","122562633","1","1","2019-07-15 10:59:28"),
("4","1","1","879665702","5","1","2018-07-16 22:03:51"),
("5","1","4","879665702","7","1","2019-07-16 22:04:41"),
("6","1","1","139516461","3","1","2019-07-17 11:43:02"),
("7","1","1","573840547","1","1","2019-07-23 12:33:34"),
("8","5","5","400595648","5","1","2019-07-23 21:49:24"),
("9","5","6","400595648","10","1","2019-07-23 21:49:44"),
("10","5","5","489505695","1","1","2022-04-14 18:25:02"),
("11","5","2","489505695","1","1","2022-04-14 18:25:46"),
("12","5","5","489505695","1","1","2022-04-14 18:25:58"),
("13","6","6","502372973","1","1","2022-05-16 20:06:51");




CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;


INSERT INTO tblcompany VALUES
("1","Johnson & Johnson","2019-07-08 16:34:38"),
("2","Novartis","2019-07-08 16:34:57"),
("3","Roche","2019-07-08 16:36:06"),
("4","Pfizer","2019-07-08 16:36:29"),
("5","Sanofi","2019-07-08 16:36:40"),
("6","Merck","2019-07-08 16:36:52"),
("7","GSK (GlaxoSmithKline)","2019-07-08 16:37:08"),
("8","AstraZeneca","2019-07-08 16:37:21"),
("9","Bayer","2019-07-08 16:37:35"),
("10","Gilead Sciences","2019-07-08 16:41:14"),
("11","Cipla","2019-07-08 16:41:25"),
("12","Abbot","2019-07-08 16:41:36"),
("13","Medtronic","2019-07-08 16:42:14"),
("14","test medicine","2019-07-23 21:45:00");




CREATE TABLE `tblcustomer` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `ModeofPayment` varchar(100) DEFAULT NULL,
  `BillingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `BillingNumber` (`BillingNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;


INSERT INTO tblcustomer VALUES
("1","122562633","Anuj kumar","1234567890","cash","2019-07-14 21:10:02"),
("2","879665702","Amit Kumar","8978979799","card","2019-07-14 22:06:16"),
("3","139516461","Kishan Malhotra","4464646464","cash","2019-07-17 11:43:44"),
("4","573840547","Test Sample","7567576575","cash","2019-07-23 12:35:24"),
("5","400595648","Anuj","1234567890","cash","2019-07-23 21:50:01"),
("6","632756075","CHIRU","9676111653","cash","2022-04-14 18:24:34"),
("7","489505695","CHIRU","9676","cash","2022-04-14 18:26:14"),
("8","502372973","asdfasdf","967","cash","2022-05-16 20:07:04");




CREATE TABLE `tblmedicine` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `MedicineCompany` varchar(120) DEFAULT NULL,
  `MedicineName` varchar(120) DEFAULT NULL,
  `MedicineBatchno` varchar(120) DEFAULT NULL,
  `MgfDate` varchar(120) DEFAULT NULL,
  `ExpiryDate` varchar(120) DEFAULT NULL,
  `Quantity` varchar(120) DEFAULT NULL,
  `Priceperunit` varchar(120) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


INSERT INTO tblmedicine VALUES
("1","Roche","Glucerna for diabetic Health Supplement","AEE1555","2019-07-19","2019-07-17","25","145","2019-07-09 12:48:33"),
("2","Abbot","Thyroxine Sodium Tablets I.P. Thyronorm(100 mcg)","AEE1555","2019-06-07","2022-06-11","100","125","2019-07-09 12:51:11"),
("3","Cipla","Maxirich Multivitamins and Minerals Softgel capsules","BEE1555","2019-07-01","2022-03-17","100","145.78","2019-07-09 12:53:51"),
("4","Sanofi","Seven Seas Cod Liver Oil Capsules (100 Cap) ","BEE4567","2019-03-06","2020-03-12","35","125","2019-07-09 12:56:56"),
("5","Bayer","Bayer Tonic 250ml","CEE12345","2019-06-14","2019-10-24","25","141","2019-07-17 10:59:51"),
("6","test medicine","Test Medicine","323746723","2019-05-01","2020-04-25","2000","25","2019-07-23 21:45:50");




CREATE TABLE `tblpharmacist` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `JoingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;


INSERT INTO tblpharmacist VALUES
("1","Test","7899797977","phgh12340","Male","202cb962ac59075b964b07152d234b70","harish@gmail.com","2019-07-09 09:58:51"),
("2","Kavita Shukla","5656565656","phgh12341","Female","202cb962ac59075b964b07152d234b70","mahesh@gmail.com","2019-07-09 10:09:48"),
("3","Rahul","2356897898","phgh12342","Male","202cb962ac59075b964b07152d234b70","rahul@gmail.com","2019-07-09 10:17:23"),
("4","Reena Malhotra","4545454545","phgh12343","Female","202cb962ac59075b964b07152d234b70","reena@gmail.com","2019-07-09 10:18:55"),
("5","Test pharmacist","1111111112","test30","Male","f925916e2754e5e03f75dd58a5733251","test@gmail.com","2019-07-23 21:46:50"),
("6","chiru","9676111653","chiru","Male","5f4dcc3b5aa765d61d8327deb882cf99","chiru15326@gmail.com","2022-05-16 20:06:02");



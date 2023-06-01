CREATE DATABASE  IF NOT EXISTS `websneaker` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `websneaker`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: websneaker
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `detail_in`
--

DROP TABLE IF EXISTS `detail_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_in` (
  `ID_In` int NOT NULL,
  `ID_P` varchar(5) NOT NULL,
  `Amount` int NOT NULL,
  PRIMARY KEY (`ID_In`,`ID_P`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_in`
--

LOCK TABLES `detail_in` WRITE;
/*!40000 ALTER TABLE `detail_in` DISABLE KEYS */;
INSERT INTO `detail_in` VALUES (1,'sp01',1),(2,'sp02',1),(2,'sp03',1),(3,'sp05',1),(4,'sp01',1),(4,'sp02',1),(4,'sp04',1),(4,'sp06',3),(5,'sp01',1),(6,'sp05',1),(7,'sp05',1);
/*!40000 ALTER TABLE `detail_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `ID_In` int NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `UID` varchar(10) NOT NULL,
  `TotalMoney` double NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(500) NOT NULL,
  PRIMARY KEY (`ID_In`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (2,'2023-05-26','admin',320,'12345','TP HCM'),(3,'2023-05-26','admin',200,'0123213','TP HCM'),(4,'2023-05-26','admin',970,'0123213412','TP HCM'),(5,'2023-05-28','vietanh',100,'0123213','TP HCM'),(6,'2023-05-28','vietanh',200,'0123213','TP HCM'),(7,'2023-05-28','admin',200,'0123213','TP HCM');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ID_P` varchar(5) NOT NULL,
  `Name_P` varchar(100) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Size` int DEFAULT NULL,
  `Image1` varchar(500) DEFAULT NULL,
  `Image2` varchar(500) DEFAULT NULL,
  `Image3` varchar(500) DEFAULT NULL,
  `Description` varchar(1500) DEFAULT NULL,
  PRIMARY KEY (`ID_P`),
  UNIQUE KEY `ID_P_UNIQUE` (`ID_P`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('sp01','Superstar',100,'Adidas',40,'imageprod/sp001/sp001_superstar.jpg','imageprod/sp001/sp001_superstar_1.jpg','imageprod/sp001/sp001_superstar_2.jpg','The adidas Superstar shoe, which was introduced as a basketball shoe in the 70s and one of the favorite models of hip hop artists in the 80s, is now among the indispensables of street fashion. Just like the basketball courts of the 70s, the shoe still offers a stylish look and extra protection with its world-famous rubber toe structure. Whether at the festival or on street walks, you can enjoy the comfort without fear of being stepped on. The model reflects the unique style of OG in its appearance with serrated 3-band details and the adidas Superstar logo box.'),('sp02','Stansmith',120,'Adidas',39,'imageprod\\sp002\\sp002_stansmith.jpg','imageprod\\sp002\\sp002_stansmith_1.jpg','imageprod\\sp002\\sp002_stansmith_2.jpg','For 50 years, the adidas Stan Smith Shoes have been a staple on the courts and on the streets. Their minimalist style is the very definition of effortless cool. But even icons have to change to stay rooted in the present, which is why this version of the trainers is created with recycled materials. It\'s part of our effort and commitment to help end plastic waste.\n\nThis product is made with Primegreen, a series of high-performance recycled materials. 50% of upper is recycled content. No virgin polyester.'),('sp03','Ultra4dfwd',200,'Adidas',44,'imageprod\\sp003\\sp003_ultra4dfwd.jpg','imageprod\\sp003\\sp003_ultra4dfwd_1.jpg','imageprod\\sp003\\sp003_ultra4dfwd_2.jpg','Running is all about forward momentum, and these shoes are designed to make it feel easier. The 3D-printed 4D midsole has targeted zones of support and absorption, finely tuned to reduce braking forces and turn the impact energy into forward motion. The result is a smooth ride that feels more like gliding than stop-and-go pounding on pavement. adidas PRIMEKNIT gives a foot-hugging fit, and the grippy rubber outsole provides traction on wet and dry surfaces to keep you going in all conditions.'),('sp04','Nmdr1',150,'Adidas',44,'imageprod\\sp004\\sp004_nmdr1.jpg','imageprod\\sp004\\sp004_nmdr1_1.jpg','imageprod\\sp004\\sp004_nmdr1_2.jpg','The city is ever-changing. Dare to keep up in these juniors\' adidas NMD_R1 Refined Shoes. Merging everyday style with top-tier adidas technology, these running-inspired sneakers keep you comfortably on the move thanks to energy-returning Boost cushioning. The flexible mesh upper hugs the foot so you can easily turn and switch directions anytime a new part of the city calls to you.\n\nThis product is made with Primeblue, a high-performance recycled material made in part with Parley Ocean Plastic. 50% of the upper is textile, 75% of the textile is Primeblue yarn. No virgin polyester.'),('sp05','Air Jordan Low',200,'Nike',44,'imageprod\\sp005\\sp005_airjordanlow.jpg','imageprod\\sp005\\sp005_airjordanlow_1.jpg','imageprod\\sp005\\sp005_airjordanlow_2.jpg','The Air Jordan 1 Low White Ghost Green features a white leather upper with Ghost Green overlays and Swooshes. From there, a checker-board woven Nike tag is stitched atop the tongue. An embroidered mini Swoosh on the toe wrap and silver heel tab adds the finishing touches to this OG model.'),('sp06','PG 6 Bright Crimson',200,'Nike',44,'imageprod\\sp006\\sp006_pg6ep.jpg','imageprod\\sp006\\sp006_pg6ep_1.jpg','imageprod\\sp006\\sp006_pg6ep_2.jpg','Paul George does it all on the court, comfortably. He can take it to the hole, drive and dish, catch and shoot—always smooth, frequently devastating. His signature PG 6 is designed to feel light and buoyant like he\'s walking on clouds—thanks to a mesh upper, foam in the midsole and cushiony tongue and collar.'),('sp07','Air Force 1 PLT.AF.ORM',40,'Nike',40,'imageprod\\sp007\\sp007_pltaform.jpg','imageprod\\sp007\\sp007_pltaform_1.jpg','imageprod\\sp007\\sp007_pltaform_2.jpg','Let classic, easy-to-wear AF1 style rise to the occasion with the Nike Air Force 1 PLT.AF.ORM. Its elegantly shaped and lifted midsole delivers a proud, new voice to the hoops franchise. The leather on the upper breaks in easily and ages to soft perfection while the sculpted collar and pillowy heel keep it comfy. Captivate your audience.'),('sp08','Nike Air Force 1 Crater Flyknit',100,'Nike',44,'imageprod\\sp008\\sp008_craterflyknit.jpg\n','imageprod\\sp008\\sp008_craterflyknit_1.jpg\n','imageprod\\sp008\\sp008_craterflyknit_2.jpg\n','Rock a bold new design that brings the Force to your feet. The upper has a stretchy, breathable, nature-inspired pattern that keeps feet cool, while the super-soft foam midsole cushions every step and skip.'),('sp09','Hunter X Junior - LE PETIT ARMOR Collection',20,'Bitis',20,'imageprod\\sp009\\sp009_dsgh00900trg.jpg\n','imageprod\\sp009\\sp009_dsgh00900trg_1.jpg\n','imageprod\\sp009\\sp009_dsgh00900trg_2.jpg\n','Giày Thể Thao Trẻ Em Biti\'s được làm bằng chất liệu cao cấp, mềm mại, an toàn cho sức khỏe và làn da của trẻ, giúp trẻ tha hồ chạy nhảy suốt cả ngày.\n\nSản phẩm được thiết kế dạng giày thể thao năng động giúp bé dễ dàng mang vào và không bị tuột trong quá trình chơi đùa, mũi giày bo tròn ôm gọn chân, thoải mái di chuyển cả ngày.\n\n- Đế: IP \n\n- Quai: Knits/ Si Nubucks \n\n- Điểm nhấn nổi bật: Sản phẩm sử dụng quai Knits thông thoáng. \n\n- Đường nét rập tinh tế phối những đường line trang trang tạo điểm nhấn vừa phải cho sản phẩm.\n\n- Sản phẩm không có dây buộc\n\n- Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.'),('sp10','Hunter X - X-NITE 22',44,'Bitis',44,'imageprod\\sp010\\sp010_dsmh10500xam.jpg\n','imageprod\\sp010\\sp010_dsmh10500xam_1.jpg\n','imageprod\\sp010\\sp010_dsmh10500xam_2.jpg\n',' Đế: IP/Cao su \n- Quai: Knits/ si Nubucks \n\n- Điểm nhấn nổi bật : Quai knits thông thoáng. Đế IP/Cao su nhẹ, uốn gấp đàn hồi tốt. \n\n- Ý tưởng thiết kế: từ những góc cắt mạnh mẽ liên kết từ thành đế tạo sự đồng nhất sản phẩm\n\n- Có dây buộc \n\n- Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.'),('sp11','ULTRABOOST LIGHT',250,'Adidas',44,'imageprod\\sp011\\sp011_ultraboost22.jpg\n','imageprod\\sp011\\sp011_ultraboost22_1.jpg\n','imageprod\\sp011\\sp011_ultraboost22_2.jpg\n','Experience unsurpassed energy with the new Ultraboost Light, our lightest version of Ultraboost. The magic lies in the Light BOOST midsole, the new generation of adidas BOOST cushioning. The unique molecular design of this shoe achieves the lightest BOOST foam ever. With hundreds of BOOST beads bursting with energy and the ultimate in softness and comfort, your feet really get to experience it all.'),('sp12','CAMPUS 80S SPORTY & RICH SHOES',180,'Adidas',44,'imageprod\\sp012\\sp012_campus80ssporty.jpg\n','imageprod\\sp012\\sp012_campus80ssporty_1.jpg\n','imageprod\\sp012\\sp012_campus80ssporty_2.jpg\n','Part of a collaboration with Sporty & Rich, a lifestyle brand from LA, the shoe honors an adidas icon by emulating the classic Campus 80s without losing its core identity. The vintage design is combined with a soft, premium nubuck leather body and a smooth satin lining. The Sporty & Rich and adidas logos printed and covered in metallic gold adorn the body of the shoe. Sporty & Rich Wellness Club keychain with pearl strap accentuates the high-end design. All come with special vintage-inspired packaging.'),('sp13','RUN FALCON 2.0',60,'Adidas',44,'imageprod\\sp013\\sp013_runfalcon2.jpg\n','imageprod\\sp013\\sp013_runfalcon2_1.jpg\n','imageprod\\sp013\\sp013_runfalcon2_2.jpg\n','Strap up in these running shoes and you\'re set for a jog in the park followed by coffee with friends. With a mesh upper for outstanding breathability, they\'re meant to deliver comfort all day long. A durable rubber outsole gives you a solid foundation no matter how busy your schedule.'),('sp14','FLUIDFLOW 2.0',50,'Adidas',44,'imageprod\\sp014\\sp014_fluidflow.jpg\n','imageprod\\sp014\\sp014_fluidflow_1.jpg\n','imageprod\\sp014\\sp014_fluidflow_2.jpg\n','It doesn\'t matter if your schedule today includes running or not. The ultra-breathable feel and smooth midsole give this adidas shoe an edge. Whether jogging or down the street. You have got yourself shoes ready to accompany and conquer the new day.'),('sp15','CONTINENTAL 80',130,'Adidas',44,'imageprod\\sp015\\sp015_continental80.jpg\n','imageprod\\sp015\\sp015_continental80_1.jpg\n','imageprod\\sp015\\sp015_continental80_2.jpg\n','With a nostalgic look, the Continental 80 retains the old-fashioned look of indoor sneakers from the early 1980s. The leather shoe features a two-color stripe pointing downwards and a distinct cupsole with split rubber for comfort and flexibility.'),('sp16','LITE RACER REBOLD',60,'Adidas',44,'imageprod\\sp016\\sp016_literacer.jpg\n','imageprod\\sp016\\sp016_literacer_1.jpg\n','imageprod\\sp016\\sp016_literacer_2.jpg\n','Inspired by the running style, these adidas shoes bring a sporty touch to your everyday outfit. The ultra-lightweight padding helps you conquer your day comfortably and be ready for whatever lies ahead.\n\nThis product is sewn with Primegreen technology fabric, belonging to the line of high-performance recycled materials. The shoe body contains 50% recycled content. Do not use virgin polyester.'),('sp17','Pegasus 40',180,'Nike',44,'imageprod\\sp017\\sp017_pegasus39.jpg\n','imageprod\\sp017\\sp017_pegasus39_1.jpg\n','imageprod\\sp017\\sp017_pegasus39_2.jpg\n','A springy ride for every run, the Peg\'s familiar, just-for-you feel returns to help you accomplish your goals. This version has the same responsiveness and neutral support you love but with improved comfort in those sensitive areas of your foot, like the arch and toes. Whether you\'re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt, it\'s still the established road runner you can put your faith in, day after day, run after run.'),('sp18','Nike Air Pegasus 83',95,'Nike',44,'imageprod\\sp018\\sp018_pegasus83premium.jpg\n','imageprod\\sp018\\sp018_pegasus83premium_1.jpg\n','imageprod\\sp018\\sp018_pegasus83premium_2.jpg\n','Travel first class without reservations in the Pegasus 83. With a splash of running history, a dash of retro style and a whole lot of comfort, meet your new go-to shoes. Era-echoing suedes and durable textile keep it easy to wear, while plush padding around the ankle keeps it feeling like your favorite armchair. You don\'t need a plane to take you places—just lace up and arrive looking fresh.'),('sp19','Nike Blazer Mid \'77 Jumbo',150,'Nike',44,'imageprod\\sp019\\sp019_blazer77jumbo.jpg\n','imageprod\\sp019\\sp019_blazer77jumbo_1.jpg\n','imageprod\\sp019\\sp019_blazer77jumbo_2.jpg\n','Praised by many for its enduring look and feel, the wardrobe staple hits refresh with the Nike Blazer Mid \'77 Jumbo.Harnessing the old-school look you love, it now has an elastic heel with corduroy-like texture and large pull tabs for easy on and off.The oversized Swoosh design and jumbo laces add a fun twist.'),('sp20','Nike DBreak',130,'Nike',44,'imageprod\\sp020\\sp020_dbreak.jpg\n','imageprod\\sp020\\sp020_dbreak_1.jpg\n','imageprod\\sp020\\sp020_dbreak_2.jpg\n','Following in the legendary footsteps of the \'79 original, this version of the DBreak lets you channel vintage athletics style back onto the streets. The Waffle outsole and luxe suede keep its retro appeal, while soft foam underfoot delivers a history lesson in comfort.'),('sp21','Nike Air Max 97',160,'Nike',44,'imageprod\\sp021\\sp021_airmax97.jpg\n','imageprod\\sp021\\sp021_airmax97_1.jpg\n','imageprod\\sp021\\sp021_airmax97_2.jpg\n','Nike Air Max 97\n'),('sp22','Nike Winflo 9',120,'Nike',44,'imageprod\\sp022\\sp022_winflo9.jpg\n','imageprod\\sp022\\sp022_winflo9_1.jpg\n','imageprod\\sp022\\sp022_winflo9_2.jpg\n','The Winflo 9 gives you the support you need to match your speed. It has a secure fit that helps keep your foot in place as the miles go by. We added plenty of foam through the midsole, giving you extra pep to every step. Lace up, lock in, win your goals.\n\n'),('sp23','Hunter Tennis DSMH10200DEN',20,'Bitis',44,'imageprod\\sp023\\sp023_tennisdsmh102.jpg\n','imageprod\\sp023\\sp023_tennisdsmh102_1.jpg\n','imageprod\\sp023\\sp023_tennisdsmh102_2.jpg\n','- Straps: Unstretched Net, Si Nubucks.\n\n- The purpose of tightening the legs, without stretching so that the legs are held tightly during the fast run with the ball.\n\n- Sole: Rubber/IP\n\n- Rubber: designed with large arrays to increase friction when running brakes without slipping.\n\n- Rubber stools on the nose and sides of the arch of the legs (Ball) are designed to be high to keep the legs from being displaced when running.\n\n- Uses: Used for tennis or other daily activities\n\n- There are laces\n\nDue to different screens and lighting conditions, the actual color of the product may differ by about 3-5%'),('sp24','Coredsmh094',30,'Bitis',44,'imageprod\\sp024\\sp024_coredsmh094.jpg\n','imageprod\\sp024\\sp024_coredsmh094_1.jpg\n','imageprod\\sp024\\sp024_coredsmh094_2.jpg\n','coredsmh094'),('sp25','Men\'s Biti\'s Hunter X Cut-Out',40,'Bitis',44,'imageprod\\sp025\\sp025_cutoutdsmh089.jpg\n','imageprod\\sp025\\sp025_cutoutdsmh089_1.jpg\n','imageprod\\sp025\\sp025_cutoutdsmh089_2.jpg\n','Biti\'s Hunter X Cut-Out Men\'s Sneakers\n\n?The new sole design is taller, quieter, \"better\" on each experience. The LiteFlex 2.0 sole design is sure to make young people \"collapse\" with fresher colors, promising an extremely \"hot\" shoe in 2022.\n\n?LiteFlex 2.0 sole set\n\n- IP material \"light as fly\" from only 204g\n\n- Sole height reaches 5 cm\n\n- Elasticity > 40%\n\n- Rubber layer increases friction\n\n?Antibacterial insoles with 6-point technology help massage the soles of the feet\n\n?Innovative textile straps that stretch and breathe\n\n- Products with laces.\n\nDue to different screens and lighting conditions, the actual color of the product may differ by about 3-5%.'),('sp26','Hunter Street x VietMax Vietnam Arising',70,'Bitis',44,'imageprod\\sp026\\sp026_arisingdsmh055.jpg\n','imageprod\\sp026\\sp026_arisingdsmh055_1.jpg\n','imageprod\\sp026\\sp026_arisingdsmh055_2.jpg\n','- The first high-necked silhouette from Biti\'s Hunter Street.\n\n- The strap hat uses a high-quality material of REAL COWHIDE, combined with Simili decorative motifs.\n\n- Antibacterial crocodile elastic liners help limit odors and mold. The multilayer lining structure combines thick and smooth foam.\n\n- Insole lining (Insole) with EVA material and 3D molding technology according to the foot profile, hugging evenly & positioning well, avoiding slipping feet when exercising vigorously. Combined with antibacterial elastic material, it helps absorb sweat, limit odors and mold.\n\n- Sole (Outsole) with E.E rubber EVA material with the feature of being much more flexible and light than traditional rubber, but still ensuring wear and impact resistance. The shore is suitable, smooth and bounces well to help protect and support the foot.\n\n- The tall base of the box hugs the strap hat and seamlessly integrates with the base into a block to make the product durable and flexible in all situations\n\n- There are laces\n\nDue to different screens and lighting conditions, the actual color of the product may differ by about 3-5%.'),('sp27','Men\'s Sneakers Hunter Street Cream',30,'Bitis',44,'imageprod\\sp027\\sp027_streetdsmh104.jpg\n','imageprod\\sp027\\sp027_streetdsmh104_1.jpg\n','imageprod\\sp027\\sp027_streetdsmh104_2.jpg\n','Biti\'s Hunter Street White Men\'s Sneakers DSMH10400TRG/DSWH10400TRG (White)\n- Soles: Eva Rubber\n\n- Monster: Si Nubucks/Microfiber\n\n- Highlights: The model uses high-quality soft si microfiber material. The design is classic. The toe of the shoe is sewn upside down to create sophistication for the product. The Bird Wing logo creates a highlight to decorate the product.\n\n- There are laces\n\nDue to different screens and lighting conditions, the actual color of the product may differ by about 3-5%.'),('sp28','Men\'s Sneakers Hunter X DSMH09700DOO',50,'Bitis',42,'imageprod\\sp028\\sp028_sportdsmh097.jpg\n','imageprod\\sp028\\sp028_sportdsmh097_2.jpg\n','imageprod\\sp028\\sp028_sportdsmh097_3.jpg\n','SOLE:\n\n❖ The new sole is launched on the market of Biti\'s Hunter X.\n\n➢ Midsole (Midsole) is EVA material (Ethylene and Vinayl Acetate), lightweight, flexible, waterproof and UV resistant. The base is 3D molded by a modern, closed line to help the material create good elasticity, high durability, reduce jets from the ground during product use. Supports an increase in height of 3-5 cm.\n\n➢ The base wall is high and pitiful, tightly linked with the strap hat to help move neatly and decisively, firmly.\n\n➢ Outsole (Outsole) is the part that is in contact with the ground and is subject to direct friction, using improved natural rubber, optimizing properties such as flexibility, good friction, wear resistance to help the product more durable and long-term use.\n\nQUAI:\n\n Overall, the strap hat uses Si nubuck with leather texture (solid structure, high durability, bearing advantages, less elasticity, less absorbent and easy to clean ...)\n\nThe chicken tongue is composed of a leatherette pattern on the top of si nubuck and a crocodile elastic underside.\n\n Biti\'s bird wing logo stamp is made of plastic material that cuts off the outer cheeks of the product. Inner and outer necklace of foam woven mesh'),('sp29','DSM075133XAM Men\'s Safety Shoes ',50,'Bitis',44,'imageprod\\sp029\\sp029_sportdsm075.jpg\n','imageprod\\sp029\\sp029_sportdsm075_1.jpg\n','imageprod\\sp029\\sp029_sportdsm075_2.jpg\n','Launch BITI\'S HUNTER SAFETY SHOES HAVE BEEN SAFELY CENSORED AT THE CENTER\n- Airy Knit Strap\n\n- Elastic IP base\n\n- Steel nose brake, anti-stamping, impact resistant 1.5 tons\n\n- Standard 1.1 ton piercing-proof, anti-nail base lining\n\n- There are laces.\n\nDue to different screens and lighting conditions, the actual color of the product may differ by about 3-5%.'),('sp30','Original biti\'s hunter street sneakers DSM076',20,'Bitis',44,'imageprod\\sp030\\sp030_sportdsm076.jpg\n','imageprod\\sp030\\sp030_sportdsm076_1.jpg\n','imageprod\\sp030\\sp030_sportdsm076_2.jpg\n','PRODUCT\nINFORMATION Instant bonus of 10 million if genuine goods\nare detected Code: DSM075033\n- Code: DSM07600 - Name SP: Biti\'s Hunter Street 2k22 - Color: White - Brand: biti\'s - Weight: 300g/unit. - Genuine warranty. - 1-for-1 error within 15 days. - Free resize.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `productid` varchar(45) NOT NULL,
  `comment` varchar(500) NOT NULL,
  PRIMARY KEY (`review_id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=1079 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'admin','sp02','thienngu'),(1075,'admin','sp02','1075concac'),(1076,'admin','sp05','giay dep qua'),(1077,'admin','sp05','giay xau qua'),(1078,'vietanh','sp05','giay that dep, toi thich no ');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(500) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `perMiss` int DEFAULT NULL,
  PRIMARY KEY (`ID`,`Username`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'VietAnh','vietanhnguyen.071002@gmail.com','admin','1234',1),(4,'Viet Anh Nguyen','vietanhnguyen.071002@gmail.com','vanhh','1234',0),(5,'vanh nguyen','vietanhthantai4@gmail.com','vietanh','123',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31 10:50:49

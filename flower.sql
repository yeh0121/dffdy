CREATE DATABASE  IF NOT EXISTS `flower` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flower`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flower
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Pid` int DEFAULT NULL,
  `Account` varchar(45) DEFAULT NULL,
  `Comment` varchar(1024) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Star` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,10,'ooo','包裝完整，商品無瑕疵。','2022-12-20',3),(2,10,'qqq','超級漂亮！我好喜歡','2022-12-01',5),(3,10,'uuu','送給女朋友當禮物，他收到很開心~','2022-12-03',5),(4,10,'yyy','不只好看，還有淡淡的清香','2022-12-07',2),(5,9,'ddd','超級漂亮，很適合送人。','2022-12-11',4),(6,9,'aaa','擺在房間每天看到心情都會變好~','2022-12-05',5),(7,9,'zzz','好精緻好喜歡!!','2022-12-04',3),(8,11,'jjj','這個顏色超級美~~~','2022-11-30',4),(9,11,'zz','cp值超高，下次會再回購','2022-12-11',1),(10,11,'zz','包裝打開香味撲鼻，真的好喜歡~~','2022-12-18',1),(11,1,'qqq','我很喜歡乾燥花，這是我第三次購買了','2022-12-30',5),(12,1,'yyy','放在書桌旁邊讓我更有心情讀書了','2022-12-30',3),(13,5,'ttt','包裝的配色好漂亮，很有質感','2022-12-30',2),(14,5,'yyy','收到時包裝有點破損，但商品本身還算滿意','2022-12-30',2),(18,2,'aaa','包裝完整，商品無瑕疵。','2023-01-02',5),(19,7,'mmm','超級漂亮！我好喜歡','2023-01-02',3),(20,7,'mmm','送給女朋友當禮物，他收到很開心~','2023-01-02',3),(21,7,'mmm','不只好看，還有淡淡的清香','2023-01-02',3),(22,4,'aaa','超級漂亮，很適合送人。','2023-01-02',2),(23,4,'jjj','擺在房間每天看到心情都會變好~','2023-01-02',3),(25,8,'uuu','這個顏色超級美~~~','2023-01-02',3),(26,8,'yyy','cp值超高，下次會再回購','2023-01-02',3),(27,8,'aaa','包裝打開香味撲鼻，真的好喜歡~~','2023-01-02',2),(28,6,'ggg','我很喜歡乾燥花，這是我第三次購買了','2023-01-02',4),(29,6,'abc','放在書桌旁邊讓我更有心情讀書了','2023-01-02',5),(30,6,'ccc','包裝的配色好漂亮，很有質感','2023-01-02',4),(31,6,'yyy','收到時包裝有點破損，但商品本身還算滿意','2023-01-02',3),(32,19,'ooo','精緻又耐看，好讚喔!','2023-01-02',4),(33,19,'qqq','好美喔!','2023-01-03',4),(34,19,'uuu','包裝完整，商品無瑕疵。','2023-01-03',3),(35,15,'yyy','超級漂亮！我好喜歡','2023-01-03',4),(36,15,'jjj','送給女朋友當禮物，他收到很開心~','2023-01-03',1),(37,15,'ooo','不只好看，還有淡淡的清香','2023-01-03',4),(38,15,'qqq','超級漂亮，很適合送人。','2023-01-04',3),(39,20,'uuu','擺在房間每天看到心情都會變好~','2022-12-18',4),(41,20,'ccc','這個顏色超級美~~~','2022-12-30',3),(42,20,'hhh','cp值超高，下次會再回購','2022-12-30',1),(43,7,'admin','謝謝大家喜歡~','2023-01-06',3),(44,12,'lll','顏色很繽紛!!','2023-01-06',2),(45,21,'kkk','好可愛喔~~~','2023-01-06',5),(46,18,'kkk','看起來喜氣洋洋 過年放在客廳很適合','2023-01-06',3),(47,1,'kkk','送給朋友他很喜歡~','2023-01-06',3),(48,5,'kkk','棉花好可愛!!','2023-01-06',5);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Mem_id` int NOT NULL,
  `Pid` int NOT NULL,
  `Q` int DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `O_No` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Mem_id`,`Pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,1,9,2250,'N20230106001'),(2,2,3,750,'N20230106001'),(2,3,2,300,'N20230107004'),(2,7,1,2180,'N20230106001'),(2,8,3,11640,'N20230107004'),(2,13,4,5920,'N20230107004'),(2,15,3,8640,'N20230107008'),(2,18,1,2990,'N20230107008'),(3,8,3,11640,NULL),(3,9,7,3850,NULL),(4,12,1,1550,'N20230107005'),(4,17,2,3960,'N20230107005'),(5,7,1,2180,'N20230107001'),(5,8,2,7760,'N20230107001'),(5,13,1,1480,'N20230107002'),(5,14,1,1280,'N20230107002'),(5,15,1,2880,'N20230107001'),(6,2,1,250,NULL),(6,7,2,4360,'N20230107006'),(6,9,2,1100,'N20230107006'),(6,15,1,2880,'N20230107006'),(6,21,1,2000,'N20230107007'),(8,17,3,5940,NULL),(8,19,1,2790,NULL),(11,20,1,1990,'N20230106002'),(11,21,1,2000,'N20230106002'),(12,1,3,750,'N20230107009'),(12,5,2,400,'N20230107009'),(12,17,1,1980,'N20230107009'),(12,20,1,1990,'N20230107009'),(12,21,3,6000,'N20230107009'),(13,2,2,500,NULL),(13,7,1,2180,'N20230107003'),(13,8,5,19400,'N20230107003'),(14,17,3,5940,'N20230104001'),(14,21,1,2000,'N20230104001'),(15,1,2,500,NULL),(15,8,1,3880,NULL),(15,9,1,550,NULL),(15,16,1,1980,NULL),(16,11,2,6580,NULL),(24,8,1,3880,NULL);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodity` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Price` int DEFAULT NULL,
  `Sold` int DEFAULT NULL,
  `Inventory` int DEFAULT NULL,
  `Description` varchar(1024) DEFAULT NULL,
  `Material` varchar(45) DEFAULT NULL,
  `Size` varchar(45) DEFAULT NULL,
  `Preserve` varchar(100) DEFAULT NULL,
  `Img` varchar(45) DEFAULT NULL,
  `Note` varchar(200) DEFAULT '-----慶祝新開幕，全館免運-----',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commodity`
--

LOCK TABLES `commodity` WRITE;
/*!40000 ALTER TABLE `commodity` DISABLE KEYS */;
INSERT INTO `commodity` VALUES (1,'手作繡球乾燥花卡片','card',250,21,129,'一朵朵小花聚集在一起，有著「家族團聚」象徵的繡球花，是家庭圓滿的代表物。贈送小小的繡球乾燥花卡片給親愛的家人，表達你大大的祝福吧！','乾燥繡球、水晶花','寬9cm高12cm','請放置通風、乾燥處，避免陽光直射。\n若要清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/card/hydrangea.jpg','-----慶祝新開幕，全館免運-----'),(2,'手作紫色滿天星乾燥花卡片','card',250,6,144,'紫色滿天星溫柔且優雅，有著低調柔美的暖意。送給親人或戀人，可以表示自己的思念之情，也可以讓他們感受到你純潔的心靈！','滿天星、乾燥繡球、卡斯比亞','寬9cm高11.5cm','請放置通風、乾燥處，避免陽光直射。\n若要清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/card/purple-babybreath.jpg','-----慶祝新開幕，全館免運-----'),(3,'法國白梅乾燥花卡片','card',150,4,146,'法國白梅為菊科植物，不是梅花喔~有一身雪白清新的外表，花語是典雅的品味和純潔，帶給人和諧優雅之感。適合送給身邊任何你珍惜的人，但願你們的情誼能夠長存，永遠不變！','法國白梅、進口乾燥葉材、卡斯比亞、美國黑卡紙、進口美術紙、透明PVC包裝盒','寬9cm高12cm','請放置通風、乾燥處，避免陽光直射。\n若要清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/card/white-babybreath.jpg','-----慶祝新開幕，全館免運-----'),(4,'白滿天星乾燥花卡片','card',150,0,150,'白滿天星的花語是「愛你更勝過自己」。給愛戀的人一張白滿天星乾燥花卡片，寫下你對他最誠摯的感情，讓對方感受到你的浪漫與真心！','滿天星、美國黑卡紙、進口美術紙、透明PVC包裝盒','寬9cm高12cm','請放置通風、乾燥處，避免陽光直射。\n若要清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/card/oxeye-daisy.jpg','-----慶祝新開幕，全館免運-----'),(5,'手作棉花卡片','card',200,2,148,'棉花適合拿來當作畢業花束，祝福畢業生能擁有亮麗的前程，也希望畢業生能將所有的美好回憶珍藏到永遠！','棉花、迦納利、木滿天星、卡斯比亞、美國黑卡紙、進口美術紙、麻繩','12cm x 12cm','請放置通風、乾燥處，避免陽光直射。\n若要清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/card/cotton.jpg','-----慶祝新開幕，全館免運-----'),(6,'手作粉滿天星乾燥花卡片','card',150,0,150,'粉滿天星的花語是青澀的愛，送給暗戀的人最為合適！寫一張粉滿天星的乾燥花卡片，表現出濃濃的情意給對方，展現自己的純情與浪漫。','滿天星','寬9cm高11.5cm','請放置通風、乾燥處，避免陽光直射。\n若要清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/card/pink-babybreath.jpg','-----慶祝新開幕，全館免運-----'),(7,'粉玫瑰永生花束','bouquet',2180,8,92,'粉玫瑰有著一點紅玫瑰的熱情，又帶著一點白玫瑰的純真。喜歡對方的燦爛微笑，想與對方表達真摯的感情，選擇粉玫瑰，會讓對方難以忘懷！','永生玫瑰 卡斯比亞 棉花','寬 32cm高 48cm\n內容物：花束*1 空白卡片*1','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~2年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/bouquet/pink-rose.jpg','-----慶祝新開幕，全館免運-----'),(8,'白玫瑰永生花束','bouquet',3880,12,88,'古希臘神話中，白玫瑰是集愛與美於一身的女神象徵。可以向對方表達純潔愛意，讓對方知道「你是我的！」。配上雪白的花束包裝，有種貞潔且脫俗之感。','永生玫瑰、永生蓬萊松','寬 32cm高 48cm\n內容物：花束*1 空白卡片*1','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~2年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/bouquet/white-rose.jpg','-----慶祝新開幕，全館免運-----'),(9,'紫向日葵乾燥花束','bouquet',550,4,96,'紫色向日葵的花語是信念與光輝，也代表對生活的熱愛，可以讓你更相信自己，更勇敢地追求夢想和幸福！紫色向日葵也有默默等待的意涵，送給愛慕對象紫向日葵乾燥花束，並表示自己永遠對他忠誠！','香皂向日葵、乾燥滿天星、乾燥尤加利葉、永生加那利、永生蓬萊松','包裝全寬約25cm，全長約35cm','乾燥花請放置通風、乾燥處，避免陽光直射。\n避免花材彼此碰撞及遭其他物品擠壓。\n定期清理灰塵，可用吹風機微弱涼風吹散。','images/bouquet/purple-sunflower.jpg','-----慶祝新開幕，全館免運-----'),(10,'黃向日葵乾燥花束','bouquet',1000,0,100,'黃向日葵有著「你永遠是我的陽光，勇敢追求所愛！」的浪漫花語，本身也帶有朝氣與開朗之感。有了黃向日葵乾燥花束，前途一片光明又繽紛多彩！','香皂向日葵、乾燥滿天星、乾燥尤加利葉、不凋日本芒草','花面寬度約20cm\n包裝全寬約24cm，全長約43cm','乾燥花請放置通風、乾燥處，避免陽光直射。\n避免花材彼此碰撞及遭其他物品擠壓。\n定期清理灰塵，可用吹風機微弱涼風吹散。','images/bouquet/yellow-sunflower.jpg','-----慶祝新開幕，全館免運-----'),(11,'黑玫瑰永生花束','bouquet',3290,0,100,'動人愛情的象徵，溫柔真心、獨一無二~黑玫瑰外表雖不絢麗多彩，但可感受到其內心的鋒芒。神祕而獨特且「內在美」十足，唯有心領神會之人，才能發覺黑玫瑰的五彩斑斕。','永生玫瑰以及其他不凋和乾燥配花','整體尺寸約長 36cm 寬 24cm 高 44cm','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~2年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/bouquet/black-rose.jpg','-----慶祝新開幕，全館免運-----'),(12,'彩色滿天星乾燥花束','bouquet',1550,1,99,'清麗可愛的小花球，盛開的樣子猶如夜空中的繁星。滿天星乾燥花束，送給你真心喜歡的人，讓對方知道你對他的思念與關懷，守護你們之間最清純的愛情！','乾燥滿天星、乾燥卡斯比亞','全長約32cm\n花面寬約15cm','乾燥花請放置通風、乾燥處，避免陽光直射。\n避免花材彼此碰撞及遭其他物品擠壓。\n定期清理灰塵，可用吹風機微弱涼風吹散。','images/bouquet/baby-breath.jpg','-----慶祝新開幕，全館免運-----'),(13,'非洲菊乾燥花束','bouquet',1480,9,91,'象徵有毅力且不畏艱難的非洲菊，充滿溫暖正向的力量。無論是親人、愛人或朋友，都可以送一束非洲菊乾燥花束，祝福他能永遠開朗、快樂過每一天。','索拉非洲菊、永生繡球','寬 33cm高 48cm\n內容物：花束*1 空白卡片*1','乾燥花請放置通風、乾燥處，避免陽光直射。\n避免花材彼此碰撞及遭其他物品擠壓。\n定期清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/bouquet/gerbera.jpg','-----慶祝新開幕，全館免運-----'),(14,'白向日葵乾燥花束','bouquet',1280,1,99,'白色向日葵代表著光輝、自信和勇敢追求，向心儀的對象表白，送上白向日葵乾燥花束，讓對方看出你的陽光吧！','索拉太陽花 棉花 永生尤加利葉','寬 32cm高 48cm\n內容物：花束*1 空白卡片*2','乾燥花請放置通風、乾燥處，避免陽光直射。\n避免花材彼此碰撞及遭其他物品擠壓。\n定期清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/bouquet/white-sunflower.jpg','-----慶祝新開幕，全館免運-----'),(15,'黃色鬱金香乾燥花束','bouquet',2880,6,94,'黃鬱金香的花語是開朗、高雅與寶貴。優雅的外型，配上擁有溫暖力量的黃色，給人一種貴氣之感!送給戀人或朋友，希望他能隨時保持積極樂觀，也能代表你們珍貴的感情。','滿天星、卡斯比亞、尤加利葉、兔尾草、索拉花(鬱金香造型)','寬36cm 高48cm','乾燥花請放置通風、乾燥處，避免陽光直射。避免花材彼此碰撞及遭其他物品擠壓。定期清理灰塵，可用吹風機微弱涼風吹散或使用軟毛刷輕刷。','images/bouquet/yellow-tulip.jpg','-----慶祝新開幕，全館免運-----'),(16,'粉康乃馨永生玻璃大花盅','glass',1980,0,80,'粉康乃馨可表達自己心中對於母親深深的親情，希望母親永遠美麗迷人，不會老去。存放在金色底座的玻璃花盅，顯得更加美麗動人！','永生康乃馨、永生繡球','整體尺寸寬約 12cm 高 17cm(手工測量誤差±2cm)','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~2年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/glass/pink-carnation.jpg','-----慶祝新開幕，全館免運-----'),(17,'紫玫瑰永生玻璃花盅小夜燈','glass',1980,4,76,'紫玫瑰高貴且純潔，夢幻、浪漫真情的象徵，代表成熟的愛。「紫」是愛你！全世界只對你有感覺~~盅罩裡有燈，珍貴獨特的你，可以隨時開啟燈光，讓心情更加愉悅！','永生玫瑰、永生繡球','總寬約 10cm 總高17cm (手工測量誤差±1CM)','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~3年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/glass/purple-rose.jpg','-----慶祝新開幕，全館免運-----'),(18,'紅玫瑰永生長型玻璃花盅','glass',2990,1,79,'紅玫瑰象徵熱情，魅力四射，如果有交往已久或是暗戀許久想要表白對象，紅玫瑰是最佳選擇，代表著想和對方永遠在一起，且永遠不變！可發光當作小夜燈，紅玫瑰玻璃花盅會一直陪伴在你左右！','永生玫瑰、永生繡球以及其他不凋或乾燥配花','總寬約 14 cm 總高24 cm','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~4年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/glass/red-rose.jpg','-----慶祝新開幕，全館免運-----'),(19,'藍玫瑰永生圓球玻璃花盅','glass',2790,0,80,'藍玫瑰的花語是清純的愛和敦厚善良，也代表和你相遇是個奇蹟！送給心愛的人藍玫瑰花盅小夜燈，把這段美麗的愛情故事銘記在心吧~','永生玫瑰、永生繡球以及其他不凋或乾燥配花','總寬約 14 .5 cm 總高 26 cm','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~5年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/glass/blue-rose.jpg','-----慶祝新開幕，全館免運-----'),(20,'橘玫瑰永生圓形玻璃花盅','glass',1990,2,78,'橘玫瑰的花語是友情和青春魅力。結交知交好友，是生活中一大樂事！在特別的日子贈送橘玫瑰玻璃花盅小夜燈給朋友，一起回憶青春往事，這段友誼也將畢生難忘！','永生玫瑰、永生繡球以及其他不凋或乾燥配花','總寬約 11 cm  總高 13 cm','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~6年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/glass/orange-rose.jpg','-----慶祝新開幕，全館免運-----'),(21,'黃玫瑰永生花玻璃盅罩','glass',2000,5,75,'黃玫瑰代表純真的友情，可以送給身邊值得你珍惜的朋友，來表達你對他最美好的祝福~','永生黃玫瑰、永生滿天星、進口永生繡球','總寬約 10 cm  總高 15 cm','請保持乾燥並放在通風處，避免受到潮濕。\n永生花可存放1~7年。\n定期用毛刷將灰塵清理，可維持永生花的色澤及光彩。','images/glass/yellow-rose.jpg','-----慶祝新開幕，全館免運-----');
/*!40000 ALTER TABLE `commodity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Account` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Identity` varchar(45) DEFAULT 'member',
  `Email` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Gender` enum('男','女') DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone` varchar(45) DEFAULT NULL,
  `Birth` date DEFAULT NULL,
  `Photo` varchar(45) DEFAULT 'images/product/user.png',
  PRIMARY KEY (`ID`,`Account`),
  UNIQUE KEY `member_id_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','admin','admin','admin@gmail.com','admin','女','桃園','0921234567','2003-01-21','images/product/user.png'),(2,'aaa','0000','member','aaa@gmail.com','aaa','男','新竹','0945678988','2001-01-01','images/product/user.png'),(3,'yyy','1234','member','yyy@gmail.com','yyy11','女','桃園','0912345678','2000-10-10','images/product/user.png'),(4,'ooo','1234','member','yyy@gmail.com','ooo11','女','桃園','0912345678','2000-10-10','images/product/user.png'),(5,'zzz','1234','member','yyy@gmail.com','zzz123','女','桃園','0912345678','2000-10-10','images/product/user.png'),(6,'uuu','1234','member','yyy@gmail.com','uuu456','女','桃園','0912345678','2000-10-10','images/product/user.png'),(7,'zz','1234','member','yyy@gmail.com','ooo11','女','桃園','0912345678','2000-10-10','images/product/user.png'),(8,'mmm','1234','member','yyy@gmail.com','mmm789','女','桃園','0912345678','2000-10-10','images/product/user.png'),(9,'jjj','1234','member','yyy@gmail.com','jjj482','女','桃園','0912345678','2000-10-10','images/product/user.png'),(10,'qqq','1234','member','yyy@gmail.com','qqq023','女','桃園','0912345678','2000-10-10','images/product/user.png'),(11,'eee','1234','member','yyy@gmail.com','eee159','女','桃園','0912345678','2000-10-10','images/product/user.png'),(12,'fff','1234','member','yyy@gmail.com','fff789','女','桃園','0912345678','2000-10-10','images/product/user.png'),(13,'ggg','1234','member','yyy@gmail.com','ggg123','女','桃園','0912345678','2000-10-10','images/product/user.png'),(14,'ccc','1234','member','yyy@gmail.com','ccc9456','女','桃園','0912345678','2000-10-10','images/product/user.png'),(15,'lll','1234','member','yyy@gmail.com','lll516','女','桃園','0912345678','2000-10-10','images/product/user.png'),(16,'kkk','1234','member','yyy@gmail.com','kkk456','女','桃園','0912345678','2000-10-10','images/product/user.png'),(17,'ttt','1234','member','yyy@gmail.com','ttt564','女','桃園','0912345678','2000-10-10','images/product/user.png'),(18,'rrr','1234','member','yyy@gmail.com','rrr463','女','桃園','0912345678','2000-10-10','images/product/user.png'),(19,'ddd','1234','member','yyy@gmail.com','ddd757','女','桃園','0912345678','2000-10-10','images/product/user.png'),(20,'hhh','12345678','member','hhh@gmail.com','hhh_fjdsia','女','桃園市中壢區','09123456789','2010-01-12','images/product/user.png'),(21,'123456','12345678','member','hhh@gmail.com','hhh_fjdsia','男','tyc','0912345678','2023-01-01','images/product/user.png'),(23,'aa','12345678','member','hhh@gmail.com','aaa','男','','0123456789','2023-01-18','images/product/user.png'),(24,'abc','1234','member','abc@gmail.com','abc','女','桃園市中壢區','0912345678','2002-01-02','images/product/user.png');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order1` (
  `O_No` varchar(20) NOT NULL,
  `Mem_id` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Statu` varchar(10) DEFAULT '待出貨',
  `PayWay` varchar(45) DEFAULT NULL,
  `PickWay` varchar(45) DEFAULT NULL,
  `Note` varchar(300) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`O_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES ('N20230104001',14,'2023-01-04','待出貨','取貨付款','7-11',NULL,7940),('N20230106001',2,'2023-01-06','待出貨','Line Pay(取貨不付款)','全家',NULL,5180),('N20230106002',11,'2023-01-07','待出貨','LINE PAY(取貨不付款)','OK','',3990),('N20230107001',5,'2023-01-07','待出貨','LINE PAY(取貨不付款)','7-11','',12820),('N20230107002',5,'2023-01-07','待出貨','信用卡(取貨不付款)','7-11','',2760),('N20230107003',13,'2023-01-07','待出貨','LINE PAY(取貨不付款)','宅配','',21580),('N20230107004',2,'2023-01-07','待出貨','信用卡(取貨不付款)','7-11','',13980),('N20230107005',4,'2023-01-07','待出貨','取貨付款','萊爾富','',5510),('N20230107006',6,'2023-01-07','待出貨','*請選擇*','*請選擇*','',8340),('N20230107007',6,'2023-01-07','待出貨','LINE PAY(取貨不付款)','7-11','',2000),('N20230107008',2,'2023-01-07','待出貨','信用卡(取貨不付款)','OK','',11630),('N20230107009',12,'2023-01-07','待出貨','信用卡(取貨不付款)','7-11','',11120);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-08 23:54:19

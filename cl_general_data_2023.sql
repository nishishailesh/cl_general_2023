-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: clg
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Laboratory`
--

DROP TABLE IF EXISTS `Laboratory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Laboratory` (
  `Laboratory` varchar(200) NOT NULL,
  PRIMARY KEY (`Laboratory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Laboratory`
--

LOCK TABLES `Laboratory` WRITE;
/*!40000 ALTER TABLE `Laboratory` DISABLE KEYS */;
INSERT INTO `Laboratory` VALUES
('Biochemistry Laboratory New Civil Hospital Surat'),
('NCHS Biochemistry Section'),
('NCHS Pathology Section');
/*!40000 ALTER TABLE `Laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `value_blob` mediumblob DEFAULT NULL,
  `help` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES
('eq_color_code','{\"C\":\"lightpink\",\"I\":\"red\",\"A\":\"cyan\",\"D\":\"#00F5E0\",\"6\":\"violet\",\"K\":\"#6699ff\",\"E\":\"mediumvioletred\",\"U\":\"#FFA500\",\"F\":\"#FFA500\",\"e\":\"#c77e62\"}',NULL,''),
('examination_id_for_email','1024',NULL,NULL),
('examination_id_for_verification_record','10007',NULL,'a datetime examination which will be updated when verification/calculation is done'),
('examination_id_for_xmpp','1051',NULL,NULL),
('fast_search_result_pages_limit','20',NULL,NULL),
('fast_search_result_page_limit','100',NULL,NULL),
('footer_notice','Verify authenticity of report by scanning QR Code in mobile browser',NULL,NULL),
('header_route','Header',NULL,NULL),
('horizontal_status_lot_size','100',NULL,''),
('nabl_symbol',NULL,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ö\0\0J\0\0\0.m¢r\0\0DQzTXtRaw profile type exif\0\0xÚ­½m²ä¸mù_£¨!ˆ¤ø5ñCf=ƒ~¯EÌº7ë–Ù3ë—‘™\'âÄq¹D{ƒ\0üÚÿïÿó]ÿõ_ÿrÌízrm¥—róÏÓŸ_~Óîß?ïù¸ŸóÿóÏWşü]ø÷ï_Ïûç·‘¯‰¯é÷íÏÂ_ß_à÷Å×å¹P›şbüû_ôç÷5¶\\èÏ%ï(ò›õçBıÏ…RüıEøs÷÷Xwé­şë#Œıûúçõ¿eà¿ËÿÍ}®}‡?ïöÏ??•Õ[™o¦wâÛü?¦ø»äéJ/¿©çÿ©ğ{ÿòMOjî„ùOëtÿË]]ÿÜ•¿nıŸ»ò÷ïş±)©ü¾ñ_Ìò÷×ÿøıÿóâ_g‰ÿåÓüûÿíû¹¥÷Ÿó×ß·Úõ}û÷tïSXÒòç¡şz”ó;~p°äé¼¬ğ«ò_æ÷õüêüjÖ;ÙòuÏ{ğk†\"Ûò…\'¬ğ†/ìóu†É->qÇÊ×gLç{-ÕØãL÷Å>=ş\n_¬©§•\Z{6ÙŞÄwãß÷Îûöóv34Şx~2.4…Ëÿıßøõ¿^èû4ùîö[\'Ì‚ûŠ\Z!·áÎù~Š\r	ß_v”ÏÿõëŸÿ¸¯‰Ìg™øŞãw‰‘ÃÛÒÒÙèÄf¾ş|-Ôõç,ï¹™Ø»„”C	w±†À:6öçåB-¦\'¶ äwŸ”\n›Ó¢ïÍkj8?sü}Ìb#2ÎTÙš^öêØ°Ÿú4lèÍ)?9ç’kn¹ç·¤ò”\\J©Eğ{kªOÍµÔZ[íõm©=-·ÒjkWëíí±\'À1÷Òko½÷÷åM_®üòê—xßG\ZÏÈ£Œ:Úèã˜Ï|feÖÙ®Ùç»âJœXeÕÕV_ïSÚÏÎ»ìºÛîûı0µ/}Ï—¿òÕ¯}ı{ÿŞµp·ÿã×ÿù®…¿v-òëß»ÆKkıëA8Éî;ŸÀWw\0ƒîÙİÂóÄË­sÏîÌ¥¹Ëìæ¬à±ƒÏ1áï½ûïû·}»çÿ×¾Å¿vîrëşoìÜåÖı/;÷?÷í?ìÚîæ®³Cº¡‹z\'Üzcã_bÒ¿|`Sªm¦§~÷›¹ç‘ãè‚Túj½\næ‘âÓ¸úå4‰‘åË%”19èM…½‰û}CÛÏ,ìÑ[YÔ\n¸ÆÔß‡Œk§\n¦oï‘v+<_\Z­ÍÅ£§¯·o¥/¼»	}­,ğrİıÛë.,À—7+[X­y¥]\0ÉM$ßFì\')¿«dcsad­U*_òjp6ÈéÛ¼õ^q€¿åb/ú«|Ï^‘uà®JµÖòk«ÖÁ–/¢f}òxYøróóşvªXx.ÏÚµr­È_ôXÙÖ8¾õx7qO6;~›¹weoÚ÷ïw˜e÷µï2æªoª}—¯ª®w­ÈMaf£`µë	3K‰››ñ]ıÃrß<[Miõ~Ï[W~w®ÜoWn#k6ãÊ›{/‹€SAdóì<3¿à55y-HR3Õ\Zö|V¹ÒÂ,y„¾bk%õKW.\r[k¾¹ÆòÜ»Ñwå[m²£ŸÏ³\"7xè§UçÓ_¾QyŠ]=9\\Ïú0Â–+÷ÑFŒÏî}§9>îÕÅÒ—ã¬_Ï¸Y	oßcÔÅ>ãO}+ü%×ô]¥¦ÑûzR_%\Zá¼ë`5òXl[î+İKßZìÄhe´^çË&>cÀ;ËåÛWºÇêÏWq™]ÇÚaåI/Ë—Büˆ	Ü!7³×Äp7hº+×|nã¹ v QÁ‰Æ¬ı+‰?Öòn¼O\ZæûİGŸïİ“ìœ¶Œ°}óí#ºOWıÂ˜9MEYˆQ»ùÁCÏ•UÆÊ¼1„Å·¬ï	„İ¼0úJÄ^X£ü/Ï{¿WøY¾³¿û[”áÎÙaÖĞ(Ï7Şg•pÎĞy®ÁÃlì<bİq‘àÀ#ˆñÅ„¡Uw“w‘?â?À\\ß@Ù»Ú*U;×\\ğ}BuÛï/ó¹\nF&;Îáù_¾qu‹ßq¿üíØRÓ1ÆòÓXuCÃÎ<	ïÙA‡Å3¼]\0”V\r«óí|lî©RtÇõíw.ˆÙüV¹\"k¸¦‹¨\0âàş¬n-È‘gÏ#ƒ¿³	ZPÜ!°V³İ¼WIì\0>Óµ+WŠ¸&‹šy¿/…]ÀÒÁ:°Y@ÃGxy÷—±ÆÚ¹Ş½\0óØkù ìÊcé[t	˜êú×á€¬0’é7\\¾2x³§§GïŞ™ÇJ\rWxj[ër½9æ“#ZözÁük<+±Š¿nøI±±¶g‚@÷™†‚\'½•áÂ½	#¿ønÉë×¾Áê„YâÏì»â!ƒ\\…Ô|8\\÷aQxç‹ÖÜì¯jïh›°Jh	<y6wßc!&aˆ/~½	Ğüó.oş’P¸®áÿgÚ7ø°r¼õ<•TÄ¡bÁŒ¸únãíÏx	ŞÉ2cI‘+>3¥/èw#¸O‚O\'ÆÂ]ŞÔ› yxV…«·†\Zßç\nÜÿ£0ró26z^ x\Zù^™[ÂZÇG¼\"d¹ŸˆßÜH0»æLâ1“àßx;‚‚÷‡¯ïkƒ[“á\"ó†µ)ä?_1¶Í»ñ.A´g#Ü8X×õÄRâ!0\'Ï.0¤ÌÀƒm¼‘ÿŒ\0êïŠ)÷%k¨ äòaî•=zÛÀÊx&æ\ZïU;¤î¹Ù¤Å/ldB,\nÆï\'a,×ùuhCí0°ë†hÅ&4×¾ò¾À7†õ‚©*’İD^?n?ó$Ç8Rò\'±(.>¦ñ,3akæ~|œÕ°É;~øaA†à‰`!hKÌaƒ½ØWÛà7ü0ÌCÊ_ pWõ@Yò…O%c)ïÚa0¥´…cb5³cày­ğÍZ	Û•½Ü\0{^¯çÃa¨pFiNX‡J\r–´sóŞ±Nü±Æ\rßf=Ñ5ea¿7\"‘	3¸\ZÁÿ«X„Ó‚Ôw`±ËkO\'ÂaÔ>E\\ê™í\0MX©ù<‚;x¶.!Á8ˆŞÄÀÄ‰Æç\'”{ú¬Äbà’f`¯¸t–4Â+“JöUö»®\"åÙ¼\ZN63À¡ÏñÍM7ƒÂs»\\‡EŒ¸¾„3gã×ı`lÏ0R `ÇºeØ&¯0¸Şj”±€U±Íï‹‡€àäàü­Ä<yxn‹ ‘—àQäÎ\"ˆñEÀô™D°M¸3Š¢½Ğq|§Û•0ˆécs±Köóğ‡¿îDÎ«¨\ZXxÌOâêõ¸Ñ\0w\"àà®1ì\"Âiüáú€ñ¾@ $\"\'ôù!ä]Ş2{]B°¡yO6–e RG÷/´t¾aOaÁ¬$rÚm`‚ceé…Íëƒ¤7^‡gá xb’V\"I J¼œ•%AmQ\"(¨|Bçï+Ö”°¹ïĞà=¿·Mv¾WàzI”¤ò/–ğÜôÈa‚ÆxÌ÷àñÜÚæ–¡Ç‘µ*D–šñ>(a¨Üşvc_Ã{Kf¿¢á…A-ø¡-³¼\nw\r=ƒÿˆ°¤xœ÷Ø£¿DiÈ¤a/w\r	Î¶º:7à·D¦°€G+\\ıÎÃO$\\¾5±m¸åÒ Ü€-4‡›_ïÏé#5Á©L”wğ\r|\r‡Ädùÿ7Zïş`n«~I`£x8$øWXZü¾w¶Õn4XZ0¶¾\03$/‚>\Z:’áO~†À[s|Ğ|ó%bL¡L¶¨_ÓG/{öD4- ˜DĞ¹„¥Œ»xt}¹Ê\0«y¾‡½Ç‡Às{~>wå#ÈÃ{Ö‰\0ĞÇ¿?‚,‡—(>\\Òø¡Hˆ«ìÄñ»a#¼	jBjfbÅÍJ¥v_OŸ Ø»lü«néĞ]p–÷æ:¨[Â×Û({gnqP(óÍß~îüä-G¨ëŒµ5Èß¹h#hj‚ÖM@ÂÏ$\0òTE¾Æ==}\\l9à<¸;Á’áA-!Û¸Y’ˆÇMƒ~ùŠúğâP˜úN^è;”\ZR|œs—.>=à²»¢dJòÑ:C‚¼f¬Yç>š>l›¸1€>¿Pá¢‡?ŠİtÄ¢¡‡+Áà¸X×€Â—à›ÀÑ&Iá¸>ğf4Éº4óÜü)nõ;‚êX$·XjèØ)\\Å¥GÈDb³×x7bjãG·\nÕÄc’Ê  éV‡¿JK@µ1ÿ\rUvoöòØ ‚$¤£\0°­ŠhÚ›Ø@—Í;b]¸ô ş#Õ_ŒƒõyXÔù±B¶AĞEz–ï0íÔvI{!¶¶½Â1n°5#qfÏàã@Â¸YFC‡_5°ÄxÂ4Xh»‡ùsûĞÂ†Z¼ó˜+@†ÎŸ¼Á|€GŒ†½³ß‚j¦¤§,™Í_°ÔÑP¨?Ú\';F8m=£ Ë¨Hü™ÀÛ\rÙ°?$\Z1DèT*\0€õÙ<%2¤_æEĞô;N`¿PñÈ@>¢54İTYÂp·™Cª‰Ü¯I[m™!4¤‘Jj¥ğˆ>€şò-¼ËË@(ÛdŞ‡÷Zw„f)B•©M¤…Ïœ\rèÄíNøK -`q˜nók\røÆ€¡d-øçê ´¤Ÿ\rçh4/\"ØCa±\Z„0UcÊ¥¥?ñ­ ƒ‹Á@µÕ×TÎ«b…psûƒú\ZIU_ƒJÂh3L\Z]Äªg8‰ò›wÃ_+s?<$\\EtğQäûüxñ„Ö‚-áœˆŒ]÷PQ«P\"h1Œ¶Æ‚‰áFKåmo\\ü°ëR©¸åáVÄf°FÏê5ŒEŠ.î‡ƒºÎP#”8k)s…¯FàA¿ÈóòµÏÇ8ÈöPë¸ß²ç$õ~2Á&Ó‘làî6ÓöÅSV|Ë xƒû)ŒD–\"ÕÙ@*Œ{EùrQn+bæı,(B˜‰(òÌròÀå\r§!r„¯L@Zƒ9dü]oI–Z  ÜLğ9Âr1Í\0Á`‡¾Kâ:¸-wàFÜÀEüˆØ)ĞÌ­6“A_8†ÖŸ6:Z	ŸwŞ[½ÃŠ^¦r6«À&†)ša+éÓ÷ò‰ò€ªö‰ÑÃFyÆ¨P”Ğ8Ã0m?ØµzïíÜäØ\"X² 2¼~œ¥ÂHN¼f¸õ„§ÈúÄ„‰yc(Èõ·°;ôçxò#1ˆ¸o¦‘¡æ`][DÈÜ\r…eåñ„Ù¾–½İ†#Œ€ÍÅ©oÎğ?ÏÒ¹/ˆ\räš™n}cõÚ{5ÃÀ»¾›5Ä‹•0Ì¯£²âÂ” VuÜJÏÂÃ•d°.¶	Ê—1g€¯…Ö$ô·üÂËîMTÜÆ¼ ¥x{ÀîsG°H1‚‹½Ó|&~[°ÀÌ#°/È	‚‰2ÀF Mvº¯ ßR‚-€Îj£Ñ@wŒÀFàª˜õCîPÔ³›hgùœdÂ¶Bİæí/Â´«£4Iœ‘œÍ¨h5a›÷Å?BŞg2©©¡£I;¬Äd$ôP™±lHÂÓ°Ğ/CœpXBÕXZ‘ªÂöAÂ;ÁûY^Ås€†™³ø÷‚ÊM‡¯a§ÖÀ¦aÖè\"ØtQœ`˜Ø5—BjÇXĞ¾wÜÊìa\";Cä¦\'æÃ]D$8¼eùQÖA\07˜±çG]c9€­ç®Ä\r©Bƒ‡!‡“;Aüğ\09ÕB=¨hÍ]¼)ÇÎ _>È%Ğú¶›Á]#wƒ]}„sBÿ¼nï‹ÒƒŒ9Ív¼E0·‹Œù~€SléÌ^PE·3UŠ; mÑóßëQc‰\"* I¸E…?&ˆ\'åMÄ2‰:h¦‰0ÂãñÉ—_’${5#vÅôíuRoè\Zs\rÖ$¡¢£|Ì3¦“íç´ãyŞ\0‚àDÓ£\"x0Şß§±õq¯âiH\'¤rs!cû‹Ø1«+¨¡še!`8G£‰°à(Kxû¢f1>¿.úï‡9æó\0c}ïÇş¼­!ıoI¼?i‰‰n^¾×¯ì±€bàï!èO}_ş Â×–¥À\n3¡Bqs˜=äƒ¿÷f31çS»#¶ğ|Ö‚{€ëÜPr¤(ÚaDnö5Ï>›/\"ä\"¸°ÑsÜ\r?b{§xcß¨u³ü¯Šöb9ˆÍßå•ã@\n^óÙõGÖ‘ÒÓ¼ÀÓ:‡	\rän±áå¯ª‹1êaİzà\rAÂfGˆÆ3ƒnò¦ËŒäï6ñ¾l\n€èÒµ>.E©š‹†x¤@8$LeÏP1wWìÊ…Èƒ¤ã]’40€ƒÕìÆmæ8¹!‡Ğ¤«mÈ£<<³¡`Ş—Ç†PXóM8Ê&ZX.8A®\r$AáØo..¯ñ0`\nƒº‡…¬%…ËTç<çH5ŞŠ¼­IbRÅpÖs¶óSñ\r•Õ±d€à—e4Á­ º„Wãl™‡êÄ>“”f·ÁÔ§±dâXğlTÌı1ÅÃwuaèfuïÆ†\\ 9oˆQ=E,\nÄùï Rsd$ßˆÒ‹D¨U	`ÁÁRêÏ5·I2¤\r»`vlóÊ¡Áñã‘>(E{\ZÌ=|¡7^‡@ÕáOn¨öÌ—YøLğ-Çæ O\0×Äya,Ûì`¥Ï9†A4Pyİæà»fÚÏ²—eV0¹µêEÂÁí\"qŸõ7Ïí;?Kó>qİ²|#üñ+Ïø¯=OnŞl*€Ã‚\"zìfã\rIÈ³±,Ğt,[D|Â1Ã0x8Ân—¯ô—P\"9jwà†p7LÁ#¦1	ºô™–?¹bA#H®Š±ƒpøëÙAÖ)Xp=íI³öÎòw|±âÊµ¼ßÃ	†ÑVHŠaÿ,9¤!?F€N\\îƒ¼—ƒÜ¯Ç˜f‰ŞÇ2õ`*ûÁÆÚI|Õ[v€Äà£0ìFõ;‚÷ ç!šlÖtÁòáô_î^ï}[†¾éœ5ƒEaï7Ñpôá`„ì¦€úKĞÏş˜ìç	e	\nÓ+	G.×‰N9õˆqÖ“­¼Rõ<^Äb\'OÑ°½|«/·Å&	ó%.\0l÷[ìã`#ê\0\r»yêi?Ï•îéã´ee\r(ñsá§J	â„S™°\"•°.£ytt~»V(7ˆê~Œ¤!Êºò#ğz–Q~h[ƒu‘‹Ü\"˜UfÈÏí}¥ovşs‚úñ›÷ÕµrŒ‰5X^¬¼¢Ì‘BÛ£î†ST\râ`u€áj	Ğ0_ìqu	$/6„×Ş¸\n€ĞŒ–dAL!i{7bÉx\nòş¬†åawùX\nE€)ÁP__c³`íwÍîG°†/L%‚§…8`š—õ¨¢U Q“¸sš·\'¦éß¿Ó€©lóé6uÛ¬c€3B‘ §3~?ß.EÒoO×jñ•³\"~Š0Ş´<‚öÀCjÑ<~5Ù‡ÃÍ>´µ+I+ˆõ˜§Çl8Äâ†‘\0ÆL=ñ±\Z®>húz¸İnš%x\ZfiïÅ›â$ÖÆmÒÂvÄón“_è¹\"R&_¼#ñÎ„zÉ|s.¼Ë;QÙK°ëF$öúNó3U`ãq!ÍŞE–UNÓ•û–‚ë´·Üğ¬ª\"®ÍaYŠ*÷FUÇr?‘°–?@@‰qx¨V „µ4ß#©Úá&š0.ËÈ÷OßYNã6ızº~ÒVfœäí¼÷ûÚcCÃ$î›d¾¿ŞéI1?Í¢Ÿ#5dºZ\nÜ`yXiòÆ†¤üÑ›Ü¿-â\ZF€ÑNÏ4\n¬}„s€YšI£&1ÉÃ2L7\'^5uÄCvm,âxÄ¹Ü˜lq2ß_:ñ}¾\nÍ!bär£C«;fÒ‘ÂøêÍí]yñqxó	‡ƒvˆz0¯Â{l½Ï]\Zà‹¥C_ ˆuÙ@·Â…0±†$’M¼écÁˆ¦AJFq…z¶I»t®ú{Jc¡TD7£Õ=c¢!»„K¤TÑ°Gr`?Ø–´Ñü=èçP0Sw»‰`·¦+¾KGD¸!râšôÁ`@ÆÃd4rsÃìô3ãsëHÚ}’5fP\n¦xÌØ‹©§VÍX(P”²ì€;ù[…Éğyòô¦—‡ï„<µ”q’+¡Ì*y\Zj¶ÉÓ1µ°ƒÁzuBº\0Ò9×5zxİHü¦‡…wİ+Ò-ı$ÎFTÛ(Ìäi?æùB÷<EıyX=JàyW§uÄqeû¹5½R1ß7%Â™èèÑ‹aŒuì|âÁ;·Á£Ø<D·‹FFâÁ0=ÔußfgÃJ\rC‘âÓRfm@İ—#Ïˆƒt:Ü‰Ğ¨ÛDo2^{ÅÕR“ƒ?­ˆb‹ĞºÅf\\ù²1‚õc¬i±J-z:\0f½×R,iù\"t–˜y\nğ8a:À¬,\0¦fÉïå;ñOöĞöU÷$’±I´àTã¤©Ìb²°¦|`«8xøQ‚š™\"râ*õâ³\r¦›OÍ3·ôí¤ÖÖ(Aóe%™pô—0ĞQ¼@m>k ¤hc6	Ş8Y‰yËê£ÙlóÇP.œáå6ÍşâİÃ\nˆXÄØ’®äqqúä½¹éj™¤\"­@¾¾s´İ6ñ€©·)ï“5™fÙ=Ül .á\nHœo²²\0Ô­_±hX\r6ni]*¾í\"Ä„BtØg`AMw?æ7€k²–M8HPß&ãÂÀÌWù„ÙjC¿ÀèˆäbC×İÔîÖñÃ<1èóµk@t¹Ó{{Š\ró¨Ü\\ÙãîŸ€˜ùğ`±@N_ÏÉ¥nMìã³}bá‚¨zƒ·!òàŠ@¨–!1V¯ÜÏ@5×³~áf™²ã¾“+ò€„xôæ®ñµ¯à7àD(9W¨(Œ	‡¾uÌ‘-æAˆYMÇ™‘ÒVÅáÌÉ¸µM]ô×ÌP–xˆE°RÕ’‘u¶PÒÜ,ñİ0(Šu™ÿk‚½²I¹Æ¡\'$¦©«E­ŒÔÊ¼M.A§:X¾X^IdÎ\0CO”€vÁC°ù?…o³\'°\0\0`m?}YC¶TÛ$\"ÆråŸ.£fépªŠ‚œ*z”²%˜À´`\0¶ˆ{‚;(íÁ\"ö›˜pÊç	Ê¸;Æ‹­2}\0CĞ!ĞJÒn¢˜õ@nù×v÷pîõ‡AXÚ=ƒLÄ%Ö Çûj­j`6„Ş\Z»nf½¨Àk	S„b(ÁrÛœ6°¸’zXQú÷ªâ±¶÷}üÍ,OğÛ%ì#†ˆ¶_›°ª–[÷àa\rd«´@@ÂÚCHÂ¼€v«»:Õ\nã.Ä¬\'Ïe:¼@³z.ÉXÖÌ\"~YK~:i9(1]¼#ê­^QÖ†B0ÇÌÓ9Lƒ,ë¨d’løg%/yNXï6n#tâ¹UŞègö%?AZ`ÆÍl§É,«M¤ù‚üi‹·¥q`\\\\ôÒÂwtí‹îtj•–ÎYˆÜ¦z±¨£aÇ¦’›ÄÔê5PtÇ¾§ÜóÊß‚E)ö`¸æÍS~K‹FnÔN8Ÿ¶ßĞWÜ{bÖ¬Ömc.UŸzL¦\\thš°sÛÕš»üÉ[@67«ĞUÍ\"|HAKI†1**»`\"ÚM}¢Ìá$fêzŞ®³?\rS±bĞÚâŒÄØWã%†Ã.je¸ffËÒ+vvW7$Ì30¢)Öj²Öî\n¬{¬VZ?[«$Ÿİ§Î‹ÍöcÏèÃ5‘¢/€ˆ\rÃÃ›Ù‡ÇŒP´šë1;XîøI€WƒÕÌŸ•&ÜÔ³$Û¦…n€ íı(SáAæVÿPP¨`ù»ç¼,­Ï\r«½­7>¥ÍÃ’•±»\'\\YäùXÃ%Ğìí\"\0áI±çCqÂ½QËjŸÈÛtl½êÉI¬İïÌ°¨ø™üú“%Ö\nc-XµÚF¹ËÓ`Wßióÿs¾\Z¼İŒ€!<TDô¿?Ú’¥Å™ò²İ¼âKàeÈh€ºŒÍôguƒ&\nno-€Õ1ì*Ÿ\rGZ\Z\r,Õ\'ä#Bm¸­Hâç-1Ùãòár>Q’øÎ©·†ì!LË+ò\0d$ıÏ`v_yõ‹˜J\\Ùß\n?VªcAXA³\r\0)dIíö²…İZ©ª–8$+Äª\\î^+šßµ!Ó\0m7F¡Ú<Ó‹+ü5ÆdÏ}ê¶p›	Ó<½F~7}ĞÆï÷ò ¢‡@õX‡~á³€`•¹\"x`\\ó™ı!xF¼‘ÖWLØibW€‹SéÄ„4Mp6X–U ±jTÛÒÏÚáéÅ“?t1¶[!öV?|j ƒIàùsAÕL7¹‘œì^YYƒ«(§-æEG¿æqÊDì°ïìYÎùÃœ%±¦x6;~ÀÎÂ”Ç³·“Ø†— Í]ë‹y\'Ä:Í8|[~²›X	Ü=\\ˆUã2´N!+¡XU`ÆÜ©e¬¼ÁŞj@\"k·çTÑ”$²İ³ã{]ãô~Z¡ùÉz©óvÖúBaB»`„]à<Z¿}{bè‚˜û0Ù\ZúõY´…{–Y¹ï¾Lg=Öqœ?zôÌË6=í1ì¯,~Ü­¼ı˜½eOCÇ-ë0é!Ìeoi‹où‡)\"ÄŞh!åj,åq»ÌíŒ†ğ©Áº7wØ?Zâµ€ÎÊ(Ö]ÍX€™ƒ\'7\0>wÀìÎİÄ\'şY›\nL#7\'¾ı\rV%JÅ“ù®˜ü´Í\"€‘„ä}Êµêh><ÚóZÀïqG/6^À\'1#à\Z½{W¶€©sê%†)k›ùåŞ.×á÷ ªc{*+0Øİ@‹c/Ë?e–òX\r6Ò0¸ÚZÑjøRV¾Ø?$œb[@’Ezİ¸‡Åø~Å¼‰@%(=#ì³˜a·fQt¸¸=°Ñ”¯†R=}<–YMgÓŒ øan\r¬ÜœV·?Ê)5o„´LæµÜóCøe­œ<	¾(ƒÕ€ŒØ”ğÂ!¦İ8\'¦Ø†ÿX6„½aìÅ2{¥na=ÌJg%M<ìhßŸ{Ã·å]ÀÂ0¶w\"mİ¿’-Ä<K‚£|&?fµˆßÓjcÌ= €ç{áì!€›ÆÚ¿yA1ˆ6R `İ<‘e-bÖŠîúÀÒcHìã»	İ–\0/OeİZÙ« ¼yfh2²STÖ}çèù¦\r‰7$Œ\0ÉŠ«ôËÉc\"¤­ÓXÖpÏp¡>YêÇsßMd‰)7ÂRàa°«„X˜L\ZK\'Ò…_ºş	ò%	 §@Âe¡n¹Ïœ<&€6dîW\ri–ovÏR‰&/#|BMCÔ¾ø6Ø)æôôïbN²nŞ@PĞËAµğf¤±«Àş‚ÙÛ{Ş³¡“`c‹VlXû]Ä©ÛîıÊKğ#Âb¦QÔ¼ïDã!VÚêõ ò7Ae?x\"u®Ïã0¶®{0d¡ş‹Ù´aM(PŒb_Ÿ.f¶›ğš=6Å¾f87Uˆjí¢Å¥7MÜ3ò?\Z‚†êÜFbà–göĞ\rY¬ø´ñ¨\rÔ½`*çÀ`\nÄa~N¹èî¸¹Ğ>bÌ=n	Û`	C.‚pu¨c&Š|•÷ñÔç1İjç\rÄæ”KçÃŒ5NÅŞWÊ\'İÄs£„¶H\0Í±Ñæº_Ííıà&spà;ù¬¿\'PuÛ†\ZJ×¸·Ì¥± ÃRïñbŸy{OíZÏ{›Í³¨×Îö~íãÓ2¹´å) …A\Z›°ş\r;ÂnM]G÷œ?1DCllH@á€KDĞ~lŠézÄb&\n]¶¬\'²·@îŸ~ÄÜs>Í9`yÜ0ıòb •…¹o)_C\rMìA_Ã1Šijv=×¼RülhMš¢İhÆ&“ø&—FáÀÚwf[YQI›§‡¶ãÁ‰ŞhÂ`Z{]Ë³c<øw ·us“¾ÿ9&=çé˜hz­ê\"J±µæ\ZñÏi#<½m³~0ö\ZfäAŞ‹§l¹Œ÷¹dƒÍæN/OÑàVºã_Ü	:-3|_k†Œ©üúÌeò¦JÃ²Û6\ZPhÍÍjÓ\ZOÛdÑÌsİû©“şuÜéıÂe:¹ˆïj>°—Ê‹µ!ÊÁ”`IŠe•ì9‰@öÆ[¶1=¥+@!ÂÙ2jÏb<ÿA±#>14x@]²k~â[qC‹W¢ˆvNğ*Œõ|ï—ß=O 2ÿÛ}[ú3­WòŒy7¬+V´s„Ïm^Ö}6òÂ(­aÂ«ÑXè[\"ã÷Á3@ÇŠr\rCà>{,^ë‚›µasß£lt»Âk†×öB|®1€ƒZ_Ü§¢»âW˜ØÖf•—öšµÕ5Š/à>¥^)ÅFl5ös6<H—›õƒÙ0®bé_²ó8SP>Y~ŞA7Ì0ÌKt²ÃÆ9wX§ßğ3Â[~Z¨jßºwË[uue¦ Ä#³²í3öÅ!‡Óé‘Z=‚¥­c‰Ş;ÁS½uä¤E}–£bí)ÁØş”<îwUC€­ùFzíYÁgSÿX§¿m³‘®Î_—á—{¾#0yì½&kÜğ,Âø2ÂB^„ß¯ÜoÙ\\Pq¾ó¤ƒ	Â„äÑkiÕ@=}êhğº’GDqƒ¾GÅ§Æš+Ö–ÇçÊ,RF…ÓKÈ¶¢¥÷X“4¿çµÊÄT’]blšŒõp®XzU™eÕvB¢1(½š3=²Úˆ›ó³§™ıƒY#»àˆ‡Û¨Bì„ë8Û‘ÊÀäñvŸã¯|ƒ‚¡]0ÆÛÊ‘~%ù[àñ‡…¨6óeeBCÿóı‚Å­û\"dDÂ-ñ”;KXjD‹ Msí§D…Uaşv“··„ ¢e1X8ÿ šx2?Yş«Í !©¨ì,aäÄv.Ÿ…¦0M¹Áiá§}®B@àVºI’5£ı#¦ßeÃ­Ú0wY…Š3,Ï^ì4AìÁ•aó¸A|˜µ{ßM²jŒ°,ûW §uX…{Yqf]şÄ\'»r!½€àY1®øÂÙc­¥y@xèÉI\'¡_·‡ìÑ¡*ÉNqbiløR@5ìyÑƒúÊD¡ñ@Dˆ;ÁÖª ãæÒo%¤n´)¹×}±Ÿ–rQk\rQëŠ ğËo†Ôà7\n]TuŒVy4–ê1•¡ƒLø|ÜÚÕ‡>l\ZçxLæÀ\0y×êi™ÉÍÖn+Ô)ÙU¦º…XÙ°‹ğ\0b$òğ4å\0±/PgÂ¿ö,¶ışÂœøBc‚Ôx„¶”Ë¸à05°:€\'¦$mRÀ\rÑ8¬x‡%•SÀ†ÆÀ…\n¶OÇÑ‘ëÈ Ì8]–‘â0ğL¢×²à]kíÊ•p\Z‹å-ÃÜk·¯Èªc/ ¢A±yVC;²GàT§`7è‡‘›¦§mEi\ZåÂ1•²m‘ÎûWTãÀÂküs6ÑjPL0§yèfY„B]Ø!\" ÁÊíL³Ñ)4ÒÃ&àxW_x‚Ñ³\\\'PG<=œ‚cş‚\nÃ‹Aû_ŠóqAD@D—gĞˆx‚Èè­_nşòàsêîdgò8é¡ûÁ)„Ïòù§tiv’+h\'¥%Ê\ru¦MĞÜÅºc¢­µí¯e²ğ<Èìb›úkNÙC»[Ïy?İØŠƒY×kq‘iñ$õÏéÜ4«P‹“fJµÄçt«(Ï5l¾nÚa*ÊkAœãšbk±€¶ånVÈ°áçhu+h¢-5ˆ¼Mç8ŒiIàšvDä²2ŠuXØª2Ú¤§LæŠÓR&îkÍÕ¦Ï,çy‰LvA¢{€ŒûrDSR™`˜ÖØ£ÛãgŞÓ“ÚÒyœùğûãîË^ñÏ.b87</| ÅnËmt\"Ç\'py$œÛÁlíã5uj8×ã ì&á<ööü¹†-~Ôº¥bjÃÄÔ=~gÅF£ŞÃBùJÕ“¾Ù°}¸*ô³ƒ\Z×g¸o-AEöš(ÃAYp¾C°9³7tŸï[QÜÃ£Xï¶N]IX¬ıEh|³\rŸç\rs~±ğò(ØĞù|íäÃììí§™à‹ò\Z±1™y”@›CÏ§˜Í^÷K9¹N®hÌSÁİ¬ûœ¢İuË5<¶èğÃCÃ«ÌÙ’İl´—ËŒkîvˆ@à,Ö&L‚¦f°Íä%†Á°¿Ë˜Ş‡4ƒ»wğ‚†M÷\"øÏç±‘ğ/²™ÜZ“Iâ°ª›¨P.h7PmŸºY­`Ù«Ç:vœ1–Ÿ±84cT5D[ëàZá¯8+ñìëé2¡•,¸¿î£†Mğ$x¤&ğ7<Äü)šÌBj_mÒf?qydw~=ÀdVCx*X’=ó,9‚ÇÊé9x] Ü}ˆlmµ\'!İák“˜·Av4+!NÜL×¾§…nÑÂ!½IÚ`—ªµíÿ’“QeßvÔŞdeçys‹i¼ı–lJÃÉKìaé[aX~Ğ¹š\0r˜ÀÂ¤Ê{šJ|ÚR	u¥—ª£ÏrÅ).³!<…Š¥6¬«››!€ÈÆIÏhMÏ1ÔK(åmKVá–\"”G5d^m;¦ŠÎ²7rGo¾å÷É£WÛû<´Eb+š9	Ë#¬áÊlç\"b˜2‡qŞÒmŒ¿‡ß1ĞeO}ëG„+Zùe\ro:´fÚÕ$)-_,GŸú{ÔkáÄªå–[¦Ÿ,?Kı	CÆ\'ÿ°¯A/²+ÿµ¦æX$¨Ú!ı,K¯X…l=´Ğ:{²ò×éK|šÇwÑrûşîw<²BL=«dÎ|Úh‘9ôìÁ%ÔlIdôõ\\ã±“ï†çÀ °~”¦­â1O£¾ĞÇRØdÒ,§auXÇú²Jò²Ñ6{$¶\rƒªböûõhU‘‡y¾~GbFÌëöB—à ÿ±¦;JŸé2\"Ï+€6[!±›BĞ€\\°¯ÓĞ‰eÄêlY“M®-¾ïwµbÕ¢…7¢#d\"¤»5Ï¡*R\\jm±Ì ¦dF\"Á%P¾m‰ÿI©Ô«A[ú9×5E\\A	Â‡%É6Ô5\Z²‹%BZŠ#Ÿ3ÆŸ>D\\C[L›¦`aÃí	æT \';Ìf©•Ê,}AM‘Ì{®éd‹à€Cx–GŸá+]¿Ã_@÷¤º‹ÍŸ¬&^LàÑ>àhØOp\r`şó9(N7/°R½ì‰gŠÒmcÕiëZ’3ÈéäûPÓóùeZ?û€ìäyßò&uvA.äìØDcÕnEæ×çÉ·Ââ¥Ø2ƒN„<ônxX„°r\\Nù¹c8ğùËÊf›İŞWVÅ–Bãı#‹â/ç4Ëä	ëŸ…Ÿõ¡™P!‚½}ãC_l«qM[ä#cñëiä%äYÉš‘y\Z÷¢s†p`k×1(¿Y›i‰%ŞO=•©fSÁG‹Vs‹Še\nÙ;`z¤[Æm]Ç©<à—E82ò|Kè}f(ŞNGG\\¿3‹«›2Ûbj‡§’¶Òs}™©óEf¿`òİÓk—Ã¬iš\'6¯æzÏlÆöÖ\"<=‚Å¬ë™şóxtØç*ø„M—ã…B~0E§ >¡#²{\ZñP~#PqùgøÆù~‘Â·“6‚k”-‚°ßtQùÔ(ºN¡fÁmm…gW_+&ƒ­ËÕ&&“y ˆu«(³¶<D}Î™·£7$\rş‘õ;2$%kïÀÍb­bPIb«Óª¨´Êx\\Í\\¯c£,‹H=Ã¿0QhÙ„ç½ Ø)†ƒs;|N“+d{8¬\'{(ÚÙhô3¯ÖuÏó‘ÙÑJiÌhú¿‰İï00Ãºííœ`»õ=1¾VgBÁêkÃbãBlQ´ØÃLƒJîZeGv `,¶|Ï¾»ÈM&«+0pİÔã^V¼<GG Y\nk¡’m<0c‚¬7Ÿ51vçTOe•5·ØÛ–IâTÑê¾PZÆvUÑø+‰£¼Zôe#9B	¢èÎ*%ğV³½§O\' Øh«}ïöÀ<¼\"ñ,â•MÏñ!ŞÙ¢ßƒÇR(‚÷#Â°¦&‘)fœ­¸µ#^¨\"ºcø<QgYK\r³œ‰w…¾ĞãÑy º’•&ŸôsÖŸ“X?·­¬²•¾¥e+Ü¦˜K´y	^\\à·¼›œ\Z‘âùAö°.«ï ˆ÷á»¶œ!ˆG:ä¥ñ$u;şé¶`Òæ§Ç	¼¦8•Ï{„ŞOG ¬Q\\·ó~)8ˆåùõ0Çœ;ÕŠX$Ìæå†iˆ¬víVâò¼š«²;hoW»¹ˆ®vÈ|ïTŸ/‡é8ÖIÜTÊ6B\n:ŸR°ø¨ì$³‹Ù­ç¶X|#Û’V0ÊTğ\\ÑØı*$Nô(‰sÆ—8AÜ÷¾¬uì6pZ‘`çúkFØ(‚Ò1g¶£¯­ÕŠZ`%ÙK{qO6ûò”E%WutJ°0UJLz\"³³OP;¡x2ŸÃ¶ñÿJ&6½+æBFımÓ„bcD<)—p*ã¹ø£¬ûˆ+?YñRÏ`©ğ|Y¿OT†Yt»3âÀ\rŒÅÇsô‘Íp L³„…gÕ³‡\Z¦]î7ÊHì!½n+œdıÄsv–}vÎÑrPŒ¼w‚aUn”ÌÉ2¶@¥§éÙ‘GİÎÂ‹à¶µ8úÎŠ×¾‘–\'>¹öB6JtT×P„­{¦pfûä±Ç{Š*íç:“ƒRqG ¾¨ğ,[éù!k–ã‡Pa§a„Ç¹ƒ/¾×Â££\rÖH˜ÈtØÔ\'µe,5l\r:Ç„È¢¶ª¤iæÙâË4‡PN8€QÀy=ír¤ŠµşÄ*‹ïØmûªõ$ÓŠEc(]‹§Y;ÇÕ\0šáZ.+~\Z>u‹I”ìiC´Õm8­rŸ5Ü¨^¸\nXó‚\0¨ogcÁæ9ïŸÊ3%1yÿ9œà‚O\"šLbq‚µ5ÊÈ9âˆ^“j:vÇ«hE1æ©:haÆwòÕaDq_Ü0´À5¡İºõ[:Õaß¯XñT/\"ˆ¨£w¿äØ x†£U7rë³ìÇ‘%V7éòYÌ»ƒ×^Ñ<İfKH½/:\n‚FÔÃ,Ó´%š&1~‡âl!Ñ7—ƒ®y¯ëÌGû3s`i0ÛòËm+Ë‰›ÏMÚ˜©ï=‘ıñ´€,¡…jÛˆæl³VÓã¡×“‡#Ÿ¬õ?9d»qğ?$lÆ:¥G½	A&VÏ€äŒ\r¡w•ƒO1¼?A¡˜?tò“³B-²;ó…ßÓš›Û{ôf´zW‹§ÅîÒÅòjÈ“ÔÅ]Qí-#ç·…@ùŒ¾àì{\"‰B…¿\0v£	í¤$d{…õL¦Äòbb‹¦àài•:ƒÀgB†{ğ@À¬ëCX#!UøJ¸Øà[ùİå„ßÈàf‰ó4×Ï@œÓn\n3‚o9mÓÂ©‡•FÃaF±zYE7=lF¸ g¬^l§’l[l¾ĞCUßÏi,&˜M‹yàİ‚³CÕ©MaéˆÑ¶3yüzÑ±-y&ì@­ÇÓğ\0¾ômõ=QË9¦luûÙÍÓ®d­…\0©·j=O61ÊÓ€l¡j°µş±šîTOı=ü±¦&p8‰ãÓLgjjHâöbF<´øq%gÃ½§¡N{	¯Ñ$”µôn7’Ù2¢¯è Òi‡„“Â³:€™İëÁNLpæÑŞ¨gëeãØíx÷çTˆJÙ.§ÚÕt¨Y{O*úu{6$„bD#Òa~ÇŒnÛÖİx‰H=Y“ÇbéÔ@\"·‡è7bĞ9”…Æ°øÉ&¶5ZƒcõätİØ<;¼‚ÔSÌßc\\Èß~ê‚q:³úDw ô|s)XÚ¬ÃL\ZàüX¿ie‘–\r?éƒ8YÉàqÅã°qÚÎ&ù¿·‚49µèœ».‘&TÍœ:„F^˜oyl(#|Ì†ØqÙ«S„!§å´IDà>ÅŠ(ùéÔ­zAfµÁr>a\ZúúÂ\'Ğx\r\n{8­ãVXœ[tñ}ôöõaûùkk¹Oo°ãJq.â> gÛ\ZÊå”c?ÖÂ?XğsXzŠîp¤á´çír¨Á€ıùFrÂk‚I\Zt¶mP”Û:Ï‘­†÷¾§ÒÙÑ	„d´„QhiÖ•»üÜÈmôå?Œ‰ş·¯\'ooc®ıÖø	ÈÉíH¡o¼ï0\r·o¶lK^§ój€‡8,Ğ~‘¿ÃªTiEƒ9Â&ú™¿èÊjéƒÓíä&§ß”rº¾ÀK§ãÙß…¡t*{\n—´îvç¦&B”c3œ8ì´¿é ¯â)á¸Zç\'Ÿ-ƒß<–¿‚#>®ƒóõüÑ±W s´*ŠŸ»#€‘}ì—¿ï@}Êãq>›\n4W>{!À ÷Ru?ÎuÎ×8Gó6ï[›³<MS]ÅÒg\r-ğô8ÃYè°okDßvû¿3<	š7Ïèáh…[sª¸Õw§=ÁÀc± ªä–ûšĞY¬I°¹á<»[\rm¿X>‘!ƒ¯Ç•O·eù–ÈÙ$ğ](ş:I~vÆ\"W<`—ç²íùóhkÔfg`W¢iP@@Sr£Çlh«m£-)P´Ó¸úWØCÿòëÚöiŞ Rl;ÄÆ±^5Ü£\rz‚óhxXdyÁL+º›‘‹ ÉÂğÊ|yrRì¹QÁúXä&TÀN=«GJX¼Ô(úG—öuôÏä‰¯°owşQó„Æv6ÈƒCÏLvxO’m(ÂÁ–å8EQûÀknËöCO×ıĞÜ-2z-Ë±9ú¼Ô‘ô–FŒéƒDÇD#£-¼„Hy‹1WK;<ªb[¯b÷®MÜ+éñ€\0Ö4Ç‘ÿı4CÃÛ‘öDÆWTVi¢•<ËFôë=å6\'Ì)À,9Ó¤Óá±ÓâÚ)òV¬½ä§³ÚÃşÙ|bCİ¼œÚ2—“ ‰¾ŸC¬æÛß/7Ñst+ó7ßáQ]/ÌFÙ×zC?|àby‰Zá7oãtÒ`È\rUMXYle>T³Õ/¢©·Ç¨u¦=‘~ı¤–ë=œø Ô?¾öó™ç §F‰\rÜ£I™7ngÿ2wï€é¢®aÒÈÖH›eŞîĞ´¬ôŸ)¥b—C¤€×\0r9ÁÁø¥œ@Xù™«à[×ò•©Ù:g‰¦í$­²ÎÍ–ĞÑÊÎŞ6¹Ü¿Êÿ=×ÓñpÛcz\0ãşub?É©´8‡C|ŞüË>EËµ\ZË>µ)h¨gœdçàÈT{×Úœód“Sbˆ¿IÕê™ê6»}°^Ş%¬À*˜â@?8;1e\"`ˆóC¯Yq‚ó\0ù‹Mµ³Î¡Wı{.iµ²+Ÿ¶ÿ}z¯a;qŞqo\\&ƒ	}ˆìş¡5ng0Ûû[)?:/³äÖ_âKéˆzÖlgÛx)ÉòMaóòdíe{S¸ºü@Ë¥¬òDZ+!Ö™Ş%\Z8€GˆT‡÷ÊÃ¡[–!­ I¸Û––ä~RólG-§Ö€ïWÇ8\"UÓû&À9;^¡yF“MGØb\ZLÉ°:¶„Y–‡Q{â²âw“m¿ó\rã¶eô»xjÓ…Íƒ¨¼Ök¿¿¿\0Û¼Ïxß	¹²¯?ûßIŞøÕ`;°Ğ‘Ïíz¼ú:\rÆëq{gn&wy>Ùöòßãdÿí+êÂ„u]×ebëE ×¯ÇP\"„vşèôypÌI×ıp¬dvº“™fÔ½iËåŠ÷‚#E‰H§—ö7ˆÈÕ´,ÂiõãSP½RyƒåXÊÉ¾ì\'¦ğ^¿¼&[d;~n„—ãLµyôå {‡T9(¿Io‡ø8$İøé±7‹p	tö5eT°IÈX@İ\"q=—÷d²7{Zo{”³àPN‹2»¥z¾œ=%~f©…jé DİáÅÎDı¬hæhëøÎD¥3ÀóÌ[täçš©›VÄtÏ‘ˆ@ügq…§–¸àşÏõ-ê»Q°Éòl§<‡çub¢\\ekã3÷	F~PÂM¬ûºYDó(öÿÕ×ù»³v´íâ)­ÓÏ›{Ùxè¯6¢ÜeËsÖ×ç™{çÛDu]ÜçsÎÿ$šxRã(¥gVJ§¿7srB·ïMSGIm)İğ#¹XıágÂ$Aqò&ü(šşù øEÜi9RÍSILôƒ@ğ\Z©;ÃÙ¥½ŸJLÛ?	ä07B¶Aß9lÛ¦©&úğõ8\rÈ®æZ‰a?…Õh¢Ü©\ZøÛg™ü‹ÔïQÄ	”Ô[0œ‹çkS=Xò¾üÏ½ªı67<¯Ï Ü­h­^Ş½¨5¯¹\'S9˜Jjà=Îÿ¶/iÁö±Nÿ‘¢DG9nH­sKÂåÇÛÜÅ\ZwÀ|àÌı‡´„2iÀrö™»U­¼¶9¦ä”&´aË’ã§.\'m¡³Ğ–²„Û¬]ª<Ö2±³TjÊZ3¦¨t?¥Ş ßT¸úÁ5w¾`ä9İ,£0ƒ¯Z  ¯¢Ê!½¥„K9áçÇ<¢SBS1İ1%6ıX³l$v´f»\'ˆ8ƒ‡QåÔÚ;æ¬˜öj¡-µq`¬byY‡óIc—ìÂ°ejg0®g²ÓÂÁæP6Á’\'g¥¼½¢\"ıÈvş1ğÛOZ8íãÇ	b ktK\Zœûñ¾,}²g~±¿ğşğ“œû_øŠµŒÎ:Eærl\\İÖï}¹Ø	ï;>øñD?»ÈÖa5ëL¹üDDPW¿úiH¬–EÆ~TµŸÊ5ë¸iKÁO5Hõ£ã,ãàå[,~WåsÛSåÌ¼ˆ–…(¤ëôjœÎU‡\Zğ`ë>ÎËAU;	İ¶‡×Àˆßu´%ivS${‚ŸìæÌÙkt\\/¯µıçÌbf] gÂU5XÇÃ´2)h¥Ë)äv4+R7À¹Ò}U3ÄQ<çĞ°+@ßô@×¡\\Ä/0í¶ÁF÷‰BÉ\Z[kæÎ‰vËáâªÁwl¬ZÂÑ`xŒŞ)ú ¥¯¶w+EFşeŒŒÔJP$Ì‚–Ë¦y°#Ùù‰ô[lºíÔPó·u¨1 ’Ã1zN¸ÎGêfÍ­db#~·€ãK÷z\n!42­\' ÚùsšDŸ:w*Nœ«L·{tş¶ƒ$àír4BY\0İw`}~^ˆs´œîg6E=İm(Õ5#`øÛiÚNúèÎ7`£®mÉØzÈo-\'OF âï–“æ|\nã‰ŞK>¥¶öP±(2…÷+—ÇRVĞøÉqÖ²“£ĞËı!c›ŒÓ_5ÙFóøI=gz³çôÃ¤ñ~\'Ò÷É¨­ı°ÿL&F	Ë@¹sgêú©R¡CÔûo®3¾<u|1¢Î~ŞĞK¥¥¯\'í`˜mq…ÖY!»¶P‰:	i³ÀãÙ.´‘s—å#Â©r»ÑtÉË™x¼Ïñ—\\sÿT\'ª&–^¤€N/‚ñÀ›£\'~–·´GY‘$¶L¶8éW%S=båS;m9|$ë\ndzL¨:[ÿ9Im[·í‡x ªC(V ø!3oü¸×h)P=9ÙÂ/….ØĞãd5 ßäÈbn¶÷ş9°¾LÁ¾²=-÷Ôt;ãÜŠ´ä¨PÇñZJŞëå<A«9b·êÇöå”ª“{ÿ\0|ßH„z©\0¬#ğşBÊ,f ií±®ö;%£ İµP¾óÄr&ñCvÕQÃ¶†Ï\\Oñ\0ÊnÌ[ÎVx®¬©Y]° ›j´lqf1¢w‚n\nwívÿ~–VX™½ºİ‚ÍaÈõM5œCF«‡øË1_?ñ\'BpÎ„ôÊ3Åî°# êÂB¾@µD<zqÚ7•ÏŠ‡Ä|¬ d­7—ixGNcJG¼E‡á>ª	¨0ÈMv{Õ¼ĞòsqªgÏ´WMùS@\0Ô*>`‚ÈÓ^Y¶ì¾´‡>¾fR¬s®ã5§“Y³)9{ºo¯:pªN+„å¡cti³\Z‹jªÇç*;—–‰!~&×‰NH’\0‹#õŞªS«³V´Ìû‹Î4‹~çç‹œ@&¹NÅŞç¬É(kÍÆ’yºøÚfU\0ìÇaØyëX‰î\'‡ÙkîGRÙWs)*›÷“U{NõÀ¦AâL(_8›GbL¸Ë½,ÃŞ\ZñÓ¥ ïé´£\\§íµ‡£íp]o=\rMİ¦S(¿ÊG€ÉÃ1\'§9Òvã±ıöó5Æõ±ÎlóA‘+-+õc}l¡D[‡ÌÂùŠs)ÂçÈÒXí%<*ò¶á|¹Â@gúÿ†:ÛÍcêŠôcx*ª²Ä#y,^·¶°f:TÀ£ˆ—#Á§ãÁìÀşª“5`ïÎpEªÛì\\sXøç@q\Z<·ÒE<MÎXO¯‰¨f³™J~EèîgÈ€ß€}âÃÀ{ö“Œ±Ä¸ìGúÕxÆ¢Ü–û)|cXyÊJ 9Lao‡DÀ¬nH!ŠÅH—ºF“şMÒjÂï¼ûñó‚<#œd‹æb,Z4QØ#œÎ‡ÂXg`K«?ë81îD‘tıi¶ápiËÙ3\0\0„iCCPICC profile\0\0xœ}‘=HÃ@Å_S¥µTì â¡:YqÔ*¡B¨Zu0¹ôš’GÁµààÇbÕÁÅYWWAü\0quqRt‘ÿ—ZÄxpÜw÷wï\0¡QešÕ5hºmfRI1—_C¯¡$–™eÌJR\Z¾ãë¾Ş%x–ÿ¹?G¯Z°‰g˜aÚÄëÄS›¶ÁyŸ8ÆÊ²J|N<jÒ‰¹®xüÆ¹ä²À3cf63G#K¬t0+›\Zñ$q\\ÕtÊr«œ·8kÕ\Zkİ“¿0ZĞ——¸Ns),`D(¨¡‚*lê«ÚOúø]¿D.…\\0rÌc\Zd×ş¿»µŠã^R4	t¿8ÎÇ0ÚšuÇù>vœæ	|®ô¶£L’^okñ# o¸¸nkÊp¹<²)»R¦P,ïgôMy ÿˆ¬z½µöqú\0d©«ô\rppŒ”({ÍçİáÎŞş=Óêï77r¡˜N9\0\0‹iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.4.0-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:iptcExt=\"http://iptc.org/std/Iptc4xmpExt/2008-02-29/\"\n    xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\"\n    xmlns:plus=\"http://ns.useplus.org/ldf/xmp/1.0/\"\n    xmlns:GIMP=\"http://www.gimp.org/xmp/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"\n   xmpMM:DocumentID=\"gimp:docid:gimp:62b9c2c5-63b0-4042-ae44-38deb0c4db21\"\n   xmpMM:InstanceID=\"xmp.iid:764239dc-1631-456c-bf35-7390e91b8b80\"\n   xmpMM:OriginalDocumentID=\"xmp.did:44c3c0f6-69eb-4ed3-901f-baf1f93b67e8\"\n   GIMP:API=\"2.0\"\n   GIMP:Platform=\"Linux\"\n   GIMP:TimeStamp=\"1688899848462183\"\n   GIMP:Version=\"2.10.22\"\n   dc:Format=\"image/png\"\n   tiff:Orientation=\"1\"\n   xmp:CreatorTool=\"GIMP 2.10\">\n   <iptcExt:LocationCreated>\n    <rdf:Bag/>\n   </iptcExt:LocationCreated>\n   <iptcExt:LocationShown>\n    <rdf:Bag/>\n   </iptcExt:LocationShown>\n   <iptcExt:ArtworkOrObject>\n    <rdf:Bag/>\n   </iptcExt:ArtworkOrObject>\n   <iptcExt:RegistryId>\n    <rdf:Bag/>\n   </iptcExt:RegistryId>\n   <xmpMM:History>\n    <rdf:Seq>\n     <rdf:li\n      stEvt:action=\"saved\"\n      stEvt:changed=\"/\"\n      stEvt:instanceID=\"xmp.iid:8ef5fa44-aaa4-4d83-ac73-d9ebc2762956\"\n      stEvt:softwareAgent=\"Gimp 2.10 (Linux)\"\n      stEvt:when=\"+05:30\"/>\n    </rdf:Seq>\n   </xmpMM:History>\n   <plus:ImageSupplier>\n    <rdf:Seq/>\n   </plus:ImageSupplier>\n   <plus:ImageCreator>\n    <rdf:Seq/>\n   </plus:ImageCreator>\n   <plus:CopyrightOwner>\n    <rdf:Seq/>\n   </plus:CopyrightOwner>\n   <plus:Licensor>\n    <rdf:Seq/>\n   </plus:Licensor>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>t)õ\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\0tIMEç	\n20Îƒó\0\0 \0IDATxÚì]gXTIÓ=3ƒbÄˆ	×5¢2PQÑÑÅ°ŠYÁv\r«¢˜s¸&0€k\n3*˜%ç 9g&Ô÷¹ãÑ°î¾Öóğƒ™;}ïíîS]]]uŠED„ò¯\"Baa!Äb1\n\n\nŸŸÜÜ\\äææ\"\'\'yy¹ÈÎÎA^^rss‘——‡B±…EEÉ¤\0\0G\rê5kB½V-Ô­[õêÕCİºu¡¡¡zõê¡~ıúÌçuêÔAíÚµQ«V-¨««ƒÅbı„‰¨ıè‚ïOòóó‘™™‰ÔÔT$&&\"!!qqqˆFtTââbÁb±TTJ”\'%¿gÿ£R‘´´Zãç¶mñóÏ?£uëÖhÑ¢Z´h¦M›¢aÃ†¨S§ÎAûÎ„õcÅşg%//))©ˆEdd$B‚ƒáëë‹ˆğ0°Øl°\0P)U°ªÀ«\n´Um£D™”<“\\.G‡Áçó¡İ¹3Úµk‡Ö­[CSSuëÖı1¸?€ı¿#™™™ˆ‹‹ChH|ıüğüùs|ˆ‰›ÅR\0°ªaù`e¶´¨S§jÕª‡\0Éd‹ÅÈÏÏ¯V{ª©4àåDø©MôìÙ«ğÚÚĞÒÒBƒ\r~ş`ÿwD,#66AAAxùò<Üİ‘““£\0šO‡ 4XJD.—£Yóæhß¾=´Zi¡yóæhÒ¤	\Z6jÄì‹KöÂ5jÔ@\Z5ÀápÀf³Áf³Áb±˜ûÈårÈårÈd2H$H$fï——‡œœdfd 55ÉÉÉˆ‹CXh(RSS‹ÛúÄŠ¨èù4lˆB__]»v…––jÕªõcrü\0ö¿K²²²†—/_âÁƒûğ÷gV³Oğ)är9ºtí\n®í;tÀO?ı„fÍš¡ÑG\0×®]jjßÖ5\"•JQPP€œœddd ))	>|@Dx86›]¦²*y¿«D‡Ë…±ñ\0èëë£cÇĞĞĞø1i~\0ûû5±ƒƒƒğìé3¸¹¹!%%™ê§“œÍfäDhß¾z k×®h×®-š7oF\ZıkV´‚‚dff\"11QQQÀDD„ƒÍfäÄ(4Å>(Vššš>|zõîÎ;ÿ0Ù\0ûû0³CBBğäÉc\\ºt	ii ärÅ‰\\ÚîÜ¥\rû@ à£]»öhŞ¼y™^e™L†ÔÔT4iÒä›¯ÒŸ#ùùùHJJBDD|ß¿‡×S/„û@.—++:M›6Ãè1£ahØÚÚÚ?ÌõÀş¶òáÃ<ş×¯_‡ïûwJ+s‰ÙÉb± “É1ÊÌ={¢K—.hÕªj×®]©ûbäÈß ­­\rtëÖı_Ù_ˆG`` |¼½áì|6[ikRz%\nEømäH uëÖ?&İ`½ÕÙßß·oßÆÅ`±XJfvÉÊÜ¸I>={ö‚¶¶6š6mZ­{&Mœ€Èår¬\\µ\ZãÇÿ×÷ejj*‚ƒƒ?*ÇkÈÎÌ„\\åJÎaÂÄI011ÇƒººúÉøØŸ/éééxşü9.99áÍëWJ°ØëÌGM\r“\'[ OŸb3²aÃ†_äşQQQğ÷÷‡­\r’’qàà!ôéÓç?æ›Æ“\'Opêä	f%WÕÇzúİ0nÜx Q£F?&ç`W]pÿş}ØÛÛ!#=\r2™\\Éd$\"˜4iÒä«=OZZ\Z¶mİŠ€À\0¸¸¸¢fÍšÿ¹>OMMÅû÷ïpçÎÜºySÉ*b±Xàp8hÚT³fÍ‚QÿşhÑ¢ÅÉúØKll,nß¾…û÷ƒÍf+L¬’•£U«Ö˜4y2\r\rÑ¶mÛoC““ƒßFŒÀæ-[şS«¶ª-HTT?~‡óç‘˜¹üÿWñÅ*—Ë±xÉ˜˜ş±ÿlÕ‡7nÀæĞÁN/™ÒŞ¹cŒ5\nzzzÿØÙ«¿¿N<…=ÖÖ•Rç_Ë••…×¯_ÃÙÙÜWòªs8ş\\´¦¦CÑªU«“ù°””Ü¼y{­­•\0]†9~ÂD>]»vı.ÜÜÜ`hhÈì3¥R)d2ãXJII­­-nİ¼ú\Z\ZØ¸qúôé‰D‚çÏA*“AMM\r‡ùc³ÙhĞ \Z6lˆºuë~wÙ\\R©puu…ÓÅ\0 4VD„eVËajjZm‡å`ÿË%\'\'Ø³{òòòTN’9sÇ!CĞ¡C‡üyóòò˜pÏøøxÄÇÇC,#88AAÈÈÈ€“Ó%hhh`Ê”)˜6m\Z\n±fõ*<dƒ&Mš`©¥%<y©D98l6À$vä29¤2zöì…;@K«5š7oMMM¨««£fÍšhÚ´)444Å÷­%<<7nÜÀq{;•Ê¸~}\rX-_ ^½z?€ı¿ 2™Ï=ÃÁ™LÆì¡K\0ıÇ¼y:tÚ´ióÍŸ¯¨¨¹¹¹HKMEBb\"\"\"Â€[7o2@’ËåŒó®©¦&x<>Ú´idffbÁüyxúì9c‚Ÿ:y?µiƒ 33			xôèÛÚÀÆÆšÍšA&“¡°°ÁÁÁˆû˜iööí[äææ0[‘’q‰D‚^½\rÑ¡Chkk£M›6èÜ¹ó7Qtt4ÜÜÜpìè€—8Ùºêè`Á‚…èÕ«s>şØÿA	\r\rÅÉ\'póæ\r@—LÜ™3gá·‘#ñóÏ?SE“œœŒğğp¼zõ\nwnßfò­K¯c\'môèÑÚÚÚ\r\rÅùsgaüohkk£víÚ\ng»çÎÅİ»ğô¹7êÖ­‹‚‚Ì;şù§B€ËÍ›7±fõ*xŞ»Æ«|¶ÂÂB†Ì!++éééHMMÅÍ7àãã\r9Ô8Ô¬YÌ[€éÓ§ÿ#ã\Z…kÎÎ8yò„Â¼àÃ†Ç´iÓÑ±cÇÿ`ÿO-dggãÚµkØk½GaàK\0m6z&Nœmmíoò<éééˆÆû÷ïáî~ş~~`³XH¥1â7L67‡§‡¢c¢qş¼455™ÕúÕ«W¸èè€†\rª<+ïĞ±#8jlÛ¶\ríÛµÃ³gÏ`hØººz\n×äƒˆ ‘HÊ|Nuuu¨««£Q£Føé§Ÿ˜Ï‰«W!‹‘€B±øß¶mÛbñ’%bj\nGG\\»zµ8ƒR©.×¯Ãõº–¯X¿ı†úõëÿ\0ö¿]|||`½g‚ƒƒ”L5ƒ˜3w.ôõõ¿ê3äææ\"66xõò%®_¿†š5kB&“Á°O¬Z½\Z\\.?ıôãmg³YØµs§B.5\0Ô«W„âsvUŠHOOC‡€›«–Y-ÇÎ]» ©©©Â%c”[U¤°°îèmØ\r\Z4@ƒ\rĞ¼yóÊ[(R)’’“¿Š÷ºsçÎØ°a#†\rcÇá…ÏsÈdrF‘ïÙ½.®.°²²ú×†çşÏ;--\rçÏŸÇ‰ãö•:‹æp8¨[·.Ö®[ccã¯’h ‹‘””„ĞĞPx{{ã‚£jÔ¨ñ1.Z~FF˜1c&Ú·o_f„ÚO?µ‡ÍF||¼Â5\r\Z4€\\.GJJJ™«ìêÕ«QXX»cÇœœ6›>}ú((0©T\n€T;77jjj*û&//ĞÑÑ©ŞŞÍÆÌ™3 ÓU£ÌÌÀçó¿hF‹ÅB·nİÀåráéé‰-›7A,C&“A*“!Àß³fÌÀ¬9s1iÒ¤2·!?€ıŠ··76mÚˆ¸ØX…UšÍfcæ¬Ù?~|•V™ªˆD\"ÁÁƒápşX,¤R)¦N†î=z ]»vX±b9ê××€Äb1ŠŠŠTF‘µlÙ >>NDõêÕƒL&C\\\\œÊûËårœ?woß‚fóæxşì\0B÷îİ•ööDÊÔI2™«V­Brr2Ú¶ı-[¶B‹-ĞLSM55‘””‹…víÚU«Øl6.ü€§§êÕ«s‹)022BÇ¿ØqbíÚµ1lØ0tëÖ\rqòä	&ØH*“ÁŞîîŞ½‹uëÖ)õÍ`g’““9l«àSSã€ÇÂÒÒzzz_åŞ)))xóæ\r._¾ïç \"lİ¶ÆÆÆ\n\"Úw€««^¿~„ø8´m×ãÇWÚû5iÒ2™‘J¶c§NˆŠŒTù1118lkƒ….Â¸ñãî±OWfy)…WZ8Ú´iƒÇ\"0À¿øŒ›ÅbR.‹Wz|V(§©©)0~Ü8dd¤ãÈa[Ø;\n¾@€ñã\'@__ÿ‹)Ş-Z`ñ’%èûË/°¶Şƒ@He2Èd2DF„cö¬˜¿àOLœ8ñ?u4öŸvpp0¶oß·o^3«t‰sl‰å2Œ=ú‹\\AAüııq÷î]\\pt\0›Í†@ Äæ-[Ñ½{w´lÙRak°k×.Ü½sıŒúC[[l...Ø»×\Z^^^ØcmÍ\0±~ıúèØ©Ş½}«<®ŞŞŞH$¨Q£†Â÷D™L†	\'–I(	ww¨«««4ÅMMMápî,Z¶j…İ»÷ °°)))HJJÂ7øÙqñ±±±ÈHOÃ½A(âùóçpttÀº5«!“Ë1qÒd˜™™¡S§N_d¬ôõõagg+W.cß_çš6‡â©—V­^ıÍ¨_]è_.r¹œÜÜÜHÀçŸÇ%®NWâêt%ŸGæôşıû/~Ïüü|ºwï>œø<.;–ÆŒM>ÂÃÃ•®/(( Q#G’®HHO<!©TÊ|—MÖ¯\']‘~·k×.âqu(77Wáó£GŸÇ¥ÌÌL¥{I$š1c=}úTås»»»“€Ç#ŸGÆÆı);;[å;nİº•z\ZôPúüÏ?ÿ¤qcÇ*¼Cudıúõ$àóŞA\"‘P`` ÙØØŸÇ%ŸK›7o¦7oŞD\"ùbã÷îİ;š4q\"	ø<f¾ğy\\âó¸tóæM’ËåÿvXĞ¿zÅÎÊÊ‚ÎŸ;«äñ7&NœøE6\nñüùs:x‘‘àòx8uú>|ˆÁh³QğññAûöíÍ\"55¬X¹\Zºuë¦ğ]ıúõ1eêT\\»æWWWŒ3†Y…;uê555ddd(¬¾-[´\0‡ÃAnn®’ãIMM\rÛ¶mÃRKKxyyÇãÃá &:\Z—.]BJJ2úôí9üııÊ?¾Ò{äççÃëÉcL˜0ñ³¢ÎRRRpıš3fÎš­ğüjjjèÒ¥ºté‚N:aù²¥¸|É	×®^PWæææèÙ³×gÇ¾=vçÏŸÃÑ#G “ÉÏùª•+€Ù³gÿ»¹Øş­\Z),,Œ,,Ì•´î/}ûª\\­>GÄb1=~ü˜&LOúº\"š0a<=~ü˜Äb±Âu¿ÿ>—SAAA•ÚÏÊÊ\"W‡ŒúıByyyÌç¯^½\"=‘^½z¥p½——éŠ„äïï_f›ÙÙÙtæÌ22êGBŸ|-^¼ˆîß»G………täğa•Ö@yòáÃ	tíÚµÏêOÒÓQ@@@™×¬Y³†zõ4 èèhrw¿K£F$=]\Z5’¼½½«}ï¢¢\"…şôòò\"CÃŞJÖŞ´iS)\"\"â_»bÿ+íååÅ˜N%ƒ!ğiÅŠ_áï%I¥&tQQ={ú”æÎ™ÃLª(ºDîß»Gúº\"zùòe•Ş\'>>|ışû\\’Éd)001ë+ó®iii”‘‘¡ğùÎ;‰«Ó•òóó+ıœ/_¾T©hª\"‰¤xë2ft™æuXXéŠ„tæÌ%åÚ·oÒÓÑ¦M›Tn{Ê™LFçIW$¤èèhæó¸¸8Z¶l)	Ê¦ù—^$¾•°ÿeÖœœœ0ïß™2‹555XY-ÇæÍ›VeI@@\0&Ošˆ¿şÚ‹ÂÂBÁRx{?ÇÜ¹s0oŞxöì)¶mßK—.£_¿~eÒóèêéA\"•ÂÍÕµÂg(ñ.€‡‡ÔÔÔ0|øgV£F •J\Z¢ğ[\r\r\r’““*öª©¡qãÆJçåi©©\nc•‘˜˜È‰Ğ¬Y³jaHHÂBC0mÚô2¶®9;ƒHAƒ)œÏ÷éÓ®®nX±r®^¹Œ1f£pìØ1$%%UêŞ‰wîÜˆğğáCæóV­ZaëÖmXºl9ÔÔÔşø}®\\¹\\¥Ê)ßƒük€]PP€ƒ`û¶­J¥ \"Æë}øÈQL67¯4«ˆ¿¿?âããñèá#¯²T*ÅË—/ñçÂ…˜÷ÇÈÊÊ†¹…X,\Z4h€ÌÌLÜ»wnnnx÷îR8fƒ\r0}ÆL8;_-3€$,,[·nÅï¿ÏÅ¡C‡påòeìµŞ¡Hccc…këÖ­‹>}ûâÅ‹\nLÅŞ}BddTµûsÂÄ‰èÕÛP¡İŠäõë×àp8ŸÔ‘““úè¥V%III8wî&M6WyäÕ AŒ7·nßÁÌÙspä°-0Æ•+W]î½ÕÕÕ±råJ^¾|©\0VuuuXXXÀÆö°CT*Ã–Í›qèĞ!ˆÿÁ°Ùÿä;--¬¬¬HXj?-àóhòäÉ^åö’’’èÉ“\'ôüùs…ıìRKKÒ	©WOº}û6³W<yÒG/-ôt…¤§+$]‘–,YBÉÉÉ\nm®ˆ\\]]TŞ{¹•éŠ„ÄçqI(à“®–-[J)))*¯ß¿?éŠ„”®`RºººÒÎ;L÷ªJnnn•¼Í‡mmiÌèÑŸ5–999ÔMO·Ì}úÙ³gIO$¤ĞĞĞJµ·bÅr\nø¤+Rß¾}ÈÓÓ“ŠŠŠÊİ\n6”FYæ»‡‡‡+yÍ…|­X±Ba¾gálÜ¸qã÷¬xâââ`eµ^O0«‹šš\ZF\Z…-[¶TÊôşTêÖ­‹6mÚ uëÖHOO‡——æÏûQQQøu	8¡P555øøøà¸½=ø|–X.ÅìÙs`j:…ExÜ½ƒ à`\Z4ˆ1+5j„{÷îÁßÏ#GR2u555áëë±XŒ¢WoCÉab2X¥YÜ¦MÔ®S­[·fˆX,´µµÑ½{wp8œj\"Ô¬Y³J¦¸H$—Çû¬à‘š5kBOOË–ZB³Y3´lÙ’	]MNNÆÒ¥–04ìƒI“&Uj;³{÷nÌ›¿\0sÿaaa8{æ4>Ä|@ç.]TzµÙl6{{CCCC‡UÙn£FĞ¿ddd ,4¤˜–‰ááaxïûß\"É÷îù61¤ä$³³³+W+WVÉÄd‰„š?>İ½{WA‹‡‡‡“®HHË—/§œœ¥³éY³f’®H ä¥½~í\ZééŠ(00På}óòò(##ƒ9/İ¼y3-\\°@éŸ®4ÿ%ñöö&³Q£hàÀ´iÓ&Ú¸q\r8€D>½xñBåo^½zE!!Á”““Cyyytùòe2èÑé·ÂÂB…˜†ë×¯©ttÎš5“®\\¹Rá3Ò‘#GH(à+8Õ†\\eÇİ¯øGñóó£İ»1 æquH(à‘³³óiÿîİ»$\n¨W/z÷îJ“öêÕ+dj:„ËlCOWHç>OLL$‘O¬Ô³Ğ”)Shê”)”””Dÿ+òúõk24ìMº\"!ñ¸:ÄçqÉÜÜ\\¥ÒNKK#ŸG\"¡€x\\âquH_O—Üİİ•®ëodD|—tEBš5kùùù)(È	ãÇ)xÅ+’+W®PÀ\'W‡w¯å×ıPQ!oß¾Ås¦JD‰3cÿC022úl\'Ü©S\'aì††Å‹—”ÉõÛo#1hI™¡™eı®yóæ1b$ìíaêÔ©:ÔªUÖÖÖØ°aŠŠŠğ_–˜˜<şÎÎÎ@ccŒ;999Xµr,,,”Âd 4$,#GB£FÁf³¡£ÓFFı®³±±AFF:._¹ŠŒôtÌ=“&>‡-ºuï‰DîGÆ™ÊŠ™™\Z6lˆ%‹1•Jsrr0~ÜXœ;ï\0@ğÃ¯ÌY©€Çc´c‰&¯êÙ°*‰ŠŠ¢yóş ]‘€„|íÚµë³Úsvv&=]={öLé»/|¨›¾.İ»w¯JÁÿu	§\rÖÓ_{÷RPPšºfõjêcØ»Ìíˆ££#:t¨Ü¶Ÿ>}Júz\"…óï””ºzõ*™›O¦E‹ş$OOÏjøøøŸÇUš›¯_¿şîúù»¢FzõêfLŸÆœ!²Y,¨««ãÔ™³àr¹ŸÕv~~>/^Œ>Ş8fgÌÌL¬Z¹VËW`Â„	UræåççÃQÃâÅ‹““WW7¥“‚‚¬[»2™{¬­¿*»©D\"X,Vú+**BQQQq¦[	]›\r‡ƒš5k¢fÍš¨U«–ÒŸªókŠŸŸ¦N±À2++Lœ¨ÚivíÚ5„…†b™•U™ÇhãÆAí:upîÜy¥°Ó/^`öÌáô™³ĞÕÕ­Ö³úúúbò¤‰ŸX“,œ:]ı6¿†|7¦ø›7oAÍfC£Aœ8qò‹dÜÔ©SÖÖÖÈÎÎfÈåııü°g÷.tèĞ¡ÂœÜ‚‚ØÙÙáÄßÇKl°Xlœ<uZeÖXíÚµ±ÇÚ\Z_¤är9²³³‘””$$$ >.ñññˆ‹Ã‡1Hş˜+]U/yÉ$mÖ¼9~ú©\rZkiAKK­´´Šs±›5CãÆQ¿~ı¯B\nXBDhl< Ìk„B6mÜ€şÆÆ*ÏÀ‘œœûã«Œ%WSSCÉ\n6cú4,]¶£F™•¹Í*Kø|>œ.]ÆŒéÓ››ó±0uêœ={B¡ğ»ÀÓw±bûûùaâÄ	Ìc³ÙhÔ¨1Nœ<ùÙÔ¿yyy`±X*;??óçÏÃ›W¯pãÖmhii•ÙNdd$Æ˜‚D*›ÅBí:u ¥Õ\ZÓ¦OÇ¯¿şúÅ‹Åååå!))	ÑÑÑ		¿¿?^¿z‰ììlàR©j•Ÿ;”%í~ªˆ\Z\Z\ZèÖ­;t¸\\hwê„ŸÛ¶E³fÍªŒò»H$*W)íÚµ/8`õšuèÖ­ã»ˆŠŠÂÌÓ1qÒd,_¾\\éw>|À°¡¦àØ²e+œ¯Âáü9ô0è‰uëÖWëÈ444Ó§OCvV&ärbúì¢Ó%tíÚõ°ÃÂÂ0qüxˆÅŒiÓ aCœ>}æ³@ıäÉ\\¹r^OC»sp¹\\Lš4I‰4663gÎ@›6?ãàÁƒe–¸•J¥puuÁ«W¯Ñ¹sg\Z45kÖÄºuëœœ„µk×ËåV;ë©¨¨ñññ		Á›7oàõä	¢¢\"Áf±@\0ˆä R\r^E@€\"8>…Šr¤ĞvY÷`ş\0È‰Ğ¾}ô64„H$‚¶¶6´´´¾ªŸ››‹­[·ÂÃı¤RC¦Áf³Q¯^=¸ºİPÊÏËËÃ¼yóğîí\\»î‚¶mÛ‚ˆàêê‚6 •–lmW‹™6,,S,,Š£é>Îİ:uêÀñÂE¥Ì¸ÿ)`ÇÅÅaê”)HNNbâ¾kÕR‡ƒãÅj\'ØËårØ;{{;tÕábıúõhÚ´)pÜŞ.®nJQìµŞ‹)S±xñâ*ïoOŸ>…cGÀÆæ0zö¬Ò¾?22¯_¿Æıû÷ğòÅ°Y,¥ºÑªÀUzµn×®~ú©\r455Ñ¨qchhh nİº¨U«ÔÕÕ¡¦¦Æ˜Ğr¹R©………‹ÅÈËË+6ñÓÒœ’ÌpŠ—°¦”¾OYÏSòÌ=zÀ¨¿tuõĞ®]»¯RZ¨¨¨?†§‡âğò…ÔÔÔ°Çz/~ıõW¥ë÷îµ†ÃùóØà úöí«ğİë×¯1}ÚT\0ÀÉS§«Å®Œ±cF+X›­´´pâÄÉ´ÜĞ?ìôôtÌŸ?ş~~¨Y,.\\tª6Q\\.ÇÙ3gpàÀ~´m×\'Obò}SRR0è×0·°ÀÒ¥Ë&ÊâE‹ğäÉcp8lÛ¾¦¦¦U¾···7:wî\\aùÜ¢¢\"„‡‡ãùóç¸yóB‚ƒ™g/=Ÿ‚X.—£g¯^Ğéªƒ¶íÚ¡U«–hÚT\r\Z4@:u ®®şÙ•9JŠ”€½d/	x{?g„*°—N*ÑîÜC‡-®(Ò¡ÃWYÉ###a>y2ô»uÃ¾}û”ŞßÍÕ7nÀüËä<†Õ²e\r\rÁ;1xğj9ÿ&}²•äó°±µıÇÊış#Î³‚‚lŞ´	şş¨ÙìbGTuA\r/¸{¸\0–-³RJâ—ËåÈÎÊVxıû÷ÃËë	œ¯]‡“ÓE¬]³\ZíÚµ«ò>ÉÀÀ ÜïñâÅ¸ººÂûù3•`.Ij€–-[¡ï/¿€Ïç¡}ûhÑ¢\Z6løU½ë%üêÔ©MMM…­D\"AVV___<yü		ñĞår9öÈ(­^½zcØğáèŞ½û%‘tttD~~,--•@íëë‹õë×aÀR½CØ\0\0 \0IDATÀ077/³Ÿş\'NœÀÚuk±zÕ*ÄÇ\'”y–^–ğx<œ8y\n3gL‡\\^LÚàçç‹-[¶`ûöí_…	÷»[±år9öìÙÇóç -û}ğ\r~ùå—/bª…‡‡C[[[a°]]]±ní\Zhµn\rsss¤¦¦áÍ›×I°eëV´mÛ™™™07Ÿ±XŒ‹>›×K.—#((wïÜÁß‡ÍV B.3›Å‚L.ÇàÁCĞÛĞ:::ĞÒÒúîÉõrrr‡€€\0xyyáîÛ*×³X,æİgÍšA&&èÜ¹ógyØ?z„%KañbK˜[X(|—ššŠqcÇ‚ÍaWjSSS±èÏ?áëûjjjñÛoX²Ä²Ê´È<ÀâEÎv‡‹)XºlÙ7/pøÍíàà€İ»v2ùÈjjjØ¼e+FŒñUî77W=rl6Ó¦Ï€\"\"\"`½{æş1¿ÿş;s}HH&Œ#ãØ±cGµ¼İ………xóæ\r®^½Š;·o1fîÿƒ™«¸¾ó˜±ãĞ·otíªƒ-Z|W.«\"D„ÄÄDøûûãÉ“Ç¸rùòGË!—“‚U\0\0ƒ‡˜ÂÌÌ\"‘¨Z}ìææ\nëİ{póöm…½|QQV®\\‰÷=qöœC…ñ¹¹9X¸p!Ş¼~‹VËĞ•ËÃ;* TFœ±iã…ù½jõ\ZŒ?ş›È7“‡*Ô|²·³ûj÷“H$´mÛVÒ×‘€Ï£;wî(Å\0ëŠ„J‘Hîîî¤+ÒÅ‹«t?±XL=¤Y³f‘ğrE·8ÕTÀçÑÂ…éÖ­[”ğEß5//²²²(99™\"\"\"(--ˆˆüııéÍ›×ôæõkz÷î1	(r¹œÒÓÓ«Ä¤RIHH 7nĞ‚˜÷æ}ì‹’xk!ŸGsçÎQI3U‘dffªŒÕ>~ü8éëéÒne&à”$çH¥RÚ¸q#ééŠèñãÇ\n	*BŸ\r{W+MóèÑ£Jó¼tûÿ©È³°°P˜\ZÅ88F™™aíÚu_uß(“Iááá‰ZµÔÑ¯Ÿ‘’WtÎìYØ½ÇZ‰ä 33ócIÖŠÓó¤R)|||púÔ)x{?‡\\&ƒüc·–˜¡µëÔÁô3Ñ¯_?tèĞ¡Úï,•JUşöèÑ£¸ÿ>’“¡V£´ZiaÎÜ¹000€®H\0‘H­´Z¡¨H‚æÍ›cùòåHKKÃ={‰D˜™FQQ^¼x---hjj¢nİºÕ¶$d2ÂÂÂğàÁüı·=ŠÄ…\nÛ6›6›ƒ½zaÚÔièÖ½{µûæşıûX¶ÔææXbi©òš´´4÷7Â_ûö#))	YïÁŠU«1vìX%o÷øqca2x6lØP%¿D\"ÁæM›àâr2™Œq‚^»îòÍÁ¾	°³²²0}ú4„…†2%`Eºº°µ=üæµ8q¶6qÈæ0z÷î]­6|}}qúÔ)xx¸+šÃAç.]`nn^½zU«{VV¢££ñæÍk¼zõ\Zññq˜6m\Z†\r®4a‰û÷íC«V­0÷÷ßÁáp——‹pu»¶mÛ*üÆÎÎ¯_½Â!ÄÇÇcÄğapquƒ¦¦&¬­­„””´nİ\Z»tÁüùó‹°ÙÕ2ŸSSSñìéSœ9{¡!!JOÙl™ÁÔ©S«B¼dñbDFEÁÁÁ¡L fdd oCæ=¦L™Z¦prrÂ®Û1Ät(Ö®[W%\'Xvv6şøıwøú¾gæ|ç.]ğ÷ß\'¾	ûéW\'ZËåØ½{zy1puuuØÙWY,îK+”ÂÂB•\0«eK!“Éa¹ti•Ï\\ãããqü¸=Ö¯[‡ğğ°âIúĞjjjèa`€å+VbŞ¼yàñx•j_\"‘ 992™Œyfü1wûôÅğáÃ!éÂj™%~ûm¤‚R,ñf‡†…!\'\'‡9³-,,ÄÕ«Wó!oß¾Å³gÏ •JÑ¶m[áØÑ#ĞĞh€6mÚ`Ş¼ùhÔ¨jÕªõÑ²h3gNÃzï^4iÒmÛ¶ÅíÛ‘™•ÄÅÅ!++«ÒN¦:uê óÇc0>_€Ô´T$%%1Vœ\\^LfpõÊáçŸ®’âoÒ¤	†^n•™L†7o ?/FFı±jõj•Â‡pòäIÄÄÄ ,,ééĞÓÓ«´BSWWG÷îİáàp@q•Œôtäææ¡oß¾_ß—òµmı«W¯|²ßà}}lU$\"\"‚lmméô©SäååEN...Ln¯ûİ»UŞG»¸¸«£@Sœ/Î§)S,èáÃ‡UŞ3úøøĞ¸qãh€qâó¸ä|õ*3hòy\\†U5  €ø<n™TJdµl™Â^´§Arrr¢GÑıû÷ Ş½{÷‘¡“O666\nf×¯_£™3f(¼;«C/^ø0<®ó›œœœ*½wAA=xğ€,ÌÍòK¨¯x\\ruu­r_–\'r¹œfÎ˜AıŒ(55µÌyÓï—¾$ğÉÏÏ—îÜ¹Cúº\"²´´¤ÂÂÂ*İïÙ³gJûíëŸIßü-øûû+òF	øJ¤_[är9…††Ò…hÅŠdü8, ·oßV©­   Z°`ÁÇIØUa2˜îÜ¹Si\'Tff&smhh(	|òöö¦ÜÜ\\òóó#‘PÀ0‰Lœ8‘–/·\"sss	äååUf»7nÜ éÓ¦1ÿ§§§Ÿ«£DàPXXHöövŒs(!!DB½{÷¹fûömdkcÃüI—²²²H,S÷nú$äó(..ˆˆ–.]J·nİªòåååÑ­[·ÈÄdJe¹páB\nş¢‹MYbBCC¨›¾	ø<ŞöË—.‘®ˆ>\\åû={VÜ>¯LvïØYYY4jÔHâÔÂ>V®\\ùSüˆÅbÊÉÉ©R‰\Z±XL/^P*#TÂ=}îìÙJ{OèÔ©S4hĞ¯äççKDDövv´råJ%ïîÔ©S‰¨¸ÔÏâÅ‹($8˜¬­­iŠ…………©lßÓÓ“ø<.ó~©©©$àóhöìÙ´víZÚ¸q#ÙÚØT*¥%K“……9½{÷<==H(àQLL£GIwKY4îîwÉÔtCSôÛˆ4yòdòòò\"±XL|W™$>>bcc+]2\'--Îœ9£Ä_B$éääôEVï²\'00ñà)}oggGúz¢*+/‰DBVVËHğñø<.3º\\*¬ï–AÅŞŞáaa×Ôl†¥K—~Uxe÷>UqüDEEá¯¿şÂ£‡”Êı6r$¦M›^©’²R©Çííááá!¦CpæÌY&\n«F\ZÈÍÍU¸¾G8°€bÁ€€\0tÒÖÆ’%KpäÈŒm†N—”RZ;uê„í;v0ÿ×¯_.¡  \0‰r™l[·nÃµk×`oo:uêàï§˜sÛ¬¬,DFF0)®\0ğòå+\Zd\0¸qã¦N›‹??_¨©©¡sç.hÓ¦\ròóó±oß>\\¼àˆ-Z¢s—.°´´¬°Ÿ\Z7n\Z\Zâä‰puuQ(¿³më<}ú‹/®VÒFé€UNPóÉ¨[¯Î;‡öí•¦M›†ĞĞ¬^µZZZàóù•º_	ï½÷so¤§§A.—#$8öööX²dÉ¿gıøñc¥}EuP²³³ÉÁÁ¼¼¼¾y±4OO¥ÕCÀçQß¾}èş½{U¢ş•Ëå´víZZ²d1c~Ş¿Ÿ¤R)’H(`LZ¢â28ÆÆı‰¨˜ÔQ(à3V\\.§ÀÀÀ2÷Ù_BrrrÈÅÅ…²²²Ó]Àç’——Ÿ«CqqqBcF¦yóş`øèvíÚEcÇŒ¡ääd†tPÀçUéLX*•’§§\'\ZöVY<¯*Ì4É›×¯I$àÓ€ÆU¡U1bøpêchXå8\nm¡€ÿÕ*|q`§¤¤¡aoÆ\"ğè¸½}µÚ’Éd´mÛ6ê¦¯§DZ÷5%77—lll:%û½;vT›p0::šø<.9r˜†LÛ·og¸Ë·lÙB½z\Z»»;cö—”Ò‹ÅñR\'Ñıû÷)++‹‚‚‚hø°¡ŒàquHÈçQJJ\neddPÀWÚ/Y¼˜ÙzTEiÛ¶m*ÇâÈ‘Ã\nµÎª#/||H$ĞĞ¡¦ôáÃ‡2•\\TT³½‰‰‰¡Ş½zÑœÙ³«ØsìØ1Ü<®ıÒ·Hô]{Ë–-Œ†åó¸4eŠE•‹Ô•È…H_WDNNNßlÇÆÆÒ¼y¨\\%<<<*ü}||<]¾|™îÜ¹£rÒ­\\¹’ŒŒú)i{±XLÎÎWÉÊÊŠ<ø]ÓÛ2+9ÑìÙ³iğ`\"\"òõõ%W‡är9åççÓîİ»É××—\n\n\nª]zW.—“»»»r½6>,X `éTE>}Jº\"!3¦ÜÕ÷ıû÷ÔM_—,X@!!!ôîİ;âquHW$$kë=Uºg~~>M<™yŸG;vìø¾ı©	.àóªíÍ,©(ù×Ş½ßlÂ¾}û–~éÛ÷óâÉSÍÉÉ‰Ó–-[h¨©)Í™=[©øßÛ·o©›¾^•ª\\~ï’œœÌ(¢’ƒ%`{öô)‰„|:^õiHpp099]¬8###iŞ¼?ÌY>KıúU¹ú‹>¤§+$s¥j.ªÁ®®®d2h	|âó¸´xñ\":pà\0éé\néêÕ+Uºw‰“îkšä_ØôëÀ¥Lğ²³\"‰ˆgÎ™—/·*“×ûKï§KÎNK›{vvv•2·öïßOBŸÙ÷æåå‘‰‰	=zTi{ñëÀtâÄ‰o<™LFR©”¤Rég•ª¬\\¾|‰\r{ÓÍ›7éñãÇJGGÌ>Z\"!=]]¼x‘–.]Z¡ò,é×^©c1ŸG÷«°ï¾zõ*=šÒÒR«äwX·v-‰„ŠŒŒ$\"¢M›6‘®^øøT©Îœ9ÃT÷äquhÈàÁ\nVĞçÊ)µµµ…İ±£ÉdÅ!£\"]ØÙÛW95333gÌ@VVfÏ™ƒíÛ¶¢víÚ°?şw¥½U•K—.aÛÖ-Lˆc	óäŞ¿öcàÀ•j#..¦CãÒå+Œ§º„uõñ/…0Â€€\0\0ø¬Üó’¨¾ÜÜ\\dee!==ùËHOGVv23³ŸŸÂBq©òH5PK]µj×FÃ†\rĞ@£\Z5nŒ&£QãÆhÜ¸1\Z4h€zõê}VZåÛ·oàêê†¨ÈHôéÛW‰è ))	¾¾¾X²xœ.]†­­-ÌÌÌ”böËwww,[jÉä´—œT¬[¿£G®ğ÷			àp8eV•Éd*‰+2220bøp1Ë—¯@NNæÎ™ÿ\0?¸¹İ¬t6XAAfÎœ	¿!§ü1¿ÿñÇ÷+ˆ	ãÇ1“‡ÃáÀñÂÅ*O\\©TŠõë×ãö­›8yê4„B!1Ş<df¦cûê1\\”^X/~ˆI³c³ÙhÑ¢%ö8Pîó‡‡‡ãÈáÃËåXfe…V­Zá¸½=<ïyâÜ¹óàp8(((€Aî¸qóV•ÓÿÊÊGtt4ÂÂB„woß 33“á\"£Ri”¥Î>Pòï§œh_ÚÇß\Z6l‘®ºví‚:¢mÛ¶hÙ²å‹ëÿş=Ì\'OÂ(33<yò:tÄÀ1bÄˆ*-~~~X¼x’“’˜#1555,üs¦OŸ^-Å$•Jaog‡ÀÀ@¬X¹R%Áåa[[ØÛÛáæ­ÛhÙ²%bbb0bø0p¹<=v¬Òıäçç‡É“&*àÆéÒetîÜùŸ—J¥X·nb?|`²¶æÌ[fÁ³òäôéÓ¸àx›6oeH4551ÄÔ±qñ8ñ÷ß`±ØàñxŸ}.‘H`kc;»c¨9zàÀÁƒefáH$ÜºuË–-…¹…²²³qóÆ\r:´µ±kçN„BhiiáÊ•+ÈHOÇdsój=¯D\"Á‡ğüùs\\¼x;vl/N8¹{/_¾DTd\nÄâÿµ.EW¤øWÜ^^n.ˆŠßóÓkJÿV,#:2¯^½‚Çİ»prr‚Û\r7ÄÆÆ\"//5jÔ@İºu«MÅd½g~ûHfğúõkL˜0¦¦¦Uî£fÍšaÀ€\n\nBRb\"ÃâòòÅHe2èëëWÜ			°´\\‚èèh|ø“AJmDDFâéÓ\'b:ššÅôTúİºáÔ©“ÈÈÌD¯^½*Õ7Íš5ƒD\"ÅÛ·o«#1!&&&ŸMóüÙÀ¾wÏ\'Oœ`ÒÓš5k­[·UÙ¿ÿ>¶nÙŒiÓgÀâFŒºuë¢ÿş¨Q£&9ŒÔÔTôêÕ«Úà.**ÂpæÌiP:›·l)39…ˆ°wï^ìûk/îº{@(¢¨¨i©©0êßêêêhÓæg,]²¯ß¼AnN¶lİV¥l™L†ˆˆ¸»»ãĞ¡ƒ°Ş³îğóóE^nnq‰™Ò\\ci¥Øl68l6XY\0 y‹Ğj¥…Ä„äää _¿~ \"ÄÅÅ¡aÃ†hª©‰‚ü|…ß2ÁÁ^r¯¼Ü\\øûùÁÓÃçñş½/\n\nòQ«Vm4hĞ JQÃÁµë×Àçó	§‹!“ÉªÅÉ­¡¡###$&&!\"<œ÷»·oQ 3I+\r·oİ.Îª‹ŠÂÄ‰“˜kÅb1ll!îC,fÌœÅŒ­––š5k{»cè×¯_™&ş§¢­­\rçkÎTĞqq±èÒµk¥‚¾š)\r³Q£”T¬-ÕÔÔ°÷¯}0`@•Ú)((€©é°À‚‹«k™”@vvv°9tl6W®:W‹X\"‘`ß¾}p8®Ë&NÆ¢E‹Ê¤föoŞ`êÔ)¸rõ*âã°øÏ…03C‡E×®]Ááp°gÏ÷ï½zUú¹RRRğòåKÜ¼y>`öĞTÁ¡L&CoÃ>èÔ©Z·ÖBófÍ–Ò†\r\";;Ç‡›«–,±Ä´éÓÖãÁƒ˜5{FŒ¹\\Ä„$%\'áÃ‡X„††àÙÓ§ ¨âÂ~Fıajj\n}}ıJgìİ¿gÏAì‡XÔª]vvöJYYiii¸{÷.Ğ§OôèÑ£Ü9´oß>8]pT Ü²˜2‹-ªÒ\"àããƒ¥––ÈÊÊÄ1;{èêê‚Íf#>¾ØjtsuÁ`Ó¡Øºu«‚B#\"L:Í›5Ç®İ»+­ìîŞ½ƒåVVJ¥`±XĞÒjK—/ÖÖç³ìÙë×¯#5%™af44ì£²h^\\\\!—ËÑ¬Y34mÚThşêÕ«ÈÎÊÂ!• &\"\\½z‡mm˜ÔÏØØX¨©©¡°°‰………(*,_ÀGİºõÊ\\\rmúÔj˜>}æÍŸ_);‘®.V®ZqcÇbä(3Ø>LŸ67½=V¯^]é>\r	»‡;>‡ı±è›j‚ÃvíÚ£·¡!Ú~$ì×ĞĞP9iÃÃÃ±×Ú\Zù¸ê|Q‚­Zµ‚ıq8:8`Ïİ\0€3f(ø¤R)²³³‘””„¨¨¨Ä…ÍŒGiâÂ÷ïáÑÃPSSÃÌY³ğë¯ƒĞ±cÇrß»ÿşè×¯ÂÂÂ`mm­ÄæYBòÿK?#ôíÓë×¯ÃÔ©SË,T»vm,[¶µkÕÂéÓ§ •J!•JqöÌiÔ¨Q,¨4Ğzôè‰\'ÂŞŞó~Ÿ‹¦Íš¡^½úˆ‡ÃAÛöíñçŸ*µÇb±0h	öıµ*éU‰±ñ\0ô0è‰çÏ~T²ñpuu­Tğ/¾b\'&&bĞ¯§‡Ãƒã&Aˆ‡ópuq‡ÃLVLò.‰ ¯§_úõCíÚµ1yÒDŒ3k×®Uy¯ÜÜ\\ôû¥oq¬³\\æ-Z ~½úPWWGıúõQ·^=hhh ^½z˜5kV™äuvvv8lk£\0êY³çà?şPi®I¥R¸»»ƒˆ`llÌl/$	fÍš…^½z1|iiiiHHH€¶¶6jÖ¬YQ/|}}áììŒ«W.3JçÓÕˆ0ğ×AèÛ·/¸\\.´´´*¬¼QXXgggìÚ¹––Ka1eŠ’3­DQDEEaë–-¸uë&ìÿ\r“2ÍÖ¼¼<ÄÆÆÂßß?‚§‡X,–’UQòû1cÇaäÈ‘àñxæ‹Åb¨««3×ÂÂÜúİºÁÊÊ\nl6‰‰‰l27nŞ*·b‹T*Åa[[œ8ñ·Â8/üsfÎœYiKtö¬YX¹jüııqï\'âãâÑ¶m[õ7Â A&hÜ¸±Ò}===±sçd¤§CMM\r7oİ®´IîëëóÉ“ò<<ïUŸÕµºçdûöícÙ|mÛ¶UáûÌÌL22êGúº\"š?>½zõŠÒÒR)==âââ(44”¼½½©WO\Z=ÚŒ233+\0‰§´´4ÊÉÉ¡‚‚’H$•¿pá‚Rüúş}ûÊ†ÊÎÎf¢†ššÒ“\'O˜ëcccIW$$OOÏ*õ›ŸŸ­]»F)S¬¤|Í3‡®_¿F111U:wŒŒ¤óçÓÌÓ)\"\"\\!rKÕs¦zú4é\n´|ùòJÕ–ÉdM×®]£Ù³g3ÏÍı„ÓLÀçÑºµkUa—\'ïß¿\'>«ıTPP@fff•\nx’H$´wï^¥¸ìK—.UúŒyáÂ…\nqëåEÎEFF’••éë‰hÙÒ¥tïŞ=ğy´aıú*½÷æÍ›™0ŸWauÑ/ Å<@É –¤û}\Z7îééIR©”>|ø@\'O¤åË­èï¿ÿ¦{÷î1sçÌùª	\rîîîJq;vì¨T\né†õëéìÙ³ôüù3\Z1|8Í›7Ş¼yCDDwîÜ¡ë×¯WºÏvïŞ­è’à\nW‡lmmÈßß¿Ê1á2™ŒnŞ¼I\"¡€Î=[! U;,,Œ¦N± V-[Ğ\r7·J§×‘¿¿?:tHá]>¸µµu¥‹Í¿|ù’I€ù4†¿²}STTD[·nUŠğªH§¥¥Uš|P,“óÕ«$ğI(à“‹‹ó|.\\ }==|øğ‹ãê«{çÎ\n«µ­­m¹×ßºu‹tE22êÇLÜĞĞP	4|ØPfğ=<<ªO\\^˜héÁğy´bÅŠJÇ¯?}ú”&ODb±˜6lXOŒ…R™Õ4\'\'‡™wT$à‘É AäääTíèºÄÄDÚ°aÍš9ƒ‰†ª,¨UüïãÇIÀç‘•Õ²J±DèâÅ4pà@~ğ…vñâ…\nóóòòÈÌÌŒ)((ˆ<y¢Ò2/7c,??Ÿ¬¬¬˜~/aŠ-/üôùóç4fôhÊÈÈ(÷ƒ‚‚hîÜ9¤¯\'¢Õ«V)õ•X,¦éÓ§Q##ÊÎÎ®t<xP[{vïş6ÀˆˆPLPÁÎñiÂÀšÕ«I(à3ñÀr¹œìììhÑŸRbb\"EDD0´fÍê*O¨ò:zõ4`&ŸÇ¥éÓ§•º—’’¢ğ>¹¹¹dlÜŸÆCG¡¢¢\"Š‹‹«T’Æë×¯iòäÉ\nÖBÉ€ı:p ]¿~­Â	TQlşÀÆäP*t·ª€Vîàà š<i\"µjÙœÜª°z—Hzz:9;;Ó\0cc%](à‘……9cõ”%III´bÅ\nF—(ü¼¼<züø1ÍŸ?Ÿ„>­Y³¦ÜíXff&M™2…±’x\\24ìMñññå*„²$77—ÎŸ?O\"¡€|¹»»—¹…††’®HH§Nª’rü4M¸2¡¶Ÿ\rìs²ä¦Ç¯ğ7R©TÅ+¸PšH,ÓÕRf««k•ù¥>Õú3gÎPĞ_,3‹G,Óıû™•uıúõ”ö‘kÛ¶­´xñ¢Jß;;;›ìíí”ÌÒâUK‡>+U/##ƒ<H³gÏ¢èRƒş9 Vğ£GŸ«CVVVÕš\\iiitşüyâót>É–ÓaæNeVo©TJ			äèèHcÇŒ¡9³g“‡‡M<‰Î9SásÄÇÇ“‘Q??»\Z)—ïß¿§	Æ“®ˆ¶mÛV®rÈÊÊbòĞ|^™)¡ªÄÎÎNc{«‘U%`ÇÄÄ(í«š›,‹iÈÁ4eŠ…Ê• \"\"‚–-[Júz\"úsáÂ2)€*’¿şú«”	V<‘TÌ—Èİ»iÍšÕ”œœLÑÑÑ4oŞ<\Z7n‰Åbzûö-ñyÜJÑòÒ”)S7%	%»wï®Ò\0—µµ˜8q]¸àøÅ­\nÜşşş4~ÜXjÕ¢9¹ººV‹Ú*&&†vîÜ©DX(äóhÚÔ©:ÄJ¸ÖfÍšI|—BCB(%%…ø<n¥d	ÿ^	WÏ£Tz‘°··#]‘ºéë•»ÿ–H$ôğáC\Z`lLº\"!-·²¢núz´qã†*m¯>¥†ŠızÀ¶µµUĞ$vvÇª<È>$=]ù”“\r#‘HèÖ­[L†—““S•´ëİ»w•<àå9MJ:²´g>??Ÿ†5¥ë×®‘X,&OOÏ\n\'uÉ3×B¿\0\0 \0IDATjJ63ûlfÖüü|:sæÍ3[Á¡ò5@ı)Àår9Ù:H:]»T{õ.Ş¿>£Q£F*åºx\\¥*-¥E.—3>ˆ·oßÒ˜1£iÎœÙtøßNHHH¹Î5wwó¢9ö!ÁÁ¤¯§Kû÷í+“Ù”¨˜AvÉ’%¤§+¢qãÆ’··7Éd2rtt$=]=yò¤Ò}uøğa¬;vôë\0;%%…ôõt¤<S¤,ÀN<‰~éÛ·Rér±±±´qãFÒ×Ñ´iS+ulI|WÁåØ±òP\\\\	ø<%–££#YZZV\nt‡R˜4%Î±#GTx”WáÄ\n	¡æÓ¥R„_ĞªVïwïŞÑh³QÔò3VïŒŒ²µµQr®	|²µµ©”÷ğğ =]‘Â*æèè D/¥0¥\'WG‰€Q•|øğ¡Ü|é„„:xğ éŠ„$àóÈÅÅEd#7\'‡†L½z\ZPn%	ccc}=İr•Ê§RéXq7WW<xğ€Iô˜6}\r\ZT¥3ó7oŞà¸½\nÅpw÷@ƒ†\r¡©©Yf§††úõë‡Î]ºàÄßÇqıº3¤Rx<Ê(±ÂÂB¬Zµq±±¥¢áúbÅÊ•å†Ö«W!¡!xêõ}ûöE\Z5@D8zôŒ K—.å†‚nÚ´	W.;1UÙl6\Z7n‚ıbÔ¨QÕ.£*•Jáææ†3gNcÍšµèÙ³§ŠÌ­o\'-Z´€ÙèÑ¨Q³vîØ˜±ĞÖÖ®°&xi©U«ºwïP„Ç£¨¨ˆ‰d{óæ5bbb §§Wn…+W®@³Y3Œ3EEE°±9›C‡àxáb…%tø|>|}ıË$^DEEaP9Á9\Z\Z\Z*³óòòòpóæMÌœ1ïŞ½Åœ¹s±cÇNèéé)ÌÏš5kâ§ŸÚàÆ\r7tì¤]aT^É=sórá÷ş}ñxáçŸ®|Æde÷Cf4¬€Ï«òŞW&“Ñ‚ÈdĞ zôèYZZ’®ø<.9:8TxÜ“””D§OŸ¢\'O”¹×={æŒŸTy{“ÂÂBruu¥GÏÓÒÒhôh3\Z`lL\'Oœ ĞòåËËİWGFF*™–B>–ZZV›®§´ÆŞºu+9;_ıGVéŠVï×¯^Ñ˜ÑfÔ¥³6¹ººTËÑK‹/V:;fL¹«è…(88˜rssiéRK\ZlbR¥=h‰¯¨4)ˆCHAd2=}ú”~ûméëŠÈÊÊJ%]ñ§ä)S,høğa•¦PV°.†Vé-i¥€ıèÑ#ÆÌäó¸´ÜÊªZNŸnúztùòef’úùùÑ–-[HWTğãÇWû¨+((H)¡,&K™LF6¬§™3‹1/_¾PğÌoÙ²…\\\\\\Ê€€€\024ìı	Ÿ;Vm·ÒÇE\"‘vlßş]úSpgee‘±qêÒY›şúë¯jû9¬°áó¸ôKß¾å‚%==&Nœ@ëÖ­«ÖVGUĞRHHH…¿ËÌÌ¤5kV“®ˆ†UŒF¬Ìñ¤¾n¥+oÊår²´´dæ˜PÀ/·XD•€-“ÉháÂ…ÿß8¿z%zÒÒÒ(,,L¥Æ	£)S,H$H( ={vSH¸ÒÄb1MŸ6M nûöme^âÄ	Ú¸q#ãhë¦¯GÓ¦M¥TúØ£´Æ/aétssû\"çïñññÄãêĞÏm~¢qcÇ¯¯ïwğÒ“t¨©)iwêH|—æÏŸ÷Yï\\Rv‰9’úhq•Ålš——GK/.³sJJ\n]¼x¡\\å¼yófâÍY³fVhyøûû“®HH—.]ªğ¨îÓ¹.‹iøğa4eŠE¥•ÁÓ§OÕ%KW*ŒºB`‡……)˜fff_´–R‰ØÛÙÑ¸qãèôéÓ$àóHW$¤µkÖĞÛ·o+tÒ\\¾t‰yyW‡ŒŒú•yâííMúzºCb±˜ÆŒC7oüwßÖTÚ¼}Ÿ“z/¢ ØQ:vì]±î®úÚ{ïeík/kïì`ïŠ‚¥«€téM:$9çû#ä˜Äİı}s]{í®œúÌ33÷ÌÜó~ıú5mgkS/ (M©m¬­\Z•ŒN¨ØV–èæ¦&´E»¶ôşıûÄ÷ßTè¢¢Bzıúuts3ÚÜ¬9mmeI[[YÒ3fLÿé)/ïŞ½“à«K¹KKKi7·ôİ»>Ş¡­5½pÁ‚:I#%©²mnôº2(õy•!!!ô†\rëéáÃ†ÑkÖ¬çóäÉº“ƒ=C-]ŸTTTĞn#Fˆ„ÁVóÜ¤ØgjJ…Öú–œ…ôÒŠ6bbbè¤¤$©»âüùów.//¾uëmmeIwêhOÏñğÉ$™‘‘!á×UŸ›ŸŸOïß¿:t½hÑBÚ§f@Z~~>mkc]g^>&&FªR‹Î»j ¢?®aÑ®-mÜÄv>Œ\núÇ­·h:¯—³mÜÄˆîĞŞB,0aÂ?UP$ª”ÒŞ±¬\\wNNİµKg:33“ær¹ô•+Wh{;úöíÛÌ;*)‘]ÒùêÕ+‰0 ¡å½EÑ§OŸ¢;:Ø3ÍCöv¶´µƒ¹”––Ò½œé…ÊİÀtıúu±Ô×…óçëıM\rª¥¥¥ğô¼Ê´fR4NN\nîİ¿w“\'ÿ‡ÿ\r÷‘nX´p!RRRÄˆíŞ¾ñ…««\0Á8ÔÑ£Gã]@ vîÚƒ¹óæI´É	åìÙ3L»I’pqqeFÈJ===,^¼S¦L…ßÛ·ĞÒÒByy9–,YŒ­[·Él³KMMÅ´©SÂá8à7oÁÖÖ¶QÑgAëÁ àl6†ˆŠŠÂï¿ÿ†­[· ´´TŒtáWˆğüÙÙÙX²xfÎ˜´´4Hô\"WTTŠµ6Tìììpíú\ræÚÂ÷=sÆ|ıúUâxCCC<{ş¥¥¥X¼x1NŸ:	¯k×1jÔ(äää`ñ¢EX¼h1³†kKŸ>}0dèPæy‚Àùóçtï×®]ÃÑ#Gpğà!ø¾y‹gÏ_`ê´é`³ÙxñâÃ´`áBøû½Å—/_ä:¯“““	¡(\n^^^(++«ó7d}=¢ù¹¹LêhÌØquÎ–Öw|òÄ	lÜ¸{÷îÃÑ£ÇpöÜybıúuMÏâÅ‹@@UUµä?`À\0X[[KMEDEEáæbÊcÎœz;A7nŸ8‰Å‹ÂÕe8lmm1ÂÍMêñyyyX²d1JKK¥&—¯\\­3ÖP‘–Î¢i\ZZZZàp88vôFºÀëW¯Äú«[©àÖ­›áê‚ë×¯CKKjjjRï¯ ?\\.·Q®mii)¡Ü……X¶l\n\n\n$×ÖÖFDDğäé3XXXàùóçøı·ñhÙ²%TÕÔğğáC™Ï9wî<±MÕËó*>ş¬Ğ=\'%%a×Î¿póÖ-8÷ê===ÃÃÃÍ››1$\0Ğ¿ğx<xyzÊuîfÍšÁm¤;Ó£Ÿ•™QïıÕ™Ç¾pá>ş$È]“$/Y*6¤­>‰ŠŠÂ¦MbåªÕŒmÖ¬ÊÊÊğâÙ3äæå!  \0vvö Yl=ü7š›™£mÛ¶råx7mÚ„´´¯«ÆbaÅªÕpRÀ£011ÁàÁCÀãñ±`Á©¹îÊÊJ¬[·á¡{I’¸êéÅJ4¶âš——T\"IêêêÈÎÎ†··7²2³Ğ©&ïÛ\n.T¦””,_¾‡ÿş\\.·NŞ6¡òMœ4©Á9{i–Ø±gOøøx3[aAÒÒÒĞ·o_‰oÕ¾}{ôéÓ¹¹¹Ø²e3N?‹…cÇOÀÉÉ	Ó¦N›ÛH©=ÚÚÚPSWÇû  fˆdNvB¤‚[·nÁÔ©ÓĞÃÑQ‚C-::\Z¦&&èØ©Ãö¢¢¢‚Ë—/ağ!rÕ¨ªªâÑƒ h\Z ¨k¨×é™Ê¼ë¼¼<Üõñf³¾¡!¬\\ÈÏŸ=EQ\nĞ¬™	’DZÚWlÚ´	8pà\0ºtí†µkV#33³Şs!8(¹¿f&¦9r¤Ôc}||.õïZµj…åË—ËœÀyâÄ	ø½õŸO1Šuâä©_Æq.¯EWWW‡ºº:.]ºWWÜ¿wï§­·ğ·çÏŸƒÛW<yôºººPQQ©³(†¦iT”—7šÅuËŸ8	Vrñù|¼~õ§N’ºá•——aèAPWWÇ«×¾øã	8sæL\r‹hÊ¼–»»;Œ›5cXaŞ½óÇû÷ïåºÏÌÌL¤¦~ÅĞaÃ¤†pèÕ»·ØŸ64MáÎíÛr]ÃÚÚ\ZºúúÌıùx{Kõ^êUì¨ÈHğj>I’;f,ÔeÊ¢»ñòòA@lw---Å“\'Ğ˜?£Pêêêéî6‹…ÈÈˆzé9,ÆÇ¼tÙ2™|i4MaÊäÉØ¹s\'²²²ä~†GáÂùsLE›ÍÆö¡‡$…¿RH’„²²²0gæÍ›‹ŒŒo\nÇŞÂã£££ñûï¿aíš5¨¨¨€®\\Cê9H¢Ñ\0±eë6f\rñx|œ=s\ZOŸ>•8V]]›6oEu5zzz˜>c<¯^Áü/±±°··¯³ÒkéÒeLÈÇçóqìØQTWW×{!!!˜:uŠXµYAAöíÛ—áÃSã]‰âJMš4Áä)Ópùò%¹Ö¤¦¦&FÃxU••øø1JqÅ~õúµÀì×ˆ¢ Yuu5Æÿö;fÎò`˜+)ŠÂğùÓ\'XYÛÀÚÚZì7jjj ”””Öyî€€\0ÄÄÄ0ñ®­­ÃC.mÑº»‚ÿ»\04mÚóæÎÅı{÷êâââ°fõª¼Y,<<æÀÅÅå±ÈŠ«ª* \0ö¾s#\\]áåå)·õ&<ÿ}£G¹ÃßÏúúúàp8\n–®I“nn˜1sØ5JÇãñ°rÅr$$$Hëææ†oßÒñàÁ@‰ÃÁòå+àíãS/¥oïŞ½Ñ¡C&´øôñcV^(i_¿ÂÑ±§ØŸ)))áÂùså5Ï«?n,rrr˜cF\Z\0xøà\\ïAÔõ¦h\Z¯_½VL±k»áææòÅ½µwÀ•+WÂÃÃŒbwëÖ\r+W­Æ¬Y³%\01 @×y­ªª*f”ÀZ“ğ˜3G*`VVÂÂÂğşı{|üøfffhÚ¬)6oŞ—áÈÍÍ•z²²2üùçFfa³H½úôÅÔiÓşK,Á­OAõõõñıûw,[ºS&OFbb¢Lë-üó>`Ô(wüµc3¤¡RUUõËŞÉÌ™3áÔ«7c±hšÆ¦M›P^^.áÅìŞ½;ÿÚáC‡`È¡èÔ©ôôô––†Í›6áÍ›7R¯¡¬¬Œ¹óæ‹YíÓ§OÕiµiš†ÛÈ‘YMMM¼õóÇ½ûpòÔiôé×\\n52€™™º÷èôoér½ƒ¶mÛ¢™‰	ã?xp_¦;.µ3\"&&,’¯f×p×FEØl¶ÌÆ‘„„œ>u=œ$,¹¨„††2Öš$	Ø;tB—.]¤¦ŒvíÜ	?TUUÁm¤;”””Ğ²eKXYYAOO_æ\"¾tñ\"b>f66Mmm¬]»Vf.MòóóÁáp\ZÄ\r-¼nC,½²²2”••ñâÅs„††`ÁÂE˜9s&c…„ç-++ÃÁƒpşÜ9p¹\\†Ùµ¡\r&ÑpW¼¬¬ååur’+++cİºu\rAII	(ŠÂ§¨H\\¾|³gÏ;¶I“&xôø	JKKÑ¬Y3äääàÁƒ8x`?úôé‹C¢[·nR×t·nİ`kk‡ğğ0Æj‡……1\r8Ò[kª®®.tuuannkkkLœ8\'OÀ”)SÁb6&FMõÕÕÕõ²Ûª©©ÁÕÅ\'kËELLzöì)ŸÅsÃ»uëöË,SNNîİ»‹Ñ£Ü1`à ¬_¿Af\'ŸÏÇÅ‹‹F’$¦OŸ.µÓ‹ÅbaİúõX°`!ÔÔÔ`ee‰+V`Ù²å˜3g.Æ/õw8yòC:Ïb±°wï>…Ò|şşşpu±cÆàÈ‘#”éÈzÎŸ]]]TWWãÏ0~Ü8|ŒŠb”Ú×÷5FºÀ‘ÃCIII¡I%õe*ÙøŞ¿\'cÂ„	è×¯/^½zYçoš6mŠ½ûö1•ÇçãøÑ#ˆŠŠ’ê1jjjÂËËôÇ‘Ãc÷=øûğaØØØàÑ£GR¯Ááp0}Ætæ\ZEáÊ•Ë\rò¢DECC+W®Â”©SAƒFNN^¾|‰¸øx$&Ä#))I®ótïÑƒ™¼FÑ4¤o8t­-º´´®.Ã‘——\00jÒwïŞ“9£!\Z\ZŠOŸ>¡¨¨%%%022‚““,,,êÇ\":ÄŒ ´oßW®^­×’~ûö\r‡‚¿¿¶mÛ={JıMyy9&Mš„¸/±L{êÌY³1ş|¹«´´W¯^ÅÑ#‡ÁårÁf³×‘¢(¸pƒ££#,--abb\"ó¾?şŒ?~ÿ­ÑbÖââb¨««cşü((,ÀÙ3‚¢\r\rFke±X8}æ¬Ìi\\.ß¾}CLL‚‚ñàÁ}ğ¹<Ğ5ï†ÇãAII	Ó§ÏÀ”©S¡­­-óZÄùsg™É®,-qáÂE‰ößGáü¹³Ø¼e+JJJpûö-ìŞ½iiié6AR¿Aee%şøıwÄÇÇ1ë !C&kKnn.bcbğòÕKøx{ƒÅ\"¡§o€œìl,\\´X.Şó’’6………Œ~Ş»w_‚o^Â4&\'\'£  €)J<xH£*5\0´hÑfffPSS«—\0_Tîß¿á„9‹ÄÔiÓ¤~˜êêj<şQQQhİº€İ»w#00çÎƒ½½½Ôßy{{#±æcó-0yòd¹î-11ıõŞùƒËåBGGeeebŠóàş=<|p4MÃŞŞ}ûõƒ½½=Z¶lùS±m}¢­­\r‡;ÿbZXìĞXBHñ4Š‹‹‘’’‚ÈÈH¼yã‹÷ÁÁ 	B0LÄRuuu—”àøñcÆ†Ñ¡C©×š6m\Z^<ÔÔP…/±±¸{÷.~ûí7±ãˆBII	áááxñü9Î;‡ªªJp8™VXEES§MÃ†ukÏíÁƒû\rRìÂÂBÄÄÄàõë×¸qı\ZØ,ª¹\\Ì›¿\0={öD«V­°mÛ6xyzbâÄ‰õ\Z)MMM:×¼¼@Qòrs‘’’\"‘R–Pì?şğÓ	Bjüú³\"kRG]’••/OOAü	@K[GjlAQvîÜ‰„„x899ãŞ½{økÇ>rNNNèÖ­›Ô¢ƒôôtìÚù—Ød“6Ö#Ó4§OŸbÕÊ(**‚¦¦&öíßšæÏ›+fyDRxx“ÖÓÔÔÄpWtéÒVVV¨¬¬lt”ÅbÕi^³	””” \'\'ÑŸ?ãCH<yŒ¼šD81Dš*}ÿşëÖ¯‡‘‘V®Xÿ·ømü8lÙº\r...^œ––6lÜˆÙ³f2£|vlLhmÖ¬™2-Ø•+W¡´´)É)¸tùJsÚœœœ ¦®†ââğù|\\¹t	S¦L•k²Gqq1bccñæÍ\\¹tl%%Áô˜™³àää„víÚ‰ËÁƒãÙÓ\'ˆ‰‰©3%÷#4î×®1ïòÓ§Ou+6EQx÷£.•¦™!îÿ¶¼{÷N°Û Y,Lš4IêB\rGXh(nÜ¼	‡ƒ3fàÅ‹˜?o.<}&3V¾xñƒ²X,Œ7ëÙÔ\n\n\npöìY\\ºpyùùprrÂ¶í;`aaüü|\Z\Z¢¼¼\\*f@Ó4cá¾ÿ/Ï«¸îå	>E¡MÛv iŠ¼şëÂb±Ğ³§<x€eK—ÔÌ “ä\'OĞÑÑ³s/˜™™ÁÇÇë7¬Ã‹çÏ±nÍjDEFb¶‡‡„BuëÖ\r£FÁí[7™ĞìÒ¥KX½zµÄ5Ş¾yƒ‘‘8|øˆÜ››®®.&ıo\nN?Æ¸ü2‹ „ßôâ…Ø¿”””Àãq1ñ“,@2¯mkk???¹ÛÂÂ‚ÁÀhšF@@\0Æ\'¸’µÓ\\o|}T¶sç.\nF¿Jª««qëæ\rğE,^ÿş¤‚¡Ã†1#I’4hlmíYY\0á(WáËš6­îxçãÇ˜9cN8²òr¬X±×oÜ„……hš†¾¾>:wî,‘‘µ (ŠÏMÓHˆÃü‹j\\fâ?­Ôl63gÍÆŠ•+‘”˜Xc!ù3½dIEElmí`ff\00oaË—¯`ãŸ¢šËÅùóç0iâ„„„HüvúôéÌ5„5ŞR+ÛÿúKaeàÀkŒO	ªÄêBş³³³qàÀ~Œ;‡…ï?¬X±]»v­óÚzzzá6w}|äJ\ZÃÁ¡#“özõòòóóe£â©©©LùI’prvnğpóÆ”øøxDGG3q¯Ş}Ğ¢E™¹¾ë×®1à‚ğ£Ëø&uÀMÓ8î³@Ø,V®Z¦M›Ênİº…	ü  \0˜››ãêUO,]¶\\\"ní?` ø\n ÅÌG!I˜ššâÆÍ[hÕº\róMşKBØl6V¯^ƒùóç#>>ééi\n{ÕÕÕèÛ·/ó-„¿Ÿ3g.®ß¸‰:àãÇ˜:e2®\\¹\"¶ğMLL°lù\n±q¿.\\¸†³³3ª«¹ğôôÄíÛ·qõêUœ9}\ZÎŸ‡§§§XÑˆ¨´jÕ\Z={2ß522BjQŒPTUUñìùlÜ¸DkKQQ\"##qñâ„†„ 77ß¾}“k3urvfBJ’$ÅšL$;&&¢ŸÅê\'QÀÆ¿·oÅâş#FÈ,ÎïÙ³\':wé‚Ş½œqÿş}„††âÏ?7¢K—®R_>şŒ§OŸ0^Š®¾>\\]]eÆù›6ı‰õëÖ¢°°\'N‚Ïİ{èáè(Õítvv†¡¡Âè6EQ8vôLMMqæÌYô0ğ?±ÁşØxÅ-‡Áo¿ÿ>Ÿ‡óçÏ7è9µ´´Ğ·_?‰Í–¦i888àöoÌíââïØ²yÖ¬^´´4æX777hëè0ÖëÑÃˆ;Ÿ’’Øl¾|ù‚-›7!44Ê**ø–ñ\r÷ïCXX˜Ì\rÖÍm$H×ßß¯N²®é˜<iiixöì6ıù\'z9;aÚÔÉ8°?Œj~÷IãªK¬¬¬ êËÅÆÆJWlš¦&Ö÷i.Ã*ş“R^^ïš*8¡Käàà Õò\nÇ±îŞ½»vïÁùóç0uÊÿ ««‡õë×Kİ®^½*Va¶pá\"©nSpp0Æ‡Ë—.ACSGÃ®İ{ ©©)ÓJ5kÖöör¹ãµŸ%--\rïƒƒa``€;v`úŒ™\n\roÿuñ4‰-[áæ­Ûp®)ãÁçO¶Ö°²²’ÉÚIÓ4TTTğç¦M8sö<\r\rqóÆu:okªÇttt°pá\"Æ«¡i\Z^^^çrqqÅæÍ›±tÙrôèáˆ1cÆ \'\'Lœ(³\0:vìÈ„€EÁÇÇr?ã÷ïßk¬òEL˜ğF¸º`Íª•¸}û¦LŠCÁ³ç/pòäI˜››ãÙógrg–DãìˆğpéŠııûw‚ªmì:2¥ ÿ¦$$$ +3“qÃG#õ¾²²²Ğ»—3>Œ/_¾`èĞ¡¸sÇQ?c™Œ‘ÄÄD<zø€±Ö†F0`€Äâ;ş<¦M‚øø8ô0\0wïŞÅˆnÌK•µ( o¿~\rªÈ¢i\Z÷îßg\\¼…âÏM›Áf±~)¹B} ÙÀƒqæÌYXXX0şôÉ\0Šƒ|UU•èİ§O ¡ğÏŸ»÷0ÂÍ\rùğğ˜cÇ¡¬¬®®®bO÷îú 9YzÁÇˆ#páÂyôrvB«–­˜&Ybdd$Ö–†Ä\Z,A–p¹\\¼xñ›7o†³SOL›:öïƒ¶¶Ö¬]‡«^×üK—.ƒ““ŒŒŒ ¬¬Œ‘î£ğÎß_®¦Õ&PÀÀ\0|ÿş]R±333–…¸ ]»vıOXˆ÷ÁÁbn¸0“(9z………7vztï†Î#!!Af­ï‘â{’$1sÖ,±ôVrr2–/_­[6ƒ¢(lÙºçÏ_€‰‰©\\ˆ/\0ôíÓººº\rrSïß»‹ôôuÄîîî8~òÓşOƒd³f{`ë6q–™¼¼<\\¼xikUdãRW×@¿Zn¸¬ciš†¡¡!;={Õg{víÄÂ››‹åËWˆ½“ÇËÌdd|KÇŒ™³°pÑ\"°X,×Ù¢Ù¯o_1w<äÃ‡:ï7\"\"kV¯Â­›70yÊT<ô7<}†\'N`Ü¸qhß¾½Ôú\rtìÔ©ŞÒR@P!×¥k·\Zp•FII‰Ø†@ş\0ÎRÄ~ø+˜A\Z‚†?}úTÌ\r·”ÒÎãñğäÉ888`ãÆxóÖ»wïALLÆŒ%µ¿;??—/]dNII	ıû÷gşşåË—p>ŞwnÃÚÚ7nŞÂŒ3ë´ÒÒÄ¼EØØØ*ä¾‰T~~â1]=àís7æÎ\0\0 \0IDATíÛwøGân‚ Àb±°eëVÌ›7O\"÷Ô p¯¢¢íÛ·‡¥¥•B›\0üñÇÜñöA—®İğøñ#ĞÉÉÉĞ®)ò”_hàr¹páŠ…‹–`öìÙŒçCÓ4¦M\"fñÄâYkk1wüÙóçuzaªªª8wş‚‚ßcÙ²epvv†±±q½›±¥¥%<$“LÚñ‰´E4òò,ö	ÓòÊ—/_pùòe7Ú¢JOOgÊ;I’ÄĞ¡Ã¤6\nddd`ó¦MÌ‹ÓÑÑs¯^Øµk7^½ö•Z¤Ìô›³X,Lúßdàû÷ï8xğ\0æxÌFYy9æÏ_€[·oÃÆÆFn+-á÷í‹êt>Q/Ï«›BëÖ­qüÄ	6ü—zU$IBYYgÎcBÚêÍâiHy¥²²½jºµ}§4-è\0¼vãV®\\.—‹ıûö¢PD‘«ª*ñ¡–eURRÂoL:Uâ^Ú¶m+ÓÅ622ÂÀAƒ˜{ıô1ªNôÚÚÚ\Z666\nUUNEš†ÌÍÍÅCKÄ. èèÏŒeTVV®³ÓFšlÛ¶»wí¬3^QTbcc™]• ™=á111033Crr²DÕ–ÄâçóùğññfÀUUU¸»»#11sæÌÁ¾½{allŒóç/`íºu\rèM—>}ûBSKKáFš¦ñ55U¬\ZP(úúúØ¼y3<æÌı%ÊÍb±`kg[·ïÈ¬>ŒEDD¸ÂïFŠõñ\Z‚AÅK–àêUO´nİ\Zyyy\"à/{wïJ¼óvíÚ¡²²±±±ğòòÂÿ&MÂÀı‘ŸŸ/“GŒ 8;;ÿ Í$¹‰¥1ß¦)DÇÄüh%pBT ØÙÛ+”Ì/++CDx8fÎšİ¨‹,44T¬ËLV­nXX(TTUá>Ò\r]:wÂ={€Ü\Z\"ÆÚ’ššŠà  4³´´BpPP\rÚê‹Ñ£ÇÀçî=ôÉ¯şŒ´k×VVÖ\rrÇ)š–Ùˆ¯¬¬lÛ¾¬FÕØl6ÜGÂ‘#GdÖ\0À³gOtşªª*´iÓæ§Ù]…Ö»[÷îğö¹‹©S§¢¸¸••• i\Zş~~Ì¦UUUømüxü6~1nüx<zü§NŸÁá¿É,\r(šFXXè¿®ØÚÚÚ°±µ«°ĞP”–\nHJØ€ P]Ø°@²Htè XüVPP\06›]/C…\"RZZ\n_ß×LCF3©.u~~><¯^Å›·~ jvÒÀ€\0xÌ…®]»áÔéÓ^(¡i\Z>¼GPP tut°mÛvŒ7®QZx‚ Ğ»Oo*ìQoï;˜íá!V-Êq±±1æÍƒŠŠŠŸj1d³ÙX¼d	&L˜(µ­µö{oHZyy9œ{1Ããkhh`Ç_;áØ³\'şÚñòóó ¬¬Œ>ˆmNÊÊÊØµ{7\r\rÅbYŠ¢°jÕj™ïÎÔÔFMš0\Z___,Z´¸Q=Ô†|+KË\rEQ())FAA´´´;\';û‡Ë-Z(¦ ß¾¦ilİ²kÖ¬ÁÕ«Wˆ¯_¿¢¬¬´A7™™‰¼\Z‹Kzõê%õ%*++ãÔé3ĞÓÓƒ®®.ºwï%K—âı‡ìÜµK°mÂhhh;;{”––bİ†\rªÔbÈj¿ş2©{¢Õ–Î;ãú›°µ³o¨&ÉöîÛ)S¦Ö©Ôµ1\nE•Ãá ÿ€ú~…ïÕÅÅíÜ‰ÊÊJĞõô©Äæcaa!PÑ4Ş}ú ¤¤DfüÛ»wo&5—•‘!éæ¯––-[‰…«Â¾\02jİ ,Ë K’’“AÓ4\r‚ˆˆpìÙ½óçÍÛWtïÖ\rK—.ÅÅàçç‡¤¤$×»ÀE‰ß„¼fÒ¤¨¨¦¦¦f***Róİ\ra\0¹~ı`¶‡\0àcÔÇ_¢ÔÂ0ÂÂÂ¢A[Eáúµkõş¶E‹8|ø0ÜGV($\"IMšãÊUO‰<¾4áñx¸Ñ@Ğ¬ºº\Z-Z¶DÇı¿ÛÇ¨(p¹\\Ğ4àà ©\nÈår‘™™	:x®..8 ?^¾|!óü¶¶vLÚ‹ ¤Š¬ÑKj{±Âge+Ñ£iZ®Ö4Q *((;aË–-àñx(**Bvv6RSSƒÀ€\0¼zù,’ºfa8:ö„½ƒZµj…>}úHäîjƒ²æ¿}û{vïÇCÿşĞ½GXYYÁÄÄºººnxtôg¦KŒ têÔ‰éÏ~ûö\rV®Z6›İ¨Ê-l›ìÕ»7ÂÃÃël”õû¤Ä|úô	;w®óX]]]¬[·ffføûĞÁzYM„Yë7l{C‹‹CxXhƒŞQyy9ë¥4nˆ­é«W/4bbbÄøğy<.\\€À€\0\ZÁÍm$şÜ´©Ş¾øÖ­[3e8tÍ{ø\0°q\04qû[Mİƒ@±¿~e^²’’’BÀYQQŞø¾Æºõ@’$8ŒŒŒ`dd¸¸¸0Ê““ƒ´´4ÄÅÅ!88\'Ã¶í;¤¢Ö?~CéeÕà?Ã‡Ç·oßwïüñ×í°´´Äå+W%ÎıáCˆ gaaMMMôíÛ¾¾¯ıY¦wğ³Ò¿ÿ\0œ<qBŒ{L!íáƒz[ø\r§M›SSS¬X¾Lf§›ÍÆÄI“àá1G!2gÏ5ø°X,0ğ—-ôäädÄÄÄ@UU…yo>¼ÇÀÅÛÃc6nüÆÆÆ¨ªªByy9TTTê,166†’’ø|>hŠÂ§ÏŸ@QÔ?^,$*::ºŒĞ4Ô\Z°äñxHJNb[‹–-x***@D›`ö”,--1xğ`,X°\0/^Â[?¸¸¸H¼˜ââbÆ\"Ô‡Ò³X,hiiÁÂÂcÆŒÁüû”Pê²²21@®iÓfL—cOGTTTâí›·¿ì#ØÙÙ¢u›6\rbó¤(\n·oİR(®4h.]¾==}±wLØ,Ö®[¥K—)¤Ô¸rùRƒ@³êêj˜™™É¤Ojyçï¢¢\"ä¯7oŞJÔëÛÙÙA__ÇC·®Ñ·OoôèŞ\r7nÜ¨C‰t`+D¡„†„ÈŒÉCäyÇêêêhİº\rã­¤¦$ƒÇã¬¨¨@Jr2P³Ø[µl¥#iYYC}«èÎ-‹D¯  \0UU•Lügee-zòä1z÷î\r{;:×¯_‡Ã‘ÚvYëİ§7ÈYYY×¸ão™ÅßØñŸ’N=P¡`Sˆ¨B¾{÷NÁÍÄW==Ñ­{°X,¦3ëèqAy£¢Öæıû†fB7¼[÷îÊµV[|ßøBI‰-VU–•ñM¢şš¦ilÛºïpñâe<}ö^×°më‹”1×^³VÖV H•••Õ9£¡RUUOOOøúúÖ{¬ŠŠ\nZ¶lÉ<obb\"ªª*ŠÍårACPœÖ´YS…n¢´´TÀäxù2NŸ>Û·oãåË—øğábbbğõëWäææ2ù5y$;;„H©\\+i´¨¨(¬Z¹Û·oÇUO/,Z¼×¼¼pğà™€!¢$66¶bÀ‡ÃAtôg‰ŞÖFuÇô‡R^„“µø¦¦¦Ø·oFºB3SÜº}G*­”< Ù­›·ÄB™†„#¿B„ˆpDx8Ú´m‡¡Ã†‰¡Åµ¿inn.||¼ñ÷ß‡aïà\0cccXYYaÿ¸_Ó|#MZµjÅ¬MÁŒ¯ìF–²²2ìÛ»[fŸxíçnZƒ;+**Á.//ÿa††F\nİDII	@Óˆú…/ƒÅ\"AäsÒ4(š[‰yó`Ò¤Iõ\"¶™™™b½BMe€:X³v3!ÁÆÆ;vDß>½1kÖl‰ò¼øøx±óŠrúúúèİ§îß»‡wïŞI”ë5–têÔ-[¶DzzºB<åÂ—‡OŸ>¡SÍ€7yEKKk×®EYY™ÜµÈµ%>>>¼oPœËåÂÔÄô—GzŒœœôí×cÆŒÅ“ÇE,t	Š6Ñ4\rMM-©^cYF¨YSñµ˜Ñˆ)/>Ÿªª*”––‚ËåÉ¬]—\0Ğ\rÅ6±²²2°k[ÒúX¤g \\¼x	ººº5;FÊÊÊPVV†ââbäççáöí;8ü÷!888ÔËë$Z‡+¤’&_¿~EûöíÅ\0555´mg!ábRÅ\ZÆı¢€I’ptì‰\'ãí_üñÇ¿dñ©ªª¢oß~8yò„ÂŠ-ƒ?~¤°bAÈ†\\S(ÏŸ?oğoËËËí•\n®/Eİp’$`ee…öíÛ3ßš¦iÄÄD‹–†††èĞ¡<==³øø8,_º‡–y\r}1o+3#£A÷š¨¨(ÈÏG^~>233kz#b@’‚*Â’ùú.joÔeee`—””üpO…y¡\nAQ´µµ™	ÒÄÁ¡#ÓiUŸbgd|#|¶«R…üü|,Z¸\0æææè`i‰¶mÚ‚Ğ¬iS‰bAÙkóq­­m$ÕÒÒjªªCAAôôô\Z-.¨°°P¼kpÅEQ¸qı\ZfÌ˜ùòÑ64nhaaax÷îzöìÙ¨DA ¢¢ïƒßCMMĞÒÒ‚½=\"#\"jh\"QVVÆ\0…$IbÓæÍ˜1c:öïÛË¬‹õ6¢W¯Ş2¯¥­­-¶ad4@±?şŒ‰†ƒâóÁ§(ØØØ UË–èÑ½;\r\ráíã-7Pª­­-¦Ã¥¥¥ÅÍÍi*È!——uuõz-hŠª7‡[]]ôôtæE·”Ò“$‰½{÷\"+3YYYHÿ–ÄÄ$¤¥}…““³øõıûw1…)í;´—	Z´h’E\"33Ş¿Çà!C\ZU©Ï=ƒ];w‚Ëåş€D$Şùûcô˜1ÿ˜bøğ¡Aj¢ŞBjj*ş7q\"/Y‚6ªr‡‡‡ãë×hhh2%¤í	Š¢›“ïß¿‹e\0LMMqÿş|ıú$I¢Y³fõ®c555˜6oô4¿[ú·oàr¹2+õª««Aó÷UUUX±b9<æÌ…››TTT ¢¢%%%1€8%5àñxõ†®\Zššb:\\RRví6KU-IVV6Z¶j]ocZZ\Z’¨w¸_ee%¾Ö\0˜™›K}Ù\\.%%%hÛ®ÚŠP$S%ÕªŠÅ!ÍM›Kuiúö\0ï;·áûÆ·Q› äcİÚuğññ†––ÖO£ÂEáÚµkpquı)×Z‘ØïæÍ?šÑ4\r555p¹\\lß¾\r¡¡!økç.&{ñ³\nşÆ×Õ\\.ì:2Vfff\"ßœDQQ‘X¥¿†“ÜÈÈåååøššŠâ’ÂÎŞ^jå¢ŠŠ\nÌÌÌ‘^SÔ•–öUUU2»¸¸§OŸÆ’%K ¢¢‚¨¨(|KOÇ¤I“êôÚ‘ñíªªªêUìÚç)..ûû÷ïb®…\"©.>ŸÒÒR|ŠŠÄôéÓajb£&M ¯¯]]]èèè@SSåååX²d1¦N›!s€™¨bÖXl†††RS2åîwxÿş=¾/Â!CñâÅTWWÁÅÅµÖñùbîŠ‘”‚‚ Ğ­[7<{úÁÁÁ¨ªª‚²²rƒë»\0ß;¬Y½\Zñññ?=øNTIâã¾ &&\Zöö¿\\±ğ>8ø§çWÑ4ÍÔ4<ş±±±Ø¶}Ğ`ëMø|¾šª\ZzöìÉ(B“&FkFT>}şŒ3¦£¢¼­Zµ‚†¦b¢?Åbãª§—TÅf±X022bh˜r²³QQQ!³@UU×¼<QRRŒ-[¶\"3#ööõ†bzzz IUUUõÖ•ˆWñÑÅµØÂ}yEà6§ÁÚÖæffHKKÃ»wşÈÏÏgæ?ØŒ™³0cÆŒzÏ),xºâººz2Áá¬¯èèhæ¾ããã¥V©Š¹+²a++Kp8¤$%!*2]\ZPL!Tê#‡ãÀ} (\0ØØeª>üGûÅ‹~N===äææbú´©˜7o>–¯XÑà±Cññ_UUUØØØˆ\\C_Âk•6mÚÀÛÛ‡}/\\¸€Â‚lß±£ÎAºººbiÓºjøÕÕÕqû7ÆŒr‡¶¶Lä,Û*¶<­¾ÊÊÊÌè+šf\\ñï\rVìÊÊJ¤§}…«‹+<æÌa\\äªª*¦L¯²²ZZuÓ²Ö>§h|¬%ƒQ¢¤¤„9gii)ƒ—””ÀZ\n}RQQ‘ØÿËbª033‡ªª*òòòàûÆW!ÅŞwff&Ö®Yƒ\'OC[[»ÑÚÅ¼¥šÆI“ş§0Û\"’““ƒÇ5úıÓ4\rUUUğù|ì¯¡\0Ş¹k+r½·oıPRReee±fío\\{\rÁŞÌÌLìÙ³†¸qóf½,&ÚZZ‚8±&\\¬¯9§M›6xøø	¦OŸ†ÌŒhëè °°°Î††‚«şCIII,[\\üdqq	cÕÔÔjù«ªªAÌC\n/¢¡¡}}}4oŞmÛ¶“[©…ç‹d¸!ÅÅÅxıúnİº…×¯^!11_¾|ARRt¤¼0AN[T²vc\'gA‹è;¹ëº…Ç¼zõî#İğìÙSèëë7zC‰¨K¨¡©ùKK\Z™\rÔØø—ñ«±X,Àßß£ÜG2¤Š¼ó·o|¡¬¬ŒÎ»ˆ1ÿÔn“­¦(\noß¾ÅÁƒ ¡¡qãÆáÛ·oğóó“É¦\"¹&	¹\n†LLLpç7F‹âïßqçöm©›ŸÏGuu56È“…`³Ùàp8Œ§[RRƒŠ3;œ––BPàÛS\nàTWWIÄ(ÒÄØØÓgÌD`` Z¶l	ï;w°wÏn$\r6H_ZZ*ôV˜ñ²K—.]ğìéÄÆÆ\"!!¡^ÀOoíİ»Ç‹ÅjÔTYík±X,L<L˜ Ğ¦Ùiİº5nÜ¸‰ë×¯áÄñãÌ8¢Æ]]]ÃÃc6¦OŸ!7%UFF>~üu558::ŠM¢øMÓ(--‘ûÌŸ€@Td,X\0eMŒ›ÀÕu„Ä ;YkR.Ëú„¸/_@PQQEQøûĞAÄ\'ÄCUU¥%¥(-+EyY9JËÊPTTˆì¬,$)W?I’PQQeî£´´T¼@EEEE¡ÚaÁ& ¢ÒxŠÍåòÄ@.Yhc›6mÄˆæ¹\\.ó4\0PØ@ÂºmÙD:t\0I’(..†¿¿ŸLÅZŒÔÔT¬^µ\n¯_¿‚®®.X,Ö/Qj6‹‹–X¶lÙ/m¤ïÍ™3=z8âĞÁƒeÆË6¦k.ì®:qâ8\"\"#°{÷n´kgQ§kˆ¼¼<\ZÀZ$¾Z2ÑßUVTJ(è½ûÁáp˜´‡Ã©×¸q8±)u1–æååáß›Ådl(\nPSW‡ß[?¨©«AG[\02kji¢‰qhhh\";+şş~õ¶İ\n½ÁdPGRQ^vUUãn*±•j~àóÃ×nİºØ˜X¨¨ª@EEª**PVQT:q8PVQ†’à%%%$	‰fÚ®G]PVV’’’Ğ¶m[\Z\Z‚ÅbáéÓ§°±±‘˜.ñÃ]\" ©©Qçfffeeep””ğÆ×S§N“@m…ïéáƒØ°a=rrr~Ù€!¹tÙrŒtw—Ù<ó«ÅŞŞGÅƒ°cû¶_b½IR		\rÅèQ£°qãŸ[3IRšr¿ñ}\r’$Á§(	j.‹eeeÆ’UÕòI’lPé°èš$êq—9<|eee°Ùl°X¬šf’ù·ğ¿Eu/$ää6!zO•U•`sEV¸€Ql(Qˆ à`ä‹¡Ú4MƒE’ Y,Á\'dy$	p¹<<yúL† òòeÜO^^\\†Cuu5Ú´i‹İ{vãÀğ÷óÃÓgÏ%¬%òò…K]naß¾ıpÿş=DFF\";;[Ìå%ÕÕÕØù×œ>}\ZÊÊÊĞÕÕı5VšÍ†s¯Ş˜;w®ÌAğÿ¤¨««cüøñèÜ¹3N:…§Oú“ñ×ÖÖFee%/^„ĞĞlÜø\'ÔÔÕ™ëââb„„„@]]İ»÷ØX	‚\0‡Ãa›Ïã7ÚæS×š--­mÄÂ¶ÓúÜ|ásŠŞ·š¶ğ\rs›¹`³ÙX±bú÷\0>ŸÏXñ””ÄÇÇ¡U«Ö022Ç—Ëeş­««+s¢¥<’˜˜ˆ:ãğáÃğôôÄØ1c0fì8¼ö}#W“C}±K×®xòä1rss777fÓ‹‹‹Ãª•+È¤%\Z[©Y$	\ZÀÖ­Û0hğà¤EÑØ{ûöíè×¯6nXÊÊÊ—›Êú>ÊÊÊàp8¸xñ\"\"##±k÷1fÓĞĞ¤§§CWW={Ju¡ù2H[;¿bäR}œsõ\Z%/ğx\\…¨\0\' ¥%HéˆŞŒ¾¾>&OÚ‚?&LÄò+\Z¾Ò”LoÁÜÜŒaW7ş7¬Y³Fæ¦ÄùqoBzÚºäÇ$¾¾¯áæ& Ì¿uó&¶lŞ„¢¢\"\Z\Zşz‹…Q£Ç`êÔ©hŞ¼9ş«Âf³1xğ`ØÚÚâÊ•+¸zåø|ªQß	A000@tt4Æ‹5k×âÿ›\0ğ}íË(®4 ‹¢(ˆv/²k)KII	üüüÀáp ©©	555¨««CEEººº2[	¯ò0¨ëKäRğZ!‘G	lUÆEæòx ˆ™„¨£´\\[³fÍ0á\"9|cÇ«3–)((ÀÙ³g1sæL¨««‹åä¸\\ÌØEHƒıù3Øl\"\"\"PUU…¶mÛJXmeef·-//¯w\'oŞ¼9455QQQˆ°pdffâø±c8{öÔÔÔ ­£ÓøVšÅB“&ÆX¿aƒAı]š6mŠ+VÀÙÙ»wïBbBB£[o---TWWcõªUˆˆˆÀŠ+\ZUUUPRâkáæ/ZìTäÍËËÃÚ5«aaÑ99ÙÈËË€ÅfãØñ2[L…ü€ ú+RBLHºŠ¦Å\\vUUU°54ÔEPÃ\n…˜\'…è³¬é€C‡Åá¿!&&Z¦b\'\'\'ã“&ÁÑÑE‰\0t1†††ÒÒÒ0vÌh473ƒ2G>Ş>PRbãè±ãŠ­¦¦*fê%´µµÑ«w<¸ùù;f4¾~ı\nšYÌ©Ô$A€ IÌö˜ƒñãÇ+ÌFó_‘îİ»ãÜ¹ó¸sç<Ğ¨àš0“¡««‹[7oâ}p0JKJ¡ªª\n\'gg©ï¬ö7VSS—°Ø}ûöÃƒ™±ºº\ZuÆÅµ×$G·¹¤¤‰‰	HIIŸÏƒ¹yØÚÚJ(°Ğ«”§Ä›¢(”•–‰=\'[KSKÌü+²Ó²X,p8™ NÓ¦MÑÁÒ\n‰‰IÌ\røúú\"66ÖÖÖĞÑÑÁ‘#G°oÿ~&}S{&’¬’º¶mÚàÎo±ª®ºâPMM-±&yh€»téŒGîƒËã!\'\'ç— Ñl6vöX²dñ?Rú«EGGÓ¦MC·nİpôÈ¼“+e£ˆk®¥¥…œœœšöltïŞCª;,¬bZìÚ‹¥¥¥Ğ¨©2c³Ù`³ÙPUU­·u¹öšäÈdggãÁƒxøğâãâ$œ¦i¸¹dòö¢ºHQ”\\Š-èÙ(©q¼	hjj‚­¥­ÍXTWW+ôTUUqÇÛG¬±CÈç,¼ÉV­Z1üe¯_¿ÆŠåKÁçˆš›™áêUO±>A\\óÃ\ZÊb³`±ÙPg³™F\r\0ˆ }ÈÇ\"B®aôíA²X`5€UT^,aõšµpuuUxBÈ]„4CO?ÆÆêE‡Ã(‡••ôÑOB>>¡®¥°ÕÕÕ\rêi\r=ë*vn=BXX(ú÷€S§NCCC•••ğ÷÷ÇÚ5«áí}³fÏ£rïËãŠóx<f#Ib“µ­\"CÚUUU¥NNNÆ¶mÛĞËÙ	ƒÂ¡C‡˜˜ˆ¤¤$¦È ;;A2¥sí-ÚKÔå\nªÙ~¼´ïÅ²éa>~üˆñãÇ1;è—/_0iâøûûK*v­2SyhgZ·nM›·0üYl6Ká” 4‹Ãf³1xÈÜñöÁo¿ıöÿR‹~Ë‘îî¸ÿà!Ft›ÍşéwG’$Ø,H‚À€ƒ°~ÃF™£xE«*	H²5iÒƒj°%ÚMU—U\rùğ,ş¹	ıúõƒTTT ££ôpì	š–Œ¥¡¦¦.x&ìùfÂH--°µµµñƒòŒh5îóçÏñçÆ\rX¼d)wü…°ĞP\\8gÏœ‡ÃaSFŒ%6¦Í›###/œŸÏTTTÄvö‚ü™1×ıû1nÜx&Æqww‡‰‰	6oŞ„»wï‰ÅëµcnyØ%•••1bÄ¸ººbÉ’¥5|èÁxôè!\nòó+$o¼Íb± ¤¤„mÛw ÿş?Òø¿\"æææøsÓ&ôí×[¶lFA~¾Ü!ŸP™	¸Ğ·7\0\0 \0IDATF¸D·nİĞ¾}ûzgNçåå‰á5zµ;11À¶mÛâbËÏÏ«¹7ÁTÏºÈCœ{õªó\\–––x\'aõòóann.×DQ%šZZ`,¶b±§¨DGGcÕÊğôºÆ¤ˆúõë‡¾ıúaŞÜ9ĞÖÑe\Zß544˜ÙXÁÁÁRA7˜˜š2óÀ²²²¤²HP…Ì¬,ôêÕ,‘¿kİº5²23™»,ÅV„Ÿ› ÃØØ½zõÂ¬Y³”˜ˆ°ğ0¼|ù\nŸ?ı\r$Íİ$,’Ä„IÿÃÄ‰*ÿUX,úöíkkkxyyáÜ™ÓàËØE.ÚYX ÿèÜ¹3Zµj¥cío\\Ûk8p\0óçÍEï>}±páÂ:§‹\n=Ú¬¬ìšû&`ŞÂ\\!Ik[%1¨€¦idçä Y³fr!î‘ZZ`×n‹¬=«>¹yóš6k&’÷H§NĞÓÉ¯^<‡ŸŸú×\Z…RVZŠ®İºIÜ¸ŠŠ\nš›6GF\rˆ–œ\"˜y]»ÅbaÈ!¸zõ*æÌ™%%%äççãäÉé>JbÕÑÑŸ˜ğÃÚÚÚpèØ;bÂ„‰HKKÃÇñöÍ¼zõ$I€¢hfLo·îİ1wî¼_2¯êÿš\Z\ZbáÂ…4hÎ;‡ÇŠ(³à½9÷ê…Ş½ûÀÖÖæææ\nDJJJŠw^mW\\YYæææ8h0ºté‚ùóçaòä)2dˆÌÖÍÊÊJ¤¦$3ÿojÚü§Š‡R’S ­£#f„x<rsåkkë¬¦¦&ØšZZbMŠ¶ædç ª²\n•••b;Wbb\"Ş¢(,Y¼gÎcoš¦qóÖ-L˜0A*JljjŠ÷ï0Tˆ’Ğ‰Ê”)S°ví\Z8õtdæc\r4Ë—¯ªŒfææøšš\nš¦ñéÓ\'1àígâÈ¶mÛ¢mÛ¶9r$233‹ÈÈH\\óòDEETUÕ???ğù¼_ª8LŸ1Ca_X¬ñOIPUUƒ•¥¥À»âqaaaGÇèĞ¡ƒÜ–ª>äúó§\"Şºu©ï$::\Z:tÀàÁƒÁçó±g×Näæä`î¼y2³¼¼<†;ÏÔÔô§îÕÖÎ6¶¶bçàr¹ÈÊÌ#¨ïÛ‰ê°¦¦&Ø\Z\Z\ZbÉvy¹Œ…Ò­{wàÄ‰?~<H’DHHşÜ¸^×®ãÅ‹8uòfÎ˜™³fÃ¬ysøúúB_ORÏÙÌÄ„q-HRÀU%­=Q[[‡ı””†/[V¥–ªª*ììì‘öõ+(ŠBB|\n\n\n\ZÕ-6¶˜˜˜@GG7®_ÌR~ı\no}_ÿr…K>\\aÅNNNÆ†uk½k«>ißÁ[¶l……E£·  €±Ø$IÂÆÖVÌğàÅ‹8x`?ÊÊÊ°wÏnØØÚá÷	ÑG„¼¶Æ‘Lñ‹¢“i…çğõ}ÈÈ(€¦Ñ§O±¿çóùàr¹073—û|¢:¬¡¡!Plq` _¡›>|8?~„Ë—.àÂùsì~áÂE´mÛ-[¶„––víüçÎ\0Œt…åË—Ë>šÕšF’››+óÃ³Ùl±N®ÏŸ?#))	ƒ\r’°ÆíÛ·ÇÃ÷%ÌÈÈø%ñn\\\\<fÏbğ\nš¦ÁÿE#m¤Å§\n+Jzz:x5µşÿ¤ÄDÆñcÇ°}ÇFÍdddˆÕ-Ô“’’ˆ%K—¡M›6066†¾¾~½œpş´P]?‘‘X¸`!ÜİİQTXˆ7o|¡©¥…Ş\"Ê]VVIÂXÎs×ÖYuuu°ÕÔÔÄbÏœÅF–èëëãäÉSFÚ×¯Ğ70@÷îİËf³1aÂ\Z4ùyyPSW¯—ÊÇØXüj­Ô/8€3fÀØØ•••Ø¿o/\"\"\"°nİ:±Í£M›6b}´			\r\"Ş¯K²³³±páÛaÿ\rIJJ›z!ÄÇÇøçï—¢(¼~ı\n»wïÂ†\ršë]ÿó@T333ìÙ³Wa7:½fLmC;==S§LÆºõ1zôhTUUaìØ1ˆ—XÓIÊ=Î:\'\'GKPSS©¢¢uušİÆ·oß.$ĞÒÒÂÀ1mút¸¹¹Iu›\r\r\rÑ¾C¹ø¹ŒŒŒÄ˜/âeûêÕ+DD„3¬:uÂƒ‡ğüù3¤Ô\ZLŞ¼ys†B—¦i„…†6ê\"-))Áºuk‘Ñ€wØhî8M#6&F¡ßğù||şüõïlD|>w}|pæÌ™F;ghh¨Ø\Z\rÑ¸\\.ÌŸáÃ‡áÄ‰\r\rKÕ%			bç¥bªO._¾MMm>œï¦OŸÏŸ?áıû÷Œb&%	*5åÉ\0ğù||û–.Bş)h^!UTTĞ¶]Ûš€^ò0#Š.¤<zô¨Ñ>Šk(^išFTd”Ìšñô´4¸»‹)ÕÕÕajÚÅµŠ[š4i‹öL¥İÛ·o$î\Z*\\.{÷îÁ‡÷ïÿ5¥f6¬ğ0…† #\"<ì_EËy<N?oï;_û½}Ãd%¬¬¬Ä¬_zz:¸\\.V®\\‰ÔÔTÌ˜>\rıúöÁª•+òAæy«ªªñcs3¹G•••ÂóêUôêİ[,ÖïÛ·/Z·nƒÙ³fâ÷ßÆcÌèÑXºd1¸\\®\\Sy*** â•¶…²²2H‹sóŒ¥§¥)´(ø|>¦Nş>}úS‹QT444ààĞ‘¹§èèÏÔ±¢àİÅ““ƒªª*äääàÊ•+øú5mÚˆS\Zq88÷êÅ¸çåååHNNn”…yöìYÜõñşÇcTiï27\'G!¬$77÷_\rD•{ó¦MR+…E$IÂÙ¹—X1PDD\r\Z„~ıúcÈ!˜0q\"î?xˆØØXÖ¹aÄ}ùÂ(vÇåÆÊË+@’Jke´´´pêôiœ¿p“§Lû¨Q°³·‡Ã‘‹ï¬´´Y™™Ì=™·0°²ã\rQZ–É¯ÆŒ‡ğ°Ğz«Ö(ŠÂ÷ïß‘œœŒ   \\¿~‡–ZÆjme%vO²âlŒÿm<èÇİ1p@Ü¼q/^’úb:vì(g7†;îí}\'÷ï*µPÈ\Z\0M^©Ãø7Üòysç0uÿ\r‘ñ5R«~ 88mÚ\n\0Wï;w0pà ˜››CMMµÎÓ·oß£@„BŒ6ÚÚÚĞÓÓÇË—/$\08ØÛÛcÈ¡˜4i:tè\0CC#¹æ»ˆİ“Y\r’Î3Œj@µQÄº¤Cûğ¹sªX^^ÂÂBäææ --			ˆˆGxXXMÍ0\0˜9k¶ÔB÷6mÛŠ]ññR<‚Àôé3Ğ¿ÿ\0äççCGG-Z´\0‹Å‚ìììÄzu-,,˜ÖTŠ¢ğèñcLœ4©Áùl???lŞ´©Q;˜~ÚjHII–»LRÓı\'î½¦zo‡®zzJ¬Íú¤²²=bÂ!Š¢$Èÿ­­¬±iÓ&¼ÿ¾¾¯á:b‚A¬:›BâããÄş¿.öZ>Ÿ§OŸ\"/7–VV077Ç¤ÿM†ŸŸ¢¢¢$\n¶DŸ?*2\n–V–r‰ÙµæsÓoliÈ¢;xû\0‚€··7H‚@dT=}RÃ-&¨&âóxpìé„ÙsĞºu+˜˜˜ÂĞĞP& ¹¹¹8Ğ†qãÇË¼‡-Z0å€<§NÂ±£GàísWÄ6L¢æ³“““ÚÈ„ùóæş«1µ¬Å\'÷ñ_¾Äşënxíû/,,Àª•+qôØ1èèèÈıÛ¤¤$$\'\'1ùk×½Ú¿ÿñttu‘Ÿ—‡7oaá‚ÈÊÊÄÙsçëlR	\rÎê‚pêÔ)¤¦$$Yàóù°°hÖmÚ 33)))hÒ¤‰DU]yy9bb¢Ñ]ÎM¹6J/Ü˜ØÂÅ.zÃ‰‰‰r£ÀÑÑÑxóæ\rx<Ø_cmÛaÂÄ‰°°h3³æ02j===¨««Ëİİ#ºbcc@QŞøú¢¨¨¨Ş\\XXˆõë×!8(/]–Ê¬Ñ·_?<}òBu|÷îÂŠY³f*ÔòO*FDD¤D5 ¬íÃû÷ÿ¹g (\nŸ>}ÄÛ±uë6¹=*Ñøœ$©i?.—‹2ç¼ãíÊÊÊ:Qè‚‚¼yãË\0rÖ6¶u¦£Úµk‡›7o\"??éééˆAÈ‡Ü¿w=Äş}{A$Fº‚ƒƒZ·n\rSSS„‡‡ƒÍf£wïŞr=ob-”^h(Ù€ ­‰±1„úøÕÕÕ2{A+++áãã§OŸÂÎÖ‰KÆÿ\rsçÎ”´É™,))Áë×¯áââ\"–s]qq_ÀçóQ^^ÔÔÔ:;99+V,ÇàÁC`ee…Ô”ØÙÙIËE]µ›7n(Ô>YTT„U+W¢Xd áM±âãPXXXo5//ùùùÿÉçàóùxúä	Lš™`á¢Eõ\Z…ÒÒR\\¿~ù¶|Š’˜Å~÷î]lX¿N0¢kWÌš5]»v­7MMMäœœzÖÙ\'+lêÜ¹3&Nœ„¢¢\"dff\"11áááğñ¾ï;·A\0¨æraÔ¤	ÔÔÔêœ&†ÒGE1À™‰©)ƒÒ“€ =äàà \n]TT„ùóç#99{÷îÃâ%K0tèPØ;tDvv6tuu*28}ú4¾|‰•úÑìíÅâì¨¨(™ç‰‹‹Ã(÷‘èØ±Æ‹®]»ÁËËeee®r“&Mà>j4Ã.š•™Qç¹k¿Ì­[·âÓ§Œµş/Zm’$‘Uïq™™™ÿin5>ŸóçÏÁËË«Ş\'\"\"ù¹¹Œ>vÜx±<ó»wï°aı:\\¸x	7nŞ‚³³3<fÏÂÿãîËãb^ß÷¯YÚWÙ“tìieÉ–TD¢ÅV(û.K–,•ì¢ìK­d‰¤RÖ\"QB¶„”¶iofßSo™¦™ç|~ßûõòzÃÌ{Şóç~û¾îû¾®;qqÍŞGú³g?€¾¾A‹¾ªª*´µµamm\r6à^r\n\"\"£à¿w/æÌuEÁ÷ï<ØL,D¼¨¨oß¼¦»±Š\'uDöî­Í‡B©är¹Ø±c;°víZ¾Ü¥_¿~ˆ¿\'ÑtXzz:N8…BW÷=ø€®¸¸¸&A*)))hiı…Œçé°µ±Æ‚ùóğòåK˜€-›7,Š±VV ÓyŸÉ%‘b;LaAu=&“	6›ÊÊJ”––¢¸¸EEE(..FII	ÊÊÊP^^^/PXM±Ô4Ğ4ÿÉ\ráÓ§OÍ¾æ×&?\rŠq8°ÙlÔÖÖ¢ºº\Z`±X(--EII	õüJJJ(f.—‹ØØX‘ÏŠ‚ˆˆ\n—¡Ói°üEßüø±c8vüŒÑ«W/8;»`ÿƒT§`SÆf³wç_$ĞœìÓÃ‡‘‘‘ÑìP•œœºté‚¡C‡ÁÅÅt:†F†b=Óoõ2@\rBïFmÄÔÑÚ­[7¾Óñƒ0öÓ§O¸‹€£Ò­[WHIIáë×/õãÆCÃTTT`Ætœ9{¾É±¼öíÛcÈ¡HJJ—ËEZêäåå	%Füë¯¿rájkk)Rººº:TVV¢¦¦†ï³@__êê\ZÈÍå\r…Ü¸q®nn­‡Â6»‰ñìÙScê´iprrFiI	JJKPZRŠ²²2””£¬Œ…Ò2ŞÿW”—ƒÅb¡ªª\nUUU”“×ÕÕQNÎÃ³iÔ<2N§¸µ%ß\0^g7 ½~İâÍ¥1|ƒÓ6lV¯Ù ~!%%EÉéÈËËCNNJJŠPTR‚²’TTT¡¤¬„Vª­ĞºukDDD 9ù”•”0yòd‘íŸoß¾Åí[±T¬©Ù…ƒœÃá ;;[`­éêêÖçİµMæñ¹¹¹Hö”Š†\r·™_ÇÅÅaåŠåiæ${{hŠ={¢cÇMâ999`ĞéèÕK<¼ç×jF·F3”ckjjò¡Ğ/_¾ ¸´ù u\ZMhFÃÍd¾Ì¤›‚ÂÂB¼ÿÏŸ§#=ı9TT”1gÎ\\ÄÄÄ`šÃt‰<-,,|/	Üz0$ıÙ³&Oô—Ä1yyy¸¸¸`»÷6j¢)**\nË–-kö½FFFÔ˜è»wï¨ÅÑœ50`VUUÅb¡²¢¥ee(«ÿSR\\«%¥¥(+-‹Uœœ·øñã‡Ä=Ô\\.AFF†P’\n¾íYz‹›ËåBZZ\ZÊÊÊ”­’’2”•• ¤¬UUU(++CUE***PTR‚ŠŠ\n ¨¨\099yÈÊÊŠÌSÏ;KET¿æÊ¿ZdäÏˆ‹A§ÃÙe&ßZ`0pvqÁzOOì?p€ZC±±7ae5ŠŠMKç>}út\ZZƒ\"Ó— 2*\Z999xüø1Îœ9…¨ÈH\0€ŠŠ*ì&N„±±1ºvíŠöíÛÁ`ÖW\'²Á%Dìşóõc©\r¾Ö¸m–úÅÛµkÇ %\'\'×ÏÿÜáê%VRSSj¤=zô€††î&$ k·nÈÌ|‰»ñw‘’’ƒ‡.—€†è¨((((Hñu\"ccj4K®ß¸k‰IÚ¿}ûUUUşv>lİº…ÚÑO<©S§6;Š§¡¡¦¦H¾w™õÓd]»vmÒA\ZAƒv™ŠŠŠØ$z—BC±dÉb±[‡¦ii©())i²¤XTT„·oß´È±ËËËáãëkkÈÊÊşãá_uÑ^½z…—/_B^^C†¹Ø?şŒ³gÎüL¤¤„¢Ê...(((À„ñ¶022SJ\n÷SRpCD×$‡ÃÁ×©” ùMFAQ\nŠŠĞÔÔÄğáÃááá¼¼ÏÈÊz…””\nÄi))p¹\\èèêbôè1ĞÕÕErr2ºvë.Vÿyee%î§ÜçÎ\Z¿ŞØi\ZLh¹Ÿ>	¿µ´´ ##ƒ À£xğàJKKñõëWÜ¹‡;w¢M›¶¸}ë&gLÇíÛQPX€…‹#èØ	\\¹\Z-­¿¨pfïŞ}bÍkjjÂĞĞˆÊµ’ïİCnn®ÄçØ±cˆø%nÛ¶-,p§B<\Z†0!ºÅ¿\Z½e,˜L&JKKñ¸¾_Ô¢mÉ\0011ªªj‹ZUét:¾ÿşÛ3‡UUU6œ7ûÛ˜ş|×ÆöàÁ°X,0Œ=FäF~ùòeê{0ÌuuãÛÌîŞ½‹ÔÕÕÁÓÓá‘°±µ…­­-î&$ğ±ì\nÃ)Şÿé@}ûšH¬Î\"//=zÂÖÖ;wîDBÒ=œ<u\Z+W­†œœüwûaö¬™HJLÀ¸qãÄÚ$¿}û†¯_ó¨û\Z<ØŒÙç{Zú?4\ZM †WTTÄ¡ÃhÛ®Ìwƒ¹Ù`¸¹¹âşı9r$œ]\\À`0±xÉ\\¹\ZƒààÌ=ÆÆÆèÜ¹3›™CJJ\n“§LÁ€Åz(L&“ï„¦ÑhxğàÄ‹ÑÙÙŞŞÛúàmÇ§‡ÃAPàQ±6### ~“J¹ŸòÇ@\'Í.]Ğ­[·‘L6œfÿ\\kªÜÙ£gO*êå -µû÷SÀd2Á%DdºöñãGœ<~œÚø!°µµX·BB0~¼-nŞ¼	\r\r\rØÙÙÁÚÚºYq†”””Fb’tXÛØücvUUUèëëÃÁÁGâfì-,[¾e¼^“Ÿóæú¿´ÂÒùóä^ jı«#,,C/!2*\Z!!àéé‰~ıúQúIÊÊ*ĞĞĞÈŸ\r\Z\r\r\r¸¹Í“èA0€oŞ444Tâ…Ş¹sg¸ºº!<œz¨S§Npu›ÇwjŸ9sZŒH¢3úö3¼¼<>}Ê§õ;‘d:##ã;¶¨vÑ·oZ†×ÖÔ _¿~!ôï°ÍŒôç——Ç`33‘\'êéÓ§Ñ0GÎ`00»@ØŞ¯_?DEGÃÅe&<×®±‘!bcc)},QØ¥ĞP>¾‚ß­KN§ÓÑ¾}{ÈHKƒË%Bªš,¿5zö=~©{ÓÍ•””¨°7áî]¡¬¥***èÑ£\'ºvíÊ×Ô¡¦¦}}„‡‡	­9šššâ|pˆÄ:Ò;wÆÈQ£¨ºsÎ›×xùò¥D×xşü9ÒŸ=ÃÁûJfööö|§vèÅ‹ÍÖµ&ÆZYAVV¹Ÿ>áEFÆ;µûĞ¤œ°è‹ÌÌL¡ÎÇf³‘‘‘Ñ\"Çd0™0`Àû¾ÏÓÓ‘÷5222=zt“aø³gÏ~ù_ItÒ¤I|¯)--ÅçÏŸ‘‘‘´´48tÇOœÄšÕ«˜˜(ò>^¾|‰ÚS--ÇJÜ».nj†¾ıLÄšÁ®ªªBüİxpëÃpû¢ÿê°Ã-FPyöû÷ï$ê§Óé°k‰—/2„®3™Ì&Ù~˜7oŞğ®Ñh4ØÚ§~`.!ˆ‰‰ë^¾|‰…ÂÉqÌ‡ÁÍØ[øşı;ßÆÓ¡C¬Z½ÌúS»³¼9mâö•šš\ZÜ¿ÿ-tCCC¨µn-qMOjVØÉTRR‚´´T‰»®®íÚµkqƒ†8–r?ìÚºú”Ç¸IDß÷nJ•Édbçz¾2T||<†\r«±–˜î0\r:¦¦¦èŞ½;&†4ÃùÅW·±±‘è{°Ùl$\'\'cË–-puuÅ¦MqùòeƒåÅ‹xûö5lllÄŠúrssñ97—Ê¯G\Z-àWtÁ°·?ßÅ%=uuõ@§Ñ‘-ö{ŠŠŠpçÎ,^¼“\'MlÒ‰Z©©QÑÄ¥Ğ‹\"óÇ²²2,]º3¦AWW7nÆÂÅÅUUUk9F\0?~<:tT§®ÿôi\Z®^½Ú,°§o`\0Y<|ø€ÿÖ©S\'ôèÙSbÎwBÊËÊ„n²-’­©©AïŞ½%ºÄ\rÃàáƒ•“Cÿşšª¢££ñüy:¸\\ŞâÖĞèÌçx\rXJè¥Ë¸wû!%%%ğööÆÚuëD‚·¹¹¹ˆŒ§êâmÛµÿ]5`ÁËËóç¹ÁÂÂÃ†\rCtT	l¦wîÜ›Í 5uX5¬2:ÁCö×¿ĞÖîÃ·0’%zïÒ¥êØuyâÕÔÔàÅ‹8tè†\r‚•+–#+3[½·ePRR‚““3ˆÛäõ¥¥¥aj:W¯]‡››:tè\0‹…ùóçaÑâÅ%%%%x®_OåÚl6^›6Š˜˜L&¬¬¬ //ÌÌÌ&UGG¨_¿~-Ë³i4Š£ı×…Û’-¨¶¶ıú™ü‘üºËÎÎ†¼¼,--…U>|ÀÖ-›©“Á``§\'_fJJ\n®]‹A=ê#}¼zõ\nÃ‡\rEiI	EOÔ”İ¼qƒ4stt«Í“ŠøöìÅÕ+Ñ¸q3fffppp@gMMhhhğ¡Ş•••¸zì&Š=Å–””HE\\B„Î…8¶††oºşäºv-Fl>(p¦‡éx••)ôÔÎËËCdDàä8AGáì2\'NBô•+\"ÃQ£FıÑêì¦zÚeee1eÊ\nxáp8ğööÆçÜ\\tì¨.´¤`ff«qÖ`4:É||v‰Ô331é“‰ÂÂBÿßiúhq­ø½¶Ñœ·o%¦.l‰ûİ\0Rc{òø1Š‹‹A§3`,„h²¶¶>»v5Â:°±/ĞWajjŠOŸrqúÔ)\nÿ		Á¹óÁØ·¿Èi±¢¢\"ò!íMÍO³W¯^!2\"«×¬åë‰033Ç›7¯ùBñœœÔÔÔ`Ô¨Qb]ûû÷ï¸ËGû$\\plXZ¥NF,	ÉñæÎ[_Ø¿€§úñğáCxym‚õ¸±Ø²e3Z·n¹s]Áårë9¿\rš°ÑĞĞÀßS§‚Á ƒ\0¨ª¬Dœ\rü\0pêäI!\"2\nAAA,\rQ€‡‡¯±³~c»—”ˆË—/‹ŒPttõ@£Ñœ|ï-x=}Ş˜ ¤„„¼zõJ\0ËÈÌÊ‘p¼®®êêêĞ“È¾EùuJ\nt:\r„†á¡¡¡HI¾G-l.—wwwHVV²22Ø·o/ÒÒÒ¨CGGG§Ù)¾[·n¡¦>ía0˜>ÃQ$2/Ô 0\nl:p ***púÔ)|ıúEEE¸yãØl¶P…Xa–™™I<t:£FÚ½G~\n™Pa\Z—$%%Jôã´nİ\ZÎÎ.¸x!GÁ!æX0ÂÃ.Ãİc!B.\\D@@\0æ/X€ğˆ=‚àà`±®=i’=\Zêw.Gš-[ÄÆÆâÀı˜={6*++!--g\'\'xxxàîİ»|¯UWW‡ßnÿF!9;wl§~¬_MJJŠ\nÇÓRSQWW÷Gòì6mÚ ·¶v‹òì§OÓødƒY,¦¥J|bWWW£ÎÑ	oĞK{šy¡\ZiiiğóÙEµ\03ìÙ»¯‹¯¶¶„œ={£FÆ©Óg0ÓÙIèF.ÌJKKqèĞA\nixb¢\0ßÌÌLÜ¿Ÿúmª««BT_ššbı†¸qãÆaC‡àìÙ3˜8i’Øšd‰‰?Ãğ_\ndûËîİ»£uÛ¶Ôx	W~ó\0\0 \0IDAT%:Zb6Ï1––`³Ù8t––c±oÿ$İKÁœ9sÑ«W/ÊqºwïÃğõÙ)ÖÃïİ»7QBPXğ·n‰nM}—“Bvlßuk×ÂÈÈ“§Lµµ5455ĞæQ£Faâ${ê¹\\.V,_Şd—‰‰	dd¤ñşı{‰˜K$Í³Mú™4‹Ô{oŞçÏ|ê¢………`±XçÈl6›ZH\"¿Î|ùŸ>~„´´4úÖ×ÉìÛ·oXºd1åp“§LÁÈ‘#©×cêÔ¿1eÊdØ¿²²²hİº5şæ\0/¯Mbi¢ß¼qe%%T‰kœµÈÙè?ÂÕu.z¸ÃÁa\Zâãã!%Å„¢²’€>œ””&L˜€/\"<2\ns]İÀ`ĞÅÍŠŠŠpõJ4­tì¨®]»\nÇ„ı¥¢¢\"lllqò¯£§ª²™™™MJò³={¢“Fg´VSÃÖmÛD\"°ı@ëÖm‘šú––c›½¶“³3nÜ¸NÚ{üwÃÂÂ¢É~j—™31~Â())ANNIJJÂ¡C‡°uëV* ÑhX¸p!Ü¿ÜÜO”Â–-[àçç\'0hò×_A[[÷î%ááƒT£ÎoÏ³€ŒŒUæ×èt:>|ø@Õ:ß¿\'1pFO.ÖÄäÏå×÷ğN=ÓAƒøh‡*++áµiŠ‹‹±qjÁİİƒïırrrØ¼yòòòğåËÜ‰‹ÃíŞ`0¨«­­×œ–é8{÷î¡6\ZGGG‘÷ü×_!&æ\ZRSŸàÔ©SX±|)êêØĞÕÓG]»IĞµk×®h×®¸\\ñ†ˆ^¾xÚFdÖ66M¦Mz›¹¹9_8.n.Ûxw\Z9r$?Oo–\n—É`ÂØØ_¿Š‡*ëèèÀjœ5uj³X,jz¦) ­cÇPTT¤œúÇØ¼y3-ôZÏmÕªüvïşY;çr‘”˜€ƒ4ßHKKÃjÜ8ÈÈÈ %%ù-ü>::èØ±£H0OXˆ«¢¢Êç(ÊÊ*â+	\Z®¡¡Ñ\"n8qË\\îß‡¬¬,¬¬ÆQy#—ËÅpÿ~\nõÜét:víòáC‘3ê„ôôô`ii‰Y³fáp@\0“îáÒå0„^k6Oˆˆ@EEuZÛØ‹‰TEE#pìØq‡İÄ‰xù\"Û½·Áßß¯^	rÊ±Ùl?v#Fˆ]:Œ½u‹/7<¸éÍ\\TÈÛ¶}{*½xAì<¥Á¬¬¬À Ó‘˜ rû^\"UjAp8øûï»™æÑ£G°>ŒÇfÑG…î|}úôÁ.*×ãp88wî,Î;\'uôïYYYddd ¸¸ø´—6€?âæÙ\rsİGğ9vÿşı±Ék³D({uu5ôõy\0çŸÃ\n\n™™	YYYª]\0Îœ>àóTºÄd2áë·›Ïáª««á¹n-œœˆ#Ğ¥K—f‰rss±oïêsh4\Z\\\\\\$úÒÒÒèÛ·/6oŞ‚°ğ¸Í›3§OÁaÚT,_¾> J–=Â…;ÖJ¬kçççóÕÕ;uÒ@/›l“­  €I“ìùĞñT	9¸{öì‰Afæ8tèP“ùMnn.ÂÛ7oÄ–\rx}íÓgüìñpòäÉf#00n®spìø	L›6\rÏÓai9µµµh\\±´‹î”°Ùløïö`\\éÚµ+zõîüüoMm¿ÃLú÷gĞé8rT(âjggw…`2Åhàp8è?àÏ…á©O   \0ººzT¿tXXöîİC}_&“‰…yÚÚ¿FdçƒC0tè0ØMO©Òüøñ;vl«şâÄq*Be0prvæ{”ÔºwïwwwÜ¸‹5k×âVìM,˜?3fLGTT6nØ\033sqê6¶\'Oğ¡á“&M©.²õ¨ñL+—DEEJDµK£Ñàää„²²J›¨1’èãã[k>Œ¥Ë–7I Ğ”9::şìñærq9ô\"UÚhê~påê5˜˜˜àÒ¥Kp÷X«sæÌÁµk1BOÚY³fñil6^^›øÚZedd`cc‡‹û)nÚË¤Ÿ	äääš=5™L&¶mß!™9s&ì\'ÿİì´—Ë…¢¢\"úöí÷Ç¾Wr}\n3ÁÎRRR¸zõ\n_\n“Á€ıä)pnâURR‚»»;aİšÕğõõÅ¶m[¡®Ş©IRÎŸNóáá?g®	Áôé3~Ë÷êĞ¡¦LùÉ)÷áãëEElÜ°……prvK€Ãa#22‚Ï÷ÌÌÍEã*Íí:ú†T8’œÌ§$@³‹N8’’<|øË–.…ãtŸ?W77„^º\'\'\'‰šºº:V¯YKõxs¸\\ìÚµS$ú9`À\0hhh ´´\'Ã×¯_0zÔHX[[ãøñB)o˜L&–/_áÃ-øœÛsİZ¾¶Ó@VVêé|ÿDÙ«·¶6:wî,g2™Xºt¬­­›uşeË–aÈĞa\"»¶¶ZZZÍ†³-Í¯Ùl6RŸ<AëÖ­ajjŠ;wâ°ŞÓ“¯³Ìbä(,[¶Œ/}xùò%nİŠå[“ıû÷ÇİÄ$\\¹r¬2EşØ±c\'_¨¿Îs½ØDâš²²2FŒƒ‡¡“†zõê-öˆæ›7oñèáCp	FCß¾ıš¥ğ¢7€M¶·çëÄ’D“––†««ÒÓŸaÒ¤‰X0Ï\r÷î%a­çzÜŒ½ùó4{“¢lÂ„	ĞêÚ•\Z\\É~•%YBBBh\0^½ÊFè¥Ë˜2e\nŞ¿oooÌ;|!¯‚‚¼6o†Iÿş|Î½ŞsÂÂx\r,=zô@=ñöí›ß¦	&™Ö××o2ÏfÖ7T8Š¹QÊËËcóæÍèÑ£g“•‹êêj@JJêä×oß¾Å»wï £«‡¸¸8,]²„Ï©4Å¦M›¨Ó‚€€Ã˜5Ó\'OÂdûI8zäõââbT”³š­Æ\0<†šœFLŸİº÷˜ç–ÔD\rëäää ÿÛWÌu+’ª±5.çÒétL²·oiv\n` ©)ßXÜùsg%®i<ŠŠŠøŸ?ÿ=ˆ¿›\0{{{¡r»’š‚‚Ö­óäk(ñóõivE]½#æ-pÇ‰\'Ğ»wo<~ü“&Úñhk\'OÆíÛ·±{÷n¾ğGUU»vù o¿~|Î½uËœ<yÒÒÒ˜1Ãeee|©Çï¶şı]<£FÁÂ…%\ZğPSSƒÿ=PVQzºBÄ&Æh‰=zôeeeÈÊ|É`1ô0;wîä›ˆ‹»ÄÄ$Ü»ƒàà`„†^ÂáÃ‡êg³yÎã·Û¿Yî°¬¬,ìÙãÏ×ğ²nİ:±Âã_ŸOff&.\\¸\0¯M›àááÕ«V	Ş8}ú4ètOé£¨¨çÎ¡	‡Ëkd¶Ù_¿]»v˜áèF}i©œÅ’xDQII	nóæSDè¢F7[¶Ğû×·šş»Ü¾İ[$zÜ¯Ÿ	æÌ™aîìYØ¸Ék×®ÅèÑ£±wï^\\‰\0ÂZ·n\r?¿İ04ˆÏ¹÷íİƒÃ‡¡K—.h¥¦F•½h4ÚoûÓ`}ûõ…’’ß¦C§Ó¡««ÏõëÅ&tllššš8zô(èt:ßgq¹\\¨ªªR#ªM…Óÿä;¥$\'ƒÉdPl²\rNffn]»v	teŸÆìÙ³©uÔ£gOœÁş}{QZZŠ‘#G\nU\0il•••ğöö¦\"†ÖQQßS”cgggcÇvoDD„#ù^®_¿&°Îß½{‡ø;qpus{ $99™¯½uæ¬Yb•ÇÄªwX[[#øü9jÇ8{ö,FŒÑ,(ÑØF=ş»3füö]ßÕÕ\r7®ß@QÑp¹\\¤?}ŠóçÎaöœ9Í¾733\Z51aÂ¾4ÄÈ¸¯P1@555ìÚåoooÄŞ¸v=Wö‘€\0hiiAA^É÷îaÑ¢…PVV†œ¬äää ¤¤i³§ŒŒ,äå!¯ @I¦JIIA^^ÒÒ2’’âé7:yA[»zõê…—/_BNN4\Z\rmÚ´¯ŸŸD:W¿š.ûüyÔ)VUU…~ıúá¯¿ºòİƒ¨E^[[Kı©¬¬D]]***PSSƒªª*”——£¶¶ee,T”³šš\nyyE¾tÂÒjÖ51Z©©©‰\'OğuijjRŸ-={ÏÓ©ò‘ZëÖ˜={v‹N‡F\Z…uëÖ!)1ë7lÀkBB‚Áår1~ü±®[SSƒ3§Oóµ·Š[Ë±{õê…şàáƒ<DûE?O§Æ÷Ä±öíÛÃÓs=†ŠÙ>\'©µnİ\ZŞÛ·ÃÃ}Øl6Øöïßô31iØhÜÕÄ,Şà^R\"Üİİ) ¦gÏT^¤¢¢///´iÓÁçÏÍfƒËåR¹5›ÍFÜí8”••\n8CÃiE§ÓÁ`0@§Ó!--\r:^OÉ+\riÈÉÉAJJ\nŠŠJ––†‚‚< /¯€ºº:0êZ‡4Ë®*nÚ´Õ{;6¬÷¤û¥ed†ŠŠJ”••¢¶¦,Vªª«yÊ*G]]-Xåå¨«¨®®›ÍFUU¸\\.jkkÁáp@¸\\Ô±Ùàr9àr	õü¥¤˜ „€ÉdÂÑÉ,à+ç¤¥¥!//666pvqÆ$;;hué‚ñ&€Éd\"$$VãÆ‰uš=|ø‡ò…üÛ·ïÙ¯ıáÃ\\¾|™§\"cg\'ôÄ­®®Fö«,´nİF`Z+\'\'á—/Ãcá\"‘œäíéÓ§xSÏûÎ“2KúGlÇf2™pp˜ÇñÈá	App0úöí\'ò;ÉŞÒÌÌÌàäìŒÓ§NQäõË—/Gè¥K\"óy6___ØÛÛ#7÷–,^Œ…‹£wïŞˆˆˆÀ–Í^¸q3–ï:òòòX¾|9ÔÕ;ÂÏ×—·pëC;&“É÷çÎ…ŠŠ\n~ü(¬wŒ2TTT ´´¬²2”––¢¨˜§|ñ%ïÅÃÇâYÿÌ	á‚Ëåı¢¢\"ï´p4èØoí³±±Aaa!öíİEEE¤¥¦6j2ú)j@£Ñ@§Ñ@«ßÏÊÓh4(++£³f´j¥\n5µÖPSkuõNÈÏÿ†¨ÈHê“ÉÄªÕk0uêT¡×¦PQQÁ!Cpòô8Î˜oïmèÜYš]4±sç®f×#ÕsÎùò»Ìœ%–äğ÷ïß|áğô\\/¶_¼x………Ø¸ÉK Ò8sæ8\\._TØ\\‰ñüùó\\è˜:mšØDŠ4\"&ÌYYY‰)“\'ããÇY~È…‹b›ı[Æb±0ÓÅ¯³_ñÊt:,,F`—ÈÜŠŠ\nÆ™Ó§¡¨¨ˆuëammk×®a½ç:œ9{N¤0Àİ»w±h¡õ£4,p[¸º¹Q¿ÂBW6›\r6›šš\ZÔÕÕ¡¦¦†:õ*++QUU	‹\'Ä*+«¼eee(-)ÁKK†ßa{÷îEDD8Ú´nƒ6mÚ@YEªª­ ¤¤%EE(++C^AŠŠ¼|º‡ddd(1\0iiiHIIQ‘Nvv6Bü;ÒàÄ +jE=yüsçÎÁÙsç¡««‹…×¯_ƒÉd¢OŸ>Í¢Ì555X±bîÆSÊ0Ú}úàøñbç¼)))Ø¸aŠ‹‹0c†#¦OGûöíñşı{L´›€öí;àrXßõ^¿~iS§`á¢%bw³edd`Ætp8Ğh4ôèÑÁ!!âã\'D‹ˆˆ úºD§6ÑÓÕ!7l ÿ¥ÕÖÖ\nıû¬¬,¢¯Ç»O>ÚÄ@O—ˆuÍòòrR]]M!äæÍ›ÄØÈ€<{öŒï5·nİ\"Ÿ?xï›7oˆ““ßgëéê}=]râÄ	R\\\\ü[¿?—Ëı£Ï—Íf“’’RQQAêêêşÑç•””\'N}=]¢«Ó‡z>úzºÄÅÙ™¼}ûVà=‡‡iäìÙ3äÅ‹$.î6ïyêêOŸ>I|‡$~}=]’İâïbdh@ôõtI||<yûö-Ù¶m+¹-ğúµk×}=]òãÇ±?cíÚµDOW‡·~õuI´ëŠ2‰»¸¸˜dJı0-}0¿ÃH```“ÿCôõ~:·¾¹~ıšØ×‰‰!F†äÉ“\'¿8u,162$YYYBßWVVÆ[@úzØÆÆšÜ½{·É\réÿ¢ÕÖÖ’ø;wÈ8++¾\rOW§1Ğ×#„Åbñ½\'77—äææ’W¯^‘‹/’õDOW‡ØÛO\"_¿~%!!!dôèQäË—/bßÇÕ«W…¬‡ëÿè»eff’ùóæ‘¾Æ†dóæÍB×DVV162$çÎûº&]>dØ°¡¤´´ôÏ96!„Ÿ§v==]âåµé_](,V9zô(é××˜ìÚµSäk÷øûó-&}=]’ššÚìgÔÔÔÕ«W“¤¤$¾¿OKK#ÆFäşıûÔ{÷n¼Ğk¤¤¤1cF]ÌK–,&OŸ>ıã\'îi\\.—¤¥¥‘Å‹	İäÆ³¢ã¯vàÀ2aüxÂáp¨Ír¬¥%)++£œÔÜl0ÉÉÉë^?z$°öíÛ÷[¾gMM\r¹rå\n1Ğ×#†ú$$$„Ú¨Øl6Y±b91ĞÓ•(Zó¬ßÈ\Z¢ÍĞĞP‰ïKbÇşñãéoÒïÔnêôúİöòåKâè8ƒ\ZC‡6û°*++É‚ó©‡¤«Ó‡èéê7oŞˆµ0kjjÈ©S\'Iyy9ùôé124 W®\\¡^s,(ˆ¸»/hò\Z………äàÁƒD_O—º‡Æáù†õëIzz:a³ÙÿgšÍf“gÏ‘õë=›üŞ‡ÂRŞ³>E233Imm-qp˜F¶mÛF=G}=]K‚‚‰ƒÃ4òíÛ7±î\';;›èéêğ­WRUUõ[¿w^^Ù¾};162$ãÇÛ’ÔÔTr,(ˆ\Zk×®I´ÆŸÖƒ™¶(…<ãk†ÏÎ`s8 Óé°\Z7;vìücêµµµˆÆÖ-›A@xÅì„úşı;œœñ%ï3¸\\^¯m‡ê8yêT³ó¹uuu8sæ4®_»6‡©S§aêÔ©Ô¿»¸¸@[[«W¯yôôtEò½{|ÈyC3ÈË±˜hg}1xßşW­²²’Gà†[·b)=ì‘×p2nnnS|Ÿ?ÆæÍ›ñæu6¤¥epåêU”——c„ÅplØ¸“&ÙãÎ;Ø±};ÆXÁ¼yóÅ»>şggäç£JFš]ºàÔ©Ó„>àiùøìBÎÛ· Óépw÷Àœ¹sÅFÂW®\\‰[±7ÁårÁd2°vİzüı÷ßßG‹»¤¤Öã¬PZZÊ«=28uúEh,‰F`Ù ÑèBK?~ÄŞ½{‘˜6›WÂZàî	ìÄ–}ûö\r&ÚÙQå£4ôàÁCbÍ€ß¸qëÖ¬ÆùÔpqq1¬ÆZ¢GÏ^èİ»7æÎ‹ôôg(--P£h@d“’’°ÿ>|úø—ÏÁé4\Z´ut`o?ıû÷—Xøí¿²ÜÜ\\<|ø—.…\"ûU¸\\A‡îÚ­Üİ=`ffÆW™àp8ˆ‹‹ÃŠåË°gï>˜››ÃkÓ&()+cíÚµÈÌÌÄŒé8‚Š”şÕòóóá¾`^¿Î¦šPh4\Z\"\"£şÑl‚8öíÛ7LoÕV­pùr˜Øˆ{jj*fÏšIõ´iÛQQÑ-ã˜kièFzº:dÎœÙ-…Î;GÂÃÃBá[·n}=b ¯GbbbHXXkiIŒ\rÈ°aÃ„\"ÓMÙ“\'OøY=]âääH\nÅzjj*Ğß„|üø‘ºŞ˜Ñ£	›Í&û÷ï\'F†DW§‰\'?~ü Bsè’’AÆŒMôùb]>TøºŞÓ“ÄÅİ;äü7íë×¯äöíÛÄsİ:*¼şõ{èë’±c-ITT¤HàçèÑ£\"^]]M¼½½I?c#O˜úzºGÄÑq_\n¦¯§KÒÒÒş•çFŒ\r\ršÄšÊÕ]œ‰n\nÜ‹ŠŒlñ=´èÄn¨ûN›6ïß½£:†vûï‘ˆ¹!üX´h!’ïİÃ•«1ĞĞĞ@AA‚‚‚vMaÅŠT¸¬¬×®]ƒÏÎfa__?±‹ö‰‰‰X´Ğ£Ñä}ûõ‡X¡Ù·oß ¢¢999?v¥e¥033‡·÷6XZÅÔ©SÑªU+=zGãÖí¸&¯[RR‚äädœ9s\ZÙ¯^ñ\Z~éı¦Óiàp¸gmSSSôîİ:uûø]V^^¼¼<deeáşı\\‹‰ƒN·Q¸ıóyÑ££, şğîİ;ãË—<L<…êéÎÊÊÂzOOØM´C=à:w.Â#\"Ñ­[7äææ¢S§Nb\r¶`ÅŠx––Jµb2™<\033³?ş¬²³³á0m*ÆO°ÃÆÅ~_ll,V­\\AÖ=zôÄùà`‘d\n¿=o°øøx,]²˜º™N4zé’Ä¡Cnn.l¬ÇÁr¬¬­­±|ÙRÔÕÕaÕê5°³³ÚXrñâEìÚ¹á‘M64÷\0Ëˆ¡q_øøøˆ=mÆår1ÓÅééÏ Ş©¼·ySò/>|À„ñ¶àp8ˆ½u;vÄË—/Ñ¡C¡’­xöìb®^ELÌ\0¼Ù÷Æ?KãÁŒN4`:húôé---´oßªªª——o‘dÏ¯ß«²²%%%ÈÏÏÇ‡ï‘™™…ä{÷ğõëªa¤±37tœB`cc‹qÖÖ044Š¤¥¥aÁ|7¬ß°	¹¹¹TËîÖ­[1|ø0˜›Á×¯_a5Ö+W­†ƒƒƒD!ğŠ+ğ<ıuL&~»wcäÈQÿÊ&´ÔT¸{xˆ=Ó]RRûI“(,€ÉdbÿƒÍj‹ı1Çf³ÙX°`ÔÍ1,^²³fÍ’øZ·oİÂÊ•+@&ıbÉ’%\"Ù>+**0lØPøøø6;Éó«]»v\rëÖ®¡œ›N§£gÏ^ğß³‡LÔ CJJ\n>|xñã\'ğ .D—.šxüè1<99917Ãùà‘]z<Ä÷HIIÁ•+ÑxU/Òğ«“ÿ:Eº:OÛ«sçÎhß®ÔZ·†’’êL¤¤¤øHºÛ*++Áb±Pôãò¿Gnn.Ş¼~/_òø®ÿ«öuãöÑ>::°±±…©©)´´´D¨ãÆYaŞ¼ù”ÚKyy95ìÒĞa‡5«Wa·ÿ¡¦˜€ìÇ±xñ\"¼ËÉásê»v‰Å|û_Z`àQ:Èë]§Óé2t(öîİ×bå—ìØ\rÃÓ§Mı9ÓJ§#2úŠØ:¿ÍÛÛa—/!èØq±ÆçÜÜÜğ÷”)°0üoÊ¹[·iƒÃ‡Äb¦lªİĞÍu.î&$b›öíß°°0”••ÁÓÓSìëTUUáíÛ·HM}‚øøx<MKF«ï˜ç9:¨nŞ¡YA€Æ¯á]“€4q}\Zu}ûöÃ°áÃÑ·o_tëÖMìpq÷n?<AƒáN\\^eeBÏÀ»víB§NpãÆuaÏŞ½bm°\r–™™‰ùóæ¡¸¸è§ö¥¥åÿ´Sçää`¢İ¾”C[¼›c€¯¯Î=Kí8#G†¯¯¯Ø¹oƒbäˆá6Ì~»wS;Öë×¯qøğ!´j¥†±cÇBWWµµµp˜6\rGE\"ÈuuuMöÇÅÅaù²%Bİ°€‰5ĞØÊÊÊ`n6GbĞ ApvrÂÈQ£à³k\'âï&´¸¼RSSƒ/_¾ ;;Ï=Ãƒû÷ñî]è4\ZH£õ§sşƒÅĞ°)4DàqİuïŞ„¡¡!zõêuuu‰FvŒÅbáÂ…¨¨(G_ã¾èÚ­<ˆÎšš˜?>ÊÊÊ %%%Q^™œœŒóÜ¨M¯!šØ³w,,,ş§šÃfcÉÒ¥TïzÃ@ÊÒ¥Kÿñµ‹cÀzœ*++©Á×o·ØBcü\'i6¬_¥Ë–ÃÁÁ‰		X²d1ŒŒŒñòå°ÙlhjvAIq1ÆŒµÄÚµëš¼Vxx8!BËOën®s©—F£A§ÃkóŒŸ0AìP°¬¬‰‰‰7n¸\\.æÏŸ\'ÁËk3lÇoöıµµµ`2™ÍæÉ•••(((@^^>~ü€wïŞ#çí[¼~²²²tb+++£gÏ^èÖ½;ºuí\nÍ.]Ğ©S\'´mÛVìúzcFÑ¦ìÃ‡<ÿº:ÌssÃ;%&8 „ <<[7{Óè·£Óé8r4Pâù¿°ë×¯cíšÕF¥¤¤„+Wc„b1ÿ‰c@LL<×­¥nR^^Wc®IÄŞ`şş»qæôiŒµ\Z‡×bà»Û#FŒ@ee%®_¿íÛ¶BQY‘‘QMÎĞFGEaë–Í˜6}:–-[.ğïÕÕÕğóóƒ««+~üøg\'jv¸aaº¸ÌÄœ¹s%F¡Ùl6F))Ñs®Ñ\0\0 \0IDATi\\¹zUäTÙ«W¯põêUdd<‡šZkŒ1£FùaQIee%Êë§¾X,ÊËËQYYêê\ZÔÕÕ‚Ã®õ˜HIICVVòò\nPTT„’’”••¡¨¨yyy±¹¸~®®^½ŠîƒNgÀÌÌÖÖÖBŸ³gÏÂÏ×zúX¼xq“úS¢Nş   œ9}Š/•RTTÄÑÀ ‰h¬oÌ÷îİÃı”p¸\\\Z4¬aèÛ·o°g…šš\Zê0Üåã‹1cÆü–ëÿ6Çf³ÙX²d1¨°b’ıd‰ ÿÆ§’‡‡;ÒŸ>ÅtG\',[¶ŒïßÓÓÓÑªU«&ó°àà`øûùÂjœ5V¬\\)¥çr¹djŠ›6ÁÊÊ\nïß¿Çš5kğ*+S€skİºuc÷ïß‡œœ\r\r›|ÍãÇ1wÎ,ª‰‚Á``ü„	X·Î³EáîaŸ?†‹‹3\n\nø]Ï½p8 @h\ZRVVyyy‰¢wïŞaûvo<~ôˆï³tuõ°}Ç‰)¬®¹|Ù²úPx&dddpùÒ%TVVbßşıbæImlØ°W¢#ÁáğÆG‡[Œ€¿ÿn0Ìßò///¯ßq!:Ş½µqñâ*ïËÎ~…^½{KìRRRèÛ·B/…BYI	C‡å;E:tè PxL\'NÇıû1eê4¬\\µªIm#\Z†’’ş(Ä AƒĞªU+Œ1?\n \'ç-šÉËÃ…ôÖÖ–è{tîÜYd¹£¼¼ÎÎN¨¬¬¤¢„†RÒ›7oĞ«Wï&×ş—Œ___<MKã#Xär¹(..ƒÉÚşû+í“8‡™.ÎÈËËã‹¬lÇÇ–­[›íDd±XFRRtúô´ŒÊÊÊà0m\ZZµj…³çÎA[[İºuƒ••?y‚[·naôèÑÿ¸”ÈWº}‡ FÃ¾ı~ëòÛàé]µjÅ#òkpŒ„„»°±±•8œUVV†£²²ªYÅ„ÚÚZ:x\'NÇì9sàááÑì‰WT\\Œ˜˜«˜2e\n\0¨Ûˆ# #+‹ÇõÜà\rMlìMTUW¡W¯^-n\ZhlÙÙÙ	>ß¤\0ƒ¬œ\\“àOmm-BCCÁb±Ğ¹sg¤¥¥án|<444¨{{÷î®_¿®]»BJJ\n‘‘‘HMMÅ£‡ñ<ã9¾}Ë§êß\0¯\\tíÚ5´k×ï·zøğ!¡¦¦&4ò)**ÂÚ5«…~B>}úˆ)SşnQxß`?~ü@@@\0|}vña!L&K—-‡»»‡Xë‹Á`àÓ§O8x`?>å~Æ!C€›±7Ñ½{w<}úªªªhÛ¶-ºuëŠİ~>n1â·õ–ùò3(mr&“‰7I$xù¯;6ÀãÖNOOÇ—¼<Ş	Äá  °\0#$Şõ444 ¤¤ŒcAGÑ¾CÇ&é*++áçç‡Ğ‹°pñÌ=G(\"_ZZŠ´´4´jÕŠrúcGñøñcäÿÊÊ\nÈÈÈÀÜÜÚ}úàúõk_9—ËÅóôtÜ½{İºu—H½©ğ5**R(’M£Ñ ÕE«If”êêjÌšéÕVª<x0nŞ¸ıû÷Ku:fdd`ÓÆ\r˜æ0\r22²ø{Êd¤$\'CQQ	9998sú¢¢£0jÔ((++#++^›6`ÌK\n©©©‹³ -##”ö–ÅbáÌ™ÓMFE„Ìpt”3hl>ÀÒ¥K‘”˜ğó„£ÓApğp\0lmmÅ®¾ĞéthkkC£sg?„¢âb¤>ylÙ²RL&?ÈÈªá\'*2ƒæ‹ÖÂÂÂp\'.]´´$:°\Zd\Zº5ét:ÌÌÍ±hñb‰+HÍ~×ßšÉÈÈ`íÚu”‡ËEìÍ›ˆ¡†)ÊşşûoŒ;[¼6áÆBs5///D†‡a­§\'œ›D²óòòàá¾\0¦àÌéÓPPPÀÉÓg0tØ0deeÁ}Á¬^µ\n\0OŞ(úÊU:ŒO”ïı»wp;ûöîmR/[ÜM«)xƒN§ÃÀÀ@dYŠÃá@Q·¨äååQWW‡S\'OàÅ‹ÔIÀ£Õ¡S§§«Û<ìÙ»AAÇsí:jª«qäÈêwc³9|ìÅ‹(**Bÿş|âcû5JÓÓ7ºiÓh4˜Ú¢Øïß¿cÏ¸¹ÎÅÇø”:†·ÀÕk×aŞŒÌMSfee…M›¼v	ÉÉ÷——:GÁâÅ‹qÿş}8;ñ$¤\Z§TÑÑÑØ±İßò¿5™æ5eaaaˆ¿s‡/ºYµjõÁR~»c<º­Û¼ù„ì¶löBff¦ä!ƒå+V SgM¬[»‰‰‰|!ÚªU+w+[½·cÒ$ûf£‰Ûqwrá\"Š‹‹áææJi ûûûãñ“Tìö÷§NKK¾¾¾X±rÅÚÀQvâÄqØÛOBll¬Äbô\0µuÕê5’’âÛˆÚ´iË±âwKq¸´iÓ½z÷†O}¸*l±4ŞH:uê\'\'gDGE¢®®N(ˆ¡Ã†cåªU¨ªª*‚ --%K–€ñyCßø¬Y³$ŠÔjjjpóæMLœh‡S\'O‚Íæ¹ÒëÅ•«Vc—X\r,>|À¦M›pòäIMÔvüxx®ß\0\Z†”ädJd‘Á`ÀĞĞsæğ¢>Ë±V3h\\\\6{m‚µ\r6nÜ$Ñ†•‘Á“Õm\\Ü¹Ë§E`ßæØ\0`mckkêàr¹X³fµÄ*\"\0O#((¦ƒaÉâEHO†‚‚,ôğÀ£‡á¿g/ÆŠáRRRPSSƒ®®./Y‚€€#Ø·o/ê8eddĞ¦M¾*\'\'‡3fàì¹ó004¢Ô)9Š‹Š°jå\n¬\\±ÏŸ?—ø{M›6\rë7 M}NG§Ó1ÎÚ\Z\'N”(§c³9èĞ¡Ö¯ß€ˆ\Zúşº¸Û¶k:êêjçûşı;®Å\\Åßÿ\r---Œ±´ÄéÓ§„*ôïßF]00˜˜ôÇñ\'E¶ÿjéééX¾|9V¯Z‰Ò’’F§4†ÆÆ8w>Ó§O›ĞO]]jjj8|ğ\0.^¼(ğï“&Ùcõšµ ÑhØ´i#¶mÛ†;wî 44Vc-1v¬Ö­[ƒ””¬ZÉÓo“ô”-**ÂÊ•+øÄ&L°kÍ¶Ô˜êÂt:K–.Åƒ¨æö>`ÏlÜ¸Iâœ¢}ûöØ¶ÍK–,ãŒhß¡JŠ‹qäh ú÷o™¼kçÎ±ÿ,X°\0=zôÉË­¯¯€€\0DDD`·Ÿ/•w³ÙlÄÇßÁİ»ñp˜>öööbÏû2ØÛÛcÔ¨QøñãdddĞ±cÇ!°ïß¿‡.Z„¥‹añ’¥Í*£VUUQŞ¯NÿàÁ\0¼„„»““ÃË/““#”ÛÚÌÌ}ûöE~~>h4\Z:tè v^ıöí[\\ºt	B‚ù†L\Z†_V®\\ñ&HÒKKKÃÃÃåååğõÙ…¶mÛ\nLN›6\ruuuğßí‡K¡‘ñü9ºuë†={÷ÂÜ|¤¤¤––÷ù01€4ÄÄŠ¦8øùùáë—/è×Q]‹/şcÄ$ôÄ@©S0têKFEF\"44´Å¨û={xax=ssNİ»wÃÏÏ÷îİĞ––——‡››®_¿Şìç+))ÁÉÉ	¡—.côè1`2™”)‡ÃAğù³°›0`e***èÚµ«Ø£‰ÂŒËå…¬S¦üÕ±ÿ^g•n„Ls¹\\$&&@[[²²²c—/]‚‚‚\"N<Y‘d€Ëå\"66¶É{““ƒ––ºté\"–S¿ÿû÷íÃ$»	¸P/nßPÏg2™°k…K—Ã0}ÆŒª2,]ºMM±rÅr¡2ËNNNX¸pOÕsÄlß±# %%…ÌÌLÌå‚={cûO.ãZÌ>àÏÇÇ÷·×Æ……gÜ.\\¸ÀÏ©§KRRRZt­øøx²|Ù22Ù~™<Ù|øğ¡É×?}=]2mÚ4b ¯G/^DòóóˆÖ¯_/Ñ}ÔÕÕ‘¸¸8bccÍG”×À«¥§«Cöøû“×€Åµ¢¢‚èëé’={öB9~ü8ÑÓÕ!555‘¢¡>Ñ×Ó!………„Íf>ÚÄÉÉ‘ÄÄÄÈÈH²bùrbdh@?~L!äáÃ‡¤¯±ùøñ#yıú5éklDHmm-©©©!555Ä×Ç‡\Zè‹MNÑ”½zõŠøûï¦H\Z(‚†úµ1~¼-‰¿s‡ÔÕÕı¶gVXXH&ŒOôuINÎ[¡wÄØÈœ<q‚p¹\\Š-ÔrÌòõëW‰?3))I€õòåËÿ\nÙÃo/w	3mmmäççãu6O®„\0¸zõ\nÆXZ¢U«V+W,Ç‰“§`ffû÷#>şF% €{Û¶lËÌYø«kW¸»»ÃÕÕ\r7oÜÄ¡C‡ §§‡víÚÁ` ::\ZjjjHtMMM“Qt:ıõÆµ‚ºz\'$%&‚Á`ğ9¦§§#44ùùùPTT‚ššÚ?\ZÅkŞ½~ı:::ĞÕÕEnn.\0`ô˜1`0èÜ¹3êêØPRâi2ËÊÊâ[~>ªªªqçN=}\nÎ\ZX½z\rÕ£]TT„ÂÂB˜››ãÙ³g¼2ÕŒ••¥òæ6mÛâÛ×oè¨®.1uSuu5>}Š£G`ÛÖ-xöìßH*ƒÁ€´ŒÖ¬óÄŠ+Ñ»wïßÚ\"//SSS„#)1	cÆŒáCµi4\ZŒŒŒPÇfãHÀ!äÿ-[¼\0‡„@CCC¢Ï{ûö\rœùòêÉSş†««ë\rÁ©ïó»ZJ›³ÒÒR¸ºÎEVf&¥ÂĞ½G«é½ºº\Zvvv8p`?ºwç	°¿|ù3¦; g¯ŞØ³g•#?yò®sç`È¡ğõóÃ©S§ ««SSS”——ÃİİÏÓŸB­uhjjBUUŞŞÛùr§W¯^!::\Z«êË_ÍÙ·oßpıúuìÙí\ZÎ25äŠ†FF˜8qLLLş±ÎVc¯Æ\\n¿¾¦ñvãE,lq5\\“ÃáPU\0a¯!\\.bnP_¾|Á£‡ôôgD\r\\.+V®„¥åX‰¤•+ÊËQT\\ŒÊÊJHKKCUUµÙƒâùóçpqv„‰É\0ìö÷\Zâ/Z´÷’a`hˆ7IÜ9YPP€™3]ğéÃJFßÀ¿]iö?wì†œj¼­\rµ†·À;›íæJHH@dDöìİË÷÷OŸ>ÅLgtì¨Ã Óéokƒî=z 00jjjD×®])uÆØØ›	³‹¤¥¥Ñ¯_?>”³ºº\Znnnxš–ŠANN\\G¬Åœ——‡ØØXøïöƒN§&\ZŠA§ƒC¸˜:ÕÃ†\rƒ¶¶öŸÏ·şe+**BVf&âïŞEèÅñës`JIaá¢E5j´D]~~>\"\"ÂqøĞ!B0ÎÚ\Z:tár!%-\r---2¤É|øîİ»X¾l)llm±~ı¾(*!!‹yÀ|È0lÙ²E¢ˆà5K­\\¹I‰‰ÔF)++‹°ğ‰fÌÿ¿rl\0xôè\\çÌæŸæ0+W®‰”oßîNêà,Dû(++Ó¦‚Ãá@µU+htÒ€¯/>×sGÙÙÙ\0®\\¹‚‹.àÜùóB?+00Gà»ÛÃ‡Ç·oßpø06yy‰~ÿş‰‰‰8uò$>Îm’ÓLNN\'ÙÃÔÔ={ö[‰ñÍòóóñúõkÜ¿áa¨ªªäc,m\\ÛÖìÒÎÎ.077—øûæääÀÑqª**°Ñk3†\rÆç|,¥¥¥hÛ¶­H\0/ìòeìØ±sæÌÅ¼ùóğØh=×­ÅĞaÃáåå%1PÆf³±cÇ\\¾Ê7 râä©énÿO–»š²şıûcË6olÜ°l6B‚Ñ¦uk‘üËUUÕÈÌŞàòèáCÌptÄ§O¹HJLÀ¡Cùr\"üøñƒ*ßìÜ±Ó§Oz­àè‘\0LŸáHQ.)++ãÑãG(**»¾Ü®];ØÛÛcôèÑxúô)®DGãÖ­X*œåıá\rƒœ=s\ZçÏ¡ˆ€Ş½{C]]]è°Ëÿ‚•––\"//¯^½Â£Gsõ\n:¥ÚøtnØGk·($­­­Å¦MQQ^¨è+B¹î”””Äºö${{|ÿşAAT´°y³ÆŒ±Ä:OÏ¡ğÇ‚‚vù_—Üö;ÿu§şO\0lmmQğı;ØO)M<x\0ÊÊÊ˜Ò9º¡¡!¶{oÅ]Ë±Öˆã,22QÑQ¸té2ª««±kçN=B5–0ÈËËãÛ·o(//ÇÒ¥KPQQ	õ§÷¯§ì’Å‹Ğ­[w¸ººò/ÚÚÚøøñ£ÄÃ\0ÊÊÊ:t(ÌÍÍñîİ|Ü»—„ğğp|¬/‡5vr\0¸s×¯ÅÔ—ÁT1dÈèêé¡[·nèØ±#Zµj%q+ã?µŠŠ\nãË—/x—“ƒ/^ 1)¥%ü’¿ìú™ï†ñS\0è¢¥…I“&ağ`3tíÚõbùùùÈ|ñË–¯pê’’”••Éd¢C‡b}Î¼ùóQÆbaãÆ\r ÓépttÂüÄW´ldçÏŸÇ‘#|eÃ¥K—ÁÊÊê?Ùx™ÿÕïââ‚‚ÂB„Ô×/Ùl6¶o÷†¼‚<¬­m^?lØ0ìöóÅÒ¥‹±jõZèèèàÁƒ\n<Šë7n‚Á`@AAë×£}‡8°òóó±téR¨««#::\Z;wìÀ»œ;v\\ §c³ÙğóóEmM\r¶y{ìØ::ºÈÊÊjñîK§ÓÑ½{wtïŞöö“‘””DGGá{~>Ÿ“7Xqq¢££påJ4å@ZZZè££---hhh mÛ¶PUU…’’%a+--İ$øõK©l6›\"7¬ªª‹ÅBII1¾/@ŞçÏøğñ#22#÷Ó\'±	;vT‡µ\r\r\Z„={ş6ºdiiiú*KƒâÄ‰8î,zöê…NêP[W‹yóæC___äõX,ªªªÀ Ó±hÉ8;»´è¾\"\"\"àë³«‘S3àèäG\'§ÿ,¢ú×sì_‘îM›6âÆõë|á‹¯ŸĞÉ¦Òºòr\0 }‡ZŠ¸tévîØ[·°ÀBÿ×Şu‡5‘}Ñ3I+ ØÖ‚‚º*»¨k+öUQT,Ø®\"M±°v±‚}U,kwUD*À‚¢‹(H•&-“ùı‘dÈĞQÊ\0s¾/_ÚLòfæy÷İwï¹K!àóáæáY¨JÅ™3gàáî\nGGçB¥Œ‚ƒƒqúô)lÙ²µ\\ÏAjj*\"##ñôéSÜòˆ&m~v~ÒŠD\"Ô­[Í›·€²²2\Z5nÅºŠP¨[rrràKHGJTJ³23ñ#ó¾\'GRR>BNNN‘*F@‘\'i‡ˆ¢Ğ£gOèëFÏ=Ñ®]»\nñşŠD\",Z´ÂìÙ³\r[Ûµ\rÅÂEf˜3g¶oßß£GpñÒå\"—å>şk„‡…a£«\0@AAºººÚ^œn^~QL>Ÿ±cÇÁÁÑñ§3Úª=±¥ÛjÍ\Z<|Ä ÷f¯-´[‰‰‰‡‚‚ºtéR¬7ıÎ;°´0I’¨SGö022*°]XXfÏÄèÑc°nıúBÍ¸÷ïßcÁ|S\\½vı§LµÒ ;;±±±ˆˆˆÀ«—/ñøñc„…….,ê’É’½´k¥²¿UÜïæ8ìÜ¹3z÷îƒ®ÚÚhß¾=š5kV)Š/?~„Ñ¸qod„sçÎ¢œş6nîî´wûÊ•+pt°ÇæÍ^Œi›¬WÜ|å\n\0|B¯^½••…“\'Oàè‘£004„¶vWÔU¨‹¯11¸wï,--„Ò^¿~ÖVk¤Ö<®®®•^ÔuÄ/$ÂÜÜÏCBÊ]èıùóç˜=Ë<£Gâ¦¦¦bÆŒéHOKÃÙsç¬©ÇÆÆb×®ˆˆˆ@Xh(®\\½Væ`…_±hğåK4>F~DÄû÷Ehhh¡#ki‰ZÜ 0K K—.ø½shjj¢mÛ6hÑ¢e‰^çŠDHHÌ-DvVÆÁÂÂ’öŒ‡„„`á‚ùÈÎÎÆ›·\n¨Øaù²¥èÓ·¬­­,A½{÷ŞŞŞxô\0\0HÎa5uœ=wJ’TÙk×®ÂÆÚšQUFW¯76oöB£FªÜ¹É\nbâE}ó•+ñêÕË<róùp÷ôüeÁ÷?ÂÚÊ\nï0ÒÀË—/§…ÜÜ\\ñ÷™ÓØïs=%Õ<dçİææ+(‰1gƒfvv6RSS‘œœŒÄÄDÄÇÇ#>>			HLL@B|’’’””ˆ¤¤¤\"GnŠ¢ ¬¬ee(++Cµ‰*TTT¡ªª\n555¨ªªBUE••Q¿~ı*5+‹rè¥§§CMM\rA \'\'çÏŸ‡‡»”UTàíı£@CZZ\ZÎıŞÛ·A]½öíß_¤™NQŞ¿ÿşû?~ü@£FhŸÇÃåË—ao·–vJ«ÉlÙ²¥\\Fk±¥^Oó•\r\reŒÜëÖoÀøRHø–tãpssÃİ;·A’\"8x)))°Z³\Z+VšÃÄÄ¤P“ÍÂ|%4ÚµCÄ»wàñxX¶ly©Ë¢Vrssé‡t9Q¶t¯ÔcÍçó! \'\'G?ª+¾}û†­[·âæë3v,–.]ÆXöìœñ%ú3æÌ‡™3gştPĞÙ³g±aı:†:j÷=àåµå§y+l«äøíÛ7jæÌ™”v×ÎŒày??¿B«W–ÙÙÙÔë×¯)SÓyTîİ(í®](+«5…n›ššJıñÇPêÏ?§Q©©©Ô£G¨iS§RîîîöàÇÔˆ#¨îİ´©óçÏSB¡ş.11‘Ú¹sÕ³GwÊĞĞ€zòäÉOÿI’ÔáC‡IÚ]»PsLL¨øøxÖ°ñbÅÅÅQ¦¦ó™?İ´»R;wî 3˜~5;ÊÇÇ‡êŞM›25GEFFØæèÑ£TÏİ©§OŸÒŸ¥§§—©œ+‡ÊÁ…¨=ºSèÏ‚‚‚¨¾}zS=»w£|||~éºeeeQÛ·m+@êÅ‹Í¨ÄÄDVV™â²HNNÆ:ggÜ¹ó/CIcÂÄÉ°´´,—å”GaÁ|SZ~iÌ˜±hÔ¨¾|ù‚1£GaÌØqØ°aÃOıöë×¯ñèÑ#¼{÷EACCzzzĞÖÖ®”ì6Cê¯(¯ì-’$ame…û÷àsà nİº…c¾GÑ¡c\'¬µµE—.]~ú·SRR°yó&\\¼p!¯òù>r$ìíXÈZbâpËM›<qÁßŸ±¤Ğ·_?899—¨#]\ZÄÆÆâèÑ£8uò89xxnÂÃ‡A¸zå\nŸ8YfxVV8€ı{÷ĞKT²KFÓşœ%K–°¶CTRRR„G‚ı9\ZõêÕƒv·n8p 455ù÷?}ú„ñcÇ€dÒY[Û`Üøñ¿TÉ#::\Zxúä	c)vò”©°°°¨ôÀ\ZCl©xï=8xğ\0ÃaÑ´i3lİ¶;w)—ÿyùò%vîØ\'Oş’$1}ÆX[Û”yäpwwÇ™Ó§\n(µH!0xğxxz²ÎÓ\\Qxıú5ììlé·b‰ Ğ\nªVÖ6˜>}úOàÑÑÑğõõÅé“\'0vüxÌ;ï§ª½æïË—-+PÁsá¢EX°`!ë•\"´ğ+ĞÕÓC£Æñ0(ˆîééé8wî,45µÊ¥b†ºº:F‰:\"44ƒ‚ğ#3­Zµ*u–O`` 6oò,’Ô€x]8**\n-[şV¤NzMBTT&N0BRRÃ;/-×KQ£aÃFe®¹•’’‚7n`Á|S„¾z…9óæAQQ	Ã†\rû%3ÿÚµkX²ØŒ.2)•j²µ³Çœ9sË]¼V[jÆvíÚí55é)i¹uó&rüş{ç_V\'áóùĞĞĞÀ¨Q£¡¢¢Š½{vãØ1?(«¨ U«VÅ°\"‘^^^øôñc‰!E!ê¿(L˜8±Ø6\'$$àãÇ\0Àj³¯¸sâââ‚ÈÈÅ\n+ŠD\"bäÈÒ)ê¤¥¥áöíÛ˜o:wşı#\r±eËVàû÷ï°]»Ã†/sÅ–?~ÀÇg?<ÜİhÓ[\Z¿}»7FSmÎ=ëMñÂL$ó•+ÀdòÇXµju¹F…}úô	~~~8î,TUU±{ÏŞ\"­ƒäädĞ¿Tåk¥Ó‰â¢Øîİ½‹•+W@$\"¡ªª[;;6			¸ví\ZcÔàñx…&eHŠ»a–´Maí–’‘ÿF\ZU¨UóéÓ\'Œ7¶PÉâÂnª+VšÃÔÔ´Øíâããa2{6ââb1pĞ`˜˜Ì†v¾‚¾¾¾¸àï£¾¾¥cGEEaÓ¦M¸w—!<(òm+“Œ2+,İê6\nhkkÃ×ï\\]7\"ğş}IB’Äí[·ğ(8^[¶–[eao„\0\0 \0IDATdX›6m`ooCCClöôDzzz‘ÛæääĞ2E¥EQ…ÒÓÓ±|ù2LŸ1+V¬@VVşüs\ZZ´hMMM?DP` „(\n4Éd­)y‹³JÚ¦¤}ø|>äää\n­A¢¿úêmúUUUxxz\"#=ºzz…šÅ³fÍÂ£G°{÷.¬ZµºÄÿ~ğà›-bÜä>\n›µÅWäFìrFFF:Ÿıûè9­4ªjÙòåøóÏéå\ZˆŸ™™	W¤9‘‘1£G#!!¡Tä&ÿŞ¹[h´R\\\\F†¿Ï¥õİÜÜ\\-[¶\"++iii Ş¿‡™Ù\"Ø;8B__Ÿ&†ŸŸğÁ™¿ÏBEE¥Ğì,ÿóç±c‡7|ı£Y³f¥j·â¾}Ã½{iRñx¼BC)oİº‰Õ––´ZN±–\0A oÿØ-‘·úU|ü‰I\'àô™³hß¾}‘&ı±c~Ø³{7=ÿ—ö!³ÅK`bbR.¹»PRRÂ²eË ©©‰5«WÑæ¡P(Ä_ŞŞ¦Õ.Ë%]`%¥z00…ãÇüJ4=¥õ‹Š+VRRI’ädœˆrxûöH’„‚‚a&%¸ªª\nC¢Q£FbqúfÍŠtş5VV¦·)­€„’’\"äååK5Š)+« Ô£AĞ±ØåzõêKş±Pb‡‡‡ÃÃÃÏC1Lo\0ğÚ²µ@aêª9F‰¿ÏC:ôB’$?z„iS§àôéÓÈÊÊª”¶L™2¥T¦-ÇÃÜ¹sŠìÄJJJ˜mb‚7o^çÍAy¼BÓ\"…¹¹âg!óf\"í¬¹’ï)±tŠÛ¦À>¤X‚,Æó/Eûöí¡¨¨X*SŸÇã¡9•’ÍÎÎÆ‰ãÇH™™‰\'N`úŸÓòì)C›L¯woœ÷¿PíI]#ˆ\r\0ZZZØ±c™™¨ÎáºÑ«W¯ÆÛ·o+¼\Z\Z\ZğğÜ$®ÃUHg&rlÖÚ¢{÷ÅşÖ‚ø HNNÆçèÏPRR¬òs-­êR\Z4hĞ\0k×ÚÒõÎŠ#u‡Ñ§|#wîÜÁ’Å‹Œ»v3Ö³ÃÃÃaanN{½e«,]¶Û¶m/uy&Î¯$Ô¯_K–,E÷î=`ccƒ”ïÉ´äRÀ½»¸pk¬¬1~üø\nÕv600€²²2vîÜ‰!Ï@{( ½¦–-_Áƒ—ø;\Z5‚…¥%.]ºˆ¸¸x¢W/İr&iá„ËÊÊÂ­[·è2Á”ŒtğÛ7oËäL\Z5z4][(³-ÛUxxxşR”˜ºººèÔ©TTTè ’””œ?[%•TeEüÕÕ›bƒËôîİ5	Ô0ôë×gÎœÁÁƒqêä	úÎ\0›<=péÒEXZZVè…”Æ„GFFâë×¯‰DhÖ´)Újh”É¡§¬¬LëpEGGãû÷äd”/£šKVV²³³ˆ½ï…ùËN8oïí€¤j-±zÊoeĞÇX±r%´:tÀŞ½{ğß§Obç=%ş-ãY³all\\.áÁâ¹u=úS…‡b‹—\"\"Ş1Ö¦ù|>ŒgÍ‚‰Év¥[rÄ.\Zêêê°±±Aß¾}áäè€ï’’¬$I\"<,‹,Àä©Ó`ll\\¨„my@AA¿ÿş;#Ù¿¬HMMÅ«W¯ÀãñƒôŒtĞss‚ Uê%¶ììlÌŸoŠÈ@<äææ@”oÍÉÉÁÅ‹A’$/^‚á#F@Yâd\0kkk¤¦”­2ŸÏÇèÑ£¡¯¯¨¨($\'\'C^^-Z´(7BçÇ‡àë{şçÏ3\"Ş¤£´ƒ£#ˆš\nAM=0‚ 0xğ`œùû,;†Ã‡ÒU9„$‰Ó§Nâô©“Xµz\rÆŒÃ\Zå‹üeK—Ğj¢\0°rù2†y/’Œ¤¥A:u0|ølõBn®8ÃJDQŒ©‰P(Ä»woÑ¯ÿ\0ZH_ŠŠu‘$Ñhÿ™ÑôWnt¥A||<.^¼ˆíÛÄ¢“y%y	.ÂŸşYfiÎyÆ2¨©©ÁÜÂFO^çZÔï¯Í˜<y._¾\\l\0JUYÛ½ÿ¢;fŸ>}qùÊU\\¹zW®^ÇÕë7°k÷R/Ù³gcş‚E İ­;:Ì vİºuÑ½Gtè Uèo¤ˆ•×955şşş?n,¼·o£¯¯Ô9¦×»=ŠeË–ÕxR×è;?ttt°k×.\\¿~Nàóy´y{;[hjiaÑ\"3ôë×¯\\9åAƒÁÁÑ	]6@H’´V›ìœeˆ#‹-B\\\\2ÒÓÔ\'FFX-®kFz:b÷î]øôñc³[NNNN>|Dµ\r6áFì ¤¤„‰\'âú›05O‹êKMİ7¯_cõ*K,\\¸·oßFFF+Ú=iÒ$¬ßà‚víÚˆëÎ-\",µ$‡–\r¾§¤`ïŞ½¾2dB=cÍñ†ôôtÜ¸qóLçÁÚj\r>¼¡PHWåóùXd¶—ÿ¹‚qãÆ×*R×ª[Í›7ÇŠ•+ahhˆ¿vìÀoË”©âÅó¬²|‰;ÂÄdúõëWå’²cÆŒÁèÑ£ËM}¥nİºğòòÂ¤I¡¦¦F,\0ÌgŠk×®\Z^•HJJBPP<€È#´´Ğá„‰“1}úô:à±k	4ó]xq¶ ‰	Ûµ6h¢¦ùóçcàÀ¿\\×úWP©…$)©¿ÏDÍÈ(²¶\r6Äñã\'0ì¡PUUex‰§L™‚Å‹£_¿~ÏuBB‚8R­’å¢££€ıû÷!9)$Y°,ï°á#0ÓØİ»w¯õòS¼Ú|ğgÎœAÀ½»tğ«Ö­¡?x(|>\n)\nó®]`0b8¶mİŠ°°°bÅ*Íš5Ãà!CñãÇæÜ|à@4oÑ¢ÄpQ555\\şç\n–.YŒ¨¨(Æˆnccƒƒ0bß!\'\'WªTÌ_Enn.^¾|	///Œ24€‡»âã!2å”uõôpèÈQ¸{x GµÔ@5Îî*`”¡Cöfï¾}ĞÑé…§OŸâÌéÓ¸yó#RIê€bìØqĞÑÑ©ò\0‡œœ¤¦¦ğö&%%AAA¡TÀ¸¸8Ô«W¯À¶qqqPUUexŞãââ ¬¬üËÂEáÛ·oxúô).^¸€‡ƒ\0Š™¯Î¶têDz÷éƒ={öVX{8bWP{{\\ºx¤H>£	á¼n}·\'Iaaa¸páş>}\nÄŸÓó9‚\0ÏIŠ0gî<èëë£cÇU^³©º\"--\r¯_¿Æİ»wá{ôˆdÕBT Î6EQ˜>c^¾xĞĞPPŸsKÌ™;—;‘µ™Ø<À²¥KâˆW¯]/°”$Edd$nß¾ƒ|™™ÉpØH÷\'­Û´ÁØ±ã §§‡víÚq$/™ß¿G‚áŞ11_XH<˜Ğ\r\Z6Âœ9s1dÈ´mÛÏŸ?ÇœÙ³è\\o>ŸsçıkLGìŸèLÓ¦NÅçÏâPL@\0G§Ryñøñc\\ğ÷›ˆ\0c—­İºM@WWLòŸ-)SÓ˜˜ˆ÷ï#ğøñÿğÏåËˆ‰ùZìy8HãÆC¯^½\nœÃM›<áçëRâ@Ô<Û¶m«bƒ±ËûöíÅÎ;èÎĞ½{ì÷ñ)“pnn.\"\"\"€S§N\"9)\"s¤‘íœòòò5j4tõôĞ¡C4oŞœ50Œôt|ùúoŞ¼Áÿ?†¿ÿy†nZ~Ë‡Gh¢®©S§aÀ€ĞÔÔ,rîœ€qcÇ --¾I»{xÂÀÀ€#vm\"ö»wï0eò$Fr½ß±ãe–½•Å÷ïß\ZŠ»÷îáä‰ãàóùt8£,¤æ:(\nm5Ú¡ÿ€èÚµ+Úih@½iÓRK³İw‘’’‚ØØXDFFâåË—xpÿ>>¢¿Ïóß\0	r˜2u\Zô\rÂï;—ú|Ü¸qVkVC(‚ Ô¯_/]®a£±!NnX¾|9Ü‡H$ŸÏÇœ¹ó`aaQnÿğğpâìßg@\n…Œ´ÇZRĞ^YY½ûôE§N ¡¡æÍ›CYY\r\ZÔŸÏNOonn.ÒÒÒ˜€/_¿\"22¯ÃÃñğaÒÒÒh\"¦*]w¯[WF&¢ÿşèØ±ãO‘‘\naai‰»wş¥¯ëŒ™Æ°¶¶æˆ]ôêÕ«XkcMßÙ++ÃßÿB…Í}¥sÉ§OŸâÎ;x\'Qp)ª³ÓÉ6ò\n\nèÑSZZZø­eK¨7m\nUUU4lØJJJPTTD:u*lÍV$!\'\'?~ü@zz:RRR˜€ØØXü…ˆwïüP–ĞåŒŠ:6A@DQèÒUúúúĞÑÑA»víJ¥#^\"##1Áh<£ÆÛÁCG\nÔ;çˆ]Ã1£GÑ•6oöÂ°áÃ+åÿ333ñåË¼}ûÏ=Ãİ»wOä\'ƒ”ÒËGAAmÛŠGvÕ&MĞ¸Q#4hØõêÕƒ’’äåå!_§rryÓ\0sX(\"77999ÈÊÊBFF22Ò‘’’Š¤¤$ÄÇÇ#&æ+\"?|@nnn6Öæ¼™\0±5Ò¢EK4=zô€––š7oN1–\'>Œ­[¼ $I:áÈ‘£µÆ—Q+‰íéé‰c~yŞÓ!CÿÀ–-[ªÌ{šššŠ˜˜DFF\"<<!!!xñü9Mô/šéeŸFªvé:@!ÛŠ»%QW¡\nUY‘†ßŠÿ› Gy]==tëÖ:uBÛ¶mÑ¬Y³JYöËÈÈÀ¬YÆˆT7ğùXme\rcccØ5!!!˜k2›±ŞyŞÿB¹Ôû*/dgg‹«QÂÑÑv00Ñ™ÚWÌçrï27ü£³¢¢\"š7oßZµ‚––Úµk‡–-[¢iÓ¦hÜ¸q•¬{ò¿ÿaş|Ó¼ø>/^ª0•6£FÇàeffÂİİGğù°°\\Å*Râå0555„¿§?ãñx?Ş¦óç#99ñññøöíbccó1_¿\"êóg¤¦¤Hö(m™¡Â¶•’¸qãÆhÕº5Z¶l‰ääïxH(+«`×îİhÚ´i¹é€—zéêbê´i8uò¤x¾MQğöŞM›6×ºµí\ZMl¼}ó†)n£¡Éío¶áÚµ«8}êT^M,\0K–.E³fÍ\nŒ8EÑsã¬¬,dff2RÁÂÜÜ\\…¹ …$mâó|êÔ©ù:u P·.S^·n]Ô•¼———‡¼¼<RSSal<##AQbb¾âßÛ·a<këÎãüùpîìYzÉñßÛ·q÷îİ\Z¡Î™â×\Z3zT¾$ıèİ»7ëÚ\ZƒÃ‡Ñ¤Øèê†Ñ£G³¦OŸ>…é¼¹´™Ëçóqâä©\n×0ûüóÏ?°³]K¯€4lØ/]®UÑ52m“¢(ìÚµ“~Ïçó1qÒdV’š¢(ìÜ¹“Np†F9’UíÔÑÑÁl“9´IKQÜİÜ*­ÊJY0räHôë×Ÿ>§iii8|øp­\Z±k$±píêUzNH‰(,X°€•m½{÷.._ºÈÈo¶´´de\nâÜ¹s¡®Ş”®´òòåœ;w}óK\0æŒL½£GáÅ‹±«+RRR°ÑÅ…6ºŞÅ¥Âô«‰‰‰pp°—	¬ÀÉÉ­[·få¹mÜ¸1œœéQ[(ÂÃİ\r>|`][µ´´°bÅJº­\"VZ±KãÇáÛ·XÚ¬í©£ƒQ£F±²­ûöíEZj*İV]==Œ7Õç·ÿş˜2u*Ã$ßäéY¦Â~•…©Ó¦á·ßZÑFxØ+øûûsÄ®nxóæ\röìÙÍ(å²zõšB«TV5‚ƒƒó–e$mµ²²fe[ócáÂEPRR¢	ü—/_f];ë×¯;{{C\\¤ñóçÏ±«rssáåµ™¡)=ÁBVzmSRRàììÄˆm^µz\r455«Å¹nÒ¤	6¸ld˜äN¬$Lß¾}1aâDÆ:ö¿ş*}Ç›¥¸~ı\Zş÷ø1í0kÒDµá„GAÌ×¯´	Ş¹sWº¶vuÁ!C`8j4ø2*Û¶m«‘ÃŸ±0(J$™k‹pıú5ÜàˆÍv|ûö\rÎNN‡™½}¹d•7BBBpĞg?Ã_kk[ííy<–/_Jr\"‘·oİÄÍ›7X×ÖfÍšaƒ‹+½Ò@’$œ×9#99™#6›áã³¹¹¹ô8|ø\Z4ˆuíÌÈÈ€‹‹âÊçó±dé2téÒ¥Z÷æÍ›ÃÕÍ6sI’„½bccY×VCCCèêéÑkÛI‰‰ğóóãˆÍV<yògNŸÎ,]¶Œ•±Á\'Ç‡ˆwtˆkë6m0sæÌj}ş\r0H0M˜ÜÜìÜ¹lh¬S§,-W1Ö¶}öïCXX(Gl¶áÇpssc¬¯±²fe6Ïë×¯ñ×_ŞyYf<œœœª½’©@ ÀªU«è÷$)Â¥‹pïëÚÚ©S\'˜-^ÂXªóôôDvv6Gl6áÜ¹sŒ°]{MLdY­)@\\ÓÍÕ•á±Ÿ=g.ttzÕˆNÔºukØ;82æ°vövHüÉ:Ú‰3f0¢ç^<ÎÊ¥ºZKìOŸ>a“§#ÏzíÚµ¬TÌ8wî^¾|A{ìÕÕ›bn\r·722B¯^ºyñÙ©©ğñña];6lG\'\'ÆRİ:g\'|ùò…#vUC$açŒpê´ièÕ‹}#à‡àáîÊÈŠrrvf¥ÇşWç°VÖÖŒ9ì‰ãÇğ(8˜umíß¿?ÆŒK/Õ\0vïŞš”èX-‰}ïŞ=Ü¼yC2rrr05Ïºvæææb“§\'--Äçó1yÊTôïß¿F:l´´´°jõ\Zd¼äëÖ­Cjj*«ÚI/YBL\"._ºˆÀÀ@ØU…ääd¬_¿NfÍZ\0gçuPWWg][/_¾Œàà‡´	®¤¤„E‹¡&còäÉèÔ¹³XZ™¢ğåK49Âºv¶hÑNNÎ¿€‹ËÖİ„j\r±ıüü”˜ÈHœÉÂÊŸ?†“£„d	¾Áec•Wæ¬h(**ÂÖÖ„ÄÌ•.+=şœum3v,ºuïNûb¾~Å±cÇ8bW6ÂÃÃá³#jkÕªÕU&WH’„÷öíâ7”8JËpÔh2µ]»vÅb™e%‘H„\r6 ##ƒUí”——‡•Ó/°g÷.¼yó†#ve!\'\'›7mb8ÌÌÌ£cÇ¬këÍ›7ó|\0’Ï–/_Î*á¿ŠÆLcc´nÓ†V9ıñ\'Od];;wîÓùkÛ^^›‘““Ã»2påÊ<{ö”±d4ƒ…Q[±±±°·³ÍópusGóæÍQ›P¿~}8:8æ-+‘$¼·oÃë×¯Y×ÖY³fAYE…^ÛşßãÇ¸ví\ZGìÊ ‹£ƒ=cÉÈŞÁ\r6dU;¥úe²qëƒô×Úê½tu1ÛÄ„©“æîÆºH¯ÆÃÑÑ‰‘·mogËÊ˜÷\ZEì}ûöÑó ÃQ0`\0ëÚpï.]¼Àˆ[g«~YeaîÜyhÒDéuîÜYÖµS__#\r$Ó%q$ã¾}û8bW?~Œsgÿfäù.]º”uóÕÄÄD8::2âÖíkeŠü£¡óºuŒH/w77DFF²‹<–.]F¿\'IçÎş`ØT{bg¤§ÃÅeƒ,kmíğÛo¿±®­>>>øş=™6Á{õÒ…‘‘8\0À¤ÉS\n8¨Ø¦“ÖªU+ØÚÙ3×¶7l@zz:GìòÄ™¿ÿÆŸ>ÑI~ÿ•dyôèN?ÆX†[ceU-ôË*fffPPP MòÀpåÊÖµÓÈÈ~ÿöæş…S§NqÄ./DFFbë/†*Š••5ë”FRSS±nsUÁçÃrÕjtèĞc³š4i‚®®“ÜÁŞÑÑÑ¬j§‚‚lllè8rRâÍˆˆàˆı« IıåÍX³1Ó=zô`][9‚/ÑÑ´	Ş©sçj§_VY:ô\Z2tÒ¼½·³N\'­[·î˜=‡YõdÛÖ­ôªGìŸÄÿÅÿ¥×¬X™æøâÅsÈ	gkkWk‹­—ØÙx<,_¾‚¡“vãúuÜºu‹um51™ƒú\r\ZäMàÆë±IIIØ°a=Ãw^·u1Ö…é—™™-F×®]9ƒ-Z`£«C\'ÍÑÁß¾}cU;UTTàì¼ÑÎuÎÎˆ‹‹ãˆı³¦í÷ïßiÓ¶o¿ş>|8ëNÜ©S§ñö-C¿ŒeeÙCCC8N¾ÈÊÊÄî]»X—=dÈ:T¦YğñÙÏ»¬xõê:È0m-,,Xàñúõklß¶UF½…GGÔ¯_Ÿcm) ÖI[-ãSÁßÿ<îß¿Ïªvòù|¬X±’÷\'I§OÂ“\'O8b—ÙÙÙØ¼y-ìÎçó±lùrhii±ê„eggÃİİáØ›5Û½tu9Æ–mÛ¶…½cÍØÉÉIII¬kçj+k†x„«ëFÖeª±–Ø—/]Â‹çÏ!‰MÛ-ZbÚ´?YwÂÎ;‹!!´cOYEóæ™rLı	¡§Cë›:i“&M‚f‡ôÚväû÷8{ö,«Ï-A±`bóõëWŒA×SØ¹k7ë$„\"##1Áh<#nÇÎ]¬Œ[¯.xûö-¦N™Ì¨c¶oÿèéé±ªOŸ>…é¼¹ŒD¤óş ¡¡ÁØEaÏîİŒ$1cÆ¢_¿~¬:Q¹¹¹ğÚÌ,ú7qÒdÔ¿ˆ:ÀÒr•Œ©+‚³“ë$Šttt0}ÆLæÚ6Kk•±‚Ø>ÄE™Œ(\0X¼d	Mt¶àÊ•+|ÀX[733ã˜Y˜2u*:têD›º_¾DÃ××—uíœ7o#,6àŞ]Ü¾}›#v~¤¥¥aÃúõ3ÌŞÁ-Z´`ÕIŠ†ƒ½cm}£«+ÔÔÔ8V–aggÏãÜ·w^¼xÁªv6iÒëÖ¯g¬m;;9²²0B•ûôéÓøú%/³KWmŒ7U\'ˆ$Ix{o§Í/i>øĞ¡pŒ,Ghkkcá\"³<SW$‚‹ûtÒ†\rÎXƒÏÈÈÀ¡ƒ9bKñş}¼·o£×‚y5k¬   ÀªtûömÜ¸~Q(½¶é—UŒgÍÂo¿µ›º…ˆ·oqúôiVµQ ÀÜÜ‚!€èç{!!!±…B!¶mÛÆ¬ee2İºucÕÉùöíl×Ú0¼à]İX7U¨)hĞ œœ:iÛ¶najhûöíana™çğ‰àîî†ÌÌÌÚMì[·náÁıû!}“9sX×ÑvïÚÅĞ/0p \r\r9V tuual<‹á}öpwgNÚ”)SĞFCƒvø½}óçÏŸ¯½ÄNHHÀz™üei’‡ŠŠ\n«.\\@@\0üıÏ3ôËV­Z]«õË*óLMª¡!!ÏXE\Z\0¨W¯lmíòI>¹â¿ÿş«Ä>|è222èQpà }:”U-))	NNLı2[{´mÛ–c]%@YYëÖ­gÆÍu#>~üÈªvêéé1$Ÿ\0`Ç_1ü1µ‚ØÏŸ?‡ŸïQF’‡¹¹9ëFAŸıŒ2B=ut8ı²JÆ Aƒ0aâÄ:il;X¸p!ääähëâæÍ¸{÷ní!vVV<==!’q˜­4·@»víXu¡?~ŒãÇ˜úeÖÖ6——çØVÉ03[Ìypÿ>®üó«Ú¨®®§|yÛÎÎNUÌRiÄ¾páÂÃ^Ñ³ÖmÚ`*Ë$„RSSáìäÄĞ/³°°äôËª4\\62Lr{{;Ö©700@Ÿ>}éµí”ïßqôèÑšOìèèhltÙ\0¡0Ïafgk‡z,Ë_öõõÅ™€™:aê´iÃªüñFŒÉˆğöŞÎŠy¬rrr°°´d¬m:x\0/_¾¬¹Ä¦(\n»víÊûCÆÆ³Ğ»OVu /^`ÿŞ=ÜÎÎÓ/«bHÅ¤×D$áúµk¬‹ÑîĞ¡ÖXY3\"ç<==ªl™®Â½V¸òÏeúKQââã°cÇ>ŸŸ¾@\0@÷ÏÏ§?ËÿàñxÌÏx<ğd¾“~/}]Ü#++®72ôË-2ƒ¶¶6Ç, eË–pqÙGG…B$	{»µĞĞĞ@ãÆ!‰Jx É¼÷$IBD’ ¥¯e>’$ı™P(„HDB(F\n… Eâ×Â\\q;„$)ÙN„Ä„ºŸ‹(\n¡¯^áÂ…˜:uj¥Ÿ³\nÍÇNMMÅäI“ó•¡gEx<@Ù3¸d÷(±áU`æáR (Ğ&­_Öº\rŸ8\r\Zp¬b	„B!ÌÍÍpï.í§‘½²Ù€…e–”-X¦~UD\"Qİ6‡+W¯¡eË–5Ç?æç‡¸¸o–¢(¤ø.YÖ‡PæQâö…Ü½)Š’yäµG6¼ÕÉÙ™#5Ë ÖI[)?¥×Œ\0ó=EQ…ÚåÚ¯Šx6y}U\0\0ğIDATFQ%yÛ6b¿}ûS&O‚œœ²³³Ü1¾G©GğŸº»2zËÚRRÏ46Æš5V“XŠ“\'OÂİÍUÆRx¿!ò¾¬˜ş$Óo\n·Åïååå!\n±cç.8°ú;33“1BJ_ö,}-ÛĞŸËŒºÒïØ–(ÂÁ\nÍ38”#©	‚à’Š9p¨àˆÍGl8pÄæÀGì²€¢¨OA ßcSi÷\'âX¾}3Jñ?ßªû\'bAW‚øBD6A1AÜ$b^9üv@¾sjXÂö…\\Ã¢ØpŒÕ5Mdf¶P›îà¹¹¹GêÔ©Ó\nÀñ|_5“<†ñÀDŠ¢¾ü©Ø]“‘±+Ò°æA”¢Î ˜oß\Z:uê´0¤„Íz¸ò¤n	ÀCò6©&#GìªA8€hÉëÙ¥Ø^ºM€ôš~‘	‚° ­EDğĞQÂ `£Ì\r®AËø»4\0pÀÍŸhb3Ô·ĞG»*>Æj7W­–‰D%ğ€»äuFqûh\r@$Ùv€ï’×é¥øŸØêx®\0ÄËƒuÛ˜Êl“Q†ß&Ù\'Ào\0NÊüA	û>(îÜ³å«áõ®Q^ñ#’gÅœ$³!Î‰D6µ`´6 *yû¢(÷\"nğ>\0ş\'sKúíÌÌÌõ’‘\0¬(ŠŠªiÇÈ™âUoy„xR\ns|–äù\"AmjÁôZÖçPR¥»ÃEìW(ÛPp¢¨İ5ñ9b³kÔÖ/Œ´Aô ™oÛš.2¯JØönû6J\ZHn’™\0æ×ÄcäˆÍüøñ£	€\\‰©]˜™e\"y£(êr-!¶–Ìëw%X=aÿCşı\nÃ^É³#EQ¿ØF9‚ |	‚ˆ\"\"‡ ˆd‚ ^±‡ ˆ~UxŒ±Ù€ºuë:ø§s\\ªQsµd:ut)¶—.W)3Z{Cì„üEQ›Ê¡u$£+ÉëÆ\0´˜\"âÂ÷ïßM+ó9b³RİW-‚ úÊtÆi2àh-\"¶’ä¹´ªz?¤/H’¼W©ûX&±ŒL+éÆ7nÜxee#Gl‚¢¨s\0µ¥føKŠ¢BÀ¡È¹„ïHú+EQ¿ª¯\r`+€±\0~—‘¨j+™JËl«MÄîJ:FØ,ÅIÉó4É(ÓÀˆZ8Z€4¾´¥LêJ_ğù|ı|£õz\0¿¥(Ê©nÂÓ(Š² (ê’dUCúùGŠ¢ü(Šê@ÖÔ_@QÔ§Š<FØì†Ôã­LÄ$ˆcÈG±r~M„G	I³~ò§¿ËüGi¤2•ó›«’}»\0°‘œÃÊ2ÁAQÔ\Z\0a’·g^QÇÈ›ıæøc\0¯eÌq©~ƒ¢¨˜Z6bËz‰µJ¸¹t–éù½ËÆ;¶ø\0u’ZI\\•ùnñ/Ã\r™×¿Uà1rÄ®šÜc!ö°Êäl¼Y—+íû“?*ózP	Û.b?¶ÏKËë9bWøA¼^)=ÆŠ¢N¢öáºÌë’Ìù9EìWÕ!ó:º†#GìR€Ÿü+óÑ™ZHjPuy«í‚°)ÂD@Wò6S$m(£E!õhŸ’ÙÍPæ»ŸòhKÄ3:KŞ’B¡Ğ¼¢‘#võéÔÃd:Ö|Ô^¸É¾&Â› ˆ’Î®A„ò\"É\0`[EÇÑq˜ ˆ¿	‚XH„Ame¾kCÄL‚ X#³ÛÁb¼Ø¬;Æªîü5\"móRÜÊ’¶Y–Çf–¥ò–²İ/ñJ•¶	À¿Œç34\'\'ç0‘KÛäÀ\Z$\'\'\0PR”Õ\0£XØüóÿı÷Ÿ¹œœœI\r>Ær…€ëòµ\Z5: ©&jñÒU7\0*ÇM‡8!ÉWş\\I–âx‚ ÆA,e¤±&™:ÄKj)\0>\0xÀ—¢¨g(…FÛ±*Á•øáÀ¡¦‘š+ñÃCÍGlj şGı7¸Å:Ä+\0\0\0\0IEND®B`‚',NULL),
('nabl_symbol_blank',NULL,NULL,NULL),
('nabl_symbol_old',NULL,NULL,NULL),
('prerequisite_examination_for_print','10008,10010',NULL,''),
('qc_analysis_time_examination_id','10006',NULL,NULL),
('qc_equipment_examination_id','9000',NULL,NULL),
('qc_id_examination_id','1048',NULL,NULL),
('qc_lot_examination_id','3001',NULL,NULL),
('qc_result_limit','400',NULL,NULL),
('qr_code_width','100',NULL,''),
('qr_link_prefix','https://gmcsurat.edu.in:12349/clg/',NULL,''),
('report_bottom_margin','15',NULL,''),
('report_header','  <table border=\"1\" style=\"padding:2px;\">\r\n    <tr>\r\n      <td style=\"text-align: center;\">10011|r</td>\r\n      <td colspan=\"4\" style=\"text-align: center;font-size:2em;\">\r\n      10012|r</td>\r\n      <td style=\"text-align: center;\">report_qr_code</td>\r\n    </tr>\r\n    <tr>\r\n      <td style=\"font-weight: bold;\">sample_id</td>\r\n      <td>sample_id_value</td>\r\n      <td>1001|n</td>\r\n      <td>1001|r</td>\r\n      <td>1002|n</td>\r\n      <td>1002|r</td>\r\n    </tr>\r\n    <tr>\r\n      <td>1004|n</td>\r\n      <td>1004|r</td>\r\n      <td>1005|n</td>\r\n      <td>1005|r</td>\r\n      <td>1006|n</td>\r\n      <td>1006|r</td>\r\n    </tr>\r\n    <tr>\r\n      <td>10002|n</td>\r\n      <td>10002|r</td>\r\n      <td>1000|n</td>\r\n      <td>1000|r</td>\r\n      <td>10008|n</td>\r\n      <td>10008|r</td>\r\n    </tr>\r\n  </table>\r\n',NULL,''),
('report_left_margin','20',NULL,''),
('report_right_margin','10',NULL,''),
('report_top_margin','90',NULL,''),
('restrictive_examination_for_edit_delete','10008',NULL,''),
('status_button_info','1001,1002',NULL,''),
('status_column_size','20',NULL,''),
('status_lot_size','200',NULL,''),
('TAT_remark_id','5191',NULL,NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumable_name`
--

DROP TABLE IF EXISTS `consumable_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumable_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `consumable_name` varchar(100) DEFAULT NULL,
  `reorder_value` decimal(10,0) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `consumable_name` (`consumable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumable_name`
--

LOCK TABLES `consumable_name` WRITE;
/*!40000 ALTER TABLE `consumable_name` DISABLE KEYS */;
INSERT INTO `consumable_name` VALUES
(5,'ADENOSINE BUFFER',NULL,'2020-08-17 14:59:54','9099514805'),
(6,'ALB_BCG',NULL,'2020-08-17 15:01:18','9099514805'),
(7,'ALP-R1',NULL,'2020-08-17 15:02:42','9099514805'),
(8,'ALP-R2',NULL,'2020-08-17 15:02:51','9099514805'),
(10,'AMY_CNPG3',100,'2020-08-17 15:03:28','9099514805'),
(12,'DIAZO-A',NULL,'2020-08-17 15:04:01','9099514805'),
(13,'CALIBRATOR-2',NULL,'2020-08-17 15:04:23','9099514805'),
(14,'CALIBRATOR-3',NULL,'2020-08-17 15:04:32','9099514805'),
(15,'CALCIUM_ARSENAZO',NULL,'2020-08-17 15:04:43','9099514805'),
(16,'CHE-CHOLINESTERASE',NULL,'2020-08-17 15:05:06','9099514805'),
(17,'CHOLESTEROL',200,'2020-08-17 15:05:24','9099514805'),
(18,'CKMB-UV',200,'2020-08-17 15:05:40','9099514805'),
(19,'CK-TOTAL',NULL,'2020-08-17 15:05:48','9099514805'),
(20,'CR-R1 NAOH',NULL,'2020-08-17 15:06:08','9099514805'),
(21,'CR-R2 PICRATE',NULL,'2020-08-17 15:06:20','9099514805'),
(22,'DBIL-R1_HCL',NULL,'2020-08-17 15:06:40','9099514805'),
(23,'DITHONITE BUFFER',NULL,'2020-08-17 15:06:55','9099514805'),
(24,'GLC_GODPOD',NULL,'2020-08-17 15:07:11','9099514805'),
(27,'HDL-PPT',NULL,'2020-08-17 15:08:34','9099514805'),
(28,'IRON STOCKK SOLUTION',NULL,'2020-08-17 15:08:53','9099514805'),
(29,'IRON-R1 THIOSEMICARBAZIDE',NULL,'2020-08-17 15:09:13','9099514805'),
(30,'IRON-R2 FERROZINE',NULL,'2020-08-17 15:09:25','9099514805'),
(31,'KETONE BODY CONTROL LOT',NULL,'2020-08-17 15:09:50','9099514805'),
(32,'LDH-DEA-R1',NULL,'2020-08-17 15:10:13','9099514805'),
(34,'LIP-TURBIDOMETRY',NULL,'2020-08-17 15:10:48','9099514805'),
(36,'MPR',NULL,'2020-08-17 15:11:26','9099514805'),
(37,'STD-A -NA + K',NULL,'2020-08-17 15:12:11','9099514805'),
(38,'STD-B NA+K',NULL,'2020-08-17 15:12:26','9099514805'),
(39,'PEPSIN',NULL,'2020-08-17 15:12:46','9099514805'),
(41,'PHOSPHATE BUFFER',NULL,'2020-08-17 15:13:44','9099514805'),
(43,'QC-5',NULL,'2020-08-17 15:14:15','9099514805'),
(44,'QC-8',NULL,'2020-08-17 15:14:21','9099514805'),
(45,'TBIL-R1_CAFFINE',NULL,'2020-08-17 15:14:42','9099514805'),
(46,'TG-GPO',NULL,'2020-08-17 15:14:54','9099514805'),
(48,'UA-URICASE',100,'2020-08-17 15:15:20','9099514805'),
(49,'UIBC-R1_HYDROXYLAMINE',NULL,'2020-08-17 15:15:41','9099514805'),
(50,'UIBC-R2_FERROZINE',NULL,'2020-08-17 15:15:55','9099514805'),
(51,'UREA-UREASE',200,'2020-08-27 17:36:21','3'),
(52,'URINE DILUENT_MOPS',NULL,'2020-08-17 15:16:32','9099514805'),
(57,'DIAZO-B',NULL,'2020-09-01 18:42:25','9099514805'),
(60,'signal reagent',8,'2020-12-01 12:16:11','9099514805'),
(61,'versa tips',2000,'2020-12-01 12:16:03','9099514805'),
(62,'wash buffer reagent',10000,'2020-12-01 14:58:19','9099514805'),
(63,'Control-TSH',NULL,'2020-11-18 16:10:15','9099514805'),
(65,'calibrator-25-OH Vit-D Total',1,'2020-12-01 12:15:36','9099514805'),
(66,'calibrator-Total beta hcg -2',1,'2020-12-01 12:15:45','9099514805'),
(67,'calibrator-ferritin',1,'2020-12-01 12:15:28','9099514805'),
(68,'calibrator- Total T4',1,'2020-12-01 12:15:21','9099514805'),
(69,'calibrator- Free T4',1,'2020-12-01 12:15:14','9099514805'),
(70,'calibrator- TSH',1,'2020-12-01 12:15:05','9099514805'),
(71,'calibrator- Free T3',1,'2020-12-01 12:14:55','9099514805'),
(72,'calibrator- Vit B12',1,'2020-12-01 12:14:48','9099514805'),
(73,'calibrator- FSH',1,'2020-12-01 12:14:37','9099514805'),
(74,'calibrator- LH',1,'2020-12-01 12:14:26','9099514805'),
(76,'Reagent-FSH',100,'2020-12-01 12:14:08','9099514805'),
(77,'Reagent-Total beta hcg-2',100,'2020-12-01 12:14:01','9099514805'),
(78,'Reagent-LH',100,'2020-12-01 12:13:54','9099514805'),
(79,'Reagent-Ferritin',200,'2020-12-01 12:13:47','9099514805'),
(80,'Reagent-Free T3',100,'2020-12-01 12:13:40','9099514805'),
(81,'Reagent-Free T4',100,'2020-12-01 12:13:33','9099514805'),
(82,'Reagent-vit B12',100,'2020-12-01 12:13:26','9099514805'),
(83,'Reagent-prolactin',100,'2020-12-01 12:13:18','9099514805'),
(84,'Reagent-25 OH Vit-D Total',100,'2020-12-01 12:13:03','9099514805'),
(85,'Reagent-TSH',200,'2020-12-01 12:12:56','9099514805'),
(86,'Reagent-B12+folate pack-3',100,'2020-12-01 12:12:49','9099514805'),
(87,'maintenance pack vitros',1,'2020-12-01 12:12:42','9099514805'),
(89,'calibrator-Prolactin',1,'2020-12-01 12:12:34','9099514805'),
(90,'sample cap',1000,'2020-12-01 14:54:33','9099514805'),
(93,'CRP',220,'2023-09-30 01:32:34','1'),
(94,'D-Dimer',90,'2020-12-01 14:57:16','9099514805'),
(96,'REAGENT-HSTROP ',100,'2020-12-01 12:11:32','9099514805'),
(97,'REAGENT-NT-PROBNP 2',100,'2020-12-01 13:04:05','9099514805'),
(98,'CALIBRATOR PROGESTERONE',1,'2020-12-01 12:11:10','9099514805'),
(99,'CALIBRATOR HSTROP',1,'2020-12-01 12:11:03','9099514805'),
(100,'CALIBRATOR NT-PROBNP 2',1,'2020-12-01 12:10:52','9099514805'),
(103,'High sample diluent A',NULL,'2020-12-05 13:28:55','9099514805'),
(104,'High sample diluent B ',NULL,'2020-12-05 13:30:11','9099514805'),
(105,'MAGANESIUM',NULL,'2020-12-24 13:21:08','8866580625'),
(107,'SGOT',NULL,'2021-04-08 13:33:46','8866580625'),
(111,'PH CALIBRATOR 6.08',NULL,'2021-07-19 15:57:20','8866580625'),
(112,'PH CALIBRATOR 9.13',NULL,'2021-07-19 15:57:36','8866580625'),
(113,'PH CALIBRATOR 4.01',NULL,'2021-07-19 15:58:24','8866580625'),
(115,'MICROALBUMIN KIT',NULL,'2021-07-27 13:00:18','8866580625'),
(120,'TSH3',7,NULL,NULL),
(121,'TP-R2',NULL,NULL,NULL),
(122,'TP-R1 (BLANK BIURET)',NULL,NULL,NULL),
(124,'R.O. MEMBRANE',1,'2020-09-15 13:00:00','1'),
(125,'XL-1000  ELECTRODE',NULL,'2020-08-17 15:16:32','1'),
(127,'RESIN',NULL,NULL,NULL),
(128,'P.M. KIT [XL 1000]',NULL,NULL,NULL),
(129,'PHOSPHOROUS MOLYBDATE',NULL,NULL,NULL),
(130,'HbA1c - L1',NULL,NULL,NULL),
(131,'HbA1c - L2',NULL,NULL,NULL),
(133,'ISE FLUID PACK',NULL,NULL,NULL),
(134,'RADIOMETER CASSETTE',NULL,'2020-08-17 14:59:08',NULL),
(135,'RADIOMETER SOLUTION PACK',NULL,'2020-08-17 14:59:08',NULL),
(136,'ALT R2',NULL,'2024-02-24 13:33:16',NULL),
(138,'ALT R1',NULL,'2024-02-24 13:37:49',NULL),
(139,'HbA1c BUFFER-1',NULL,'2024-01-17 14:59:08','9409510124'),
(140,'HbA1c BUFFER-2',NULL,'2024-03-05 14:59:08','8160541939'),
(141,'HbA1c BUFFER-3',NULL,'2024-03-05 14:59:08','9099514805'),
(142,'HbA1c WASH SOLUTION',NULL,'2024-03-05 14:59:08','8160541939'),
(143,'DIGITAL THERMOMETER',NULL,NULL,NULL),
(146,'LIPASE QC 5',NULL,'2020-08-17 15:17:15','9099514805'),
(147,'LIPASE QC 8',NULL,'2020-08-17 15:17:15','9099514805'),
(148,'HBA CONTROL LOT',NULL,'2020-08-17 15:08:10','9099514805'),
(149,'CD-80',NULL,NULL,NULL),
(150,'HPLC grade-water',NULL,NULL,NULL),
(151,'Acetonitrile gradient',NULL,NULL,NULL),
(152,'CREATININE KIT',NULL,'2024-07-24 14:59:54','9099514805'),
(153,'BILIRUBIN KIT',NULL,'2024-07-24 14:59:54','9099514805'),
(154,'ck -mb control',NULL,'2024-07-25 14:59:54','9099514805'),
(155,'SIEMENS RAPID POINT MEASUREMENT CARTIDGE ',NULL,'2024-07-25 14:59:54','9099514805'),
(156,'SIEMENS RAPID POINT WASH/WASTE CARTIDGE',NULL,'2024-07-25 14:59:54','9099514805'),
(157,'SIEMENS RAPID POINT WASH/WASTE CARTIDGE',NULL,'2024-07-25 14:59:54','9099514805'),
(159,'Immuno QC level 2',NULL,'2024-07-25 14:59:54','9099514805'),
(160,'Immuno QC level 3',NULL,'2024-07-25 14:59:54','9099514805'),
(161,'JOKOH PACK 1',NULL,NULL,NULL),
(162,'JOKOH PACK 2',NULL,NULL,NULL),
(163,'GLASSWARE',NULL,NULL,NULL);
/*!40000 ALTER TABLE `consumable_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_labels`
--

DROP TABLE IF EXISTS `copy_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` varchar(30) DEFAULT NULL,
  `caption` varchar(10) DEFAULT NULL,
  `barcode_format` varchar(50) DEFAULT NULL,
  `data` text NOT NULL,
  `other_data` varchar(5000) NOT NULL,
  `border` int(11) NOT NULL,
  `fontsize` varchar(100) NOT NULL,
  `fontweight` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_labels`
--

LOCK TABLES `copy_labels` WRITE;
/*!40000 ALTER TABLE `copy_labels` DISABLE KEYS */;
INSERT INTO `copy_labels` VALUES
(7,'1045','R1','C128','{\r\n\"1\":\"1045,h,b,05,05,40,10\",\r\n\"2\":\"1001,h,t,20,15,25,03\",\r\n\"3\":\"1045,h,t,5,15,15,03\",\r\n\"4\":\"other_data,h,t,5,18,25,03\",\r\n\"5\":\"1002,h,t,30,18,15,03\"\r\n}','select group_concat(sample_id separator \",\") other_data from request_id where id in(select id from request_id where sample_id={sample_id})',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(10,'sample_id','S1','C128','{\r\n \"1\":\"sample_id,h,b,05,05,40,10\",\r\n \"2\":\"1000,h,t,25,15,20,03\",\r\n \"3\":\"1001,h,t,10,15,15,03\",\r\n \"4\":\"sample_id,h,t,10,18,15,03\",\r\n \"5\":\"1002,h,t,25,18,20,03\",\r\n \"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(11,'1047','W1','C128','{\r\n\"1\":\"1047,h,b,05,05,40,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"1047,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(12,'sample_id','S2','C39','{\r\n \"1\":\"sample_id,h,b,05,05,40,10\",\r\n \"2\":\"1000,h,t,25,15,20,03\",\r\n \"3\":\"1001,h,t,10,15,15,03\",\r\n \"4\":\"sample_id,h,t,10,18,15,03\",\r\n \"5\":\"1002,h,t,25,18,20,03\",\r\n \"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(13,'1049','N2','C128','{\"1\":\"1049,h,b,05,05,40,10\",\"2\":\"1000,h,t,25,15,20,03\",\"3\":\"1049,h,t,10,15,20,03\",\"4\":\"sample_id,h,t,10,18,15,03\",\"5\":\"1002,h,t,25,18,20,03\",\"6\":\"other_data,h,t,5,15,5,6\"}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(14,'1046','P1','C128','{\r\n\"1\":\"1046,h,b,05,05,40,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"1046,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(15,'1050','E1','C128','{\"1\":\"1050,h,b,05,05,40,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1050,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\"}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(16,'105071','A1','C128','{\r\n\"1\":\"1047,h,b,05,05,40,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"1047,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}');
/*!40000 ALTER TABLE `copy_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard`
--

DROP TABLE IF EXISTS `dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(100) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard`
--

LOCK TABLES `dashboard` WRITE;
/*!40000 ALTER TABLE `dashboard` DISABLE KEYS */;
INSERT INTO `dashboard` VALUES
(1,'Calculated Parameters','Prothrombin Time related calculation of indexes is now available. \nWhen in <b>Edit</b> mode, Click <b>Calculate</b> to refresh calculation.\nModification in database is required to add new calculated tests.\nChanging ISI value in database as required is essential',NULL),
(2,'Suggestions and Feedback','For suggestion for improvement, contact lab in-charge or whatsApp: 9664555812 Dr Shailesh ',NULL),
(3,'Super Profiles','Use Super Profiles to reduce your clicks and prevent lapses in entry',3),
(4,'View Statistics','Click <b>HOME</b>. select Click <span class=\"bg-danger\">red colored number</span> to view data. Provide appropriate input (e.g date). Export Data in spreadsheet if required',4),
(5,'Bold','use (((xyz)) to bold a word',NULL),
(6,'New Software','New Software have 7 digit sample ID (REMEMBER)',5),
(7,'Dokuwiki and Docs Old LIS Started',' Click ---> <a href=\"\\dokuwiki\">Dokuwiki</a> <a href=\"\\docs\">Docs</a>  <a href=\"http://12.207.3.250\">Old LIS</a>',6),
(8,'Worklist Print','See number 6 (get examination id from 7)',8);
/*!40000 ALTER TABLE `dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dementia`
--

DROP TABLE IF EXISTS `dementia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dementia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Minutes` varchar(10) DEFAULT NULL,
  `Hours` varchar(10) DEFAULT NULL,
  `DayM` varchar(10) DEFAULT NULL,
  `Month` varchar(10) DEFAULT NULL,
  `DayW` varchar(10) DEFAULT NULL,
  `Text` varchar(200) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dementia`
--

LOCK TABLES `dementia` WRITE;
/*!40000 ALTER TABLE `dementia` DISABLE KEYS */;
INSERT INTO `dementia` VALUES
(28,'0','8','*','*','*','Pepsin wash in ISE module','2020-09-15 09:45:42','3'),
(29,'0','8','26','*','*','Print Erba640/1000 maintanance sheet, DI Plant(big+small) sheet','2020-08-12 13:49:45','3'),
(40,'0','8','1','8','*','Tejal - External calibration, 7 items','2021-02-15 11:24:41','9099514805'),
(41,'0','8','1','8,02','*','Inhouse Calibration pipettes, wMachine, Glassware, Centri, incubat, refi','2021-05-13 11:37:27','9099514805'),
(43,'0','8','*','*','0','640+1000 Autowash With 0.1N HCL and 0.1N NaOH','2020-08-13 12:36:23','3'),
(44,'0','8','1','*','*','Change saturated KCL solution in PH meter','2020-08-13 12:35:34','3'),
(45,'0','8','1','1','*','Check Expiry Date of drugs in ART kit, Eye wash kit and First aid kit','2020-08-13 12:35:10','3'),
(46,'0','8','1','8','*','Yearly calibration of volumetric flask','2020-12-16 11:08:46','8866580625'),
(47,'0','8','*/5','*','*','Refilling of Std-A and std-B','2020-08-13 12:17:05','3'),
(50,'0','8','1','5','*','Renewal of CMC of Erba XL 640 and 3 semi-auto','2020-08-13 12:14:48','3'),
(52,'0','8','1','4,10','*','PUT REQUEST FOR PRINTER CONSUMABLE','2020-08-13 12:13:08','3'),
(55,'0','8','1','*','*','Back up of volume parameters,programming parameter, reapeat flags from Erba XL-640 to doks','2021-06-30 18:09:58','8866580625'),
(56,'0','8','1','1,5,9','*','quarterly maintenence for 3 semi auto ','2020-08-13 12:09:08','3'),
(58,'0','8','1','7,12','*','refilling of fire extinguisher','2020-08-13 12:03:00','3'),
(59,'0','8','*','*','4','Perform HE and PRE','2020-10-07 16:38:50','9099514805'),
(66,'0','8','1','*','*','Centrifuge Cleaning','2020-09-09 09:06:25','9099514805'),
(69,'0','8','*','*','*','Run IRON and UIBC samples and graph monitoring','2020-09-15 12:36:44','1'),
(72,'0','8','16','7','*','Yearly ealuation of all records before internal audit','2021-07-15 15:13:31','9099514805'),
(73,'0','8','16','*','*','check location and content of eye wash kit and first aid kit','2020-09-26 15:22:52','9099514805'),
(74,'10','8','1,15','*','*','cleaning of barcode printer opd and clinical lab','2021-08-09 16:09:58','9099514805'),
(76,'0','8','1','3','*','calibration certificate of ERBA XL-640 and semiauto from jiteshbhai','2021-02-24 12:38:07','9099514805'),
(77,'50','11','13,28','*','*','Calibration of CRP every 15 day','2021-05-13 11:47:37','9099514805'),
(78,'0','8','1','12','*','Install new electrode_Install before date-1-12-2021','2021-05-17 13:31:59','9099514805'),
(80,'*','*','1','8','*','REMINDER FOR INHOUSE CALIBRATION','2021-08-18 12:24:13','3'),
(81,'10','8','*','*','6','change sediment filter and backwash of DI plant','2021-08-09 16:09:10','9099514805'),
(82,'10','8','*','*','*','IQC of ketone','2021-08-09 16:09:00','9099514805'),
(83,'10','8','*','*','*','Refrigerator temperature and environmental temperature and humidity entry in LIS','2021-08-09 16:08:53','9099514805'),
(84,'10','8','*','*','*','Daily maintenence  and IQC of ERBA XL-640 ,ERBA XL-1000 and VITROS-3600','2021-08-18 12:25:42','9099514805'),
(87,'10','8','2,17','*','*','cleaning of RO water','2021-08-09 16:08:42','9099514805'),
(88,'10','8','*','*','2','weekly maintenence of VITROS-3600','2021-08-18 12:28:35','9099514805'),
(89,'10','8','10','*','*','Hypowash of XL-1000 and XL-640','2021-08-18 12:44:37','9099514805'),
(91,'10','8','1','*','*','Monthly IQC and EQC file of XL-640,XL-1000 and VITROS-3600','2021-08-25 09:46:05','9099514805'),
(92,'10','8','1','*','*','Monthly TAT file','2021-08-25 09:46:43','9099514805');
/*!40000 ALTER TABLE `dementia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `display_choice`
--

DROP TABLE IF EXISTS `display_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `display_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `display_choice_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `display_choice`
--

LOCK TABLES `display_choice` WRITE;
/*!40000 ALTER TABLE `display_choice` DISABLE KEYS */;
INSERT INTO `display_choice` VALUES
(1,5072,'B','ABC'),
(5,5072,'No Sickle Cell Hemoglobin','Majority of Hemoglobin is HbA. No band is seen at HbS position and Dithionite test is also negative. Patient is unlikely to have sickle cell disease or trait. However, Correlate Clinically and family history. if required, HPLC based identification of abnormal hemoglobins is advised                       '),
(6,5072,'Possible Thalassemia','No band of HbA and HbA2 are seen. However this method can not detect HbA2 reliably.  A dark band at HbF position is present. All the Hb present in patient is fetal Hemolobin.  Although such electrophoretic pattern is seen in thalassemia major and Hereditary persistence of HbF, considering the presence of severe anemia, most probable diagnosis is Thalassemia Major. Possibility of Hereditary persistence of HbF is less likely because of presence of anemia in this patient.  Correlate clinically and with pathological findings. Further investigation like HPLC for Hb variants is advised  after 3 month of Blood-transfusion-free period. Advised Hb variant investigations in parents and siblings. '),
(7,1022,'Absurd Potassium (EDTA)','Correct Tube-Barcode ? \r\nDelayed analysis?\r\nCalcium=\r\nRepeat K+=\r\nHemolysis\r\nRemark: Preanalytical error. EDTA contamination suspected\r\n'),
(8,1022,'Absurd Potassium (Transposition)','Correct Tube-Barcode ? \r\nDelayed analysis?\r\nCalcium=\r\nRepeat K+=\r\nHemolysis\r\nRemark: Preanalytical error. Sample Transposition error'),
(9,1022,'Absurd Potassium (Delayed Analysis)','Correct Tube-Barcode = Yes \r\nDelayed analysis = Yes\r\nCalcium =\r\nRepeat K+ =\r\nHemolysis = Observed / Not Observed\r\nRemark: Preanalytical error. Absurd Potassium (K+) is due to delayed analysis.'),
(11,5072,'Sickle Disease','There is dark band at HbS position. No band at HbA position.\r\nAs Dithionite test is positive, Band at HbS is likely to be of Hemoglobin S.\r\nPatient is (((Sickle cell disease))).\r\nCorrelate with clinical history.\r\n\r\nAdvised family members Hb Electrophoresis. Quantitation with Hemoglobin HPLC is suggested.\r\n \r\n==========================================================================\r\nCommon Beta-variants that Migrate same as HbS position with Negative dithionite test\r\n--------------------------------------------------------------------------------\r\n	-HbD\r\n	-HbLepore\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test\r\n-----------------------------------------------------------------------------------\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test\r\n-------------------------------------------------------------------------------------\r\n	-HbC(Herlem/Georgetown)\r\n\r\n'),
(12,5072,'Sickle Cell Trait','As Dithionite test is positive, Band at HbS is likely to be of Hemoglobin S.\r\nPatient is (((Sickle cell trait))).\r\nCorrelate with clinical history and history of blood Transfusion\r\nIf There is recent history of Blood transfusion, after three month of BT-free period or\r\nrepeat the examinations before next blood transfusion.	\r\n	\r\n\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test	\r\n-----------------------------------------------------------------------------------	\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test	\r\n-------------------------------------------------------------------------------------	\r\n	-HbC(Herlem/Georgetown)\r\n'),
(13,5023,'Result','RESULT AWAITED');
/*!40000 ALTER TABLE `display_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination`
--

DROP TABLE IF EXISTS `examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination` (
  `examination_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sample_requirement` varchar(100) NOT NULL DEFAULT 'NULL',
  `edit_specification` varchar(5000) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `request_route` varchar(300) DEFAULT NULL,
  `display_route` varchar(300) DEFAULT NULL,
  `print_route` varchar(300) DEFAULT NULL,
  `request_route_priority` varchar(10) DEFAULT NULL,
  `display_route_priority` varchar(10) DEFAULT NULL,
  `print_route_priority` varchar(10) DEFAULT NULL,
  `display_format` varchar(50) DEFAULT NULL,
  `insert_minimum_authorization_level` int(11) DEFAULT NULL,
  `update_minimum_authorization_level` int(11) DEFAULT NULL,
  `select_minimum_authorization_level` int(11) DEFAULT NULL,
  `delete_minimum_authorization_level` int(11) DEFAULT NULL,
  `append_user` int(11) DEFAULT NULL COMMENT 'if ''yes;, it will add last editor name beside result',
  `default_value` varchar(200) DEFAULT NULL,
  `equipment` varchar(10) DEFAULT NULL,
  `display_help` text DEFAULT NULL COMMENT 'help on screen',
  `print_help` text DEFAULT NULL COMMENT 'help in report',
  `accr_status` varchar(10) DEFAULT NULL COMMENT 'if ''yes'', it report will display symbol',
  `display_choice` varchar(10) DEFAULT NULL,
  `displayed_scope` varchar(10) DEFAULT NULL,
  `instruction_for_requester` text DEFAULT NULL,
  `class_tag` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`examination_id`),
  KEY `sample_requirement` (`sample_requirement`)
) ENGINE=InnoDB AUTO_INCREMENT=105082 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES
(1000,'Sample_requirement','None','{\"type\":\"text\",\"help\":\"Describe\",\"readonly\":\"readonly\"}','None','Misc/Sample Details','Sample Details','Header','','20','','compact_report',1,1,0,1,NULL,'','','Describe','Describe','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1001,'PID','None','','None','Misc/Patient Details','Header','Header','','30','','compact_report',1,2,0,2,NULL,'SELECT  concat( \'SUR/\', DATE_FORMAT(CURDATE(),\'%y\'),\'/\') as default_value','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1002,'Name','None','','None','Misc/Patient Details','Header','Header','','40','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1004,'Department','None','{\"type\":\"select\",\"option\":\",ART,Dentistry,IHBT,EmergencyMedicine,ENT,Medicine,Neurology,OG,Opthalmology,Orthopaedics,Kidney Hospital,Paediatrics,PlasticSurgery,Psychiatry,Skin,Surgery,TBChest,Samaras,Unspecified\"}','None','Misc/Sample Details','Header','Header','','60','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1005,'Unit','None','{\"type\":\"select\",\"option\":\",-,1,2,3,4,5,6,7,8,A,B\"}','None','Misc/Sample Details','Header','Header','','70','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1006,'Location','None','{\"type\":\"select\",\"option\":\",C2(684),HAJ,Niramaya_Camp,old building 1st floor,old building 2nd floor,old building 3rd floor,old building ground floor,IHBT,Hemophilia ,C3(685),PICU,Casualty(446),E0(506),E1(507),E2(508),E3(509),E4(510),EMW(485),EOT(591),F0(511),F1(512),F2(513),F3(514),F3N(503),F4(515),FOW,G0(516),G0MICU(500),G1(517),G2(518),G3(519),G4(520),GOT(551),H0(497),H1(522),H2(523),H3(524),H4(525),HemodialysisUNIT(741),Isolation Ward,J0(521),J1(531),J2(527),J3(529),J4(530),LeptoWard(506),MICU(500-2),MOT(567),MOW(310),NEWORTHO(311),NOT(551),NOW(311),O2(539),OB(546),OBICU(546),OLDORTHO(310),OPD,PrisonerWard(310),RI(548),RII(564),RIII(580),SICU-1(478),SICU-2(478),SpecialWard(570-71),SwineFluWard(529),StemGround,StemF1,StemF2,StemF3,StemF4,StemF5,StemF6,StemF7,StemF8,StemF9,StemF10,StemHosp,KidneyOPD,StemOPD,TBICU,TRAUMA1(476),TRAUMA2(485),TraumaCenter(472-87),4A Kidney,4B Kidney,4C Kidney,4D Kidney,5A Kidney,5B Kidney,5C Kidney,5D Kidney,StemTriageSemiCritical,StemTriageICU,Stem Triage,Kidney 6th ICU- B,Kidney 6th ICU-A,,NICU(692),RICU,SAMRAS,6A Kidney,6B Kidney,6C Kidney,6D Kidney,7A Kidney,7B Kidney,7C Kidney,7D Kidney,8A Kidney,8B Kidney,8C Kidney,8D Kidney,Unspecified\"}','None','Misc/Sample Details','Header','Header','','80','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1007,'Age(Y)','None','{\"type\":\"number\",\"help\":\"Full Years\"}','','Misc/Patient Details','Patient Details','Patient Details','','','','compact_report',1,1,0,1,NULL,'','','Full Years','Full Years',NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1008,'Sex','None','{\"type\":\"select\",\"option\":\",M,F,O\"}','','Misc/Patient Details','Patient Details','Patient Details','','','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1012,'DOB','None','{\"type\":\"date\"}','','Misc/Patient Details','Patient Details','Patient Details','','','','',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1015,'Collection_Date','None','{\"type\":\"date\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1016,'Collection_Time','None','{\"type\":\"time\"}','','','Sample Details','Sample Details','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1017,'Received_on','None','{\"type\":\"date\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1018,'Receipt_time','None','{\"type\":\"time\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1019,'(Interim) Released by ','None','{\"type\":\"text\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1020,'Age(M)','None','{\"type\":\"number\",\"help\":\"Full Months\"}','','Misc/Patient Details','Patient Details','','','','','compact_report',1,1,0,1,NULL,'','','Full Months','Full Months',NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1021,'Age(D)','None','{\"type\":\"number\",\"help\":\"Days\"}','','Misc/Patient Details','Patient Details','','','','','compact_report',1,1,0,1,NULL,'','','Days','Days',NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1022,'Sample Remark','None','','','Remark','Sample Details','Remarks','','','','horizontal1',1,2,0,2,NULL,'','','','','','yes','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1023,'Sample Collection Condition','None','{\"type\":\"select\",\"option\":\"Random,Fasting,Postprendial-2HR,PostGlucose-75GM-1HR,PostGlucose-75GM-2HR,PostGlucose-75GM-3HR,PostGlucose-50GM-1HR\"}','','Misc/Sample Details','Sample Details','Sample Details','','10','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1024,'email','None','','','Misc/Patient Details',NULL,'','','',NULL,'compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1025,'mobile','None','{\"type\":\"realtext\"}','','Misc/Patient Details','Patient Details','','','','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1026,'sample_volume','None','{\"type\":\"select\",\"option\":\"-,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5\"}','','Misc/Sample Details','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1027,'request_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1028,'request_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1029,'sample_preparation_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1030,'sample_preparation_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1031,'analysis_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1032,'analysis_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1033,'verification_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1034,'verification_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1035,'release_date','None','{\"type\":\"date\",\"readonly\":\"readonly\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1036,'release_time','None','{\"type\":\"time\",\"readonly\":\"readonly\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1037,'interim_release_date','None','{\"type\":\"date\",\"readonly\":\"readonly\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1038,'interim_release_time','None','{\"type\":\"time\",\"readonly\":\"readonly\"}','','','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1039,'wing','None','{\"type\":\"select\",\"option\":\"-,A,B,C,D\"}','','Misc/Sample Details','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1040,'Transporter','None','{\"type\":\"select\",\"option\":\"-,Manish,Jignesh,Jayaben,Suraj\"}','','Misc/Sample Details','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1041,'ThyroxinRx','None','{\"type\":\"select\",\"option\":\",Yes,No\"}','','Misc/Sample Details','Sample Details','','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1043,'sms_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','Misc/Report Details','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1044,'sms_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','Misc/Report Details','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1045,'request_id','None','{\"type\":\"id_multi_sample\",\"table\":\"request_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"R\",\"minimum\":\"1000\"}','inserted, never edited, as group of samples','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','10','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1046,'opd_id','None','{\"type\":\"id_single_sample\",\"table\":\"opd_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"P\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','20','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1047,'ward_id','None','{\"type\":\"id_single_sample\",\"table\":\"ward_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"W\",\"minimum\":\"1\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1048,'qc_id','None','{\"type\":\"id_single_sample\",\"table\":\"qc_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"U\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1049,'niramaya_id','None','{\"type\":\"id_single_sample\",\"table\":\"niramaya_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"N\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1050,'Comparison ID','None','{\"type\":\"id_single_sample\",\"table\":\"Comparison_ID\",\"readonly\":\"readonly\",\"unique_prefix\":\"E\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','35','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(1099,'LDL Cholesterol','Plain-Blood','{\"type\":\"number\",\"help\":\" mg/dL &lt;130 (Calculated)\",\"calculate\":\"(E/0.948) - (E/0.971) -  (E/8.56 + ( (E-E)/2140 ) - ( (E^2)/16100 )) - 9.44\",\"ex_list\":\" 5015,5016,5018,5015,5016,5018\",\"equipment\":\"C\"}','','Misc/HDL','Clinical chemistry/Lipid profile','Lipid Profile','550','215','','',1,1,0,1,NULL,'','C','mg/dL &lt;=130 (Calculated)\r\n<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7240357/\" >Maureen Sampson Equation</a>','mg/dL &lt;=130 (Calculated)\r\n<a href=\"https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7240357/\" >Maureen Sampson Equation</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(3001,'Lot','None','{\"type\":\"examination_field_specification\"}','','Misc/QC/Sample Details','Sample Details/QC','','','','','',NULL,NULL,0,NULL,NULL,'','','','',NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5001,'Creatinine','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL (&lt;h5&gt;Jaffe two point)&lt;/h5&gt;\\n Male: 0.9-1.3\\n Female: 0.6-1.1\\n&lt;b&gt;(Not in NABL Scope)&lt;/b&gt;\",\"step\":\"0.1\",\"interval_h\":\"1.3\",\"cinterval_h\":\"4.0\",\"ainterval_h\":\"40.0\",\"ainterval_l\":\"0.1\",\"equipment\":\"C\",\"accr_status\":\"no\",\"cost\":\"150\"}','Biochemistry/OPD/RFT,Biochemistry/OPD/Basic,Biochemistry/Basic/RFT','LR,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,CKD,Emergency,S-Osmolarity,RFT-Ele,eGFR,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/RFT','Renal Function Tests','460','170','','',1,1,0,1,NULL,'','C','mg/dL (Jaffe two point)\r\n<i>Male: 0.9-1.3 <br>Female: 0.6-1.1<h4></i></h4>','mg/dL (Jaffe two point)<br>\r\nMale: 0.9-1.3<br>\r\nFemale: 0.6-1.1','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\r\n<html>\r\n<head>\r\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"/>\r\n	<title></title>\r\n	<meta name=\"generator\" content=\"LibreOffice 7.4.7.2 (Linux)\"/>\r\n	<meta name=\"created\" content=\"2024-07-12T13:21:33.215401270\"/>\r\n	<meta name=\"changed\" content=\"2024-07-12T15:14:56.467472222\"/>\r\n	<meta name=\"created\" content=\"00:00:00\">\r\n	<style type=\"text/css\">\r\n		@page { size: 21cm 29.7cm; margin-left: 2cm; margin-right: 1cm; margin-top: 1cm; margin-bottom: 1cm }\r\n		p { line-height: 115%; margin-bottom: 0.25cm; background: transparent }\r\n		td p { orphans: 0; widows: 0; background: transparent; background: transparent }\r\n		a:link { color: #000080; text-decoration: underline }\r\n		a:visited { color: #800000; text-decoration: underline }\r\n	</style>\r\n</head>\r\n<body lang=\"en-IN\" link=\"#000080\" vlink=\"#800000\" dir=\"ltr\">\r\n<table width=\"677\" cellpadding=\"0\" cellspacing=\"0\" style=\"page-break-before: always\">\r\n	<col width=\"467\"/>\r\n\r\n	<col width=\"2\"/>\r\n\r\n	<col width=\"117\"/>\r\n\r\n	<col width=\"91\"/>\r\n\r\n	<tr>\r\n		<td colspan=\"2\" width=\"469\" style=\"border: none; padding: 0cm\"><p align=\"center\">\r\n			<font color=\"#158466\"><font size=\"4\" style=\"font-size: 15pt\"><b>frequency\r\n			of requesting the examinations</b></font></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=\"2\" width=\"469\" style=\"border: none; padding: 0cm\"><p><font color=\"#c9211e\"><b>Creatinine</b></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Stable\r\n			in-patient awaiting rehabilitation/transition/placement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>None\r\n			unless diagnostic suspicion</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Stable\r\n			in-patient (admitted &gt;3&nbsp;days) with resolving medical\r\n			issues</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2â€“3&nbsp;daysâ€”weekly</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Monitoring in\r\n			patient with sepsis</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Initial\r\n			monitoring with use of new nephrotoxic agents/therapies (contrast,\r\n			diuretics, antibiotics, large volume paracentesis)</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Monitoring in\r\n			patient with worsening AKI</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Monitoring in\r\n			patient with improving AKI</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Dailyâ€”q3&nbsp;days</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"467\" style=\"border: none; padding: 0cm\"><p>Monitoring in\r\n			patient on chronic dialysis with no residual renal function</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>None\r\n			unless diagnostic suspicion</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<p style=\"line-height: 100%; margin-bottom: 0cm\"><br/>\r\n\r\n</p>\r\n<p style=\"line-height: 100%; margin-bottom: 0cm; page-break-before: always\">\r\n<br/>\r\n\r\n</p>\r\n</body>\r\n</html>\r\n',',Blood,NABL'),
(5002,'Urea','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL 13-43 (Urease  GLDH)\",\"interval_h\":\"43\",\"interval_l\":\"13\",\"cinterval_h\":\"100\",\"ainterval_h\":\"400\",\"equipment\":\"C\",\"cost\":\"200\"}','','S-Osmolarity,BIG1,Misc/Osmolarity-Serum,Misc/QC/clinical chemistry,URE-UA,CKD','Clinical chemistry/URE-UA','Renal Function Tests','490','175','','',1,1,0,1,NULL,'','C','mg/dL 13-43 (Urease  GLDH)','mg/dL 13-43 (Urease  GLDH)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\r\n<html>\r\n<head>\r\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"/>\r\n	<title></title>\r\n	<meta name=\"generator\" content=\"LibreOffice 7.4.7.2 (Linux)\"/>\r\n	<meta name=\"created\" content=\"2024-07-12T14:32:43.797809928\"/>\r\n	<meta name=\"changed\" content=\"2024-07-12T14:39:33.034204602\"/>\r\n	<style type=\"text/css\">\r\n		@page { size: 21cm 29.7cm; margin: 2cm }\r\n		p { line-height: 115%; margin-bottom: 0.25cm; background: transparent }\r\n		td p { orphans: 0; widows: 0; background: transparent; background: transparent }\r\n		a:link { color: #000080; text-decoration: underline }\r\n		a:visited { color: #800000; text-decoration: underline }\r\n	</style>\r\n</head>\r\n<body lang=\"en-IN\" link=\"#000080\" vlink=\"#800000\" dir=\"ltr\"><p style=\"line-height: 100%; margin-bottom: 0cm; background: transparent\">\r\n<br/>\r\n\r\n</p>\r\n<table width=\"669\" cellpadding=\"0\" cellspacing=\"0\" style=\"page-break-before: always\">\r\n	<col width=\"459\"/>\r\n\r\n	<col width=\"2\"/>\r\n\r\n	<col width=\"117\"/>\r\n\r\n	<col width=\"91\"/>\r\n\r\n	<tr>\r\n		<td colspan=\"2\" width=\"461\" style=\"border: none; padding: 0cm\"><p align=\"center\">\r\n			<font color=\"#158466\"><font size=\"4\" style=\"font-size: 15pt\"><b>frequency\r\n			of requesting the examinations</b></font></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=\"2\" width=\"461\" style=\"border: none; padding: 0cm\"><p><font color=\"#c9211e\"><b>Urea</b></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Urea testing\r\n			is NOT indicated for most stable inpatients without specific\r\n			diagnostic suspicion</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>None\r\n			unless diagnostic suspicion</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Diagnosis of\r\n			gastrointestinal bleed</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Once\r\n			or not indicated</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<p style=\"line-height: 100%; margin-bottom: 0cm; page-break-before: always\">\r\n<br/>\r\n\r\n</p>\r\n<p style=\"line-height: 100%; margin-bottom: 0cm; page-break-before: always\">\r\n<br/>\r\n\r\n</p>\r\n</body>\r\n</html>',',Blood,NABL'),
(5006,'Alanine Transaminase','Plain-Blood','{\"type\":\"text\",\"help\":\"U/L &lt;45 (L-Alanine LDH UV Kinetic)\",\"interval_h\":\"45\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\",\"cost\":\"100\"}','','LR,IQC/Chemistry,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,Emergency,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/LFT','Liver Function Tests','400','110','040','',1,1,0,1,NULL,'','C','U/L &lt;45 (L-Alanine LDH UV Kinetic)','U/L &lt;45 (L-Alanine LDH UV Kinetic)','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5007,'Alkaline Phosphatase','Plain-Blood','{\"type\":\"number\",\"help\":\"U/L 42-128 (pNPP with AMP buffer)\",\"interval_h\":\"128\",\"cinterval_h\":\"1000\",\"ainterval_h\":\"3000\",\"equipment\":\"C\",\"cost\":\"70\"}','','AMY-LIP-ALP,Misc/QC/clinical chemistry','Clinical chemistry/AMY-LIP-ALP','Liver Function Tests','580','155','048','',1,1,0,1,NULL,'','C','U/L 42-128 (pNPP with AMP buffer)','U/L 42-128 (pNPP with AMP buffer)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5008,'Amylase','Plain-Blood','{\"type\":\"number\",\"help\":\"U/L 28-100 (CNPG)\",\"interval_h\":\"100\",\"cinterval_h\":\"400\",\"ainterval_h\":\"5000\",\"equipment\":\"C\",\"cost\":\"350\"}','','AMY-LIP-ALP,Misc/QC/clinical chemistry','Clinical chemistry/AMY-LIP-ALP','Pancreatic Function Tests','560','145','','',1,1,0,1,NULL,'','C','U/L 28-100 (CNPG)','U/L 28-100 (CNPG)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5009,'Bilirubin Total','Plain-Blood','{\"type\":\"text\",\"help\":\"mg/dL &lt;1.3 (Diazo Reaction)\",\"step\":\"0.1\",\"cinterval_h\":\"15\",\"interval_h\":\"1.3\",\"ainterval_h\":\"50\",\"equipment\":\"C\",\"cost\":\"50\"}','','LR,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,Emergency,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/LFT','Liver Function Tests','410','115','010','',1,1,0,1,NULL,'','C','mg/dL &lt;1.3 (Diazo Reaction)','mg/dL &lt;1.3 (Diazo Reaction)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5010,'Bilirubin Direct','Plain-Blood','{\"type\":\"text\",\"help\":\"mg/dL &lt;0.4 (Diazo Reaction)\",\"step\":\"0.1\",\"interval_h\":\"0.4\",\"ainterval_h\":\"50\",\"equipment\":\"C\",\"cost\":\"50\"}','','LR,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/LFT','Liver Function Tests','420','120','020','',1,1,0,1,NULL,'','C','mg/dL &lt;0.4 (Diazo Reaction)','mg/dL &lt;0.4 (Diazo Reaction)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5011,'Albumin','Plain-Blood','{\"type\":\"number\",\"help\":\" g/dL &lt;3.5-5.2 (BCG)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"interval_h\":\"5.2\",\"interval_l\":\"3.5\",\"ainterval_h\":\"10\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\",\"cost\":\"130\"}','','CAL-MG-PHO/Calcium,LRE-CRP-CAL,ALB-TP,LRE-ALB-TP,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/ALB-TP','Liver Function Tests','480','140','050','',1,1,0,1,NULL,'','C','g/dL 3.5-5.2 (BCG)',' g/dL 3.5-5.2 (BCG)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5012,'Total Protein','Plain-Blood','{\"type\":\"number\",\"help\":\" g/dL &lt;6.4-8.3 (Biuret)\",\"step\":\"0.1\",\"cinterval_l\":\"3\",\"interval_h\":\"8.3\",\"interval_l\":\"6.4\",\"ainterval_h\":\"15\",\"ainterval_l\":\"1\",\"equipment\":\"C\",\"cost\":\"100\"}','','ALB-TP,LRE-ALB-TP,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/ALB-TP','Liver Function Tests','470','135','060','',1,1,0,1,NULL,'','C','g/dL 6.4-8.3 (Biuret)',' g/dL 6.4-8.3 (Biuret)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5013,'Aspartate transaminase','Plain-Blood','{\"type\":\"number\",\"help\":\"U/L &lt;35 ( UV Kinetic)\",\"interval_h\":\"35\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\"}','','Misc/QC/clinical chemistry,AST','Clinical chemistry/LFT','Liver Function Tests','435','130','045','',1,1,0,1,NULL,'','C','U/L &lt;35 L-Aspartate transaminase MDH IFCC Without PLP(UV Kinetic)','U/L &lt;35 L-Aspartate transaminase MDH IFCC Without PLP( UV Kinetic)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5014,'Calcium','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL 8.6-10.2 (Arsenazo III)\",\"step\":\"0.1\",\"cinterval_l\":\"6.5\",\"cinterval_h\":\"13\",\"interval_l\":\"8.6\",\"interval_h\":\"10.2\",\"ainterval_h\":\"15\",\"ainterval_l\":\"3\",\"equipment\":\"C\"}','','LRE-CRP-CAL,Misc/QC/clinical chemistry,CAL-MG-PHO/Calcium,BIG1,CKD','Clinical chemistry/CAL-PHO-MG','Electrolytes','510','185','120','',1,1,0,1,NULL,'','C','mg/dL 8.6-10.2 (Arsenazo III)','mg/dL 8.6-10.2 (Arsenazo III)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5015,'Cholesterol Total ','Plain-Blood','{\"type\":\"number\",\"help\":\" mg/dL &lt;200 (CHOD-POD)\",\"interval_h\":\"200\",\"ainterval_h\":\"1000\",\"ainterval_l\":\"30\",\"equipment\":\"C\"}','','GLU-LIP,Misc/HDL,Misc/QC/clinical chemistry,LP','Clinical chemistry/Lipid Profile','Lipid Profile','510','230','','',1,1,0,1,NULL,'','C','mg/dL &lt;200 (CHOD-POD)','mg/dL &lt;200 (CHOD-POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\r\n<a href=\"https://www.acc.org/~/media/Non-Clinical/Files-PDFs-Excel-MS-Word-etc/Guidelines/2018/Guidelines-Made-Simple-Tool-2018-Cholesterol.pdf\">2018 Guideline on the Management\r\nof Blood Cholesterol</a>',',Blood,NABL'),
(5016,'HDL Cholesterol','Plain-Blood','{\"type\":\"number\",\"help\":\" mg/dL &gt;40 (Dextransulphate-Mg2+precipitat)\",\"interval_l\":\"40\",\"equipment\":\"C\"}','','Misc/HDL,Misc/QC/clinical chemistry','Clinical chemistry/Lipid Profile','Lipid Profile','530','235','','',1,1,0,1,NULL,'','C',' mg/dL &gt;40 (Dextransulphate-Mg2 precipitation)',' mg/dL &gt;40 (Dextransulphate-Mg2 precipitation)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5017,'LDL Cholesterol','Plain-Blood','{\"type\":\"number\",\"help\":\" mg/dL &lt;130 (Calculated)\",\"interval_h\":\"130\",\"calculate\":\"E-E-E\",\"ex_list\":\"5015,5016,5028\",\"equipment\":\"C\"}','','Misc/HDL','Clinical chemistry/Lipid profile','Lipid Profile','540','240','','',1,1,0,1,NULL,'','C',' mg/dL &lt;130 (Calculated)\r\nFriedewald\'s formula',' mg/dL &lt;130 (Calculated)\r\nFriedewald\'s formula','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5018,'Triglyceride','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL &lt;150 (GPO-POD)\",\"interval_h\":\"150\",\"cinterval_h\":\"1000\",\"ainterval_h\":\"1500\",\"equipment\":\"C\"}','','GLU-LIP,Misc/HDL,Misc/QC/clinical chemistry,LP','Clinical chemistry/Lipid Profile','Lipid Profile','520','225','','',1,1,0,1,NULL,'','C','mg/dL &lt;150 (GPO-POD)','mg/dL &lt;150 (GPO-POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5019,'Sodium','Plain-Blood','{\"type\":\"number\",\"help\":\" mmol/L 136-145 (Direct ISE)\",\"cinterval_l\":\"129\",\"cinterval_h\":\"160\",\"interval_h\":\"145\",\"interval_l\":\"136\",\"ainterval_h\":\"175\",\"ainterval_l\":\"110\",\"equipment\":\"C\",\"accr_status\":\"yes\"}','','RFT-Ele,S-Osmolarity,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,CKD,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/Electrolytes','Electrolytes','440','160','100','',1,1,0,1,NULL,'','e','mmol/L 136-145 (Direct ISE)','mmol/L 136-145 (Direct ISE)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\r\n<html>\r\n<head>\r\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"/>\r\n	<title></title>\r\n	<meta name=\"generator\" content=\"LibreOffice 7.4.7.2 (Linux)\"/>\r\n	<meta name=\"created\" content=\"00:00:00\"/>\r\n	<meta name=\"changed\" content=\"2024-07-12T14:42:42.799650730\"/>\r\n	<meta name=\"created\" content=\"00:00:00\">\r\n	<style type=\"text/css\">\r\n		@page { size: 21cm 29.7cm; margin-left: 2cm; margin-right: 1cm; margin-top: 1cm; margin-bottom: 1cm }\r\n		p { line-height: 115%; margin-bottom: 0.25cm; background: transparent; background: transparent }\r\n		td p { orphans: 0; widows: 0; background: transparent; background: transparent }\r\n		a:link { color: #000080; text-decoration: underline }\r\n		a:visited { color: #800000; text-decoration: underline }\r\n	</style>\r\n</head>\r\n<body lang=\"en-IN\" link=\"#000080\" vlink=\"#800000\" dir=\"ltr\">\r\n<table width=\"669\" cellpadding=\"0\" cellspacing=\"0\" style=\"page-break-before: always\">\r\n	<col width=\"459\"/>\r\n\r\n	<col width=\"2\"/>\r\n\r\n	<col width=\"117\"/>\r\n\r\n	<col width=\"91\"/>\r\n\r\n	<tr>\r\n		<td colspan=\"2\" width=\"461\" style=\"border: none; padding: 0cm\"><p align=\"center\">\r\n			<font color=\"#158466\"><font size=\"4\" style=\"font-size: 15pt\"><b>frequency\r\n			of requesting the examinations</b></font></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=\"2\" width=\"461\" style=\"border: none; padding: 0cm\"><p><font color=\"#c9211e\"><b>Electrolytes</b></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Stable\r\n			in-patient awaiting rehabilitation/transition/placement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>None\r\n			unless diagnostic suspicion</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring in\r\n			DKA being treated with IV insulin infusion</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2-4h</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring on\r\n			treatment associated with electrolyte abnormalities (e.g. new\r\n			diuresis)</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			acute severe hyponatremia (&lt;120&nbsp;mEq/L)</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2-8h</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			hypernatremia not requiring hypotonic IV fluids</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>BIDâ€”daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Initial\r\n			monitoring of acute hyperkalemia requiring shifting</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2-8h</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Initial\r\n			monitoring of mild/moderate acute hyperkalemia not requiring\r\n			shifting</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>BIDâ€”daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>For a patient\r\n			with stable hyperkalemia (5.5â€“6.0&nbsp;mmol/L) would you in\r\n			general be comfortable with only daily monitoring (not more\r\n			frequently) of potassium as an in-patient?</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			new hypokalemia requiring IV/PO replacement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>BIDâ€”daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			new hypokalemia not requiring potassium replacement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<p><br/>\r\n<br/>\r\n\r\n</p>\r\n</body>\r\n</html>',',Other,NABL'),
(5020,'Potassium','Plain-Blood','{\"type\":\"number\",\"help\":\" mmol/L 3.5-5.1 (Direct ISE)\",\"step\":\"0.1\",\"cinterval_l\":\"3\",\"cinterval_h\":\"7.1\",\"interval_h\":\"5.1\",\"interval_l\":\"3.5\",\"ainterval_h\":\"7.5\",\"ainterval_l\":\"1\",\"equipment\":\"C\"}','','RFT-Ele,S-Osmolarity,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,CKD,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/Electrolytes','Electrolytes','450','165','110','',1,1,0,1,NULL,'','C','mmol/L 3.5-5.1 (Direct ISE)','mmol/L 3.5-5.1 (Direct ISE)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\r\n<html>\r\n<head>\r\n	<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\"/>\r\n	<title></title>\r\n	<meta name=\"generator\" content=\"LibreOffice 7.4.7.2 (Linux)\"/>\r\n	<meta name=\"created\" content=\"00:00:00\"/>\r\n	<meta name=\"changed\" content=\"2024-07-12T14:42:42.799650730\"/>\r\n	<meta name=\"created\" content=\"00:00:00\">\r\n	<style type=\"text/css\">\r\n		@page { size: 21cm 29.7cm; margin-left: 2cm; margin-right: 1cm; margin-top: 1cm; margin-bottom: 1cm }\r\n		p { line-height: 115%; margin-bottom: 0.25cm; background: transparent; background: transparent }\r\n		td p { orphans: 0; widows: 0; background: transparent; background: transparent }\r\n		a:link { color: #000080; text-decoration: underline }\r\n		a:visited { color: #800000; text-decoration: underline }\r\n	</style>\r\n</head>\r\n<body lang=\"en-IN\" link=\"#000080\" vlink=\"#800000\" dir=\"ltr\">\r\n<table width=\"669\" cellpadding=\"0\" cellspacing=\"0\" style=\"page-break-before: always\">\r\n	<col width=\"459\"/>\r\n\r\n	<col width=\"2\"/>\r\n\r\n	<col width=\"117\"/>\r\n\r\n	<col width=\"91\"/>\r\n\r\n	<tr>\r\n		<td colspan=\"2\" width=\"461\" style=\"border: none; padding: 0cm\"><p align=\"center\">\r\n			<font color=\"#158466\"><font size=\"4\" style=\"font-size: 15pt\"><b>frequency\r\n			of requesting the examinations</b></font></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td colspan=\"2\" width=\"461\" style=\"border: none; padding: 0cm\"><p><font color=\"#c9211e\"><b>Electrolytes</b></font></p>\r\n		</td>\r\n		<td width=\"117\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Stable\r\n			in-patient awaiting rehabilitation/transition/placement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>None\r\n			unless diagnostic suspicion</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring in\r\n			DKA being treated with IV insulin infusion</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2-4h</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring on\r\n			treatment associated with electrolyte abnormalities (e.g. new\r\n			diuresis)</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			acute severe hyponatremia (&lt;120&nbsp;mEq/L)</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2-8h</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			hypernatremia not requiring hypotonic IV fluids</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>BIDâ€”daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Initial\r\n			monitoring of acute hyperkalemia requiring shifting</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Q2-8h</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Initial\r\n			monitoring of mild/moderate acute hyperkalemia not requiring\r\n			shifting</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>BIDâ€”daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>For a patient\r\n			with stable hyperkalemia (5.5â€“6.0&nbsp;mmol/L) would you in\r\n			general be comfortable with only daily monitoring (not more\r\n			frequently) of potassium as an in-patient?</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>Daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			new hypokalemia requiring IV/PO replacement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p>BIDâ€”daily</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n	<tr>\r\n		<td width=\"459\" style=\"border: none; padding: 0cm\"><p>Monitoring\r\n			new hypokalemia not requiring potassium replacement</p>\r\n		</td>\r\n		<td colspan=\"2\" width=\"119\" style=\"border: none; padding: 0cm\"><p><br/>\r\n\r\n			</p>\r\n		</td>\r\n		<td width=\"91\" style=\"border: none; padding: 0cm\"><p>Weak consensus</p>\r\n		</td>\r\n	</tr>\r\n</table>\r\n<p><br/>\r\n<br/>\r\n\r\n</p>\r\n</body>\r\n</html>\r\n',',Blood,NABL'),
(5021,'Iron','Plain-Blood','{\"type\":\"number\",\"help\":\"microgm/dL 41-141 (Ferrozine)\",\"interval_h\":\"141\",\"interval_l\":\"41\",\"ainterval_h\":\"750\",\"equipment\":\"C\"}','','Anemia,Misc/QC/IRON-UIBC,S-Iron,Misc/QC/clinical chemistry','Clinical chemistry/Anemia Profile','Anemia Profile','','250','','',1,1,0,1,NULL,'','R','microgm/dL 41-141 (Ferrozine)','microgm/dL 41-141 (Ferrozine)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5022,'TIBC','Plain-Blood','{\"type\":\"number\",\"calculate\":\"E+E\",\"ex_list\":\"5023,5021\",\"help\":\"microgm/dL 251-406(calculated)\",\"interval_h\":\"406\",\"interval_l\":\"251\",\"ainterval_h\":\"750\",\"equipment\":\"U\",\"accr_status\":\"yes\"}','','Anemia','Clinical chemistry/Anemia Profile','Anemia Profile','','255','','',1,1,0,1,NULL,'','U','microgm/dL 251-406(calculated)','microgm/dL 251-406(calculated)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5023,'UIBC','Plain-Blood','{\"type\":\"number\",\"help\":\"microgm/dL 120-470((Ferrozine Alkaline PH)\",\"interval_h\":\"470\",\"interval_l\":\"120\",\"ainterval_h\":\"600\",\"equipment\":\"C\"}','','Anemia,Misc/QC/IRON-UIBC','Clinical chemistry/Anemia Profile','Anemia Profile','','260','','',1,1,0,1,NULL,'','U','Î¼gm/dL 120-470 (Ferrozine Alkaline PH)','microgm/dL 120-470 (Ferrozine Alkaline PH)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5024,'Bilirubin Indirect','Plain-Blood','{\"type\":\"text\",\"calculate\":\"E-E\",\"ex_list\":\"5009,5010\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)&lt;1.3\",\"cinterval_h\":\"15\",\"interval_h\":\"1.3\",\"ainterval_h\":\"50\",\"equipment\":\"C\"}','','LR,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-ALBTP-CRPLDH,BIG1,LRE-ALBTP-CRP,LRE-ALBTP-LDH','Clinical chemistry/LFT','Liver Function Tests','430','125','030','',1,1,0,1,NULL,'','C','mg/dL &lt;1.3 (Calculated)','mg/dL &lt;1.3 (Calculated)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5025,'LDH','Plain-Blood','{\"type\":\"number\",\"help\":\"U/L &lt;360 (L to P UV Kinetic)\",\"interval_h\":\"360\",\"equipment\":\"C\"}','','LRE-ALBTP-CRPLDH,BIG1,Misc/QC/clinical chemistry,LRE-ALBTP-LDH','Clinical chemistry/LDH','','','215','','',1,1,0,1,NULL,'','C','U/L &lt;360 (Lactate to Pyruvate)','U/L &lt;360 (Lactate to Pyruvate)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5026,'Lipase','Plain-Blood','{\"type\":\"number\",\"help\":\" U/L 0-5 (Turbidimetry )\",\"interval_h\":\"5\",\"equipment\":\"C\"}','','AMY-LIP-ALP,Misc/QC/c c mor','Clinical chemistry/AMY-LIP-ALP','Pancreatic Function Tests','570','150','','',1,1,0,1,NULL,'','C',' U/L 0-5 (Turbidimetry )',' U/L 0-5 (Turbidimetry )','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5027,'Uric Acid','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL 2.6-7.2 (Uricase POD)\",\"step\":\"0.1\",\"interval_h\":\"7.2\",\"cinterval_h\":\"10\",\"ainterval_h\":\"20\",\"equipment\":\"C\"}','','Misc/QC/clinical chemistry,BIG1,URE-UA','Clinical chemistry/URE-UA','Renal Function Tests','500','180','','',1,1,0,1,NULL,'','C','mg/dL 2.6-7.2 (Uricase POD)','mg/dL 2.6-7.2 (Uricase POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5028,'VLDL Cholesterol','Plain-Blood','{\"type\":\"number\",\"help\":\" mg/dL &lt;30 (Calculated)\",\"interval_h\":\"30\",\"calculate\":\"E/5\",\"ex_list\":\"5018\",\"equipment\":\"C\"}','','Misc/HDL','Clinical chemistry/Lipid profile','Lipid Profile','560','245','','',1,1,0,1,NULL,'','C',' mg/dL &lt;30 (Calculated)',' mg/dL &lt;30 (Calculated)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5029,'Glucose','Plain-CSF','{\"type\":\"number\",\"help\":\"mg/dl 40-70 (GOD-POD)\",\"interval_l\":\"40\",\"interval_h\":\"70\",\"cinterval_l\":\"30\",\"ainterval_h\":\"1500\",\"equipment\":\"F\"}','','Fluid/csf','Clinical chemistry/Fluid','CSF Examination','015','','','',1,1,0,1,NULL,'','F','mg/dl 40-70 (GOD-POD)','mg/dl 40-70 (GOD-POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',CSF,NABL'),
(5030,' Protein','Plain-CSF','{\"type\":\"number\",\"help\":\"mg/dL 15-40 (Pyrogallol red)\",\"interval_l\":\"15\",\"interval_h\":\"40\",\"method\":\"Pyrogallol Red\",\"equipment\":\"F\"}','','Fluid/csf','Clinical chemistry/Fluid','CSF Examination','','','','',1,1,0,1,NULL,'','F','mg/dL 15-40 (Pyrogallol red) \"TIETZ FIRST SOUTH ASIA EDITION 2018\'','mg/dL 15-40 (Pyrogallol red) \"TIETZ FIRST SOUTH ASIA EDITION 2018\'','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',CSF,NABL'),
(5031,'Glucose','Fluoride-Blood','{\"type\":\"number\",\"help\":\"Unit: <b>mg/dl</b><br>Method: GOD-POD endpoint<br><a href=\\\"https://www.diabetes.org.uk/professionals/position-statements-reports/diagnosis-ongoing-management-monitoring/new_diagnostic_criteria_for_diabetes\\\">Criteria</a>\",\"interval_l\":\"70\",\"interval_h\":\"140\",\"cinterval_l\":\"55\",\"cinterval_h\":\"300\",\"ainterval_h\":\"1500\",\"ainterval_l\":\"5\",\"equipment\":\"C\"}','','LRE-GLU,GLU-LIP,Misc/Osmolarity-Serum,GLU,Emergency','Clinical chemistry/Glucose','Diabetes Mellitus profile','015','','','horizontal2',1,1,0,1,0,'','C','<i>Unit: mg/dL</i><br>\r\n<i>[mmol/L Glucose] = [mg/dL Glucose] / 18 </i><br>\r\n<p style=\"text-align:center;font-weight:bold;\">Criteria for the diagnosis of diabetes (any one of below)</p>\r\n<ol >\r\n	<li > FPG >=126 mg/dL (7.0 mmol/L). Fasting is defined as no caloric intake for at least 8 h.*  </li>\r\n	<li> 2-h PG >=200 mg/dL (11.1 mmol/L) during OGTT. The test should be performed as described by WHO, using a glucose load containing the equivalent of 75 g anhydrous glucose dissolved in water.* </li>\r\n	<li> A1C >=6.5% (48 mmol/mol). The test should be performed in a laboratory using a method that is NGSP certified and standardized to the DCCT assay.* </li>\r\n	<li > In a patient with classic symptoms of hyperglycemia or hyperglycemic crisis, a random plasma glucose >=200 mg/dL (11.1 mmol/L). </li>\r\n</ol>\r\n	<p ><i>Note1: DCCT, Diabetes Control and Complications Trial; FPG, fasting plasma glucose; OGTT, oral glucose tolerance test; NGSP, National Glycohemoglobin Standardization Program; WHO, World Health Organization; 2-h PG, 2-h plasma glucose.</i></p>\r\n	<p><i>Note2: *In the absence of unequivocal hyperglycemia, diagnosis requires two abnormal test results from the same sample or in two separate test samples.</i></p>','<i>Unit: mg/dL</i><br>\r\n<i>[mmol/L Glucose] = [mg/dL Glucose] / 18 </i><br>\r\n<p style=\"text-align:center;font-weight:bold;\">Criteria for the diagnosis of diabetes (any one of below)</p>\r\n<ol >\r\n	<li > FPG >=126 mg/dL (7.0 mmol/L). Fasting is defined as no caloric intake for at least 8 h.*  </li>\r\n	<li> 2-h PG >=200 mg/dL (11.1 mmol/L) during OGTT. The test should be performed as described by WHO, using a glucose load containing the equivalent of 75 g anhydrous glucose dissolved in water.* </li>\r\n	<li> A1C >=6.5% (48 mmol/mol). The test should be performed in a laboratory using a method that is NGSP certified and standardized to the DCCT assay.* </li>\r\n	<li > In a patient with classic symptoms of hyperglycemia or hyperglycemic crisis, a random plasma glucose >=200 mg/dL (11.1 mmol/L). </li>\r\n</ol>\r\n	<p ><i>Note1: DCCT, Diabetes Control and Complications Trial; FPG, fasting plasma glucose; OGTT, oral glucose tolerance test; NGSP, National Glycohemoglobin Standardization Program; WHO, World Health Organization; 2-h PG, 2-h plasma glucose.</i></p>\r\n	<p><i>Note2: *In the absence of unequivocal hyperglycemia, diagnosis requires two abnormal test results from the same sample or in two separate test samples.</i></p>','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\r\n<a href=\"https://diabetesjournals.org/care/article/47/Supplement_1/S20/153954/2-Diagnosis-and-Classification-of-Diabetes\">Diagnosis and Classification of Diabetes: Standards of Care in Diabetesâ€”2024 </a>',',Blood,NABL'),
(5032,'Adenosine Deaminase','Plain-CSF','{\"type\":\"number\",\"help\":\"U/mL &lt;15 (Berthelot)\",\"interval_h\":\"15\"}','','Fluid/csf','Clinical chemistry/Fluid','CSF Examination','','','','',1,1,0,1,NULL,'','F','U/mL &lt;15 (Berthelot)','U/mL &lt;15 (Berthelot)','yes','','yes','transport at room temperature<br> <br>Report will be avaialble in 24 hours(Wards) 24 hours(OPD)',',CSF'),
(5033,'Adenosine Deaminase','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/mL N/A (Berthelot)','U/mL N/A (Berthelot)','yes','','yes','transport at room temperature<br> Report will be avaialble in 24 hours(Wards) 24 hour(opd)',''),
(5034,'Adenosine Deaminase','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/mL N/A (Berthelot)','U/mL N/A (Berthelot)','yes','','yes','transport at room temperature<br> Report will be avaialble in 24 hours(Wards) 24 hours(OPD)',''),
(5035,'Glucose','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','mg/dl (GOD-POD)','mg/dl (GOD-POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5036,'Glucose','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F','mg/dl NA(GOD-POD)','mg/dl NA(GOD-POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5037,'Protein','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"g/dL NA(Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F','g/dL NA(Biuret)','g/dL NA(Biuret)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5038,'Protein','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"g/dL NA(Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','g/dL NA(Biuret)','g/dL NA(Biuret)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5039,'Lipase(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"equipment\":\"C\"}','','Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L NA (Turbidimetry)','U/L NA (Turbidimetry)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5040,'Amylase(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','','Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L (CNPG)','U/L (CNPG)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5041,'Lactate Dehydrogenase(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L (L to P UV Kinetic)','U/L (L to P UV Kinetic)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5042,'Cholesterol(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\" mg/dL N/A(CHOD-POD)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','mg/dL (CHOD-POD)','mg/dL (CHOD-POD)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5043,'Triglyceride(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\" mg/dL N/A(Lipase  GPO - POD)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F',' mg/dL N/A(Lipase  GPO - POD)',' mg/dL N/A(Lipase  GPO - POD)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5044,'Amylase(not in NABL scope)','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','','Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L (CNPG)','U/L (CNPG)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5045,'Lipase(not in NABL scope)','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L NA (Turbidimetry)','U/L NA (Turbidimetry)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5046,'Lactate Dehydrogenase(not in NABL scope)','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L (L to P UV Kinetic)','U/L (L to P UV Kinetic)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5047,'Lactate Dehydrogenase(not in NABL scope)','Plain-CSF','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"F\"}','','Fluid/csf','Clinical chemistry/Fluid','CSF Examination','','','','',1,1,0,1,NULL,'','F','U/L (L to P UV Kinetic)','U/L (L to P UV Kinetic)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',CSF'),
(5048,'Sodium','Plain-Urine','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','Urine/Urine-osm','Clinical chemistry/Urine Electrolytes','Urine Examination','','','','',1,1,0,1,NULL,'','C',' mmol/L N/A(Direct ISE)',' mmol/L N/A(Direct ISE)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5049,'Potassium(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Urine/Urine-osm','Clinical chemistry/Urine Electrolytes','Urine Examination','','','','',1,1,0,1,NULL,'','C',' mmol/L N/A(Direct ISE)',' mmol/L N/A(Direct ISE)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5050,'Calcium','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dL N/A (Arsenazo III)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C',' mg/dL N/A (Arsenazo III)',' mg/dL N/A (Arsenazo III)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5051,'Phosphorus','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dL N/A (Ammonium Molybdate)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','mg/dL N/A (Ammonium Molybdate)','mg/dL N/A (Ammonium Molybdate)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5052,'Creatinine','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Urine/UPC','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','mg/dL (Jaffe two point)','mg/dL (Jaffe two point)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5053,'Total Protein','Plain-Urine','{\"type\":\"number\",\"help\":\"g/dL N/A (Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','g/dL N/A (Biuret)','g/dL N/A (Biuret)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5054,'Ketone body','Plain-Urine','{\"type\":\"select\",\"option\":\", Positive , Negative , -\",\"help\":\" (Nitropruside)\",\"equipment\":\"K\"}','','Urine/Ketone','ACETONE','Urine Examination','','','','',1,1,0,1,NULL,'','K',' (Nitropruside)','(Nitropruside)<br>\r\nAcetone and Acetoacetate reacts in the method.<br>\r\n<b>beta-hydoxy butyrate does not react.</b><br>','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5055,'Uric Acid','Plain-Urine','{\"type\":\"number\",\"help\":\"mg/dL N/A (Uricase POD)\",\"step\":\"0.1\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','mg/dL N/A (Uricase POD)','mg/dL N/A (Uricase POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5056,'Protein:Creatinine Ratio','Plain-Urine','{\"type\":\"number\",\"calculate\":\"E/e\",\"ex_list\":\"5085,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(Ratio in mg/mg)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Urine/UPC','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','Ratio in mg/mg, (Calculated)','Ratio in mg/mg, (Calculated)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5057,'Calcium:creatinine Ratio','Plain-Urine','{\"type\":\"number\",\"calculate\":\"E/e\",\"ex_list\":\"5050,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','(Calculated)(mg/mg)','(Calculated)(mg/mg)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5058,'24 hours Urine Volume(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\"mL (24 hours urine volume)\",\"equipment\":\"C\"}','','Urine/24 HOUR URINE PROFILE','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','mL (24 hours urine volume)','mL (24 hours urine volume)','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5059,'24 hours Urine  Protein','Plain-Urine','{\"type\":\"number\",\"calculate\":\"E*E/100\",\"ex_list\":\"5058,5085,\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"mg(Calculated)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Urine/24 HOUR URINE PROFILE','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','mg(Calculated)','mg(Calculated)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>\n\n<h5>Instructions for 24 hours urine collection (With Preservative)</h5>\n Do not throw away preservative liquid. Discard 8.00 am urine.<br> There after collect urine in the container till 8 am next morning.<br> Include last 8 am urine in container.<br> Keep in refrigerator in between.\n\n<h5>24 àª•àª²àª¾àª• àªªà«‡àª¶àª¾àª¬ àª¸àª‚àª—à«àª°àª¹ àª®àª¾àªŸà«‡àª¨àª¾ àª¸à«‚àªšàª¨à«‹ (àªªà«àª°àª¿àªàª°à«àªµà«‡àªŸà«€àªµ àª¸àª¾àª¥à«‡)</h5>\n\n àª•à«‡àª¨ àª®àª¾àª‚ àª°àª¹à«‡àª²àª¾ àªªà«àª°àª¿àªàª°à«àªµà«‡àªŸàª¿àªµ àªªà«àª°àªµàª¾àª¹à«€ àª¨à«‡ àª«à«‡àª•àª¶à«‹ àª¨àª¹àª¿.<br> àª¸àªµàª¾àª°à«‡ à«® àªµàª¾àª—à«àª¯àª¾àª¥à«€ àª¬à«€àªœàª¾ àª¦àª¿àªµàª¸à«‡ àª¸àªµàª¾àª°à«‡ à«® àªµàª¾àª—à«àª¯àª¾ àª¸à«àª§à«€àª¨à«‹ àªªà«‡àª¶àª¾àª¬ àª­à«‡àª—à«‹ àª•àª°àªµàª¾àª¨à«‹ àª›à«‡.<br> àªªàª°àª‚àª¤à« àª†àªœàª¨àª¾ àª¸àªµàª¾àª°àª¨à«‹ à«® àªµàª¾àª—à«àª¯àª¾àª¨à«‹ àªªà«‡àª¶àª¾àª¬ àª²à«‡àªµà«‹ àª¨àª¹àª¿. àª¤à«àª¯àª¾àª° àª¬àª¾àª¦ àª¬à«€àªœà«‹ àª¦àª¿àªµàª¸ àª¨àª¾ àª¸àªµàª¾àª°à«‡ à«® àªµàª¾àª—à«àª¯àª¾ àª¸à«àª§à«€àª¨à«‹ àª¬àª§à«‹ àªœ àªªà«‡àª¶àª¾àª¬ àª•à«‡àª¨àª®àª¾àª‚ àª­à«‡àª—à«‹ àª•àª°àªµà«‹.<br>àª¦àª°à«‡àª• àªµàª–àª¤à«‡ àªªà«‡àª¶àª¾àª¬ àª•à«‡àª¨àª®àª¾àª‚ àª¨àª–à«àª¯àª¾ àª¬àª¾àª¦ àª•à«‡àª¨àª¨à«‡ àª¹àª²àª¾àªµàªµà«àª‚.<br> àªµàªšà«àªšà«‡àª¨àª¾ àª¸àª®àª¯ àª¦àª°àª®à«àª¯àª¾àª¨ àª•à«‡àª¨àª¨à«‡ àª«à«àª°àª¿àªœàª®àª¾àª‚ àª°àª¾àª–àªµà«.\n\n<h5>24 à¤˜à¤‚à¤Ÿà¥‡ à¤ªà¥‡à¤¶à¤¾à¤¬ à¤¸à¤‚à¤—à¥à¤°à¤¹ à¤•à¥‡ à¤²à¤¿à¤ à¤¨à¤¿à¤°à¥à¤¦à¥‡à¤¶ (à¤ªà¥à¤°à¥‡à¥›à¤°à¤µà¥‡à¤Ÿà¤¿à¤µ à¤•à¥‡ à¤¸à¤¾à¤¥)</h5>\n\n à¤•à¥‡à¤¨ à¤•à¥‡ à¤…à¤¨à¥à¤¦à¤° à¤•à¤¾ à¤ªà¥à¤°à¥‡à¥›à¤°à¤µà¥‡à¤Ÿà¤¿à¤µ à¤ªà¥à¤°à¤µà¤¾à¤¹à¥€ à¤•à¥‹ à¤®à¤¤ à¤«à¥‡à¤•à¥‹à¥¤<br> à¤¸à¥à¤¬à¤¹ 8 à¤¬à¤œà¥‡ à¤¸à¥‡ à¤•à¤² à¤¸à¥à¤¬à¤¹ 8 à¤¬à¤œà¥‡ à¤¤à¤• à¤•à¤¾ à¤ªà¥‡à¤¶à¤¾à¤¬ à¤‡à¤•à¤Ÿà¥à¤ à¤¾ à¤•à¤°à¤¨à¤¾ à¤¹à¥ˆà¥¤<br> à¤²à¥‡à¤•à¤¿à¤¨ à¤†à¤œ à¤¸à¥à¤¬à¤¹ 8 à¤¬à¤œà¥‡ à¤•à¤¾ à¤ªà¥‡à¤¶à¤¾à¤¬ à¤²à¥‡à¤¨à¤¾ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆ à¤“à¤° à¤‰à¤¸à¤•à¥‡ à¤¬à¤¾à¤¦ à¤•à¤¾ à¤•à¤² à¤¸à¥à¤¬à¤¹ 8 à¤¬à¤œà¥‡ à¤¤à¤• à¤•à¤¾ à¤¸à¤¾à¤°à¤¾ à¤ªà¥‡à¤¶à¤¾à¤¬ à¤•à¥‡à¤¨ à¤®à¥‡ à¤‡à¤•à¤Ÿà¥à¤ à¤¾ à¤•à¤°à¤¨à¤¾ à¤¹à¥ˆà¥¤<br> à¤‡à¤¸ à¤¬à¤¾à¤° à¤ªà¥‡à¤¶à¤¾à¤¬ à¤¦à¤¾à¤² à¤¨à¥‡ à¤•à¥‡ à¤¬à¤¾à¤¦ à¤•à¥‡à¤¨ à¤•à¥‹ à¤¹à¤¿à¤²à¤¾à¤¨à¤¾ à¤œà¤°à¥à¤°à¥€ à¤¹à¥ˆà¥¤<br> à¤“à¤° à¤‰à¤¸à¤•à¥‡ à¤¬à¤¾à¤¦ à¤•à¥‡à¤¨ à¤•à¥‹ à¤«à¥à¤°à¤¿à¤œ à¤®à¥‡ à¤°à¤–à¤¨à¤¾ à¤¹à¥ˆà¥¤\n\n',',Urine,NABL'),
(5060,'eGFR','Plain-Blood','{\"type\":\"number\",\"calculate\":\"175*E^-1.154*E^-.203*E*E\",\"ex_list\":\"5001,5088,5087,5089\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"mL/min/1.73 mÂ²(Calculated)(MDRD)\",\"equipment\":\"C\"}','','eGFR','Clinical chemistry','Renal Function Tests','','','','',1,1,0,1,NULL,'','C','mL/min/1.73 mÂ²(Calculated)(MDRD)','mL/min/1.73 mÂ²(Calculated)(MDRD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5061,'Serum Osmolality','Plain-Blood','{\"type\":\"number\",\"calculate\":\"1.86*E+(E*0.1667)+(E*0.0556)+9\",\"ex_list\":\"5019,5020,5002,5212\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"(Calculated)\"}','','S-Osmolarity,Misc/Osmolarity-Serum','Clinical chemistry','Renal Function Tests','','270','','',1,1,0,1,NULL,'','C','(Calculated)','(Calculated)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5062,'Protein Electrophoresis','Plain-Blood','{\"zoom\":\"zoom\"}','','Reference/protein electro','Electrophoresis ','Protein Electrophoresis','','','','',1,1,0,1,NULL,'','','','','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level reference required',',Blood,NABL,AP-REF'),
(5063,'Electrophoresis Observation','EDTA-Blood','{\"type\":\"subsection\",\"readonly\":\"readonly\",\"equipment\":\"E\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','010','',1,1,0,1,NULL,'','E','','','yes','','no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5064,'Dithonite Test Observation','EDTA-Blood','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','070','',1,1,0,1,NULL,'','','','','yes','','no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5065,'Band at HbA position','EDTA-Blood','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','020','',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5066,'Band at HbF position','EDTA-Blood','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','030','',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5067,'Band at HbS position','EDTA-Blood','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','040','',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5068,'Band at HbA2 position','EDTA-Blood','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','050','',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5069,'Other Bands','EDTA-Blood','{\"zoom\":\"zoom\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','','060',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5070,'Dithonite test without Urea','EDTA-Blood','{\"type\":\"select\",\"option\":\",Not Done,Turbid,Clear\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','080','',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5071,'Dithonite test with Urea','EDTA-Blood','{\"type\":\"select\",\"option\":\",Not Done,Turbid,Clear\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','090','',1,1,0,1,NULL,'','','','','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5072,'Clinical Laboratory Interpretation','EDTA-Blood','{\"zoom\":\"zoom\"}','For HB Electrophoresis','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','','horizontal1',1,1,0,1,NULL,'','','','','yes','yes','no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5073,'Electrophoresis Image','EDTA-Blood','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','Reference/hb electro','Electrophoresis ','Hemoglobin Electrophoresis','','','','',1,1,0,1,NULL,'','','','','yes','','no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required',',Blood,NABL,AP-REF'),
(5074,'Remarks','EDTA-Blood','{\"help\":\"HbA1c is your average blood glucose (sugar) levels for the last two to three months. If you have diabetes, an ideal HbA1c level is 48mmol/mol (6.5%) or below. If you\'re at risk of developing type 2 diabetes, your target HbA1c level should be below 42mmol/mol (6%).\"}','','','Diabetes Mellitus','Diabetes Mellitus profile','','60','60','horizontal2',1,1,0,1,NULL,'','','HbA1c is your average blood glucose (sugar) levels for the last two to three months. If you have diabetes, an ideal HbA1c level is 48mmol/mol (6.5%) or below. If you\'re at risk of developing type 2 diabetes, your target HbA1c level should be below 42mmol/mol (6%).','HbA1c is your average blood glucose (sugar) levels for the last two to three months. If you have diabetes, an ideal HbA1c level is 48mmol/mol (6.5%) or below. If you\'re at risk of developing type 2 diabetes, your target HbA1c level should be below 42mmol/mol (6%).','','','','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5075,'Remarks','Plain-Blood','','','Reference/protein electro','Electrophoresis ','Protein Electrophoresis','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5076,'Electrophoresis Image','Plain-Blood','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','Reference/protein electro','Electrophoresis ','Protein Electrophoresis','','','','',1,1,0,1,NULL,'','','','','yes',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5077,'Clinical Laboratory Interpretation','Plain-Blood','{\"zoom\":\"zoom\",\"equipment\":\"PR\"}','For HB Electrophoresis','Reference/protein electro','Electrophoresis ','Protein Electrophoresis','','','','',1,1,0,1,NULL,'','PR','','','yes',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5078,'Electrophoresis Observation','Plain-Blood','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','','Reference/protein electro','Electrophoresis ','Protein Electrophoresis','','','','',1,1,0,1,NULL,'','','','','yes',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5079,'Band at M position','Plain-Blood','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/protein electro','Electrophoresis ','Protein Electrophoresis','','','','',1,1,0,1,NULL,'','','','','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5080,'Total Protein','Plain-CSF','{\"type\":\"number\",\"help\":\"g/dL 0.015-0.040 (Biuret)\",\"method\":\"Biuret\",\"equipment\":\"F\"}','','','','CSF Examination','','','','',1,1,0,1,NULL,'','F','g/dL 0.015-0.040 (Biuret)','g/dL 0.015-0.040 (Biuret)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',CSF,NABL'),
(5081,'Protein','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Clinical chemistry/Fluid','Pleural Fluid Examination	','','','','',1,1,0,1,NULL,'','F','mg/dL NA(Pyrogallol Red)','mg/dL NA(Pyrogallol Red)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5082,'Protein','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Clinical chemistry/Fluid','Peritoneal Fluid Examination	','','','','',1,1,0,1,NULL,'','F','mg/dL NA(Pyrogallol Red)','mg/dL NA(Pyrogallol Red)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5083,'Sodium(not in NABL scope)','Plain-CSF','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','CSF Examination','','','','',1,1,0,1,NULL,'','F',' mmol/L N/A(Direct ISE)',' mmol/L N/A(Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',CSF'),
(5084,'Calcium','HCL-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Arsenazo III)(Preservative:30 mL 6 M HCL)\",\"step\":\"0.1\",\"method\":\"24Hr Urine\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','F',' mg/dL N/A (Arsenazo III)(Preservative:30 mL 6 M HCL)',' mg/dL N/A (Arsenazo III)(Preservative:30 mL 6 M HCL)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5085,'Total Protein','Plain-Urine','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Urine/24 HOUR URINE PROFILE,Urine/UPC','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','mg/dL NA(Pyrogallol Red)','mg/dL NA(Pyrogallol Red)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5086,'Protein:creatinine Ratio (Not in NABL  Scope)','Plain-Urine','{\"type\":\"number\",\"calculate\":\"(E*1000)/e\", \"ex_list\":\"5053,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','Clinical chemistry/Urine','Urine Examination','','','','',1,1,0,1,NULL,'','C','(Calculated)(mg/mg)','(Calculated)(mg/mg)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5087,'Sex for eGFR','Plain-Blood','{\"type\":\"select\",\"option\":\",1,0.742\",\"help\":\" (male:1) (female:0.742)\"}','','eGFR','Clinical chemistry','','','','','',1,1,0,1,NULL,'','',' (male:1) (female:0.742)',' (male:1) (female:0.742)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5088,'Age for eGFR','Plain-Blood','{\"type\":\"number\"}','','eGFR','Clinical chemistry','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5089,'race for eGFR','Plain-Blood','{\"type\":\"select\",\"option\":\",1,1.210\",\"help\":\" (Non african:1) (African:1.210)\"}','','eGFR','Clinical chemistry','','','','','',1,1,0,1,NULL,'','',' (Non african:1) (African:1.210)',' (Non african:1) (African:1.210)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5092,'CK','Plain-Blood','{\"type\":\"number\",\"help\":\"U/L 25-125 (phosphocreatine HK G6PD)\",\"interval_h\":\"125\",\"equipment\":\"C\"}','','Cardiac profile,Misc/QC/clinical chemistry','Clinical chemistry/Cardiac Profile','','','205','','',1,1,0,1,NULL,'','C','U/L 25-125 (phosphocreatine G6PD)','U/L 25-125 (phosphocreatine G6PD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5093,'CK-MB','Plain-Blood','{\"type\":\"number\",\"help\":\"U/L 0-24 (Immunoinhibition, HK, G6PD)\",\"interval_h\":\"24\",\"equipment\":\"C\"}','','Cardiac profile,Misc/QC/c c mor','Clinical chemistry/Cardiac Profile','Cardiac Profile','','210','','',1,1,0,1,NULL,'','C','U/L 0-24 (Immunoinhibition)','U/L 0-24 (Immunoinhibition)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5094,'Creatinine(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','mg/dL (Jaffe two point)','mg/dL (Jaffe two point)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5095,'Sample_Rejection','None','{\"type\":\"select\",\"option\":\",not done as sample inadequate\"}','','Misc/Remarks','','Remarks','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5096,'Examination_Rejection','None','{\"type\":\"select\",\"option\":\",SNR-NOT DONE AS THE SAMPLE WAS NOT RECIEVED AT THE LABORATORY,Not Done because of INSTRUMENTAL BREAKDOWN,Some Examinations are Not Done because the Sample is INADEQUATE.,Creatinine is Not Done because sample is highly ICTERIC and high Bilirubin has Negative interference on Creatinine level,Not Done because sample was not recieved,NOT DONE because sample was highly HEMOLYZED,Not Done as LABORATORY RESOURCES are Inadequate ,Not Done because sample was highly VISCOUS,Examinations are Not Done because sample was CLOTTED,Not Done because sample is overfilled,Some examinations are Not Done because of INSTRUMENTAL ERROR.,not  done because sample was highly lipemic.,Not Done due to DELAY IN ANALYSIS.\"}','','Examination rejection','','Remarks','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5097,'Critical_Alert','None','{\"zoom\":\"zoom\"}','','Misc/Remarks','','Remarks','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5098,'Remark','None','{\"zoom\":\"zoom\"}','','Misc/Remarks,Remark,Fluid/otherfluid,Emergency','Remarks','Remarks','','','600','horizontal1',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5099,'Withdrawn_Report','None','{\"zoom\":\"zoom\"}','','Misc/Remarks','','Remarks','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5100,'Phosphorus','Plain-Blood','{\"type\":\"number\",\"help\":\" mg/dL 2.5-4.5 (Ammonium Molybdate)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"cinterval_h\":\"8.9\",\"interval_h\":\"4.5\",\"interval_l\":\"2.5\",\"ainterval_h\":\"12.0\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\"}','','BIG1,Misc/QC/clinical chemistry,CAL-MG-PHO/Phosphorous,CKD','Clinical chemistry/CAL-PHO-MG','Electrolytes','520','190','','',1,1,0,1,NULL,'','C','mg/dL 2.5-4.5 (Ammonium Molybdate)','mg/dL 2.5-4.5 (Ammonium Molybdate)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5101,'Corrected Calcium','Plain-Blood','{\"type\":\"number\",\"calculate\":\"0.8*(4-E)+E\",\"ex_list\":\"5011,5014\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)8.6 - 10.2\",\"equipment\":\"C\"}','','LRE-CRP-CAL,CAL-MG-PHO/Calcium,BIG1,CKD','Clinical chemistry/CAL-PHO-MG','Electrolytes','','','','',1,1,0,1,NULL,'','C','(Calculated) (mg/dL) 8.6 - 10.2','(Calculated) (mg/dL) 8.6 - 10.2','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5102,'Ketone bodies','Plain-Blood','{\"type\":\"select\",\"option\":\",Positive,Negative,Not Done(See Remark)\",\"help\":\" (Nitropruside)\",\"equipment\":\"K\"}','','','ACETONE','Ketone Bodies','','100','','',1,1,0,1,NULL,'','K',' (Nitroprusside powder slide test )','(Nitroprusside powder slide test )<br>\r\nAcetone and Acetoacetate reacts in the method.<br>\r\n<b>beta-hydoxy butyrate does not react.</b><br>','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5103,'OPD_Sequence','None','','For Biochemistry OPD Sequence','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5105,'Lactate Dehydrogenase(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/otherfluid','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L (L to P UV Kinetic)','U/L (L to P UV Kinetic)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5106,'Amylase(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','AMY+LIP','Fluid/otherfluid/otherfluidAmy+Lip','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L (CNPG)','U/L (CNPG)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5107,'Lipase(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"equipment\":\"C\"}','','Fluid/otherfluid/otherfluidAmy+Lip','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/L NA (Turbidimetry)','U/L NA (Turbidimetry)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5108,'Glucose','Plain-Other','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','Fluid/otherfluid','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F','mg/dl (GOD-POD)','mg/dl (GOD-POD)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',NABL'),
(5109,'Cholesterol(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\" mg/dL N/A(CHOD-POD)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','C','mg/dL (CHOD-POD)','mg/dL (CHOD-POD)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5110,'Triglyceride(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\" mg/dL N/A(Lipase  GPO - POD)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','C',' mg/dL N/A(Lipase  GPO - POD)',' mg/dL N/A(Lipase  GPO - POD)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5111,'Micro Protein(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Fluid/otherfluid,Misc/QC/c c mor','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F','mg/dL NA(Pyrogallol Red)','mg/dL NA(Pyrogallol Red)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5112,'Total Protein(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\" g/dL N/A (Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Fluid/otherfluid','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F',' g/dL N/A (Biuret)',' g/dL N/A (Biuret)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5113,'Cholinesterase','Plain-Blood','{\"type\":\"number\",\"help\":\" U/L &lt;3000-13000 (Butyrylthiocholine)\",\"cinterval_l\":\"3000\",\"equipment\":\"C\"}','','CHE','Clinical chemistry/CHE','','','220','','',1,1,0,1,NULL,'','ch',' U/L &lt;3000-13000 (Butyrylcholinesterase )',' U/L &lt;3000-13000 (Butyrylcholinesterase )','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5114,'HCL wash','Plain-Blood','{\"hide\":\"yes\"}','','LRE-CRP-CAL,Misc/QC/clinical chemistry,CAL-MG-PHO/Calcium,CAL-MG-PHO/Magnesium,CAL-MG-PHO/Phosphorous,BIG1,CKD','Clinical chemistry/CAL-PHO-MG','','','200','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5115,'Total T4(not in NABL scope)','Plain-Blood','{\"type\":\"number\",\"help\":\"nmol/L , 71.2-141 , (ECIA)\",\"equipment\":\"I\"}','','Reference','Immunochemistry/Thyroid profile ','','','','','',1,1,0,1,NULL,'','I','nmol/L , 71.2-141 , (ECIA)','nmol/L , 71.2-141 , (ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5116,'Total T3(not in NABL scope)','Plain-Blood','{\"type\":\"number\",\"help\":\"nmol/L , 1.49-2.60 , (ECIA)\",\"equipment\":\"I\"}','','Reference','Immunochemistry/Thyroid profile ','','','','','',1,1,0,1,NULL,'','I','nmol/L , 1.49-2.60 , (ECIA)','nmol/L , 1.49-2.60 , (ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5117,'TSH','Plain-Blood','{\"type\":\"number\",\"help\":\"mIU/L (CLIA)\\n, 0.465-4.68 \\nNormal ranges for thyroid function tests in infants and children\\n Age             Free T4*(ng/dL)              T4(mcg/dL)        Free T3(pg/mL)     T3(ng/dL)      TSH(mU/L)              TBG(mg/dL)\\n Cord blood      0.9 to 2.2                   7.8 to 13.1       0.2 to 2.4         15 to 75       2.2 to 10.7            1.4 to 9.4\\n 1 to 4 days     2.2 to 5.3                   9.3 to 20.9       1.8 to 7.6         100 to 740     2.7 to 26.5\\n 4 to 30 days    0.9 to 3.4                   8.0 to 21.8       2.93 to 5.08       105 to 387     1.2 to 13.1            1.9 to 4.5\\n 1 to 12 months  0.9 to 2.3                   7.2 to 15.7       2.67 to 5.21       105 to 245     0.6 to 7.3             1.9 to 4.4\\n 1 to 5 years    0.8 to 1.8                   6.4 to 13.5       2.73 to 4.95       105 to 269     0.7 to 6.6             1.6 to 4.2\\n 6 to 10 years   1.0 to 2.1                   6.0 to 12.8       2.73 to 4.69       94 to 241      0.8 to 6.0             1.4 to 3.7\\n 11 to 18 years  0.8 to 1.9                   4.7 to 12.4       2.67 to 4.62       80 to 210      0.6 to 5.8             1.2 to 2.9\\n &gt;18 years       0.9 to 2.5                   5.3 to 10.5       2.10 to 4.40       70 to 204      0.4 to 4.2             1.5 to 3.4\\n T4: thyroxine; T3: triiodothyronine; TSH: thyroid-stimulating hormone; TBG: thyroxine-binding globulin.\\n * Because the normal free T4 reference range varies according to the assay method, clinicians need to determine the range for their specific laboratory, which may differ from the data presented in the table.\\n Data adapted from the following sources:\\n      Nelson JC, Clark SJ, Bonut DL, et al. Age-related changes in serum free thyroxine during childhood and adolescence. J Pediatr 1993; 123:899.\\n     Elmlinger MW, KÃ¼hnel W, Lambrecht HG, et al. Reference intervals from birth to adulthood for serum thyroxine (T4), triiodothyronine (T3), free T3, free T4, thyroxine binding globulin (TBG) and thyrotropin (TSH). Clin Chem Lab Med 2001; 39:973.\\n     Mutlu M, KaragÃ¼zel G, AlÄ±yazicioÄŸlu Y, et al. Reference intervals for thyrotropin and thyroid hormones and ultrasonographic thyroid volume during the neonatal period. J Matern Fetal Neonatal Med 2012; 25:120.\\n     Strich D, Edri S, Gillis D. Current normal values for TSH and FT3 in children are too low: evidence from over 11,000 samples. J Pediatr Endocrinol Metab 2012; 25:245.\\n     Lem AJ, de Rijke YB, van Toor H, et al. Serum thyroid hormone levels in healthy children from birth to adulthood and in short children born small for gestational age. J Clin Endocrinol Metab 2012; 97:3170.\\n     Esoterix (Endocrine Sciences). \",\"interval_l\":\"0.465\",\"interval_h\":\"4.68\",\"equipment\":\"I\"}','','TSH,Misc/QC/Immunochemistry','Immunochemistry/Thyroid profile','Thyroid Profile','','','','horizontal3',1,1,0,1,NULL,'','I','mIU/L (CLIA), 0.465-4.68 <a href=\"https://gmcsurat.edu.in:12349/dokuwiki/lib/exe/fetch.php?media=public:tsh_gem1001_ww_en_i_10_1.pdf\">Vitros Lit.</a>','mIU/L (CLIA), 0.465-4.68 <a href=\"https://gmcsurat.edu.in:12349/dokuwiki/lib/exe/fetch.php?media=public:tsh_gem1001_ww_en_i_10_1.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5118,'Ferritin','Plain-Blood','{\"type\":\"number\",\"help\":\"microgram/L\\n Male(Adult): 20-250\\n Female(Adult): 10-120\\n Newborn: 25-200 \\n 1 month: 200-600  \\n 2-5 month:50-200  \\n 6 month-15 years:7-140  \\n(ECLIA) \",\"interval_l\":\"6.24\",\"interval_h\":\"464\",\"equipment\":\"I\"}','','Anemia,Misc/QC/Immunochemistry','Immunochemistry/Anemia profile','Anemia Profile','','','','',1,1,0,1,NULL,'','I','microgram/L \r\nMale(Adult): 20-250, \r\nFemale(Adult): 10-120, \r\nNewborn: 25-200,  \r\n1 month: 200-600,   \r\n2-5 month:50-200,   \r\n6 month-15 years:7-140 \r\n(Enhanced chemiluminoscence) \r\n<a href=\"https://gmcsurat.edu.in:12349/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:ferr_gem1340_ww_en_i_10_1.pdf\">Vitros Lit.</a>','microgram/L \r\n<p>Male(Adult): 20-250, \r\nFemale(Adult): 10-120, \r\nNewborn: 25-200,  \r\n1 month: 200-600,   \r\n2-5 month:50-200,   \r\n6 month-15 years:7-140  \r\n(Enhanced chemiluminoscence)\r\n</p>\r\n<a href=\"https://gmcsurat.edu.in:12349/dokuwiki/lib/exe\r\nfetch.php?media=nchsls:c:biochemistry:document:ferr_gem1340_ww_en_i_10_1.pdf\">Vitros Lit.</a>','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5120,'Procalcitonin (PCT)(not in NABL scope)','Plain-Blood','{\"type\":\"number\",\"help\": \"microgram/L \\n # less than 0.5 =&gt; systemic bacterial infection is unlikely \\n # 0.5-2.0 =&gt; systemic bacterial infection is possible \\n # 2.0-10.0 =&gt; systemic bacterial infection is likely \\n # more than 10.0 =&gt; almost exclusively due to systemic bacterial infection\\n(ECIA)\", \"interval_h\":\"0.5\",\"cinterval_h\":\"2\",\"equipment\":\"I\"}','','','','Inflammatory markers','','','','',1,1,0,1,NULL,'','I','microgram/L \\n # less than 0.5 =&gt; systemic bacterial infection is unlikely \\n # 0.5-2.0 =&gt; systemic bacterial infection is possible \\n # 2.0-10.0 =&gt; systemic bacterial infection is likely \\n # more than 10.0 =&gt; almost exclusively due to systemic bacterial infection\\n(ECIA)','microgram/L \\n # less than 0.5 =&gt; systemic bacterial infection is unlikely \\n # 0.5-2.0 =&gt; systemic bacterial infection is possible \\n # 2.0-10.0 =&gt; systemic bacterial infection is likely \\n # more than 10.0 =&gt; almost exclusively due to systemic bacterial infection\\n(ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5121,'CRP','Plain-Blood','{\"type\":\"number\",\"help\": \"mg/L \\n less than 10 \\n This is not hsCRP. Donot use this result for interpretation when result is less than 10\\n(Immunoturbidimetry)\",\"interval_h\":\"10\",\"equipment\":\"D\"}','','LRE-CRP-CAL,LRE-ALBTP-CRPLDH,BIG1,Misc/QC/c c mor,LRE-ALBTP-CRP','Clinical chemistry/CRP','Inflammatory markers','540','109','','',1,1,0,1,NULL,'','D','mg/L, Ref. Interval: &lt;10<br>\r\n<i>Method: Immunoturbidimetry</i><br>\r\n<b>Note:</b><br>\r\nThis is not hsCRP. Do not use this result for interpretation when result is less than 10 ','mg/L, Ref. Interval: &lt;10<br>\r\n<i>Method: Immunoturbidimetry</i><br>\r\n<b>Note:</b><br>\r\nThis is not hsCRP. Do not use this result for interpretation when result is less than 10 ','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5122,'D-dimer(not in NABL scope)','Citrate-Blood','{\"type\":\"number\",\"help\":\"microgram/L, &lt;500, (ECIA) \",\"interval_h\":\"500\",\"equipment\":\"D\"}','','Misc/QC/c c mor,D- dimer','Inflammatory Markers','Inflammatory Markers','','','','',1,1,0,1,NULL,'','D','microgram/L, &lt;500, Immunoturbidimetry (ECIA)','microgram/L, &lt;500, Immunoturbidimetry (ECIA)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5123,'Cardiac Troponin I (cTnI)','Plain-Blood','{\"type\":\"number\",\"help\":\"ng/L\\n Male: 8.8-23.7\\n Female: 4.4-21.4\\n (high sensitivity, ECIA)\",\"interval_h\":\"23.7\",\"equipment\":\"I\"}','','Cardiac profile','Clinical chemistry/Cardiac Profile','Cardiac Profile','','','','',1,1,0,1,NULL,'','I','ng/L Male: 8.8-23.7 Female: 4.4-21.4 (high sensitivity, ECIA) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:hstni_gem1320_xus_en_i_3.pdf\">Vitros Lit.</a>','ng/L Male: 8.8-23.7 Female: 4.4-21.4 (high sensitivity, ECIA) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:hstni_gem1320_xus_en_i_3.pdf\">Vitros Lit.</a>)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5124,'Interleukin-6(not in NABL scope)','EDTA-Blood','{\"help\":\"pg/mL\\n  &lt;7.0 \\n (upconverting phosphor immunoassay)\",\"interval_h\":\"7\",\"equipment\":\"6\"}','','','','','','','','',1,1,0,1,NULL,'','6','pg/mL\\n  &lt;7.0 \\n (upconverting phosphor immunoassay)','pg/mL\\n  &lt;7.0 \\n (upconverting phosphor immunoassay)','','','','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5125,'NT-proBNP','Plain-Blood','{\"help\":\"pg/ml (ECIA)\\n===Heart Failure Unlikely===\\n # Any age, &lt;300\\n====Heart Failure Likely====\\n # 20-50 Y, &gt;450 \\n # 50-75 Y, &gt;900\\n # &gt;75Y, &gt;1800\",\"interval_h\":\"300\",\"equipment\":\"I\"}','','Reference,Misc/QC/Immunochemistry','','Cardiac Profile','','','','horizontal2',1,1,0,1,NULL,'','I','pg/ml (Enhanced chemiluminesecnce) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:nbnp2_gem1317_xus_en_i_3.pdf\">Vitros Lit.</a><br>\r\n<table>\r\n\r\n<tr>\r\n    <th>Result</th>\r\n    <th>Age</th>\r\n    <th>Interpretation</th>\r\n</tr>\r\n<tr>\r\n    <td>&lt;300</td>\r\n    <td>Any age</td>\r\n    <td>Heart Failure Unlikely</td>\r\n</tr>\r\n<tr>\r\n    <td>&gt;450</td>\r\n    <td>20-50 Yrs</td>\r\n    <td>Heart Failure Likely</td>\r\n</tr>\r\n<tr>\r\n    <td>&gt;900</td>\r\n    <td>50-75 Yrs</td>\r\n    <td>Heart Failure Likely</td>\r\n</tr>\r\n\r\n<tr>\r\n    <td>&gt;1800</td>\r\n    <td>&gt;75 Yrs</td>\r\n    <td>Heart Failure Likely</td>\r\n</tr>\r\n</table>','pg/ml (Enhanced chemiluminesecnce) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:nbnp2_gem1317_xus_en_i_3.pdf\">Vitros Lit.</a><br>\r\n<table>\r\n\r\n<tr>\r\n    <th>Result</th>\r\n    <th>Age</th>\r\n    <th>Interpretation</th>\r\n</tr>\r\n<tr>\r\n    <td>&lt;300</td>\r\n    <td>Any age</td>\r\n    <td>Heart Failure Unlikely</td>\r\n</tr>\r\n<tr>\r\n    <td>&gt;450</td>\r\n    <td>20-50 Yrs</td>\r\n    <td>Heart Failure Likely</td>\r\n</tr>\r\n<tr>\r\n    <td>&gt;900</td>\r\n    <td>50-75 Yrs</td>\r\n    <td>Heart Failure Likely</td>\r\n</tr>\r\n\r\n<tr>\r\n    <td>&gt;1800</td>\r\n    <td>&gt;75 Yrs</td>\r\n    <td>Heart Failure Likely</td>\r\n</tr>\r\n</table>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level reference required',',Blood,AP-REF'),
(5126,'Request Form','None','{\"type\":\"blob\"}','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5127,'Free T4','Plain-Blood','{\"type\":\"number\",\"help\": \"pmol/L \\n 10.0-28.2 \\n(ECIA)\",\"interval_l\":\"10.0\",\"interval_h\":\"28.2\",\"equipment\":\"I\"}','','Reference,Misc/QC/Immunochemistry','Thyroid Profile','Thyroid Profile','','','','',1,1,0,1,NULL,'','I','pmol/L 10.0-28.2 (Enhanced chemiluminescence)<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:ft4_gem1015_ww_en_i_12_1.pdf\">Vitros Lit.</a>','pmol/L 10.0-28.2 (Enhanced chemiluminescence)<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:ft4_gem1015_ww_en_i_12_1.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required	',',Blood'),
(5128,'Free T3','Plain-Blood','{\"type\":\"number\",\"help\": \"pmol/L \\n 4.26-8.10 \\n(ECIA)\",\"interval_l\":\"4.26\",\"interval_h\":\"8.10\",\"equipment\":\"I\"}','','Reference,Misc/QC/Immunochemistry','','Thyroid Profile','','','','',1,1,0,1,NULL,'','I','pmol/L 4.26-8.10 (Enhanced chemiluminescence)<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:ft3_gem1021_ww_en_i_12_1.pdf\">Vitros Lit.</a>','pmol/L 4.26-8.10 (Enhanced chemiluminescence)<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:ft3_gem1021_ww_en_i_12_1.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level Reference required	',',Blood'),
(5129,'Prolactin ','Plain-Blood','{\"type\":\"number\",\"help\": \"ng/mL \\n Normal Nonpregnant Female: 3.0-18.6 \\n Male:3.7-17.9 \\n(ECIA)\",\"interval_h\":\"18.6\",\"equipment\":\"I\"}','','Misc/Fertility','Reproductive Profile','Reproductive Profile','','','','',1,1,0,1,NULL,'','I','ng/mL <br>\r\nNormal Nonpregnant Female: 3.0-18.6 <br>\r\nMale: 3.7-17.9 (ECIA) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:prol_gem1065_ww_en_i_8.pdf\">Vitros Lit.</a>','ng/mL <br>\r\nNormal Nonpregnant Female: 3.0-18.6 <br>\r\nMale: 3.7-17.9 (ECIA) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:prol_gem1065_ww_en_i_8.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5130,'FSH','Plain-Blood','{\"type\":\"number\",\"help\": \"IU/L \\n # normal female follicular phase =&gt; 1.98-11.6 \\n # norma female midcycle peak=&gt;5.14-23.4 \\n # normal female lueal phase =&gt; 1.38-9.58 \\n # post menopausal female =&gt; 21.5- 131 \\n Normal male=&gt; 1.555-9.74 \\n(ECIA)\", \"equipment\":\"I\"}','','Misc/Fertility,Misc/QC/Immunochemistry','Reproductive Profile','Reproductive Profile','','','','',1,1,0,1,NULL,'','I','IU/L (Enhanced chemiluminescence)<br> \r\nnormal female follicular phase =&gt; 1.98-11.6<br>\r\nnormal female midcycle peak=&gt;5.14-23.4<br>\r\nnormal female lueal phase =&gt; 1.38-9.58<br>\r\npost menopausal female =&gt; 21.5- 131<br>\r\nNormal male=&gt; 1.555-9.74 \r\n\r\n<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:fsh_gem1060_ww_en_i_10.pdf\">Vitros Lit.</a>','IU/L (Enhanced chemiluminescence)<br> \r\nnormal female follicular phase =&gt; 1.98-11.6<br>\r\nnormal female midcycle peak=&gt;5.14-23.4<br>\r\nnormal female lueal phase =&gt; 1.38-9.58<br>\r\npost menopausal female =&gt; 21.5- 131<br>\r\nNormal male=&gt; 1.555-9.74 \r\n\r\n<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:fsh_gem1060_ww_en_i_10.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5131,'LH','Plain-Blood','{\"type\":\"number\",\"help\": \"IU/L \\n # normal female follicular phase =&gt; 2.58-12.1 \\n # norma female midcycle peak=&gt;27.3-96.9 \\n # normal female lueal phase =&gt; 0.833-15.5 \\n # post menopausal female =&gt; 13.1- 86.5 \\n(ECIA)\", \"equipment\":\"I\"}','','Misc/Fertility,Misc/QC/Immunochemistry','Reproductive Profile','Reproductive Profile','','','','horizontal2',1,1,0,1,NULL,'','I','IU/L <br>\r\nNormal female follicular phase  â‰¥ 2.58-12.1 <br>\r\nNormal female mid-cycle peak â‰¥ 27.3-96.9 <br>\r\nNormal female luteal phase â‰¥ 0.833-15.5 <br>\r\nPost menopausal female â‰¥ 13.1- 86.5 (Enhanced chemiluminescence) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:lh_gem1055_ww_en_i_10.pdf\r\n\">Vitros Lit.</a>','IU/L <br>\r\nNormal female follicular phase  â‰¥ 2.58-12.1 <br>\r\nNormal female mid-cycle peak â‰¥ 27.3-96.9 <br>\r\nNormal female luteal phase â‰¥ 0.833-15.5 <br>\r\nPost menopausal female â‰¥ 13.1- 86.5 (Enhanced chemiluminescence) <a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:lh_gem1055_ww_en_i_10.pdf\r\n\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5132,'Magnesium','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL 1.7-2.7 (Xylidyl blue)\",\"step\":\"0.1\",\"interval_h\":\"2.7\",\"interval_l\":\"1.7\",\"equipment\":\"C\"}','','Misc/QC/clinical chemistry,BIG1,CAL-MG-PHO/Magnesium','Clinical chemistry/CAL-PHO-MG','Electrolytes','530','195','','',1,1,0,1,NULL,'','C','mg/dL 1.7-2.7 (Xylidyl blue)','mg/dL 1.7-2.7 (Xylidyl blue)','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5133,'B-hCG','Plain-Blood','{\"type\":\"number\",\"help\":\"IU/L,\\n&lt;=25, \\n(ECIA)\",\"interval_h\":\"25\",\"equipment\":\"I\"}','','B-HCG,Misc/QC/Immunochemistry','Reproductive Profile','Reproductive Profile','','','','',1,1,0,1,NULL,'','I','IU/L, &lt;=25,Enhanced chemiluminescence (ECIA)\r\n<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:bhcg_gem1076_xus_en_i_13.pdf\">Vitros Lit.</a>','IU/L, &lt;=25,Enhanced chemiluminescence (ECIA)\r\n<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=nchsls:c:biochemistry:document:bhcg_gem1076_xus_en_i_13.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5134,'Urine osmolality(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\" mmol/L&lt;1200 (Calculated)\",\"calculate\":\"E/6+E/18+2*E+2*E+E/11.312\",\"ex_list\":\"5135,5136,5048,5049,5052\",\"equipment\":\"C\"}','','Urine/Urine-osm','Clinical chemistry/ Urine osmolarity','Renal Function Tests','','','','',1,1,0,1,NULL,'','C',' mmol/L&lt;1200 (Calculated)',' mmol/L&lt;1200 (Calculated)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5135,'Urea(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dl(urease GLDH)\",\"equipment\":\"C\"}','','','','Urine Examination','','','','',1,1,0,1,NULL,'','C',' mg/dl(urease GLDH)',' mg/dl(urease GLDH)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5136,'Glucose(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dl(GOD-POD endpoint)\",\"equipment\":\"C\"}','','Urine/Urine-osm','Clinical chemistry/ Urine osmolarity','Urine Examination','','','','',1,1,0,1,NULL,'','C',' mg/dl(GOD-POD endpoint)',' mg/dl(GOD-POD endpoint)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5137,'Creatinine','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','','Renal Function Tests','','','','',1,1,0,1,NULL,'','C',' mg/dL N/A (Jaffe two point)',' mg/dL N/A (Jaffe two point)','yes',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine,NABL'),
(5139,'Adenosine Deaminase(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','Fluid/otherfluid,Misc/QC/ADA','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,1,0,1,NULL,'','F','U/mL, Method:Berthelot, No Ref.Interval provided','U/mL, Method:Berthelot, No Ref.Interval provided','','','yes','transport at room temperature<br> Report will be avaialble in 24 hours(Wards) 24 hours(OPD)',''),
(5140,'Testosterone(not in NABL scope)','Plain-Blood','{\"type\":\"number\",\"help\": \"nmol/L \\n #  Normal male(20-49 years) : 4.56-28.2 \\n # Normal males(&gt;50 years): 2.49-21.6 \\n #  Females with normal  menstrual  cycles : 0.198-2.67  \\n(ECIA)\", \"equipment\":\"I\"}','','','','','','','','',1,1,0,1,NULL,'','I','nmol/L \\n #  Normal male(20-49 years) : 4.56-28.2 \\n # Normal males(&gt;50 years): 2.49-21.6 \\n #  Females with normal  menstrual  cycles : 0.198-2.67  \\n(ECIA)','nmol/L \\n #  Normal male(20-49 years) : 4.56-28.2 \\n # Normal males(&gt;50 years): 2.49-21.6 \\n #  Females with normal  menstrual  cycles : 0.198-2.67  \\n(ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5141,'Total 25-OH Vit-D','Plain-Blood','{\"type\":\"number\",\"help\":\"nmol/L\\n Deficient: &lt;50\\n Insufficient: 50-&lt;75\\n Sufficient: 75-250 \\n potential toxicity: &gt;250\\n(ECIA) \\n Multiply The Value with 0.4 to Covert it from nmol/L into ng/ml \",\"interval_l\":\"75\",\"interval_h\":\"250\",\"equipment\":\"I\"}','','Reference,Misc/QC/Immunochemistry','Vitamins','Vitamins','','','100','horizontal3',1,1,0,1,NULL,'','I','nmol/L (ECIA)pmol/L 176-687  \\n(ECIA)<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=public:tvitd_gem1360_xus_en_i_9_1.pdf\">Vitros Lit.</a><br>\r\n<table>\r\n	<tr> \r\n		<th><b>condition</b></th>\r\n		<th><b>result</b></th>\r\n	</tr>\r\n	<tr> \r\n		<td>Deficient</td><td>&lt;50</td>\r\n	</tr>\r\n	<tr> \r\n		<td>Insufficient</td><td>50-75</td>\r\n	</tr>\r\n	<tr> \r\n		<td>Sufficient</td><td>75-250</td>\r\n	</tr>\r\n	<tr> \r\n		<td>potential toxicity</td><td> &gt;250</td>\r\n	</tr>	\r\n 	<tr> \r\n		<td colspan=\"2\">Multiply nmol/L result with 0.4 to convert it into ng/ml</td>\r\n	</tr>\r\n</table>','nmol/L (ECIA)pmol/L 176-687  \\n(ECIA)<a href=\"http://11.207.2.240/dokuwiki/lib/exe/fetch.php?media=public:tvitd_gem1360_xus_en_i_9_1.pdf\">Vitros Lit.</a><br>\r\n<table>\r\n	<tr> \r\n		<th><b>condition</b></th>\r\n		<th><b>result</b></th>\r\n	</tr>\r\n	<tr> \r\n		<td>Deficient</td><td>&lt;50</td>\r\n	</tr>\r\n	<tr> \r\n		<td>Insufficient</td><td>50-75</td>\r\n	</tr>\r\n	<tr> \r\n		<td>Sufficient</td><td>75-250</td>\r\n	</tr>\r\n	<tr> \r\n		<td>potential toxicity</td><td> &gt;250</td>\r\n	</tr>	\r\n 	<tr> \r\n		<td colspan=\"2\">Multiply nmol/L result with 0.4 to convert it into ng/ml</td>\r\n	</tr>\r\n</table>','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level reference required',',Blood,AP-REF'),
(5142,'Vitamin B12','Plain-Blood','{\"type\":\"number\",\"help\":\"pmol/L 176-687  \\n(ECIA)\",\"interval_h\":\"687\",\"interval_l\":\"176\",\"equipment\":\"I\"}','','Reference,Misc/QC/Immunochemistry','','Vitamins','','','100','',1,1,0,1,NULL,'','I','pmol/L 176-687  (ECIA)<a href=\"https://gmcsurat.edu.in:12349/dokuwiki/lib/exe/fetch.php?media=public:b12_gem1350_ww_en_i_12.pdf\">Vitros Lit.</a>','pmol/L 176-687  (ECIA)\r\n<a href=\"https://gmcsurat.edu.in:12349/dokuwiki/lib/exe/fetch.php?media=public:b12_gem1350_ww_en_i_12.pdf\">Vitros Lit.</a>','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level reference required',',Blood,AP-REF'),
(5143,'pH','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"7.35-7.45 (Potentiometry using ISE)\",\"interval_l\":\"7.35\",\"interval_h\":\"7.45\",\"cinterval_l\":\"7.20\",\"cinterval_h\":\"7.60\",\"ainterval_h\":\"7.8\",\"ainterval_l\":\"6.9\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','010','',1,1,0,1,NULL,'','A','7.35-7.45 (Potentiometry using ISE)','7.35-7.45 (Potentiometry using ISE)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards) ',',Blood'),
(5144,'pCO2','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmHg 32-48 (Direct ISE)\",\"interval_l\":\"32\",\"interval_h\":\"48\",\"cinterval_l\":\"20\",\"cinterval_h\":\"70\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','020','',1,1,0,1,NULL,'','A','mmHg 32-48 (Potentiometry)','mmHg 32-48 (Potentiometry)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards) ',',Blood'),
(5145,'pO2','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmHg 83-108 (Direct ISE)\",\"interval_l\":\"83\",\"interval_h\":\"108\",\"cinterval_l\":\"40\",\"cinterval_h\":\"250\",\"ainterval_h\":\"500\",\"ainterval_l\":\"20\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','030','',1,1,0,1,NULL,'','A','mmHg 83-108 (Amperometry)','mmHg 83-108 (Amperometry)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5146,'Hematocrit','Heparinised-Arterial_Blood','{\"type\":\"number\",\"interval_l\":\"36\",\"interval_h\":\"50\",\"equipment\":\"A\"}','','','Blood Gas Analysis','Arterial Blood Gas Analysis','','1000','100','',1,1,0,1,NULL,'','A','<i>Unit: %, Method: Impedance Conductimetry</i><br>\r\n<b>Male:</b> 41-50<br>\r\n<b>Female:</b> 36-48<\r\n\r\n','<i>Unit: %, Method: Impedance Conductimetry</i><br>\r\n<b>Male:</b> 41-50<br>\r\n<b>Female:</b> 36-48\r\n\r\n','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5147,'ct Hct','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5148,'Sodium','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L 136-145 (Direct ISE)\",\"interval_l\":\"136\",\"interval_h\":\"145\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','050','',1,1,0,1,NULL,'','A','mmol/L 136-145 (Potentiometry using ISE)','mmol/L 136-145 (Potentiometry using ISE)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5149,'Potassium','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L 3.5-5.1 (Direct ISE)\",\"interval_l\":\"3.5\",\"interval_h\":\"5.1\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','060','',1,1,0,1,NULL,'','A','mmol/L 3.5-5.1 (Potentiometry using ISE)','mmol/L 3.5-5.1 (Potentiometry using ISE)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5150,'Ionized Calcium(Ca2+)','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L 1.15-1.30 (Direct ISE)\",\"interval_l\":\"1.15\",\"interval_h\":\"1.30\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','080','',1,1,0,1,NULL,'','A','mmol/L 1.15-1.30 (Potentiometry using ISE)','mmol/L 1.15-1.30 (Potentiometry using ISE)','','','yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5151,'Chloride','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L 101-110 (Direct ISE)\",\"interval_l\":\"101\",\"interval_h\":\"110\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','070','',1,1,0,1,NULL,'','A','mmol/L 101-110 (Potentiometry using ISE)','mmol/L 101-110 (Potentiometry using ISE)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5152,'Base(B)','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L -3.0-3.0 (Calculated)\",\"interval_l\":\"-3.0\",\"interval_h\":\"3.0\",\"equipment\":\"A\"}','','','','Arterial Blood Gas Analysis','','','','',1,1,0,1,NULL,'','A','mmol/L -3.0-3.0 (Calculated)','mmol/L -3.0-3.0 (Calculated)','',NULL,'no','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5153,'Anion Gap','Heparinised-Arterial_Blood','','','','','Arterial Blood Gas Analysis','','','','',1,1,0,1,NULL,'','','','','',NULL,'no','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5154,'Bicarbonate ','Heparinised-Arterial_Blood','{\"type\":\"text\",\"calculate\":\"10^(E-6.1)*0.03*E\",\"ex_list\":\"5143,5144\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"mmol/L 22.0-28.0 (Calculated)\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','040','',1,1,0,1,NULL,'','A','mmol/L 22.0-28.0 (Calculated)','mmol/L 22.0-28.0 (Calculated)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5155,'cHCO3-(P,st)c','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L 22.0-28.0 (Calculated)\",\"interval_l\":\"22.0\",\"interval_h\":\"28.0\",\"equipment\":\"A\"}','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5156,'sO2','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L 95.0-99.0 (Calculated)\",\"interval_l\":\"95.0\",\"interval_h\":\"99.0\",\"equipment\":\"A\"}','','','','Arterial Blood Gas Analysis  ','','','','',1,1,0,1,NULL,'','A','mmol/L 95.0-99.0 (Calculated)','mmol/L 95.0-99.0 (Calculated)','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5157,'Bilirubin Reference range','Plain-Blood','{\"zoom\":\"zoom\"}','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5158,'Glucose','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mg/dl  (Amperometry)\",\"equipment\":\"A\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','','',1,1,0,1,NULL,'','','mg/dl  (Amperometry)','mg/dl  (Amperometry)','',NULL,'no','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5159,'Lactate','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"mmol/L\\n &lt;1.39 at Bed Rest\\n (amperometry)\",\"interval_h\":\"1.3\"}','','Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','','',1,1,0,1,NULL,'','','mmol/L\\n &lt;1.39 at Bed Rest\\n (amperometry)','mmol/L\\n &lt;1.39 at Bed Rest\\n (amperometry)','',NULL,'no','transport at 2-8 degree celsius<br> Report will be avaialble in 5 minutes(Wards)',',Blood'),
(5160,'Hemoglobin','Heparinised-Arterial_Blood','','','Misc/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis','','','090','',1,1,0,1,NULL,'','','<i>Unit: gm/dL, Method: Calculation</i><br>\r\n<b>Male:</b> 13.2 - 16.6<br>\r\n<b>Female:</b> 11.6 - 15<br>','<i>Unit: gm/dL, Method: Calculation</i><br>\r\n<b>Male:</b> 13.2 - 16.6<br>\r\n<b>Female:</b> 11.6 - 15<br>','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5161,'FO2Hb','Heparinised-Arterial_Blood','','','','Blood Gas Analysis','Arterial Blood Gas Analysis  ','','','','',1,1,0,1,NULL,'','','','','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5162,'FCOHb','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"% less than 2 (Photometry)\",\"equipment\":\"A\"}','','Misc/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis  ','','','','',1,1,0,1,NULL,'','','% less than 2 (Photometry)','% less than 2 (Photometry)','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5163,'FMetHb','Heparinised-Arterial_Blood','{\"type\":\"number\",\"help\":\"% less than 2 (Photometry)\",\"equipment\":\"A\"}','','Misc/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis  ','','','','',1,1,0,1,NULL,'','','% less than 2 (Photometry)','% less than 2 (Photometry)','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5164,'FHHb','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5165,'HCO3-std','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5166,'ctCO2','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5167,'mOSm','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5168,'BO2','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5169,'ct O2(a)','Heparinised-Arterial_Blood','','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5171,'Anti-SARS-CoV-2 IgG','Plain-Blood','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','','','','',1,1,0,1,NULL,'','I','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5173,'Potassium(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','','','','','','',1,1,0,1,NULL,'','C',' mmol/L N/A(Direct ISE)',' mmol/L N/A(Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5174,'HbA1c','EDTA-Blood','{\"type\":\"number\",\"help\":\" % \\n &lt; 5.7 =normal \\n 5.7-6.4 =prediabetes \\n &gt;6.4 =diabetes \\n (HPLC)\",\"step\":\"0.1\",\"interval_h\":\"6.5\",\"equipment\":\"H\",\"accreditation\":\"yes\"}','','Reference/HbA1c,Misc/QC/HbA1c','Diabetes Mellitus','Diabetes Mellitus profile','','10','10','horizontal2',1,1,0,1,NULL,'','H','<hr>\r\n<table>\r\n<tr><td>Method: HPLC</td><td>Units: % of total adult hemoglobin</td></tr>\r\n<tr><td><b>Result</b></td><td><b>Probable Diagnosis</b></td></tr>\r\n<tr><td>&lt;5.7</td><td>Normal</td></tr>\r\n<tr><td>5.7-6.4</td><td>Prediabetes Mellitus</td></tr>\r\n<tr><td>&gt;6.4</td><td>Diabetes Mellitus</td></tr>\r\n<tr><td colspan=\"2\"><hr>Note: Values above are for diagnosis of Diabetes Mellitus only<br>\r\nIf you are already diagnosed/treated for Diabetes Mellitus, goal for most people is 7% or less.<br>\r\nHowever, this goal will depend on many things such as your age and any other medical conditions.<br>\r\nWork with your doctor to set your own individual A1C goal.<br></td></tr>\r\n</table>\r\n','<hr>\r\n<table>\r\n<tr><td>Method: HPLC</td><td>Units: % of total adult hemoglobin</td></tr>\r\n<tr><td><b>Result</b></td><td><b>Probable Diagnosis</b></td></tr>\r\n<tr><td>&lt;5.7</td><td>Normal</td></tr>\r\n<tr><td>5.7-6.4</td><td>Prediabetes Mellitus</td></tr>\r\n<tr><td>&gt;6.4</td><td>Diabetes Mellitus</td></tr>\r\n<tr><td colspan=\"2\"><hr>Note: Values above are for diagnosis of Diabetes Mellitus only<br>\r\nIf you are already diagnosed/treated for Diabetes Mellitus, goal for most people is 7% or less.<br>\r\nHowever, this goal will depend on many things such as your age and any other medical conditions.<br>\r\nWork with your doctor to set your own individual A1C goal.<br></td></tr>\r\n</table>\r\n','yes','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level reference Required',',Blood,NABL,AP-REF'),
(5175,'SARS-CoV-2 Ag','Plain-Swab','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','','','','',1,1,0,1,NULL,'','I','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5176,'SARS-CoV-2 RT-PCR-E','Plain-Swab','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','','','','',1,1,0,1,NULL,'','I','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5177,'SARS-CoV-2 RT-PCR-N','Plain-Swab','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','','','','','','',1,1,0,1,NULL,'','I','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5178,'HbA1c Chromatogram','EDTA-Blood','{\"type\":\"blob\",\"img\":\"png\"}','','Reference/HbA1c,Misc/QC/HbA1c','Diabetes Mellitus','Diabetes Mellitus profile','','50','50','',1,1,0,1,NULL,'','','','','','','no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5179,'HbF','EDTA-Blood','{\"equipment\":\"H\"}','','Reference/HbA1c,Misc/QC/HbA1c','Diabetes Mellitus','Diabetes Mellitus profile','','40','40','',1,1,0,1,NULL,'','H','','','','','no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5180,'Rapid SARS-CoV-2 Ag card test','Plain-Swab','{\"type\":\"select\",\"option\":\", Positive , Negative\"}','','','','','','','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5181,'Albumin(not in NABL scope)','Plain-Peritoneal_Fluid','{\"type\":\"number\",\"help\":\" g/dL N/A (BCG)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Fluid/peritoneal','','Peritoneal Fluid Examination','','','','',1,1,0,1,NULL,'','F','g/dL (BCG)','g/dL (BCG)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5182,'Micro albumin(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\"mg/L (Turbilatex)\",\"method\":\"Turbilatex\",\"equipment\":\"C\"}','','Misc/QC/c c mor','','Renal Function Tests','','','','',1,1,0,1,NULL,'','C','mg/L (Turbilatex)','mg/L (Turbilatex)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5183,'ACR (Albumin-creatinine ratio)(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"calculate\":\"(E*100)/e\",\"ex_list\":\"5182,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/gm) \\n Normal&lt;30 \\n Microalbuminuria 30-300 \\n Macroalbuminuria &gt;300\",\"method\":\"Turbilatex\",\"interval_h\":\"30\",\"equipment\":\"C\"}','','','','Renal Function Tests','','','','',1,1,0,1,NULL,'','C','(Calculated)(mg/gm) Normal&lt;30, Microalbuminuria 30-300, Macroalbuminuria &gt;300','(Calculated)(mg/gm) Normal&lt;30, Microalbuminuria 30-300, Macroalbuminuria &gt;300','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5184,'pH','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"7.30-7.43 (Direct ISE)\",\"interval_l\":\"7.30\",\"interval_h\":\"7.43\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','010','',1,1,0,1,NULL,'','V','7.30-7.43 (Potentiometry using ISE))','7.30-7.43 (Potentiometry using ISE))','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5185,'pCO2','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmHg 38-58 (Direct ISE)\",\"interval_l\":\"38\",\"interval_h\":\"58\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','020','',1,1,0,1,NULL,'','V','mmHg 38-58 (Potentiometry using ISE))','mmHg 38-58 (Potentiometry using ISE))','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5186,'pO2','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmHg 19-65 (Direct ISE)\",\"interval_l\":\"19\",\"interval_h\":\"65\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','030','',1,1,0,1,NULL,'','V','mmHg 19-65 ((Amperometry)','mmHg 19-65 ((Amperometry)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5187,'HCO3 ','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmol/L 22.0-30.0 (Calculated)\",\"interval_l\":\"22.0\",\"interval_h\":\"30.0\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','040','',1,1,0,1,NULL,'','V','mmol/L 23.0-29.0 (Calculated)','mmol/L 23.0-29.0 (Calculated)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5188,'Na+','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmol/L 136-145 (Direct ISE)\",\"interval_l\":\"136\",\"interval_h\":\"145\",\"equipment\":\"V\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','050','',1,1,0,1,NULL,'','V','mmol/L 136-145 (Direct ISE)','mmol/L 136-145 (Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5189,'K+','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmol/L 3.5-5.1 (Direct ISE)\",\"interval_l\":\"3.5\",\"interval_h\":\"5.1\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','060','',1,1,0,1,NULL,'','V','mmol/L 3.5-5.1 (Direct ISE)','mmol/L 3.5-5.1 (Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5190,'Lactate','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmol/L\\n &lt;1.39 at Bed Rest\\n (Direct ISE)\",\"interval_h\":\"2.5\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','','',1,1,0,1,NULL,'','V','mmol/L (Direct ISE)<br>\r\n&lt;2.5 at Bed Rest','mmol/L (Direct ISE)<br>\r\n&lt;2.5 at Bed Rest','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5191,'TAT_Remark','None','{\"hide\":\"yes\",\"type\":\"text\",\"zoom\":\"zoom\"}','','Misc/Remarks','Sample Details/Remarks','Sample Details/Remarks','','','','',2,2,0,2,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(5192,'Ionized Calcium(Ca2+)','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mmol/L 1.14-1.29 (Direct ISE)\",\"interval_l\":\"1.14\",\"interval_h\":\"1.29\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','080','',1,1,0,1,NULL,'','V','mmol/L 1.14-1.29 (Direct ISE)','mmol/L 1.14-1.29 (Direct ISE)','','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5208,'Urea(not in NABL scope)','Plain-Urine','{\"type\":\"number\",\"help\":\" mg/dl(urease GLDH)\",\"equipment\":\"C\"}','','Urine/Urine-osm','Clinical chemistry/ Urine osmolarity','Urine Examination','','','','',1,1,0,1,NULL,'','C',' mg/dl(urease GLDH)',' mg/dl(urease GLDH)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(5211,'Glucose','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mg/dl  (Amperometry)\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','','',1,1,0,1,0,'','V','mg/dl  (Amperometry)','mg/dl  (Amperometry)','',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5212,'Glucose','Plain-Blood','','','S-Osmolarity,Misc/QC/clinical chemistry','','Clinical Chemistry','016','','','horizontal2',1,1,0,1,0,'','C','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5215,'Cl-','Heparinised-Venous_Blood','{\"type\":\"number\",\"help\":\"mg/dl  (Amperometry)\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','070','',1,1,0,1,0,'','V','mmol/L  (Direct ISE)','mmol/L  (Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5216,'HbA1c(IFCC)','EDTA-Blood','{\"type\":\"text\",\"calculate\":\"(E-2.152)/0.09148\",\"ex_list\":\"5174\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mmol/mol)\",\"interval_h\":\"46.43\",\"equipment\":\"H\"}','','Reference/HbA1c','Diabetes Mellitus','Diabetes Mellitus profile','','20','20','',1,1,0,1,NULL,'','H','mmol/mol(Calculated)<br> \r\n  &lt;38.78=normal<br> \r\n38.78-46.43=prediabetes<br> \r\n &gt;46.43=diabetes',' mmol/mol(Calculated)<br> \r\n  &lt;38.78=normal<br> \r\n38.78-46.43=prediabetes<br> \r\n &gt;46.43=diabetes','','','yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)<br>AP Level reference Required',',Blood,NABL'),
(5217,'eAG(Estimated avergae glucose)','EDTA-Blood','{\"type\":\"text\",\"calculate\":\"(E*28.7)-46.7\",\"ex_list\":\"5174\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)\",\"interval_h\":\"116.89\",\"equipment\":\"H\"}','','Reference/HbA1c','Diabetes Mellitus','Diabetes Mellitus profile','','30','30','',1,1,0,1,NULL,'','H',' mg/dL(Calculated)<br> \r\n  &lt;116.89=normal<br> \r\n116.89-136.98=prediabetes<br> \r\n &gt;136.98=diabetes',' mg/dL(Calculated)<br> \r\n  &lt;116.89=normal<br> \r\n116.89-136.98=prediabetes<br> \r\n &gt;136.98=diabetes','','','','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5218,'Sodium(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,2,0,2,NULL,'','F',' mmol/L N/A(Direct ISE)',' mmol/L N/A(Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Other'),
(5219,'Potassium(not in NABL scope)','Plain-Other','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','','Clinical chemistry/Fluid','Other Fluid Examination','','','','',1,2,0,2,NULL,'','F',' mmol/L N/A(Direct ISE)',' mmol/L N/A(Direct ISE)','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Other'),
(5220,'image','Heparinised-Venous_Blood','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','','attachment','attachment','','','','',1,1,0,1,NULL,'','','','','no',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5221,'image','Plain-Blood','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','','attachment','attachment','','','','',1,1,0,1,NULL,'','','','','no',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(5223,'Hematocrit','Heparinised-Venous_Blood','{\"type\":\"number\",\"interval_l\":\"36\",\"interval_h\":\"50\",\"equipment\":\"A\"}','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','010','',1,1,0,1,NULL,'','V','<i>Unit: %, Method: Impedance Conductimetry</i><br>\r\n<b>Male:</b> 41-50<br>\r\n<b>Female:</b> 36-48<\r\n\r\n','<i>Unit: %, Method: Impedance Conductimetry</i><br>\r\n<b>Male:</b> 41-50<br>\r\n<b>Female:</b> 36-48','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(5224,'Hemoglobin','Heparinised-Venous_Blood','','','Misc/VBG','Blood Gas Analysis','Venous Blood Examination','','','010','',1,1,0,1,NULL,'','V','<i>Unit: gm/dL, Method: Calculation</i><br>\r\n<b>Male:</b> 13.2 - 16.6<br>\r\n<b>Female:</b> 11.6 - 15<br>','<i>Unit: gm/dL, Method: Calculation</i><br>\r\n<b>Male:</b> 13.2 - 16.6<br>\r\n<b>Female:</b> 11.6 - 15<br>','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(9000,'QC Equipment','None','{\"type\":\"select\",\"option\":\",XL_640,XL_1000,VITROS3600,HPLC_723GX,Erba Chem 5 Plus semiauto(060379) 2,Rapidpoint-500e_Siemens,Rapidpoint-500_Siemens,R9,Erba_Chem_5x(sr.no:s2211871),Erba_Chem_5x(sr.no:s12211845),R9-402016,MINDRAY_BS600M,JOKOH EX-D\"}','','Misc/QC/Sample Details','Sample Details/QC','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(9001,'equipment_serial_number','None','{\"type\":\"select\",\"option\":\",402016\"}','','Misc/QC/Sample Details','Sample Details/QC','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(9002,'equipment_specimen_number','None','','','Misc/QC/Sample Details','Sample Details/QC','','','','','',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(9241,'ALTBB','Plain-Blood','{\"type\":\"text\",\"help\":\"U/L &lt;45 (L-Alanine LDH UV Kinetic)\",\"interval_h\":\"45\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\",\"cost\":\"100\"}','','Misc/QC/clinical chemistry','Clinical chemistry/LFT','Liver Function Tests','440',NULL,'040',NULL,1,1,0,1,NULL,NULL,'C','U/L &lt;45 (L-Alanine LDH UV Kinetic)','U/L &lt;45 (L-Alanine LDH UV Kinetic)','yes',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(9242,'MPRB','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}',NULL,'Misc/QC/c c mor','Clinical chemistry/Fluid','Other Fluid Examination',NULL,NULL,NULL,NULL,1,1,0,1,NULL,NULL,'F','mg/dL NA(Pyrogallol Red)','mg/dL NA(Pyrogallol Red)','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',NULL),
(10001,'sample_request','None','{\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Header','Header','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10002,'sample_collection','None','{\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Header','Header','','95','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10003,'sample_receipt','None','{\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10004,'sample_processing','None','{\"hide\":\"yes\",\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10006,'sample_analysis','None','{\"hide\":\"yes\",\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10007,'sample_verification','None','{\"readonly\":\"readonly\",\"hide\":\"yes\",\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,1,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10008,'sample_release','None','{\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Header','Header','','98','','compact_report',2,3,0,3,1,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10010,'sample_interim_release','None','{\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','96','','compact_report',4,2,2,3,1,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10011,'Accreditation Symbol','None','{\"type\":\"config_value_blob\",\"img\":\"png\",\"width\":\"100\",\"height\":\"130\"}','','Misc/Laboratory Details','','','','10','','compact_report',2,2,0,2,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10012,'Laboratory','None','{\"type\":\"examination_field_specification\"}','','Misc/Laboratory Details','Header','Header','','15','','compact_report',2,2,0,2,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10013,'sample_reverify','None','{\"hide\":\"yes\",\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,1,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(10014,'sample_reverified','None','{\"hide\":\"yes\",\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,1,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105038,'Albumin','Plain-Pleural_Fluid','{\"type\":\"number\",\"help\":\" g/dL N/A (BCG)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Fluid/pleural','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F',' g/dL N/A (BCG)',' g/dL N/A (BCG)',NULL,NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105041,'fluid_id','None','{\"type\":\"id_single_sample\",\"table\":\"fluid_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"F\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',NULL),
(105043,'SAMPLE SUBTYPE','None','{\"type\":\"select\",\"option\":\",CSF,Pleural Fluid,Peritoneal Fluid,Pus,Cystic Fluid,Drain Fluid,Other\"}',NULL,'Misc/Sample Details','Sample Details','Sample Details',NULL,'11',NULL,'compact_report',1,1,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',NULL),
(105044,'Micro albumin(Not in NABL Scope)','Plain-Urine','{\"type\":\"number\",\"help\":\"mg/L (BCG)\",\"method\":\"BCG\",\"equipment\":\"C\"}','','Misc/QC/c c mor',NULL,'Renal Function Tests',NULL,NULL,NULL,NULL,1,1,0,1,NULL,NULL,'C','mg/L (BCG)','mg/L (BCG)',NULL,NULL,NULL,'transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Urine'),
(105045,'OPD-MANUAL','None','{\"type\":\"id_single_sample\",\"table\":\"M1_ID\",\"readonly\":\"readonly\",\"unique_prefix\":\"O\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105046,'H+','Heparinised-Arterial_Blood','{\"type\":\"text\",\"calculate\":\"10^(-E)*10^9\",\"ex_list\":\"5143\", \"step\":\"0.1\",\"decimal\":\"2\",\"help\":\"nmol/L 35.48-44.67 (Calculated)\",\"interval_h\":\"44.67\",\"interval_l\":\"35.48\"}',NULL,'Misc/ABG,Misc/QC/ABG','Blood Gas Analysis','Arterial Blood Gas Analysis',NULL,NULL,'040',NULL,1,1,0,1,NULL,NULL,NULL,'nmol/L 35.48-44.67 (Calculated)','nmol/L 35.48-44.67 (Calculated)',NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(105047,'H+','Heparinised-Venous_Blood','{\"type\":\"text\",\"calculate\":\"10^(-E)*10^9\",\"ex_list\":\"5184\", \"step\":\"0.1\",\"decimal\":\"2\",\"help\":\"nmol/L 37.15-50.12 (Calculated)\",\"interval_h\":\"50.12\",\"interval_l\":\"37.15\"}',NULL,'Misc/VBG,Misc/QC/VBG','Blood Gas Analysis','Venous Blood Examination',NULL,NULL,'040',NULL,1,1,0,1,NULL,NULL,NULL,'nmol/L 37.15-50.12 (Calculated)','nmol/L 37.15-50.12 (Calculated)',NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(105048,'INSULIN','Plain-Blood','',NULL,'Reference,Misc/QC/Immunochemistry',NULL,NULL,NULL,NULL,NULL,'horizontal3',1,1,0,1,NULL,NULL,'I',NULL,NULL,NULL,NULL,NULL,'transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',NULL),
(105049,'K-MANUAL','None','{\"type\":\"id_single_sample\",\"table\":\"M2_ID\",\"readonly\":\"readonly\",\"unique_prefix\":\"K\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105050,'Hematocrit','Heparinised-Venous_Blood','{\"type\":\"number\",\"interval_l\":\"36\",\"interval_h\":\"50\",\"equipment\":\"A\"}','','','Blood Gas Analysis','Venous Blood Examination','','1000','100','',1,1,0,1,NULL,'','A','<i>Unit: %, Method: Impedance Conductimetry</i><br>\r\n<b>Male:</b> 41-50<br>\r\n<b>Female:</b> 36-48<\r\n\r\n','<i>Unit: %, Method: Impedance Conductimetry</i><br>\r\n<b>Male:</b> 41-50<br>\r\n<b>Female:</b> 36-48\r\n\r\n','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(105051,'Hemoglobin','Heparinised-Venous_Blood','','','','Blood Gas Analysis','Venous Blood Examination','','','090','',1,1,0,1,NULL,'','','<i>Unit: gm/dL, Method: Calculation</i><br>\r\n<b>Male:</b> 13.2 - 16.6<br>\r\n<b>Female:</b> 11.6 - 15<br>','<i>Unit: gm/dL, Method: Calculation</i><br>\r\n<b>Male:</b> 13.2 - 16.6<br>\r\n<b>Female:</b> 11.6 - 15<br>','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(105053,'Albumin','Plain-Other','{\"type\":\"number\",\"help\":\" g/dL N/A (BCG)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Fluid/otherfluid','Clinical chemistry/Fluid','Pleural Fluid Examination','','','','',1,1,0,1,NULL,'','F',' g/dL N/A (BCG)',' g/dL N/A (BCG)',NULL,NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105054,'IRON HCL wash 1','Plain-Blood','{\"hide\":\"yes\"}','PRE-WASH','Anemia,Misc/QC/IRON-UIBC','','','','200','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(105055,'IRON HCL wash 2','Plain-Blood','{\"hide\":\"yes\"}','POST WASH','Anemia,Misc/QC/IRON-UIBC','','','','200','','',1,1,0,1,NULL,'','','','','',NULL,'','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood'),
(105056,'cal_id','None','{\"type\":\"id_single_sample\",\"table\":\"cal_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"C\",\"minimum\":\"1\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105057,'NCAL','Plain-Blood','{\"type\":\"number\",\"help\":\"mg/dL 8.6-10.2 (Arsenazo III)\",\"step\":\"0.1\",\"cinterval_l\":\"6.5\",\"cinterval_h\":\"13\",\"interval_l\":\"8.6\",\"interval_h\":\"10.2\",\"ainterval_h\":\"15\",\"ainterval_l\":\"3\",\"equipment\":\"C\"}','','','','','510','185','','',1,1,0,1,NULL,'','C','mg/dL 8.6-10.2 (Arsenazo III)','mg/dL 8.6-10.2 (Arsenazo III)','yes',NULL,NULL,'transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105058,'image2','Plain-Blood','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','','attachment','attachment','','','','',1,1,0,1,NULL,'','','','','no',NULL,'no','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(105059,'sample_immunoassay_verification','None','{\"hide\":\"yes\",\"type\":\"datetime-local\"}','','Misc/Sample Details/Sample Status','Sample Details','Sample Details','','','','compact_report',1,1,0,1,1,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105060,'Sample_emergency','None','{\"type\":\"text\",\"help\":\"Describe\"}','None','Misc/Sample Details','Sample Details','Header','','20','','compact_report',1,1,0,1,NULL,'','','Describe','Describe','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105062,'Plasma Creatinine','Plain-Urine','{\"type\":\"number\",\"help\":\"mg/dL (&lt;h5&gt;Jaffe two point)&lt;/h5&gt;\\n Male: 0.9-1.3\\n Female: 0.6-1.1\\n&lt;b&gt;(Not in NABL Scope)&lt;/b&gt;\",\"step\":\"0.1\",\"interval_h\":\"1.3\",\"cinterval_h\":\"4.0\",\"ainterval_h\":\"40.0\",\"ainterval_l\":\"0.1\",\"equipment\":\"C\",\"accr_status\":\"no\",\"cost\":\"150\"}','','Urine/24 HOUR URINE PROFILE','Clinical chemistry/Urine','Urine Examination','461','171','','',1,1,0,1,NULL,'','C','mg/dL','mg/dL','yes',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',',Blood,NABL'),
(105064,'Creatinine Clearance','Plain-Urine','{\"type\":\"number\",\"calculate\":\"(E/e)*(E/1440)\",\"ex_list\":\"5052,105062,5058\",\"decimal\":\"3\",\"help\":\"microgm/dL 251-406(calculated)\",\"equipment\":\"C\"}',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,1,NULL,'','C','mL/min (Calculated)','mL/min (Calculated)','yes',NULL,'yes','',',Urine'),
(105065,'Total Cholesterol:HDL Cholesterol Ratio','Plain-Blood','{\"type\":\"number\",\"calculate\":\"(E/e)\",\"ex_list\":\"5015, 5016\",\"decimal\":\"2\",\"help\":\"mg/mg (calculated)\",\"equipment\":\"C\"}',' ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,1,NULL,'','C','mg/mg (Calculated)','mg/mg (Calculated)','yes',NULL,'yes','',',Blood'),
(105066,'','NULL','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(105071,'Anemia_id','None','{\"type\":\"id_single_sample\",\"table\":\"Anemia_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"A\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs,Anemia,S-Iron','IDs','Sample Details/IDs','','35','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105072,'LOCATION','NULL','{\"type\":\"select\",\"option\":\",Casualty(446),PICU,G0MICU(500),HemodialysisUNIT(741),Isolation Ward,LeptoWard(506),MICU(500-2),MOT(567),NOT,OBICU(546),PrisonerWard(310),SICU-1(478),SICU-2(478),SpecialWard(570-71),SwineFluWard(529),TBICU,TRAUMA1(476),TRAUMA2(485),TraumaCenter(472-87),StemTriageSemiCritical,StemTriageICU,Stem Triage,Kidney 6th ICU- B,Kidney 6th ICU-A,NICU(692),RICU,Unspecified\"}',NULL,'Misc/Sample Details','Header','Header','','80','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105073,'Location:','None','{\"type\":\"select\",\"option\":\",C2(684),HAJ,Niramaya_Camp,old building 1st floor,old building 2nd floor,old building 3rd floor,old building ground floor,IHBT,Hemophilia ,C3(685),E0(506),E1(507),E2(508),E3(509),E4(510),EMW(485),EOT(591),F0(511),F1(512),F2(513),F3(514),F3N(503),F4(515),FOW,G0(516),G1(517),G2(518),G3(519),G4(520),GOT(551),H0(497),H1(522),H2(523),H3(524),H4(525),HemodialysisUNIT(741),Isolation Ward,J0(521),J1(531),J2(527),J3(529),J4(530),LeptoWard(506),MOT(567),MOW(310),NEWORTHO(311),NOT(551),NOW(311),O2(539),OB(546),OLDORTHO(310),OPD,PrisonerWard(310),RI(548),RII(564),RIII(580),SpecialWard(570-71),SwineFluWard(529),StemGround,StemF1,StemF2,StemF3,StemF4,StemF5,StemF6,StemF7,StemF8,StemF9,StemF10,StemHosp,KidneyOPD,StemOPD,TRAUMA1(476),TRAUMA2(485),TraumaCenter(472-87),4A Kidney,4B Kidney,4C Kidney,4D Kidney,5A Kidney,5B Kidney,5C Kidney,5D Kidney,SAMRAS,6A Kidney,6B Kidney,6C Kidney,6D Kidney,7A Kidney,7B Kidney,7C Kidney,7D Kidney,8A Kidney,8B Kidney,8C Kidney,8D Kidney,Unspecified\"}','None','Misc/Sample Details','Header','Header','','80','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105074,'Chloride','Plain-Blood','{\"type\":\"number\",\"help\":\"mmol/L 101-110 (Direct ISE)\",\"interval_l\":\"101\",\"interval_h\":\"110\",\"equipment\":\"C\"}','RFT-Ele,S-Osmolarity,LRE-ALB-TP,LRE-CRP-CAL,LRE-GLU,LRE,LRE-','','Clinical chemistry/Electrolytes','Electrolytes','','','070','',1,1,0,1,NULL,'','C','mmol/L 101-110 (Direct ISE)','mmol/L 101-110 (Direct ISE)','',NULL,'yes','transport at 2-8 degree celsius<br> Report will be avaialble in 4 hours (Wards)',',Blood'),
(105075,'Transferrin Saturation','Plain-Blood','{\"type\":\"number\",\"calculate\":\"(E/e*100)\",\"ex_list\":\"5021, 5022\",\"decimal\":\"1\",\"help\":\"%(calculated)\",\"equipment\":\"U\"}',' ','Anemia,Misc/QC/IRON-UIBC,S-Iron','Clinical chemistry/Anemia Profile','Anemia Profile',NULL,NULL,NULL,NULL,1,1,0,1,NULL,'','C','males-20-50% (Calculated)\r\nfemales-15-50%','males-20-50% (Calculated)\r\nfemales-15-50%','yes',NULL,'yes','',',Blood'),
(105076,'abga_id','None','{\"type\":\"id_single_sample\",\"table\":\"abga_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"B\",\"minimum\":\"1\"}','inserted, never edited, one for each sample','Misc/Sample Details/IDs','IDs','Sample Details/IDs','','30','','compact_report',1,1,0,1,NULL,'','','','','',NULL,'yes','transport at room temperature<br> Report will be avaialble in 4 hours(Wards) 24 hours(OPD)',''),
(105078,'Consumale_Name','None','','None','Misc/Reagent Details','Header','Header','','38','','compact_report',1,1,0,1,NULL,'','',NULL,NULL,NULL,NULL,'yes','Transport at low temperature and preserve as per required','');
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examination_field_specification`
--

DROP TABLE IF EXISTS `examination_field_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examination_field_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` int(11) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `field_description` varchar(50) DEFAULT NULL,
  `where` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination_field_specification`
--

LOCK TABLES `examination_field_specification` WRITE;
/*!40000 ALTER TABLE `examination_field_specification` DISABLE KEYS */;
INSERT INTO `examination_field_specification` VALUES
(1,10012,'table','Laboratory','Laboratory','',''),
(2,3001,'dtable','qc_lot','qc_lot','qc_lot,remark','where in_use=1');
/*!40000 ALTER TABLE `examination_field_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_code`
--

DROP TABLE IF EXISTS `host_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_code` (
  `examination_id` int(11) NOT NULL,
  `equipment` enum('XL_640','XL_1000','VITROS3600','RP500','TOSOH','R9-402016','BS600M','JOKOH','NXL_1000') NOT NULL,
  `code` varchar(10) NOT NULL,
  PRIMARY KEY (`equipment`,`examination_id`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `host_code_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_code`
--

LOCK TABLES `host_code` WRITE;
/*!40000 ALTER TABLE `host_code` DISABLE KEYS */;
INSERT INTO `host_code` VALUES
(5001,'XL_1000','CRR'),
(5002,'XL_1000','UREE'),
(5006,'XL_1000','ALTT'),
(5007,'XL_1000','ALPP'),
(5008,'XL_1000','AMYY'),
(5009,'XL_1000','TBILL'),
(5010,'XL_1000','DBILL'),
(5011,'XL_1000','ALBB'),
(5012,'XL_1000','TPP'),
(5013,'XL_1000','ASTT'),
(5014,'XL_1000','CALL'),
(5015,'XL_1000','CHOO'),
(5016,'XL_1000','CHOXX'),
(5018,'XL_1000','TGG'),
(5019,'XL_1000','Naa'),
(5020,'XL_1000','Kk'),
(5021,'XL_1000','IRONN'),
(5023,'XL_1000','UIBCC'),
(5025,'XL_1000','LDHH'),
(5026,'XL_1000','LIPP'),
(5027,'XL_1000','UAA'),
(5029,'XL_1000','GLCC'),
(5030,'XL_1000','MPRR'),
(5031,'XL_1000','GLCC'),
(5032,'XL_1000','ADAA'),
(5033,'XL_1000','ADAA'),
(5034,'XL_1000','ADAA'),
(5035,'XL_1000','GLCC'),
(5036,'XL_1000','GLCC'),
(5037,'XL_1000','TPP'),
(5038,'XL_1000','TPP'),
(5039,'XL_1000','LIPP'),
(5040,'XL_1000','AMYY'),
(5041,'XL_1000','LDHH'),
(5042,'XL_1000','CHOO'),
(5043,'XL_1000','TGG'),
(5044,'XL_1000','AMYY'),
(5045,'XL_1000','LIPP'),
(5046,'XL_1000','LDHH'),
(5047,'XL_1000','LDHH'),
(5048,'XL_1000','Naa'),
(5049,'XL_1000','Kk'),
(5050,'XL_1000','CALL'),
(5051,'XL_1000','PHOO'),
(5052,'XL_1000','CRR'),
(5053,'XL_1000','TPP'),
(5054,'XL_1000','KTOO'),
(5055,'XL_1000','UAA'),
(5080,'XL_1000','TPP'),
(5081,'XL_1000','MPRR'),
(5082,'XL_1000','MPRR'),
(5083,'XL_1000','Naa'),
(5084,'XL_1000','CALL'),
(5085,'XL_1000','MPRR'),
(5092,'XL_1000','CKK'),
(5093,'XL_1000','CKMBB'),
(5100,'XL_1000','PHOO'),
(5105,'XL_1000','LDHH'),
(5106,'XL_1000','AMYY'),
(5107,'XL_1000','LIPP'),
(5108,'XL_1000','GLCC'),
(5109,'XL_1000','CHOO'),
(5110,'XL_1000','TGG'),
(5111,'XL_1000','MPRR'),
(5112,'XL_1000','TPP'),
(5113,'XL_1000','CHEE'),
(5114,'XL_1000','HCLL'),
(5121,'XL_1000','CRPP'),
(5122,'XL_1000','DDMR'),
(5132,'XL_1000','MGG'),
(5136,'XL_1000','GLCC'),
(5137,'XL_1000','CRR'),
(5181,'XL_1000','ALBB'),
(5182,'XL_1000','UALB'),
(5208,'XL_1000','UREE'),
(5212,'XL_1000','GLCC'),
(9241,'XL_1000','ALTBB'),
(9242,'XL_1000','MPRBB'),
(105038,'XL_1000','ALBB'),
(105053,'XL_1000','ALBB'),
(105054,'XL_1000','IHCL'),
(105055,'XL_1000','IHCLL'),
(105057,'XL_1000','Kk'),
(5115,'VITROS3600','002'),
(5117,'VITROS3600','035'),
(5118,'VITROS3600','031'),
(5120,'VITROS3600','086'),
(5123,'VITROS3600','082'),
(5125,'VITROS3600','052'),
(5127,'VITROS3600','004'),
(5128,'VITROS3600','005'),
(5129,'VITROS3600','011'),
(5130,'VITROS3600','010'),
(5131,'VITROS3600','009'),
(5133,'VITROS3600','013'),
(5140,'VITROS3600','014'),
(5141,'VITROS3600','074'),
(5142,'VITROS3600','032'),
(5171,'VITROS3600','087'),
(5175,'VITROS3600','091'),
(105048,'VITROS3600','092'),
(5143,'RP500','mpH'),
(5144,'RP500','mPCO2'),
(5145,'RP500','mPO2'),
(5148,'RP500','mNa+'),
(5149,'RP500','mK+'),
(5150,'RP500','mCa++'),
(5151,'RP500','mCL-'),
(5154,'RP500','cHCO3act'),
(5158,'RP500','mGlucose'),
(5159,'RP500','mLactate'),
(5160,'RP500','mtHB'),
(5162,'RP500','mCOHb'),
(5163,'RP500','mMetHb'),
(5184,'RP500','mpH'),
(5185,'RP500','mPCO2'),
(5186,'RP500','mPO2'),
(5187,'RP500','cHCO3act'),
(5188,'RP500','mNa+'),
(5189,'RP500','mK+'),
(5190,'RP500','mLactate'),
(5192,'RP500','mCa++'),
(5211,'RP500','mGlucose'),
(5215,'RP500','mCL-'),
(5223,'RP500','cHct'),
(5224,'RP500','mtHb'),
(5174,'TOSOH','SA1C'),
(5178,'TOSOH','chrom'),
(5179,'TOSOH','F'),
(5143,'R9-402016','pH'),
(5144,'R9-402016','pCO2'),
(5145,'R9-402016','pO2'),
(5146,'R9-402016','Hct'),
(5148,'R9-402016','Na+'),
(5149,'R9-402016','K+'),
(5150,'R9-402016','Ca++'),
(5151,'R9-402016','Cl-'),
(5154,'R9-402016','HCO3-'),
(5160,'R9-402016','thb'),
(5184,'R9-402016','pH'),
(5185,'R9-402016','pCO2'),
(5186,'R9-402016','pO2'),
(5187,'R9-402016','HCO3-'),
(5188,'R9-402016','Na+'),
(5189,'R9-402016','K+'),
(5192,'R9-402016','Ca++'),
(5215,'R9-402016','Cl-'),
(5223,'R9-402016','Hct'),
(5224,'R9-402016','thb'),
(5001,'BS600M','CRR'),
(5002,'BS600M','UREE'),
(5006,'BS600M','ALTT'),
(5007,'BS600M','ALPP'),
(5008,'BS600M','AMYY'),
(5009,'BS600M','TBILL'),
(5010,'BS600M','DBILL'),
(5011,'BS600M','ALBB'),
(5012,'BS600M','TPP'),
(5013,'BS600M','ASTT'),
(5014,'BS600M','CALL'),
(5015,'BS600M','CHOO'),
(5016,'BS600M','CHOXX'),
(5018,'BS600M','TGG'),
(5019,'BS600M','Naa'),
(5020,'BS600M','Kk'),
(5021,'BS600M','IRONN'),
(5023,'BS600M','UIBCC'),
(5025,'BS600M','LDHH'),
(5026,'BS600M','LIPP'),
(5027,'BS600M','UAA'),
(5029,'BS600M','GLCC'),
(5030,'BS600M','MPRR'),
(5031,'BS600M','GLCC'),
(5032,'BS600M','ADAA'),
(5033,'BS600M','ADAA'),
(5034,'BS600M','ADAA'),
(5035,'BS600M','GLCC'),
(5036,'BS600M','GLCC'),
(5037,'BS600M','TPP'),
(5038,'BS600M','TPP'),
(5039,'BS600M','LIPP'),
(5040,'BS600M','AMYY'),
(5041,'BS600M','LDHH'),
(5042,'BS600M','CHOO'),
(5043,'BS600M','TGG'),
(5044,'BS600M','AMYY'),
(5045,'BS600M','LIPP'),
(5046,'BS600M','LDHH'),
(5047,'BS600M','LDHH'),
(5048,'BS600M','Naa'),
(5049,'BS600M','Kk'),
(5050,'BS600M','CALL'),
(5051,'BS600M','PHOO'),
(5052,'BS600M','CRR'),
(5053,'BS600M','TPP'),
(5054,'BS600M','KTOO'),
(5055,'BS600M','UAA'),
(5080,'BS600M','TPP'),
(5081,'BS600M','MPRR'),
(5082,'BS600M','MPRR'),
(5083,'BS600M','Naa'),
(5084,'BS600M','CALL'),
(5085,'BS600M','MPRR'),
(5092,'BS600M','CKK'),
(5093,'BS600M','CKMBB'),
(5100,'BS600M','PHOO'),
(5105,'BS600M','LDHH'),
(5106,'BS600M','AMYY'),
(5107,'BS600M','LIPP'),
(5108,'BS600M','GLCC'),
(5109,'BS600M','CHOO'),
(5110,'BS600M','TGG'),
(5111,'BS600M','MPRR'),
(5112,'BS600M','TPP'),
(5113,'BS600M','CHEE'),
(5114,'BS600M','HCLL'),
(5121,'BS600M','CRPP'),
(5122,'BS600M','DDMR'),
(5132,'BS600M','MGG'),
(5136,'BS600M','GLCC'),
(5137,'BS600M','CRR'),
(5181,'BS600M','ALBB'),
(5182,'BS600M','UALB'),
(5208,'BS600M','UREE'),
(5212,'BS600M','GLCC'),
(9241,'BS600M','ALTBB'),
(9242,'BS600M','MPRBB'),
(105038,'BS600M','ALBB'),
(105057,'BS600M','NPHO'),
(5019,'JOKOH','01'),
(5020,'JOKOH','02'),
(105074,'JOKOH','03'),
(5001,'NXL_1000','CRR'),
(5002,'NXL_1000','UREE'),
(5006,'NXL_1000','ALTT'),
(5007,'NXL_1000','ALPP'),
(5008,'NXL_1000','AMYY'),
(5009,'NXL_1000','TBILL'),
(5010,'NXL_1000','DBILL'),
(5011,'NXL_1000','ALBB'),
(5012,'NXL_1000','TPP'),
(5013,'NXL_1000','ASTT'),
(5014,'NXL_1000','CALL'),
(5015,'NXL_1000','CHOO'),
(5016,'NXL_1000','CHOXX'),
(5018,'NXL_1000','TGG'),
(5019,'NXL_1000','Naa'),
(5020,'NXL_1000','Kk'),
(5021,'NXL_1000','IRONN'),
(5023,'NXL_1000','UIBCC'),
(5025,'NXL_1000','LDHH'),
(5026,'NXL_1000','LIPP'),
(5027,'NXL_1000','UAA'),
(5029,'NXL_1000','GLCC'),
(5030,'NXL_1000','MPRR'),
(5031,'NXL_1000','GLCC'),
(5035,'NXL_1000','GLCC'),
(5036,'NXL_1000','GLCC'),
(5037,'NXL_1000','TPP'),
(5038,'NXL_1000','TPP'),
(5039,'NXL_1000','LIPP'),
(5040,'NXL_1000','AMYY'),
(5041,'NXL_1000','LDHH'),
(5042,'NXL_1000','CHOO'),
(5043,'NXL_1000','TGG'),
(5044,'NXL_1000','AMYY'),
(5045,'NXL_1000','LIPP'),
(5046,'NXL_1000','LDHH'),
(5047,'NXL_1000','LDHH'),
(5048,'NXL_1000','Naa'),
(5049,'NXL_1000','Kk'),
(5050,'NXL_1000','CALL'),
(5051,'NXL_1000','PHOO'),
(5052,'NXL_1000','CRR'),
(5053,'NXL_1000','TPP'),
(5055,'NXL_1000','UAA'),
(5080,'NXL_1000','TPP'),
(5081,'NXL_1000','MPRR'),
(5082,'NXL_1000','MPRR'),
(5084,'NXL_1000','CALL'),
(5085,'NXL_1000','MPRR'),
(5092,'NXL_1000','CKK'),
(5093,'NXL_1000','CKMBB'),
(5100,'NXL_1000','PHOO'),
(5105,'NXL_1000','LDHH'),
(5106,'NXL_1000','AMYY'),
(5107,'NXL_1000','LIPP'),
(5108,'NXL_1000','GLCC'),
(5109,'NXL_1000','CHOO'),
(5110,'NXL_1000','TGG'),
(5111,'NXL_1000','MPRR'),
(5112,'NXL_1000','TPP'),
(5113,'NXL_1000','CHEE'),
(5114,'NXL_1000','HCLL'),
(5121,'NXL_1000','CRPP'),
(5122,'NXL_1000','DDMR'),
(5132,'NXL_1000','MGG'),
(5136,'NXL_1000','GLCC'),
(5137,'NXL_1000','CRR'),
(5181,'NXL_1000','ALBB'),
(5182,'NXL_1000','UALB'),
(5208,'NXL_1000','UREE'),
(5212,'NXL_1000','GLCC'),
(9241,'NXL_1000','ALTBB'),
(9242,'NXL_1000','MPRBB');
/*!40000 ALTER TABLE `host_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `label_group`
--

DROP TABLE IF EXISTS `label_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `label_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `lable_list` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `label_group`
--

LOCK TABLES `label_group` WRITE;
/*!40000 ALTER TABLE `label_group` DISABLE KEYS */;
INSERT INTO `label_group` VALUES
(1,'WARD ID','{\"11\":\"1\",\"7\":\"1\"}'),
(2,'OPD ID','{\"14\":\"1\",\"7\":\"1\"}'),
(3,'ABGA ID','{\"10\":\"2\"}'),
(4,'Comparison ID','{\"16\":\"1\",\"7\":\"1\"}'),
(5,'Fluid ID','{\"18\":\"1\",\"7\":\"1\"}'),
(6,'Sample ID(2)','{\"10\":\"2\"}'),
(9,'Anemia_ID','{\"20\":\"1\",\"7\":\"1\"}'),
(10,'Sample ID and Request ID','{\"10\":\"1\",\"7\":\"1\"}'),
(11,'NIRAMAYA ID','{\"13\":\"1\"}'),
(15,'K-MANUAL ID','{\"8\":\"1\"}'),
(16,'O-MANUAL ID','{\"9\":\"1\",\"7\":\"1\"}');
/*!40000 ALTER TABLE `label_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examination_id` varchar(30) DEFAULT NULL,
  `caption` varchar(10) DEFAULT NULL,
  `barcode_format` varchar(50) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `other_data` varchar(5000) DEFAULT NULL,
  `border` int(11) DEFAULT NULL,
  `fontsize` varchar(100) DEFAULT NULL,
  `fontweight` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES
(7,'1045','R1','C128','{\r\n\"1\":\"1045,h,b,05,05,40,10\",\r\n\"2\":\"1001,h,t,20,15,25,03\",\r\n\"3\":\"1045,h,t,5,15,15,03\",\r\n\"4\":\"other_data,h,t,5,18,25,03\",\r\n\"5\":\"1002,h,t,30,18,15,03\"\r\n}','select group_concat(sample_id separator \",\") other_data from request_id where id in(select id from request_id where sample_id={sample_id})',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(8,'105049','K1','C128','{\r\n\"1\":\"105049,h,b,03,05,45,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"105049,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(9,'105045','O1','C128','{\r\n\"1\":\"105045,h,b,03,05,45,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"105045,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(10,'sample_id','S1','C128','{\r\n \"1\":\"sample_id,h,b,03,05,47,10\",\r\n \"2\":\"1000,h,t,25,15,20,03\",\r\n \"3\":\"1001,h,t,10,15,15,03\",\r\n \"4\":\"sample_id,h,t,10,18,15,03\",\r\n \"5\":\"1002,h,t,25,18,20,03\",\r\n \"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(11,'1047','W1','C128','{\r\n\"1\":\"1047,h,b,03,05,45,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"1047,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(12,'sample_id','S2','C39','{\r\n \"1\":\"sample_id,h,b,05,05,40,10\",\r\n \"2\":\"1000,h,t,25,15,20,03\",\r\n \"3\":\"1001,h,t,10,15,15,03\",\r\n \"4\":\"sample_id,h,t,10,18,15,03\",\r\n \"5\":\"1002,h,t,25,18,20,03\",\r\n \"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(13,'1049','N2','C128','{\"1\":\"1049,h,b,03,05,47,10\",\"2\":\"1000,h,t,25,15,20,03\",\"3\":\"1049,h,t,10,15,20,03\",\"4\":\"sample_id,h,t,10,18,15,03\",\"5\":\"1002,h,t,25,18,20,03\",\"6\":\"other_data,h,t,5,15,5,6\"}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(14,'1046','P1','C128','{\r\n\"1\":\"1046,h,b,03,05,45,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"1046,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(16,'1050','E1','C128','{\r\n\"1\":\"1050,h,b,03,05,45,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"1050,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,7\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(18,'105041','F1','C128','{\r\n\"1\":\"105041,h,b,03,05,45,10\",\r\n\"2\":\"1000,h,t,25,15,20,03\",\r\n\"3\":\"105041,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,6\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}'),
(20,'105071','A1','C128','{\r\n\"1\":\"105071,h,b,03,05,45,10\",\r\n\"2\":\"1047,h,t,25,15,20,03\",\r\n\"3\":\"105071,h,t,10,15,15,03\",\r\n\"4\":\"sample_id,h,t,10,18,15,03\",\r\n\"5\":\"1002,h,t,25,18,20,03\",\r\n\"6\":\"other_data,h,t,5,15,5,7\"\r\n}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id',0,'{\"6\":\"9\"}','{\"6\":\"helveticaB\"}');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lis_to_vitros_sample_type`
--

DROP TABLE IF EXISTS `lis_to_vitros_sample_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lis_to_vitros_sample_type` (
  `lis_sample_type` varchar(100) NOT NULL,
  `vitros_sample_type` varchar(10) NOT NULL,
  PRIMARY KEY (`lis_sample_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lis_to_vitros_sample_type`
--

LOCK TABLES `lis_to_vitros_sample_type` WRITE;
/*!40000 ALTER TABLE `lis_to_vitros_sample_type` DISABLE KEYS */;
INSERT INTO `lis_to_vitros_sample_type` VALUES
('Plain-Blood','5'),
('Plain-Swab','10');
/*!40000 ALTER TABLE `lis_to_vitros_sample_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_new`
--

DROP TABLE IF EXISTS `menu_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(100) NOT NULL,
  `ex_list` varchar(600) NOT NULL,
  `route` varchar(200) NOT NULL,
  `default_value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_new`
--

LOCK TABLES `menu_new` WRITE;
/*!40000 ALTER TABLE `menu_new` DISABLE KEYS */;
INSERT INTO `menu_new` VALUES
(101,'Ward Request','1001,1002,1004,1005,1006,1023,10003,10011,10012,1045,1047','','10012^Biochemistry Laboratory New Civil Hospital Surat'),
(200,'OPD Request','1001,1002,1004,1005,1006,10003,1023,10011,10012,1045,1046','','10012^Biochemistry Laboratory New Civil Hospital Surat,1006^OPD'),
(300,'ABG Request(seimens)','1001,1002,1004,1005,1006,10003,5195,5143,5144,5145,5148,5159,5150,5158,10012,5163,5149,5151,5154,5159,5160,5162,10011','','10012^Biochemistry Laboratory New Civil Hospital Surat'),
(301,'Fluid Request','1001,1002,1004,1005,1006,105043,10003,1023,10011,10012,1045,105041','Fluid','10012^Biochemistry Laboratory New Civil Hospital Surat'),
(302,'ANEMIA request','1001,1002,1004,1005,1006,1023,10003,10011,10012,1045,105071','','10012^Biochemistry Laboratory New Civil Hospital Surat'),
(400,'NIRAMAYA Request','1001,1002,1004,1006,1023,10003,5018,5031,5015,5001,1049,10011,10012,1045,5014','','10012^Biochemistry Laboratory New Civil Hospital Surat,1004^Medicine,1006^Niramaya_Camp'),
(601,'Glucose  pp2bs-OPD','1001,1002,1004,1005,1006,10003,1023,5031,10011,10012,1046,1045','','10012^Biochemistry Laboratory New Civil Hospital Surat,1023^Postprendial-2HR,1006^OPD'),
(602,'Glucose fasting-OPD','1001,1002,1004,1005,1006,10003,1023,5031,10011,10012,1046,1045','','10012^Biochemistry Laboratory New Civil Hospital Surat,1023^Fasting,1006^OPD'),
(700,'Glucose  pp2bs-ward','1001,1002,1004,1005,1006,10003,1023,5031,10011,10012,1045,1047','','10012^Biochemistry Laboratory New Civil Hospital Surat,1023^Postprendial-2HR'),
(800,'Glucose fasting-ward','1001,1002,1004,1005,1006,10003,1023,5031,10011,10012,1045,1047','','10012^Biochemistry Laboratory New Civil Hospital Surat,1023^Fasting'),
(900,'QC','3001,9000,10006,10012,1048','','10012^Biochemistry Laboratory New Civil Hospital Surat,9000^XL_1000'),
(902,'ABG Request(Radiometer)','10012,1001,1002,1004,1005,1006,10003,5143,5144,5145,5148,5149,5150,5151,5154,1022,105046,105076','','10012^Biochemistry Laboratory New Civil Hospital Surat'),
(903,'ABG QC(Radiometer)','3001,9000,9001,9002,10006,5143,5144,5145,5148,5149,5150,5151,5154,5160,5146,1048,10012','','10012^Biochemistry Laboratory New Civil Hospital Surat,9000^R9-402016,9001^402016,'),
(905,'OPD-MANUAL','1001,1002,1004,1006,1023,10003,10011,10012,1045,105045','','10012^Biochemistry Laboratory New Civil Hospital Surat,1004^Medicine'),
(906,'K-MANUAL','1001,1002,1004,1006,1023,10003,10011,10012,1045,105049,5006,5009,5010,5024,5001,5031,5015,5018,5117,5011,5014,5101,5114','','10012^Biochemistry Laboratory New Civil Hospital Surat,1004^Medicine'),
(907,'CALIBRATION','1001,1002,1004,1006,1023,10003,10011,10012,1045,105056','','10012^Biochemistry Laboratory New Civil Hospital Surat,1004^Medicine'),
(908,'Comparison','1001,1002,1004,1005,105072,10003,1023,10011,10012,1045,1050','','10012^Biochemistry Laboratory New Civil Hospital Surat'),
(1000,'JOKOH QC','3001,9000,10006,10012,1048,5019,5020,105074','','10012^Biochemistry Laboratory New Civil Hospital Surat,9000^JOKOH EX-D');
/*!40000 ALTER TABLE `menu_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_view`
--

DROP TABLE IF EXISTS `menu_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_view` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `unique_id` varchar(200) NOT NULL,
  `additional_search_id` varchar(200) NOT NULL,
  `additional_range_search_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_view`
--

LOCK TABLES `menu_view` WRITE;
/*!40000 ALTER TABLE `menu_view` DISABLE KEYS */;
INSERT INTO `menu_view` VALUES
(1,'ICU,Casualty','1050','1001,1002,1006,10003','1050'),
(2,'sample_id','sample_id','1001,1002,1006,10003','sample_id'),
(4,'ward','1047','1001,1002,1006,10003','1047'),
(5,'OPD','1046','1001,1002,1006,10003','1046'),
(6,'Niramaya','1049','1001,1002,1006,10003','1049'),
(7,'QC','1048','3001,9000,10006','1048'),
(8,'request','1045','1001,1002,1006,10003','1045'),
(9,'FLUID','105041','1001,1002,1006,10003','105041'),
(10,'HAJ','105045','1001,1002,1006,10003','105045'),
(11,'calibration','105056','1001,1002,1006,10003','105056'),
(12,'calibrationex','105056','1001,1002,1006,10003,5031','105056');
/*!40000 ALTER TABLE `menu_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_view_fast`
--

DROP TABLE IF EXISTS `menu_view_fast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_view_fast` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `range` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_view_fast`
--

LOCK TABLES `menu_view_fast` WRITE;
/*!40000 ALTER TABLE `menu_view_fast` DISABLE KEYS */;
INSERT INTO `menu_view_fast` VALUES
(1,'PID',1001,0),
(2,'Name',1002,0),
(3,'Date of receipt',10003,1),
(4,'Location',1006,0);
/*!40000 ALTER TABLE `menu_view_fast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_worklist`
--

DROP TABLE IF EXISTS `menu_worklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_worklist` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `unique_id` varchar(200) NOT NULL,
  `additional_search_id` varchar(200) NOT NULL,
  `additional_range_search_id` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_worklist`
--

LOCK TABLES `menu_worklist` WRITE;
/*!40000 ALTER TABLE `menu_worklist` DISABLE KEYS */;
INSERT INTO `menu_worklist` VALUES
(1,'sample_id','sample_id','10003','sample_id'),
(2,'OPD','1046','','1046,10003'),
(3,'Niramaya','1049','10003','1049'),
(4,'QC','1048','10003','1048'),
(5,'ward','1047','10003','1047'),
(6,'request','1045','10003','1045'),
(7,'fluid','105041','10003','105041');
/*!40000 ALTER TABLE `menu_worklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qc_lot`
--

DROP TABLE IF EXISTS `qc_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qc_lot` (
  `qc_lot` varchar(100) NOT NULL,
  `in_use` varchar(100) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `in_use_date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`qc_lot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qc_lot`
--

LOCK TABLES `qc_lot` WRITE;
/*!40000 ALTER TABLE `qc_lot` DISABLE KEYS */;
INSERT INTO `qc_lot` VALUES
('QC/0/BlankW','1','updated from OLD LIS',NULL),
('QC/1/Radiometer/R0148','0','updated from OLD LIS',NULL),
('QC/1/Radiometer/R0150','0','updated from OLD LIS',NULL),
('QC/1/Radiometer/R0153','0','NEW LOT',NULL),
('QC/1/Radiometer/R0158','1','NEW LOT',NULL),
('QC/1/Radiometer/R0159','1','NEW LOT',NULL),
('QC/5/ADALOW','1','updated from OLD LIS',NULL),
('QC/5/CRP','1','updated from OLD LIS',NULL),
('QC/5/Lipase','1','updated from OLD LIS',NULL),
('QC/5/MPR/1320UN','0','updated from OLD LIS',NULL),
('QC/5/MPR/1588UN','1','',NULL),
('QC/5/Randox/1554UN','0','updated from OLD LIS',NULL),
('QC/5/Randox/1584UN','0','updated from OLD LIS',NULL),
('QC/5/Randox/1593UN','0','updated from OLD LIS',NULL),
('QC/5/Randox/1665UN','0','new lot',NULL),
('QC/5/Randox/1675UN','1','new lot',NULL),
('QC/8/ADAHIGH','1','updated from OLD LIS',NULL),
('QC/8/CRP','1','updated from OLD LIS',NULL),
('QC/8/Lipase','1','updated from OLD LIS',NULL),
('QC/8/MPR/1024UE','0','updated from OLD LIS',NULL),
('QC/8/MPR/1262UE','0','updated from OLD LIS',NULL),
('QC/8/MPR/1315UE','0',NULL,NULL),
('QC/8/MPR/1325UE','1',NULL,NULL),
('QC/8/Randox/1247UE','0','updated from OLD LIS',NULL),
('QC/8/Randox/1296UE','0','new lot',NULL),
('QC/8/Randox/1320UE','0','updated from OLD LIS',NULL),
('QC/8/Randox/1373UE','1','NEW LOT','07-09-2024'),
('QC/BNP/3600','1','updated from OLD LIS',NULL),
('QC/DDIMER','1','updated from OLD LIS',NULL),
('QC/HbA1c/L1','0','updated from OLD LIS',NULL),
('QC/HbA1c/L1-lot(4)','0','new lot ',NULL),
('QC/HbA1c/L1-lot(5)','0','new lot ',NULL),
('QC/HbA1c/L1-lot(6)','0','new lot',NULL),
('QC/HbA1c/L1-lot(7)','1','NEW LOT',NULL),
('QC/HbA1c/L2','0','updated from OLD LIS',NULL),
('QC/HbA1c/L2-lot(5)','0','new lot',NULL),
('QC/HbA1c/L2-lot(6)','0','NEW LOT',NULL),
('QC/HbA1c/L2-lot(7)','1','NEW LOT',NULL),
('QC/L1/Randox/2024EC','0','updated from OLD LIS',NULL),
('QC/L2/Randox/1939EC','0','updated from OLD LIS',NULL),
('QC/L2/Randox/2180EC','0','updated from OLD LIS',NULL),
('QC/L2/Randox/2228EC','0','updated from OLD LIS',NULL),
('QC/L2/Randox/2270EC','1',NULL,NULL),
('QC/L3/Randox/2028EC','0','updated from OLD LIS',NULL),
('QC/L3/Randox/2181EC','0',NULL,NULL),
('QC/L3/Randox/2293EC','1','NEW LOT',NULL),
('QC/PCT/3600','0','updated from OLD LIS',NULL),
('QC/SERUM POOL/01','0',NULL,NULL),
('QC/SERUM POOL/CKMB/01','1',NULL,NULL),
('QC/SPIN_CK/24','1','updated from OLD LIS',NULL),
('QC/TNI/3600','1','updated from OLD LIS',NULL),
('QC/Vit-D serum pool','0','updated from OLD LIS',NULL),
('TSH CALIBRATOR POOL 1','0',NULL,NULL);
/*!40000 ALTER TABLE `qc_lot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route_priority`
--

DROP TABLE IF EXISTS `route_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route_priority` (
  `route` varchar(100) NOT NULL,
  `node` varchar(100) NOT NULL,
  `request_route_priority` varchar(10) NOT NULL,
  `display_route_priority` varchar(10) NOT NULL,
  `print_route_priority` varchar(10) NOT NULL,
  PRIMARY KEY (`route`,`node`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_priority`
--

LOCK TABLES `route_priority` WRITE;
/*!40000 ALTER TABLE `route_priority` DISABLE KEYS */;
INSERT INTO `route_priority` VALUES
('ALB-TP','ALB-TP','026','',''),
('AMY-LIP-ALP','AMY-LIP-ALP','056','1015',''),
('BIG1','BIG1','050','',''),
('CAL-MG-PHO','CAL-MG-PHO','035','1050',''),
('Clinical chemistry','ALB-TP','034','1009',''),
('Clinical chemistry','AMY-LIP-ALP','056','1015',''),
('Clinical chemistry','Anemia','064','',''),
('Clinical chemistry','AST','620','1002',''),
('Clinical chemistry','CAL-PHO-MG','035','1050',''),
('Clinical chemistry','Cardiac Profile','062','1030',''),
('Clinical chemistry','CHE','640','1056',''),
('Clinical chemistry','CRP','','1000',''),
('Clinical chemistry','D- dimer','660','',''),
('Clinical chemistry','Electrolytes','','1045',''),
('Clinical chemistry','GLU','7','',''),
('Clinical chemistry','iron','064','',''),
('Clinical chemistry','LDH','640','1055',''),
('Clinical chemistry','LFT','','1001',''),
('Clinical chemistry','RFT','','1046',''),
('Clinical chemistry','RFT-Ele','','1012',''),
('Clinical chemistry','URE-UA','030','1020',''),
('Clinical_chemistry','iron','925','',''),
('Electrolytes','Electrolytes','','105','300'),
('Examination rejection','Examination rejection','681','',''),
('Fluid','Fluid','058','',''),
('GLU','GLU','001','1001',''),
('GLU-LIP','GLU-LIP','025','',''),
('HCG','HCG','071','',''),
('Header','Header','','200',''),
('ICU-CASUALTY','Clinical chemistry','072','1050',''),
('IDs','IDs','','100',''),
('Immunochemistry','B-HCG','071','',''),
('IQC','Chemistry','09','',''),
('IQC','IQC','09','',''),
('Laboratory Details','Laboratory Details','150','500',''),
('Liver Function Tests','Liver Function Tests','','','100'),
('LP','LP','200','1001',''),
('LR','LR','009','1002',''),
('LRE','LRE','008','1001',''),
('LRE-ALB-TP','LRE-ALB-TP','027','',''),
('LRE-ALBTP-CRP','LRE-ALBTP-CRP','028','',''),
('LRE-ALBTP-CRPLDH','LRE-ALBTP-CRPLDH','030','',''),
('LRE-ALBTP-LDH','LRE-ALBTP-LDH','029','',''),
('LRE-CRP-CAL','LRE-CRP-CAL','040','',''),
('LRE-GLU','LRE-GLU','020','',''),
('Magnesium','Magnesium','','',''),
('Misc','Misc','095','',''),
('Misc/CRP','CRP','110','999',''),
('Misc/QC','QC','100','',''),
('Misc/QC/c.c more','c.c more','620','',''),
('Misc/QC/clinical chemistry','clinical chemistry','600','',''),
('Misc/QC/HbA1c','HbA1c','630','',''),
('Misc/QC/immunochemistry','immunochemistry','610','',''),
('Misc/VBG','VBG','130','',''),
('Pancreatic Function Tests','Pancreatic Function Tests','','','400'),
('Patient Details','Patient Details','140','400','009'),
('Reference','Reference','120','',''),
('Remark','Remark','682','',''),
('Renal Function Tests','Renal Function Tests','','','200'),
('RFT-Ele','RFT-Ele','008','1002',''),
('S-Iron','S-Iron','034','1050',''),
('Sample Details','Sample Details','150','300','010'),
('TSH','TSH','055','',''),
('URE-UA','URE-UA','030','1020',''),
('Urine','Urine','057','',''),
('Venous Blood Examination','Venous Blood Examination','','','100'),
('Vitamins','Vitamins','','','640');
/*!40000 ALTER TABLE `route_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_id_strategy`
--

DROP TABLE IF EXISTS `sample_id_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_id_strategy` (
  `sample_requirement` varchar(100) NOT NULL,
  `lowest_id` bigint(20) DEFAULT NULL,
  `highest_id` bigint(20) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`sample_requirement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_id_strategy`
--

LOCK TABLES `sample_id_strategy` WRITE;
/*!40000 ALTER TABLE `sample_id_strategy` DISABLE KEYS */;
INSERT INTO `sample_id_strategy` VALUES
('Citrate-Blood',1000,1999999,'Biochemistry'),
('EDTA-Blood',1000,1999999,'Biochemistry'),
('Fluoride-Blood',1000,1999999,'Biochemistry'),
('HCL-Urine',1000,1999999,'Biochemistry'),
('Heparinised-Arterial_Blood',1000,1999999,'Biochemistry'),
('Heparinised-Venous_Blood',1000,1999999,'Biochemistry'),
('Plain-Blood',1000,1999999,'Biochemistry'),
('Plain-CSF',1000,1999999,'Biochemistry'),
('Plain-Other',1000,1999999,'Biochemistry'),
('Plain-Peritoneal_Fluid',1000,1999999,'Biochemistry'),
('Plain-Pleural_Fluid',1000,1999999,'Biochemistry'),
('Plain-Swab',1000,1999999,'Biochemistry'),
('Plain-Urine',1000,1999999,'Biochemistry');
/*!40000 ALTER TABLE `sample_id_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample_status`
--

DROP TABLE IF EXISTS `sample_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` decimal(10,3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `shortcut` int(11) NOT NULL,
  `dependancy_examination_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `examination_id` (`examination_id`),
  CONSTRAINT `sample_status_ibfk_1` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_status`
--

LOCK TABLES `sample_status` WRITE;
/*!40000 ALTER TABLE `sample_status` DISABLE KEYS */;
INSERT INTO `sample_status` VALUES
(1,100.000,'sample_request',10001,'white',1,'0'),
(2,200.000,'sample_collection',10002,'#bdb9b9',1,'0'),
(3,350.000,'sample_receipt',10003,'yellow',1,'0'),
(6,400.000,'sample_processing',10004,'#FFA500',1,'0'),
(8,500.000,'sample_analysis',10006,'#f2d8ee',1,'0'),
(9,600.000,'sample_verification',10007,'#8d89f5',0,'0'),
(10,700.000,'sample_release',10008,'#67c23a',0,'10007'),
(12,650.000,'sample_interim_release',10010,'#c7edb4',0,'10007'),
(14,620.000,'sample_reverify',10013,'#EF5741',0,'0'),
(15,630.000,'sample_reverified',10014,'#579CE0',0,'0'),
(17,550.000,'sample_immunoassay_verification',105059,'#c02eb0 ',0,'0'),
(18,370.000,'sample_emergency',105060,'#BB6D3E',1,'0');
/*!40000 ALTER TABLE `sample_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sql`
--

DROP TABLE IF EXISTS `sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql` (
  `name` varchar(100) NOT NULL,
  `sql` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sql`
--

LOCK TABLES `sql` WRITE;
/*!40000 ALTER TABLE `sql` DISABLE KEYS */;
INSERT INTO `sql` VALUES
('export specific colum as sql','select concat (\"update examination set print_route=\'\",\r\n                print_route,\r\n               \"\' where examination_id = \'\"\r\n               ,examination_id,\r\n               \"\'\")\r\nfrom examination\r\norder by print_route desc'),
('count of data','(select date(sysdate()),name,result.examination_id,count(sample_id) from result,examination where \r\nresult.examination_id>=10001 and \r\nresult.examination_id<=10012 and \r\nresult like concat(\"%\",date(sysdate()),\"%\") and\r\nresult.examination_id=examination.examination_id\r\ngroup by result.examination_id)\r\nunion\r\n(select \"2023-10-24\",name,result.examination_id,count(sample_id) from result,examination where \r\nresult.examination_id>=10001 and \r\nresult.examination_id<=10012 and \r\nresult like concat(\"%2023-10-24%\") and\r\nresult.examination_id=examination.examination_id\r\ngroup by result.examination_id)');
/*!40000 ALTER TABLE `sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_field_specification`
--

DROP TABLE IF EXISTS `table_field_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_field_specification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `ftype` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  `field_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname_fname` (`tname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_field_specification`
--

LOCK TABLES `table_field_specification` WRITE;
/*!40000 ALTER TABLE `table_field_specification` DISABLE KEYS */;
INSERT INTO `table_field_specification` VALUES
(10,'consumable_receipt','consumable_name','table','consumable_name','consumable_name',''),
(11,'consumable_receipt','date_of_manufacture','date','','',''),
(12,'consumable_receipt','date_of_expiry','date','','',''),
(13,'consumable_receipt','date_of_receipt','date','','',''),
(34,'consumable_receipt','date_of_ending_use','date','','',''),
(51,'consumable_receipt','date_of_starting_use','date','','','');
/*!40000 ALTER TABLE `table_field_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_name`
--

DROP TABLE IF EXISTS `unit_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_name`
--

LOCK TABLES `unit_name` WRITE;
/*!40000 ALTER TABLE `unit_name` DISABLE KEYS */;
INSERT INTO `unit_name` VALUES
(1,'ml','2020-08-17 13:06:25','3'),
(2,'100 Test Pack','2020-12-01 10:59:22','9099514805'),
(3,'40 TEST KIT','2020-12-02 16:00:18','8866580625'),
(6,'TEST','2022-01-13 15:15:25','8866580625');
/*!40000 ALTER TABLE `unit_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `view_info_data`
--

DROP TABLE IF EXISTS `view_info_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_info_data` (
  `id` int(11) NOT NULL,
  `info` varchar(100) NOT NULL,
  `Fields` varchar(2000) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_info_data`
--

LOCK TABLES `view_info_data` WRITE;
/*!40000 ALTER TABLE `view_info_data` DISABLE KEYS */;
INSERT INTO `view_info_data` VALUES
(0,'Scope','','select\r\n	accr_status as `NABL Accreditation` ,\r\n	examination_id, name,\r\n	sample_requirement,\r\n	display_help as `units/reference_range/(method)`\r\n	from examination \r\n	where \r\n	sample_requirement!=\'None\'\r\n	and\r\n	displayed_scope=\'yes\'\r\n	order by name,sample_requirement'),
(1,'Total Sample Released On a Day','<input type=date name=__p1 title=\'Give Date\'>','select \'released\', count(examination_id) as `Total_Sample(__p1)` from result where examination_id in (10008) and result like \"__p1%\"\r\n\r\nunion\r\n\r\nselect \'interim released\', count(examination_id) as `Total_Sample(__p1)` from result where examination_id in (10010) and result like \"__p1%\"\r\n\r\nunion\r\n\r\nselect \'Total\', count(examination_id) as `Total_Sample(__p1)` from result where examination_id in (10010,10008) and result like \"__p1%\"\r\n\r\nunion \r\n\r\n\r\nselect \'Counts a sample twice if \', \' it is both interim released and released afterwords\'  '),
(2,'Test count on a release date (including demographics)','<input type=date name=__p1 title=\'Give Date\'>','select  	\r\nr1.examination_id examination_id ,\r\ne1.name ,  	\r\nr2.examination_id status_id ,\r\ne2.name status_name, 	\r\ncount(r2.result) status_count \r\n\r\nfrom  	\r\nexamination e1,\r\nexamination e2,  \r\nresult r1,\r\nresult r2  \r\n\r\nwhere  	\r\nr1.sample_id=r2.sample_id and  	\r\nr2.examination_id in(10008,10010) and  	\r\nr2.result like \"__p1%\" and 	\r\ne1.examination_id=r1.examination_id and  	\r\ne2.examination_id=r2.examination_id\r\n\r\n\r\ngroup by \r\nr1.examination_id,r2.examination_id \r\n\r\norder by r1.examination_id'),
(3,'Max ID (series 2,3,1)','','select \'sample_id\' as series, max(sample_id) from result where sample_id between 1000 and 1999999 union select \'opd_id\' as series, max(id) from opd_id union select \'ward_id\' as series, max(id) from ward_id'),
(4,'Test count on a release date (only examinations)','<input type=date name=__p1 title=\'Give Date\'>','select  	\r\nr1.examination_id,\r\ne1.name,\r\ne1.sample_requirement,  	\r\nr2.examination_id C ,\r\ne2.name D, 	\r\nr2.result E, 	\r\ncount(r2.result) F \r\n\r\nfrom  	\r\nexamination e1,examination e2,  	\r\nresult r1,result r2  \r\n\r\nwhere  	\r\nr1.sample_id=r2.sample_id and  	\r\nr2.examination_id in (1009,10008) and  	\r\nr2.result like \"__p1%\" and 	\r\ne1.examination_id=r1.examination_id and  	\r\ne2.examination_id=r2.examination_id  and \r\ne1.sample_requirement!=\'None\' \r\n\r\ngroup by \r\n\r\nr1.examination_id order by r1.examination_id'),
(5,'Test count between two dates (only examinations)','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select  	\r\nr1.examination_id,\r\ne1.name,\r\ne1.sample_requirement,  	\r\nr2.examination_id C ,\r\ne2.name D, 	\r\nr2.result E, 	\r\ncount(r2.result) F \r\n\r\nfrom  	\r\nexamination e1,examination e2 , 	\r\nresult r1,result r2  \r\n\r\nwhere  	\r\nr1.sample_id=r2.sample_id and  	\r\nr2.examination_id in (1009,10008) and  	\r\n(r2.result between \"__p1%\" and 	\"__p2%\") and\r\ne1.examination_id=r1.examination_id and  	\r\ne2.examination_id=r2.examination_id  and \r\ne1.sample_requirement!=\'None\' \r\n\r\ngroup by \r\n\r\nr1.examination_id order by r1.examination_id'),
(6,'Test count between two release date (including demographics)','<input type=date name=__p1 title=\'Give Date\'><input type=date name=__p2 title=\'Give Date\'>','select  	\r\nr1.examination_id examination_id ,\r\ne1.name ,  	\r\nr2.examination_id status_id ,\r\ne2.name status_name, 	\r\ncount(r2.result) status_count \r\n\r\nfrom  	\r\nexamination e1,\r\nexamination e2,  \r\nresult r1,\r\nresult r2  \r\n\r\nwhere  	\r\nr1.sample_id=r2.sample_id and  	\r\nr2.examination_id in(10008,10010) and  	\r\n(r2.result between \"__p1%\" and 	\"__p2%\") and\r\ne1.examination_id=r1.examination_id and  	\r\ne2.examination_id=r2.examination_id\r\n\r\n\r\ngroup by \r\nr1.examination_id,r2.examination_id \r\n\r\norder by r1.examination_id'),
(7,'Test ID and their Name','','select examination_id,name,sample_requirement from examination order by name'),
(8,'Remarks/rejections between two dates','<input type=date name=__p1 ><input type=date name=__p2 title=\'Give Date\'>','select  	\r\nsr.sample_id, sr.examination_id, sr.result\r\n from result sr, result r_date\r\nwhere \r\nsr.examination_id in (1022,5191,5095,5096) and  	\r\n(r_date.result between \"__p1%\" and \"__p2%\") and\r\nr_date.sample_id=sr.sample_id and\r\nsr.result is not null and\r\nsr.result!=\'\' and\r\nr_date.examination_id in (10009,10008)\r\n'),
(9,'sample count: age more than 60 years','From:<input type=date name=__p1 title=\'Give From Date\'>To<input type=date name=__p2 title=\'Give To Date\'>','select count(sample_id) from result where examination_id=1007  and (recording_time between \"__p1\" and \"__p2\" )and result>=60'),
(13,'Test count of a date with total','<input type=date name=__p1 title=\'Give Date\'>','(select  r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id) UNION (select  \'Grand \' ,\'Total \',  \' \', 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\')'),
(18,'OPD Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result=\"OPD\") as location   from result s1, result s2   where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id and s2.result=\'OPD\''),
(19,'non-OPD Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result!=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location   from result s1, result s2   where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id and s2.result!=\'OPD\''),
(21,'Current QC Target and Mean','','SELECT qc_lot,examination.examination_id,examination.name,xxx_lab_reference_value.equipment,mean,sd,start_datetime,end_datetime\r\nFROM \r\n`xxx_lab_reference_value`,examination WHERE `end_datetime`>sysdate() and `xxx_lab_reference_value`.examination_id=examination.examination_id order by examination.examination_id,qc_lot, equipment'),
(107,'Consumable List (Alphabetically)','','select  * from consumable_receipt order by consumable_name'),
(109,'Calibartion Data','From:<input type=number name=__p1 title=\'Give From  cal_id\'>To:<input type=number name=__p2 title=\'Give To  cal_id\'>','select \ncal_id.id as cal_id,\ncal_id.sample_id,\nprimary_result.examination_id,\nexamination.name,\nresult.result as name,primary_result.result,\nprimary_result.uniq\n\nfrom \nprimary_result, cal_id,examination,result \n\nwhere \n\ncal_id.id between __p1 and __p2 and \nprimary_result.sample_id=cal_id.sample_id and \nresult.sample_id=cal_id.sample_id and \nexamination.examination_id=primary_result.examination_id and\nresult.examination_id=1002\n'),
(110,'Comparison Data','From:<input type=number name=__p1 title=\'Give From  cal_id\'>To:<input type=number name=__p2 title=\'Give To  cal_id\'>','select \r\nComparison_ID.id as Comparison_ID,\r\nComparison_ID.sample_id,\r\nprimary_result.examination_id,\r\nexamination.name as Test,\r\nresult.result as name,primary_result.result,\r\nprimary_result.uniq\r\n\r\nfrom \r\nprimary_result, Comparison_ID,examination,result \r\n\r\nwhere \r\n\r\nComparison_ID.id between __p1 and __p2 and \r\nprimary_result.sample_id=Comparison_ID.sample_id and \r\nresult.sample_id=Comparison_ID.sample_id and\r\nexamination.examination_id=primary_result.examination_id and\r\nresult.examination_id=1002\r\n');
/*!40000 ALTER TABLE `view_info_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-02 10:58:35

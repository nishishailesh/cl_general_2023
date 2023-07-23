-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: clg
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB-1

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `name` varchar(100) NOT NULL,
  `value` varchar(2000) DEFAULT NULL,
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
('eq_color_code','{\"C\":\"lightpink\",\"I\":\"red\",\"A\":\"cyan\",\"D\":\"#00F5E0\",\"6\":\"violet\",\"K\":\"#6699ff\",\"E\":\"mediumvioletred\",\"U\":\"#FFA500\"}',NULL,''),
('footer_notice','HbA1C and electrophoresis are available on special request only',NULL,NULL),
('header_route','Header',NULL,NULL),
('horizontal_status_lot_size','100',NULL,''),
('nabl_symbol','','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ö\0\0J\0\0\0.m¢r\0\0DQzTXtRaw profile type exif\0\0xÚ­½m²ä¸mù_£¨!ˆ¤ø5ñCf=ƒ~¯EÌº7ë–Ù3ë—‘™\'âÄq¹D{ƒ\0üÚÿïÿó]ÿõ_ÿrÌízrm¥—róÏÓŸ_~Óîß?ïù¸ŸóÿóÏWşü]ø÷ï_Ïûç·‘¯‰¯é÷íÏÂ_ß_à÷Å×å¹P›şbüû_ôç÷5¶\\èÏ%ï(ò›õçBıÏ…RüıEøs÷÷Xwé­şë#Œıûúçõ¿eà¿ËÿÍ}®}‡?ïöÏ??•Õ[™o¦wâÛü?¦ø»äéJ/¿©çÿ©ğ{ÿòMOjî„ùOëtÿË]]ÿÜ•¿nıŸ»ò÷ïş±)©ü¾ñ_Ìò÷×ÿøıÿóâ_g‰ÿåÓüûÿíû¹¥÷Ÿó×ß·Úõ}û÷tïSXÒòç¡şz”ó;~p°äé¼¬ğ«ò_æ÷õüêüjÖ;ÙòuÏ{ğk†\"Ûò…\'¬ğ†/ìóu†É->qÇÊ×gLç{-ÕØãL÷Å>=ş\n_¬©§•\Z{6ÙŞÄwãß÷Îûöóv34Şx~2.4…Ëÿıßøõ¿^èû4ùîö[\'Ì‚ûŠ\Z!·áÎù~Š\r	ß_v”ÏÿõëŸÿ¸¯‰Ìg™øŞãw‰‘ÃÛÒÒÙèÄf¾ş|-Ôõç,ï¹™Ø»„”C	w±†À:6öçåB-¦\'¶ äwŸ”\n›Ó¢ïÍkj8?sü}Ìb#2ÎTÙš^öêØ°Ÿú4lèÍ)?9ç’kn¹ç·¤ò”\\J©Eğ{kªOÍµÔZ[íõm©=-·ÒjkWëíí±\'À1÷Òko½÷÷åM_®üòê—xßG\ZÏÈ£Œ:Úèã˜Ï|feÖÙ®Ùç»âJœXeÕÕV_ïSÚÏÎ»ìºÛîûı0µ/}Ï—¿òÕ¯}ı{ÿŞµp·ÿã×ÿù®…¿v-òëß»ÆKkıëA8Éî;ŸÀWw\0ƒîÙİÂóÄË­sÏîÌ¥¹Ëìæ¬à±ƒÏ1áï½ûïû·}»çÿ×¾Å¿vîrëşoìÜåÖı/;÷?÷í?ìÚîæ®³Cº¡‹z\'Üzcã_bÒ¿|`Sªm¦§~÷›¹ç‘ãè‚Túj½\næ‘âÓ¸úå4‰‘åË%”19èM…½‰û}CÛÏ,ìÑ[YÔ\n¸ÆÔß‡Œk§\n¦oï‘v+<_\Z­ÍÅ£§¯·o¥/¼»	}­,ğrİıÛë.,À—7+[X­y¥]\0ÉM$ßFì\')¿«dcsad­U*_òjp6ÈéÛ¼õ^q€¿åb/ú«|Ï^‘uà®JµÖòk«ÖÁ–/¢f}òxYøróóşvªXx.ÏÚµr­È_ôXÙÖ8¾õx7qO6;~›¹weoÚ÷ïw˜e÷µï2æªoª}—¯ª®w­ÈMaf£`µë	3K‰››ñ]ıÃrß<[Miõ~Ï[W~w®ÜoWn#k6ãÊ›{/‹€SAdóì<3¿à55y-HR3Õ\Zö|V¹ÒÂ,y„¾bk%õKW.\r[k¾¹ÆòÜ»Ñwå[m²£ŸÏ³\"7xè§UçÓ_¾QyŠ]=9\\Ïú0Â–+÷ÑFŒÏî}§9>îÕÅÒ—ã¬_Ï¸Y	oßcÔÅ>ãO}+ü%×ô]¥¦ÑûzR_%\Zá¼ë`5òXl[î+İKßZìÄhe´^çË&>cÀ;ËåÛWºÇêÏWq™]ÇÚaåI/Ë—Büˆ	Ü!7³×Äp7hº+×|nã¹ v QÁ‰Æ¬ı+‰?Öòn¼O\ZæûİGŸïİ“ìœ¶Œ°}óí#ºOWıÂ˜9MEYˆQ»ùÁCÏ•UÆÊ¼1„Å·¬ï	„İ¼0úJÄ^X£ü/Ï{¿WøY¾³¿û[”áÎÙaÖĞ(Ï7Şg•pÎĞy®ÁÃlì<bİq‘àÀ#ˆñÅ„¡Uw“w‘?â?À\\ß@Ù»Ú*U;×\\ğ}BuÛï/ó¹\nF&;Îáù_¾qu‹ßq¿üíØRÓ1ÆòÓXuCÃÎ<	ïÙA‡Å3¼]\0”V\r«óí|lî©RtÇõíw.ˆÙüV¹\"k¸¦‹¨\0âàş¬n-È‘gÏ#ƒ¿³	ZPÜ!°V³İ¼WIì\0>Óµ+WŠ¸&‹šy¿/…]ÀÒÁ:°Y@ÃGxy÷—±ÆÚ¹Ş½\0óØkù ìÊcé[t	˜êú×á€¬0’é7\\¾2x³§§GïŞ™ÇJ\rWxj[ër½9æ“#ZözÁük<+±Š¿nøI±±¶g‚@÷™†‚\'½•áÂ½	#¿ønÉë×¾Áê„YâÏì»â!ƒ\\…Ô|8\\÷aQxç‹ÖÜì¯jïh›°Jh	<y6wßc!&aˆ/~½	Ğüó.oş’P¸®áÿgÚ7ø°r¼õ<•TÄ¡bÁŒ¸únãíÏx	ŞÉ2cI‘+>3¥/èw#¸O‚O\'ÆÂ]ŞÔ› yxV…«·†\Zßç\nÜÿ£0ró26z^ x\Zù^™[ÂZÇG¼\"d¹ŸˆßÜH0»æLâ1“àßx;‚‚÷‡¯ïkƒ[“á\"ó†µ)ä?_1¶Í»ñ.A´g#Ü8X×õÄRâ!0\'Ï.0¤ÌÀƒm¼‘ÿŒ\0êïŠ)÷%k¨ äòaî•=zÛÀÊx&æ\ZïU;¤î¹Ù¤Å/ldB,\nÆï\'a,×ùuhCí0°ë†hÅ&4×¾ò¾À7†õ‚©*’İD^?n?ó$Ç8Rò\'±(.>¦ñ,3akæ~|œÕ°É;~øaA†à‰`!hKÌaƒ½ØWÛà7ü0ÌCÊ_ pWõ@Yò…O%c)ïÚa0¥´…cb5³cày­ğÍZ	Û•½Ü\0{^¯çÃa¨pFiNX‡J\r–´sóŞ±Nü±Æ\rßf=Ñ5ea¿7\"‘	3¸\ZÁÿ«X„Ó‚Ôw`±ËkO\'ÂaÔ>E\\ê™í\0MX©ù<‚;x¶.!Á8ˆŞÄÀÄ‰Æç\'”{ú¬Äbà’f`¯¸t–4Â+“JöUö»®\"åÙ¼\ZN63À¡ÏñÍM7ƒÂs»\\‡EŒ¸¾„3gã×ı`lÏ0R `ÇºeØ&¯0¸Şj”±€U±Íï‹‡€àäàü­Ä<yxn‹ ‘—àQäÎ\"ˆñEÀô™D°M¸3Š¢½Ğq|§Û•0ˆécs±Köóğ‡¿îDÎ«¨\ZXxÌOâêõ¸Ñ\0w\"àà®1ì\"Âiüáú€ñ¾@ $\"\'ôù!ä]Ş2{]B°¡yO6–e RG÷/´t¾aOaÁ¬$rÚm`‚ceé…Íëƒ¤7^‡gá xb’V\"I J¼œ•%AmQ\"(¨|Bçï+Ö”°¹ïĞà=¿·Mv¾WàzI”¤ò/–ğÜôÈa‚ÆxÌ÷àñÜÚæ–¡Ç‘µ*D–šñ>(a¨Üşvc_Ã{Kf¿¢á…A-ø¡-³¼\nw\r=ƒÿˆ°¤xœ÷Ø£¿DiÈ¤a/w\r	Î¶º:7à·D¦°€G+\\ıÎÃO$\\¾5±m¸åÒ Ü€-4‡›_ïÏé#5Á©L”wğ\r|\r‡Ädùÿ7Zïş`n«~I`£x8$øWXZü¾w¶Õn4XZ0¶¾\03$/‚>\Z:’áO~†À[s|Ğ|ó%bL¡L¶¨_ÓG/{öD4- ˜DĞ¹„¥Œ»xt}¹Ê\0«y¾‡½Ç‡Às{~>wå#ÈÃ{Ö‰\0ĞÇ¿?‚,‡—(>\\Òø¡Hˆ«ìÄñ»a#¼	jBjfbÅÍJ¥v_OŸ Ø»lü«néĞ]p–÷æ:¨[Â×Û({gnqP(óÍß~îüä-G¨ëŒµ5Èß¹h#hj‚ÖM@ÂÏ$\0òTE¾Æ==}\\l9à<¸;Á’áA-!Û¸Y’ˆÇMƒ~ùŠúğâP˜úN^è;”\ZR|œs—.>=à²»¢dJòÑ:C‚¼f¬Yç>š>l›¸1€>¿Pá¢‡?ŠİtÄ¢¡‡+Áà¸X×€Â—à›ÀÑ&Iá¸>ğf4Éº4óÜü)nõ;‚êX$·XjèØ)\\Å¥GÈDb³×x7bjãG·\nÕÄc’Ê  éV‡¿JK@µ1ÿ\rUvoöòØ ‚$¤£\0°­ŠhÚ›Ø@—Í;b]¸ô ş#Õ_ŒƒõyXÔù±B¶AĞEz–ï0íÔvI{!¶¶½Â1n°5#qfÏàã@Â¸YFC‡_5°ÄxÂ4Xh»‡ùsûĞÂ†Z¼ó˜+@†ÎŸ¼Á|€GŒ†½³ß‚j¦¤§,™Í_°ÔÑP¨?Ú\';F8m=£ Ë¨Hü™ÀÛ\rÙ°?$\Z1DèT*\0€õÙ<%2¤_æEĞô;N`¿PñÈ@>¢54İTYÂp·™Cª‰Ü¯I[m™!4¤‘Jj¥ğˆ>€şò-¼ËË@(ÛdŞ‡÷Zw„f)B•©M¤…Ïœ\rèÄíNøK -`q˜nók\røÆ€¡d-øçê ´¤Ÿ\rçh4/\"ØCa±\Z„0UcÊ¥¥?ñ­ ƒ‹Á@µÕ×TÎ«b…psûƒú\ZIU_ƒJÂh3L\Z]Äªg8‰ò›wÃ_+s?<$\\EtğQäûüxñ„Ö‚-áœˆŒ]÷PQ«P\"h1Œ¶Æ‚‰áFKåmo\\ü°ëR©¸åáVÄf°FÏê5ŒEŠ.î‡ƒºÎP#”8k)s…¯FàA¿ÈóòµÏÇ8ÈöPë¸ß²ç$õ~2Á&Ó‘làî6ÓöÅSV|Ë xƒû)ŒD–\"ÕÙ@*Œ{EùrQn+bæı,(B˜‰(òÌròÀå\r§!r„¯L@Zƒ9dü]oI–Z  ÜLğ9Âr1Í\0Á`‡¾Kâ:¸-wàFÜÀEüˆØ)ĞÌ­6“A_8†ÖŸ6:Z	ŸwŞ[½ÃŠ^¦r6«À&†)ša+éÓ÷ò‰ò€ªö‰ÑÃFyÆ¨P”Ğ8Ã0m?ØµzïíÜäØ\"X² 2¼~œ¥ÂHN¼f¸õ„§ÈúÄ„‰yc(Èõ·°;ôçxò#1ˆ¸o¦‘¡æ`][DÈÜ\r…eåñ„Ù¾–½İ†#Œ€ÍÅ©oÎğ?ÏÒ¹/ˆ\räš™n}cõÚ{5ÃÀ»¾›5Ä‹•0Ì¯£²âÂ” VuÜJÏÂÃ•d°.¶	Ê—1g€¯…Ö$ô·üÂËîMTÜÆ¼ ¥x{ÀîsG°H1‚‹½Ó|&~[°ÀÌ#°/È	‚‰2ÀF Mvº¯ ßR‚-€Îj£Ñ@wŒÀFàª˜õCîPÔ³›hgùœdÂ¶Bİæí/Â´«£4Iœ‘œÍ¨h5a›÷Å?BŞg2©©¡£I;¬Äd$ôP™±lHÂÓ°Ğ/CœpXBÕXZ‘ªÂöAÂ;ÁûY^Ås€†™³ø÷‚ÊM‡¯a§ÖÀ¦aÖè\"ØtQœ`˜Ø5—BjÇXĞ¾wÜÊìa\";Cä¦\'æÃ]D$8¼eùQÖA\07˜±çG]c9€­ç®Ä\r©Bƒ‡!‡“;Aüğ\09ÕB=¨hÍ]¼)ÇÎ _>È%Ğú¶›Á]#wƒ]}„sBÿ¼nï‹ÒƒŒ9Ív¼E0·‹Œù~€SléÌ^PE·3UŠ; mÑóßëQc‰\"* I¸E…?&ˆ\'åMÄ2‰:h¦‰0ÂãñÉ—_’${5#vÅôíuRoè\Zs\rÖ$¡¢£|Ì3¦“íç´ãyŞ\0‚àDÓ£\"x0Şß§±õq¯âiH\'¤rs!cû‹Ø1«+¨¡še!`8G£‰°à(Kxû¢f1>¿.úï‡9æó\0c}ïÇş¼­!ıoI¼?i‰‰n^¾×¯ì±€bàï!èO}_ş Â×–¥À\n3¡Bqs˜=äƒ¿÷f31çS»#¶ğ|Ö‚{€ëÜPr¤(ÚaDnö5Ï>›/\"ä\"¸°ÑsÜ\r?b{§xcß¨u³ü¯Šöb9ˆÍßå•ã@\n^óÙõGÖ‘ÒÓ¼ÀÓ:‡	\rän±áå¯ª‹1êaİzà\rAÂfGˆÆ3ƒnò¦ËŒäï6ñ¾l\n€èÒµ>.E©š‹†x¤@8$LeÏP1wWìÊ…Èƒ¤ã]’40€ƒÕìÆmæ8¹!‡Ğ¤«mÈ£<<³¡`Ş—Ç†PXóM8Ê&ZX.8A®\r$AáØo..¯ñ0`\nƒº‡…¬%…ËTç<çH5ŞŠ¼­IbRÅpÖs¶óSñ\r•Õ±d€à—e4Á­ º„Wãl™‡êÄ>“”f·ÁÔ§±dâXğlTÌı1ÅÃwuaèfuïÆ†\\ 9oˆQ=E,\nÄùï Rsd$ßˆÒ‹D¨U	`ÁÁRêÏ5·I2¤\r»`vlóÊ¡Áñã‘>(E{\ZÌ=|¡7^‡@ÕáOn¨öÌ—YøLğ-Çæ O\0×Äya,Ûì`¥Ï9†A4Pyİæà»fÚÏ²—eV0¹µêEÂÁí\"qŸõ7Ïí;?Kó>qİ²|#üñ+Ïø¯=OnŞl*€Ã‚\"zìfã\rIÈ³±,Ğt,[D|Â1Ã0x8Ân—¯ô—P\"9jwà†p7LÁ#¦1	ºô™–?¹bA#H®Š±ƒpøëÙAÖ)Xp=íI³öÎòw|±âÊµ¼ßÃ	†ÑVHŠaÿ,9¤!?F€N\\îƒ¼—ƒÜ¯Ç˜f‰ŞÇ2õ`*ûÁÆÚI|Õ[v€Äà£0ìFõ;‚÷ ç!šlÖtÁòáô_î^ï}[†¾éœ5ƒEaï7Ñpôá`„ì¦€úKĞÏş˜ìç	e	\nÓ+	G.×‰N9õˆqÖ“­¼Rõ<^Äb\'OÑ°½|«/·Å&	ó%.\0l÷[ìã`#ê\0\r»yêi?Ï•îéã´ee\r(ñsá§J	â„S™°\"•°.£ytt~»V(7ˆê~Œ¤!Êºò#ğz–Q~h[ƒu‘‹Ü\"˜UfÈÏí}¥ovşs‚úñ›÷ÕµrŒ‰5X^¬¼¢Ì‘BÛ£î†ST\râ`u€áj	Ğ0_ìqu	$/6„×Ş¸\n€ĞŒ–dAL!i{7bÉx\nòş¬†åawùX\nE€)ÁP__c³`íwÍîG°†/L%‚§…8`š—õ¨¢U Q“¸sš·\'¦éß¿Ó€©lóé6uÛ¬c€3B‘ §3~?ß.EÒoO×jñ•³\"~Š0Ş´<‚öÀCjÑ<~5Ù‡ÃÍ>´µ+I+ˆõ˜§Çl8Äâ†‘\0ÆL=ñ±\Z®>húz¸İnš%x\ZfiïÅ›â$ÖÆmÒÂvÄón“_è¹\"R&_¼#ñÎ„zÉ|s.¼Ë;QÙK°ëF$öúNó3U`ãq!ÍŞE–UNÓ•û–‚ë´·Üğ¬ª\"®ÍaYŠ*÷FUÇr?‘°–?@@‰qx¨V „µ4ß#©Úá&š0.ËÈ÷OßYNã6ızº~ÒVfœäí¼÷ûÚcCÃ$î›d¾¿ŞéI1?Í¢Ÿ#5dºZ\nÜ`yXiòÆ†¤üÑ›Ü¿-â\ZF€ÑNÏ4\n¬}„s€YšI£&1ÉÃ2L7\'^5uÄCvm,âxÄ¹Ü˜lq2ß_:ñ}¾\nÍ!bär£C«;fÒ‘ÂøêÍí]yñqxó	‡ƒvˆz0¯Â{l½Ï]\Zà‹¥C_ ˆuÙ@·Â…0±†$’M¼écÁˆ¦AJFq…z¶I»t®ú{Jc¡TD7£Õ=c¢!»„K¤TÑ°Gr`?Ø–´Ñü=èçP0Sw»‰`·¦+¾KGD¸!râšôÁ`@ÆÃd4rsÃìô3ãsëHÚ}’5fP\n¦xÌØ‹©§VÍX(P”²ì€;ù[…Éğyòô¦—‡ï„<µ”q’+¡Ì*y\Zj¶ÉÓ1µ°ƒÁzuBº\0Ò9×5zxİHü¦‡…wİ+Ò-ı$ÎFTÛ(Ìäi?æùB÷<EıyX=JàyW§uÄqeû¹5½R1ß7%Â™èèÑ‹aŒuì|âÁ;·Á£Ø<D·‹FFâÁ0=ÔußfgÃJ\rC‘âÓRfm@İ—#Ïˆƒt:Ü‰Ğ¨ÛDo2^{ÅÕR“ƒ?­ˆb‹ĞºÅf\\ù²1‚õc¬i±J-z:\0f½×R,iù\"t–˜y\nğ8a:À¬,\0¦fÉïå;ñOöĞöU÷$’±I´àTã¤©Ìb²°¦|`«8xøQ‚š™\"râ*õâ³\r¦›OÍ3·ôí¤ÖÖ(Aóe%™pô—0ĞQ¼@m>k ¤hc6	Ş8Y‰yËê£ÙlóÇP.œáå6ÍşâİÃ\nˆXÄØ’®äqqúä½¹éj™¤\"­@¾¾s´İ6ñ€©·)ï“5™fÙ=Ül .á\nHœo²²\0Ô­_±hX\r6ni]*¾í\"Ä„BtØg`AMw?æ7€k²–M8HPß&ãÂÀÌWù„ÙjC¿ÀèˆäbC×İÔîÖñÃ<1èóµk@t¹Ó{{Š\ró¨Ü\\ÙãîŸ€˜ùğ`±@N_ÏÉ¥nMìã³}bá‚¨zƒ·!òàŠ@¨–!1V¯ÜÏ@5×³~áf™²ã¾“+ò€„xôæ®ñµ¯à7àD(9W¨(Œ	‡¾uÌ‘-æAˆYMÇ™‘ÒVÅáÌÉ¸µM]ô×ÌP–xˆE°RÕ’‘u¶PÒÜ,ñİ0(Šu™ÿk‚½²I¹Æ¡\'$¦©«E­ŒÔÊ¼M.A§:X¾X^IdÎ\0CO”€vÁC°ù?…o³\'°\0\0`m?}YC¶TÛ$\"ÆråŸ.£fépªŠ‚œ*z”²%˜À´`\0¶ˆ{‚;(íÁ\"ö›˜pÊç	Ê¸;Æ‹­2}\0CĞ!ĞJÒn¢˜õ@nù×v÷pîõ‡AXÚ=ƒLÄ%Ö Çûj­j`6„Ş\Z»nf½¨Àk	S„b(ÁrÛœ6°¸’zXQú÷ªâ±¶÷}üÍ,OğÛ%ì#†ˆ¶_›°ª–[÷àa\rd«´@@ÂÚCHÂ¼€v«»:Õ\nã.Ä¬\'Ïe:¼@³z.ÉXÖÌ\"~YK~:i9(1]¼#ê­^QÖ†B0ÇÌÓ9Lƒ,ë¨d’løg%/yNXï6n#tâ¹UŞègö%?AZ`ÆÍl§É,«M¤ù‚üi‹·¥q`\\\\ôÒÂwtí‹îtj•–ÎYˆÜ¦z±¨£aÇ¦’›ÄÔê5PtÇ¾§ÜóÊß‚E)ö`¸æÍS~K‹FnÔN8Ÿ¶ßĞWÜ{bÖ¬Ömc.UŸzL¦\\thš°sÛÕš»üÉ[@67«ĞUÍ\"|HAKI†1**»`\"ÚM}¢Ìá$fêzŞ®³?\rS±bĞÚâŒÄØWã%†Ã.je¸ffËÒ+vvW7$Ì30¢)Öj²Öî\n¬{¬VZ?[«$Ÿİ§Î‹ÍöcÏèÃ5‘¢/€ˆ\rÃÃ›Ù‡ÇŒP´šë1;XîøI€WƒÕÌŸ•&ÜÔ³$Û¦…n€ íı(SáAæVÿPP¨`ù»ç¼,­Ï\r«½­7>¥ÍÃ’•±»\'\\YäùXÃ%Ğìí\"\0áI±çCqÂ½QËjŸÈÛtl½êÉI¬İïÌ°¨ø™üú“%Ö\nc-XµÚF¹ËÓ`Wßióÿs¾\Z¼İŒ€!<TDô¿?Ú’¥Å™ò²İ¼âKàeÈh€ºŒÍôguƒ&\nno-€Õ1ì*Ÿ\rGZ\Z\r,Õ\'ä#Bm¸­Hâç-1Ùãòár>Q’øÎ©·†ì!LË+ò\0d$ıÏ`v_yõ‹˜J\\Ùß\n?VªcAXA³\r\0)dIíö²…İZ©ª–8$+Äª\\î^+šßµ!Ó\0m7F¡Ú<Ó‹+ü5ÆdÏ}ê¶p›	Ó<½F~7}ĞÆï÷ò ¢‡@õX‡~á³€`•¹\"x`\\ó™ı!xF¼‘ÖWLØibW€‹SéÄ„4Mp6X–U ±jTÛÒÏÚáéÅ“?t1¶[!öV?|j ƒIàùsAÕL7¹‘œì^YYƒ«(§-æEG¿æqÊDì°ïìYÎùÃœ%±¦x6;~ÀÎÂ”Ç³·“Ø†— Í]ë‹y\'Ä:Í8|[~²›X	Ü=\\ˆUã2´N!+¡XU`ÆÜ©e¬¼ÁŞj@\"k·çTÑ”$²İ³ã{]ãô~Z¡ùÉz©óvÖúBaB»`„]à<Z¿}{bè‚˜û0Ù\ZúõY´…{–Y¹ï¾Lg=Öqœ?zôÌË6=í1ì¯,~Ü­¼ı˜½eOCÇ-ë0é!Ìeoi‹où‡)\"ÄŞh!åj,åq»ÌíŒ†ğ©Áº7wØ?Zâµ€ÎÊ(Ö]ÍX€™ƒ\'7\0>wÀìÎİÄ\'şY›\nL#7\'¾ı\rV%JÅ“ù®˜ü´Í\"€‘„ä}Êµêh><ÚóZÀïqG/6^À\'1#à\Z½{W¶€©sê%†)k›ùåŞ.×á÷ ªc{*+0Øİ@‹c/Ë?e–òX\r6Ò0¸ÚZÑjøRV¾Ø?$œb[@’Ezİ¸‡Åø~Å¼‰@%(=#ì³˜a·fQt¸¸=°Ñ”¯†R=}<–YMgÓŒ øan\r¬ÜœV·?Ê)5o„´LæµÜóCøe­œ<	¾(ƒÕ€ŒØ”ğÂ!¦İ8\'¦Ø†ÿX6„½aìÅ2{¥na=ÌJg%M<ìhßŸ{Ã·å]ÀÂ0¶w\"mİ¿’-Ä<K‚£|&?fµˆßÓjcÌ= €ç{áì!€›ÆÚ¿yA1ˆ6R `İ<‘e-bÖŠîúÀÒcHìã»	İ–\0/OeİZÙ« ¼yfh2²STÖ}çèù¦\r‰7$Œ\0ÉŠ«ôËÉc\"¤­ÓXÖpÏp¡>YêÇsßMd‰)7ÂRàa°«„X˜L\ZK\'Ò…_ºş	ò%	 §@Âe¡n¹Ïœ<&€6dîW\ri–ovÏR‰&/#|BMCÔ¾ø6Ø)æôôïbN²nŞ@PĞËAµğf¤±«Àş‚ÙÛ{Ş³¡“`c‹VlXû]Ä©ÛîıÊKğ#Âb¦QÔ¼ïDã!VÚêõ ò7Ae?x\"u®Ïã0¶®{0d¡ş‹Ù´aM(PŒb_Ÿ.f¶›ğš=6Å¾f87Uˆjí¢Å¥7MÜ3ò?\Z‚†êÜFbà–göĞ\rY¬ø´ñ¨\rÔ½`*çÀ`\nÄa~N¹èî¸¹Ğ>bÌ=n	Û`	C.‚pu¨c&Š|•÷ñÔç1İjç\rÄæ”KçÃŒ5NÅŞWÊ\'İÄs£„¶H\0Í±Ñæº_Ííıà&spà;ù¬¿\'PuÛ†\ZJ×¸·Ì¥± ÃRïñbŸy{OíZÏ{›Í³¨×Îö~íãÓ2¹´å) …A\Z›°ş\r;ÂnM]G÷œ?1DCllH@á€KDĞ~lŠézÄb&\n]¶¬\'²·@îŸ~ÄÜs>Í9`yÜ0ıòb •…¹o)_C\rMìA_Ã1Šijv=×¼RülhMš¢İhÆ&“ø&—FáÀÚwf[YQI›§‡¶ãÁ‰ŞhÂ`Z{]Ë³c<øw ·us“¾ÿ9&=çé˜hz­ê\"J±µæ\ZñÏi#<½m³~0ö\ZfäAŞ‹§l¹Œ÷¹dƒÍæN/OÑàVºã_Ü	:-3|_k†Œ©üúÌeò¦JÃ²Û6\ZPhÍÍjÓ\ZOÛdÑÌsİû©“şuÜéıÂe:¹ˆïj>°—Ê‹µ!ÊÁ”`IŠe•ì9‰@öÆ[¶1=¥+@!ÂÙ2jÏb<ÿA±#>14x@]²k~â[qC‹W¢ˆvNğ*Œõ|ï—ß=O 2ÿÛ}[ú3­WòŒy7¬+V´s„Ïm^Ö}6òÂ(­aÂ«ÑXè[\"ã÷Á3@ÇŠr\rCà>{,^ë‚›µasß£lt»Âk†×öB|®1€ƒZ_Ü§¢»âW˜ØÖf•—öšµÕ5Š/à>¥^)ÅFl5ös6<H—›õƒÙ0®bé_²ó8SP>Y~ŞA7Ì0ÌKt²ÃÆ9wX§ßğ3Â[~Z¨jßºwË[uue¦ Ä#³²í3öÅ!‡Óé‘Z=‚¥­c‰Ş;ÁS½uä¤E}–£bí)ÁØş”<îwUC€­ùFzíYÁgSÿX§¿m³‘®Î_—á—{¾#0yì½&kÜğ,Âø2ÂB^„ß¯ÜoÙ\\Pq¾ó¤ƒ	Â„äÑkiÕ@=}êhğº’GDqƒ¾GÅ§Æš+Ö–ÇçÊ,RF…ÓKÈ¶¢¥÷X“4¿çµÊÄT’]blšŒõp®XzU™eÕvB¢1(½š3=²Úˆ›ó³§™ıƒY#»àˆ‡Û¨Bì„ë8Û‘ÊÀäñvŸã¯|ƒ‚¡]0ÆÛÊ‘~%ù[àñ‡…¨6óeeBCÿóı‚Å­û\"dDÂ-ñ”;KXjD‹ Msí§D…Uaşv“··„ ¢e1X8ÿ šx2?Yş«Í !©¨ì,aäÄv.Ÿ…¦0M¹Áiá§}®B@àVºI’5£ı#¦ßeÃ­Ú0wY…Š3,Ï^ì4AìÁ•aó¸A|˜µ{ßM²jŒ°,ûW §uX…{Yqf]şÄ\'»r!½€àY1®øÂÙc­¥y@xèÉI\'¡_·‡ìÑ¡*ÉNqbiløR@5ìyÑƒúÊD¡ñ@Dˆ;ÁÖª ãæÒo%¤n´)¹×}±Ÿ–rQk\rQëŠ ğËo†Ôà7\n]TuŒVy4–ê1•¡ƒLø|ÜÚÕ‡>l\ZçxLæÀ\0y×êi™ÉÍÖn+Ô)ÙU¦º…XÙ°‹ğ\0b$òğ4å\0±/PgÂ¿ö,¶ışÂœøBc‚Ôx„¶”Ë¸à05°:€\'¦$mRÀ\rÑ8¬x‡%•SÀ†ÆÀ…\n¶OÇÑ‘ëÈ Ì8]–‘â0ğL¢×²à]kíÊ•p\Z‹å-ÃÜk·¯Èªc/ ¢A±yVC;²GàT§`7è‡‘›¦§mEi\ZåÂ1•²m‘ÎûWTãÀÂküs6ÑjPL0§yèfY„B]Ø!\" ÁÊíL³Ñ)4ÒÃ&àxW_x‚Ñ³\\\'PG<=œ‚cş‚\nÃ‹Aû_ŠóqAD@D—gĞˆx‚Èè­_nşòàsêîdgò8é¡ûÁ)„Ïòù§tiv’+h\'¥%Ê\ru¦MĞÜÅºc¢­µí¯e²ğ<Èìb›úkNÙC»[Ïy?İØŠƒY×kq‘iñ$õÏéÜ4«P‹“fJµÄçt«(Ï5l¾nÚa*ÊkAœãšbk±€¶ånVÈ°áçhu+h¢-5ˆ¼Mç8ŒiIàšvDä²2ŠuXØª2Ú¤§LæŠÓR&îkÍÕ¦Ï,çy‰LvA¢{€ŒûrDSR™`˜ÖØ£ÛãgŞÓ“ÚÒyœùğûãîË^ñÏ.b87</| ÅnËmt\"Ç\'py$œÛÁlíã5uj8×ã ì&á<ööü¹†-~Ôº¥bjÃÄÔ=~gÅF£ŞÃBùJÕ“¾Ù°}¸*ô³ƒ\Z×g¸o-AEöš(ÃAYp¾C°9³7tŸï[QÜÃ£Xï¶N]IX¬ıEh|³\rŸç\rs~±ğò(ØĞù|íäÃììí§™à‹ò\Z±1™y”@›CÏ§˜Í^÷K9¹N®hÌSÁİ¬ûœ¢İuË5<¶èğÃCÃ«ÌÙ’İl´—ËŒkîvˆ@à,Ö&L‚¦f°Íä%†Á°¿Ë˜Ş‡4ƒ»wğ‚†M÷\"øÏç±‘ğ/²™ÜZ“Iâ°ª›¨P.h7PmŸºY­`Ù«Ç:vœ1–Ÿ±84cT5D[ëàZá¯8+ñìëé2¡•,¸¿î£†Mğ$x¤&ğ7<Äü)šÌBj_mÒf?qydw~=ÀdVCx*X’=ó,9‚ÇÊé9x] Ü}ˆlmµ\'!İák“˜·Av4+!NÜL×¾§…nÑÂ!½IÚ`—ªµíÿ’“QeßvÔŞdeçys‹i¼ı–lJÃÉKìaé[aX~Ğ¹š\0r˜ÀÂ¤Ê{šJ|ÚR	u¥—ª£ÏrÅ).³!<…Š¥6¬«››!€ÈÆIÏhMÏ1ÔK(åmKVá–\"”G5d^m;¦ŠÎ²7rGo¾å÷É£WÛû<´Eb+š9	Ë#¬áÊlç\"b˜2‡qŞÒmŒ¿‡ß1ĞeO}ëG„+Zùe\ro:´fÚÕ$)-_,GŸú{ÔkáÄªå–[¦Ÿ,?Kı	CÆ\'ÿ°¯A/²+ÿµ¦æX$¨Ú!ı,K¯X…l=´Ğ:{²ò×éK|šÇwÑrûşîw<²BL=«dÎ|Úh‘9ôìÁ%ÔlIdôõ\\ã±“ï†çÀ °~”¦­â1O£¾ĞÇRØdÒ,§auXÇú²Jò²Ñ6{$¶\rƒªböûõhU‘‡y¾~GbFÌëöB—à ÿ±¦;JŸé2\"Ï+€6[!±›BĞ€\\°¯ÓĞ‰eÄêlY“M®-¾ïwµbÕ¢…7¢#d\"¤»5Ï¡*R\\jm±Ì ¦dF\"Á%P¾m‰ÿI©Ô«A[ú9×5E\\A	Â‡%É6Ô5\Z²‹%BZŠ#Ÿ3ÆŸ>D\\C[L›¦`aÃí	æT \';Ìf©•Ê,}AM‘Ì{®éd‹à€Cx–GŸá+]¿Ã_@÷¤º‹ÍŸ¬&^LàÑ>àhØOp\r`şó9(N7/°R½ì‰gŠÒmcÕiëZ’3ÈéäûPÓóùeZ?û€ìäyßò&uvA.äìØDcÕnEæ×çÉ·Ââ¥Ø2ƒN„<ônxX„°r\\Nù¹c8ğùËÊf›İŞWVÅ–Bãı#‹â/ç4Ëä	ëŸ…Ÿõ¡™P!‚½}ãC_l«qM[ä#cñëiä%äYÉš‘y\Z÷¢s†p`k×1(¿Y›i‰%ŞO=•©fSÁG‹Vs‹Še\nÙ;`z¤[Æm]Ç©<à—E82ò|Kè}f(ŞNGG\\¿3‹«›2Ûbj‡§’¶Òs}™©óEf¿`òİÓk—Ã¬iš\'6¯æzÏlÆöÖ\"<=‚Å¬ë™şóxtØç*ø„M—ã…B~0E§ >¡#²{\ZñP~#PqùgøÆù~‘Â·“6‚k”-‚°ßtQùÔ(ºN¡fÁmm…gW_+&ƒ­ËÕ&&“y ˆu«(³¶<D}Î™·£7$\rş‘õ;2$%kïÀÍb­bPIb«Óª¨´Êx\\Í\\¯c£,‹H=Ã¿0QhÙ„ç½ Ø)†ƒs;|N“+d{8¬\'{(ÚÙhô3¯ÖuÏó‘ÙÑJiÌhú¿‰İï00Ãºííœ`»õ=1¾VgBÁêkÃbãBlQ´ØÃLƒJîZeGv `,¶|Ï¾»ÈM&«+0pİÔã^V¼<GG Y\nk¡’m<0c‚¬7Ÿ51vçTOe•5·ØÛ–IâTÑê¾PZÆvUÑø+‰£¼Zôe#9B	¢èÎ*%ğV³½§O\' Øh«}ïöÀ<¼\"ñ,â•MÏñ!ŞÙ¢ßƒÇR(‚÷#Â°¦&‘)fœ­¸µ#^¨\"ºcø<QgYK\r³œ‰w…¾ĞãÑy º’•&ŸôsÖŸ“X?·­¬²•¾¥e+Ü¦˜K´y	^\\à·¼›œ\Z‘âùAö°.«ï ˆ÷á»¶œ!ˆG:ä¥ñ$u;şé¶`Òæ§Ç	¼¦8•Ï{„ŞOG ¬Q\\·ó~)8ˆåùõ0Çœ;ÕŠX$Ìæå†iˆ¬víVâò¼š«²;hoW»¹ˆ®vÈ|ïTŸ/‡é8ÖIÜTÊ6B\n:ŸR°ø¨ì$³‹Ù­ç¶X|#Û’V0ÊTğ\\ÑØı*$Nô(‰sÆ—8AÜ÷¾¬uì6pZ‘`çúkFØ(‚Ò1g¶£¯­ÕŠZ`%ÙK{qO6ûò”E%WutJ°0UJLz\"³³OP;¡x2ŸÃ¶ñÿJ&6½+æBFımÓ„bcD<)—p*ã¹ø£¬ûˆ+?YñRÏ`©ğ|Y¿OT†Yt»3âÀ\rŒÅÇsô‘Íp L³„…gÕ³‡\Z¦]î7ÊHì!½n+œdıÄsv–}vÎÑrPŒ¼w‚aUn”ÌÉ2¶@¥§éÙ‘GİÎÂ‹à¶µ8úÎŠ×¾‘–\'>¹öB6JtT×P„­{¦pfûä±Ç{Š*íç:“ƒRqG ¾¨ğ,[éù!k–ã‡Pa§a„Ç¹ƒ/¾×Â££\rÖH˜ÈtØÔ\'µe,5l\r:Ç„È¢¶ª¤iæÙâË4‡PN8€QÀy=ír¤ŠµşÄ*‹ïØmûªõ$ÓŠEc(]‹§Y;ÇÕ\0šáZ.+~\Z>u‹I”ìiC´Õm8­rŸ5Ü¨^¸\nXó‚\0¨ogcÁæ9ïŸÊ3%1yÿ9œà‚O\"šLbq‚µ5ÊÈ9âˆ^“j:vÇ«hE1æ©:haÆwòÕaDq_Ü0´À5¡İºõ[:Õaß¯XñT/\"ˆ¨£w¿äØ x†£U7rë³ìÇ‘%V7éòYÌ»ƒ×^Ñ<İfKH½/:\n‚FÔÃ,Ó´%š&1~‡âl!Ñ7—ƒ®y¯ëÌGû3s`i0ÛòËm+Ë‰›ÏMÚ˜©ï=‘ıñ´€,¡…jÛˆæl³VÓã¡×“‡#Ÿ¬õ?9d»qğ?$lÆ:¥G½	A&VÏ€äŒ\r¡w•ƒO1¼?A¡˜?tò“³B-²;ó…ßÓš›Û{ôf´zW‹§ÅîÒÅòjÈ“ÔÅ]Qí-#ç·…@ùŒ¾àì{\"‰B…¿\0v£	í¤$d{…õL¦Äòbb‹¦àài•:ƒÀgB†{ğ@À¬ëCX#!UøJ¸Øà[ùİå„ßÈàf‰ó4×Ï@œÓn\n3‚o9mÓÂ©‡•FÃaF±zYE7=lF¸ g¬^l§’l[l¾ĞCUßÏi,&˜M‹yàİ‚³CÕ©MaéˆÑ¶3yüzÑ±-y&ì@­ÇÓğ\0¾ômõ=QË9¦luûÙÍÓ®d­…\0©·j=O61ÊÓ€l¡j°µş±šîTOı=ü±¦&p8‰ãÓLgjjHâöbF<´øq%gÃ½§¡N{	¯Ñ$”µôn7’Ù2¢¯è Òi‡„“Â³:€™İëÁNLpæÑŞ¨gëeãØíx÷çTˆJÙ.§ÚÕt¨Y{O*úu{6$„bD#Òa~ÇŒnÛÖİx‰H=Y“ÇbéÔ@\"·‡è7bĞ9”…Æ°øÉ&¶5ZƒcõätİØ<;¼‚ÔSÌßc\\Èß~ê‚q:³úDw ô|s)XÚ¬ÃL\ZàüX¿ie‘–\r?éƒ8YÉàqÅã°qÚÎ&ù¿·‚49µèœ».‘&TÍœ:„F^˜oyl(#|Ì†ØqÙ«S„!§å´IDà>ÅŠ(ùéÔ­zAfµÁr>a\ZúúÂ\'Ğx\r\n{8­ãVXœ[tñ}ôöõaûùkk¹Oo°ãJq.â> gÛ\ZÊå”c?ÖÂ?XğsXzŠîp¤á´çír¨Á€ıùFrÂk‚I\Zt¶mP”Û:Ï‘­†÷¾§ÒÙÑ	„d´„QhiÖ•»üÜÈmôå?Œ‰ş·¯\'ooc®ıÖø	ÈÉíH¡o¼ï0\r·o¶lK^§ój€‡8,Ğ~‘¿ÃªTiEƒ9Â&ú™¿èÊjéƒÓíä&§ß”rº¾ÀK§ãÙß…¡t*{\n—´îvç¦&B”c3œ8ì´¿é ¯â)á¸Zç\'Ÿ-ƒß<–¿‚#>®ƒóõüÑ±W s´*ŠŸ»#€‘}ì—¿ï@}Êãq>›\n4W>{!À ÷Ru?ÎuÎ×8Gó6ï[›³<MS]ÅÒg\r-ğô8ÃYè°okDßvû¿3<	š7Ïèáh…[sª¸Õw§=ÁÀc± ªä–ûšĞY¬I°¹á<»[\rm¿X>‘!ƒ¯Ç•O·eù–ÈÙ$ğ](ş:I~vÆ\"W<`—ç²íùóhkÔfg`W¢iP@@Sr£Çlh«m£-)P´Ó¸úWØCÿòëÚöiŞ Rl;ÄÆ±^5Ü£\rz‚óhxXdyÁL+º›‘‹ ÉÂğÊ|yrRì¹QÁúXä&TÀN=«GJX¼Ô(úG—öuôÏä‰¯°owşQó„Æv6ÈƒCÏLvxO’m(ÂÁ–å8EQûÀknËöCO×ıĞÜ-2z-Ë±9ú¼Ô‘ô–FŒéƒDÇD#£-¼„Hy‹1WK;<ªb[¯b÷®MÜ+éñ€\0Ö4Ç‘ÿı4CÃÛ‘öDÆWTVi¢•<ËFôë=å6\'Ì)À,9Ó¤Óá±ÓâÚ)òV¬½ä§³ÚÃşÙ|bCİ¼œÚ2—“ ‰¾ŸC¬æÛß/7Ñst+ó7ßáQ]/ÌFÙ×zC?|àby‰Zá7oãtÒ`È\rUMXYle>T³Õ/¢©·Ç¨u¦=‘~ı¤–ë=œø Ô?¾öó™ç §F‰\rÜ£I™7ngÿ2wï€é¢®aÒÈÖH›eŞîĞ´¬ôŸ)¥b—C¤€×\0r9ÁÁø¥œ@Xù™«à[×ò•©Ù:g‰¦í$­²ÎÍ–ĞÑÊÎŞ6¹Ü¿Êÿ=×ÓñpÛcz\0ãşub?É©´8‡C|ŞüË>EËµ\ZË>µ)h¨gœdçàÈT{×Úœód“Sbˆ¿IÕê™ê6»}°^Ş%¬À*˜â@?8;1e\"`ˆóC¯Yq‚ó\0ù‹Mµ³Î¡Wı{.iµ²+Ÿ¶ÿ}z¯a;qŞqo\\&ƒ	}ˆìş¡5ng0Ûû[)?:/³äÖ_âKéˆzÖlgÛx)ÉòMaóòdíe{S¸ºü@Ë¥¬òDZ+!Ö™Ş%\Z8€GˆT‡÷ÊÃ¡[–!­ I¸Û––ä~RólG-§Ö€ïWÇ8\"UÓû&À9;^¡yF“MGØb\ZLÉ°:¶„Y–‡Q{â²âw“m¿ó\rã¶eô»xjÓ…Íƒ¨¼Ök¿¿¿\0Û¼Ïxß	¹²¯?ûßIŞøÕ`;°Ğ‘Ïíz¼ú:\rÆëq{gn&wy>Ùöòßãdÿí+êÂ„u]×ebëE ×¯ÇP\"„vşèôypÌI×ıp¬dvº“™fÔ½iËåŠ÷‚#E‰H§—ö7ˆÈÕ´,ÂiõãSP½RyƒåXÊÉ¾ì\'¦ğ^¿¼&[d;~n„—ãLµyôå {‡T9(¿Io‡ø8$İøé±7‹p	tö5eT°IÈX@İ\"q=—÷d²7{Zo{”³àPN‹2»¥z¾œ=%~f©…jé DİáÅÎDı¬hæhëøÎD¥3ÀóÌ[täçš©›VÄtÏ‘ˆ@ügq…§–¸àşÏõ-ê»Q°Éòl§<‡çub¢\\ekã3÷	F~PÂM¬ûºYDó(öÿÕ×ù»³v´íâ)­ÓÏ›{Ùxè¯6¢ÜeËsÖ×ç™{çÛDu]ÜçsÎÿ$šxRã(¥gVJ§¿7srB·ïMSGIm)İğ#¹XıágÂ$Aqò&ü(šşù øEÜi9RÍSILôƒ@ğ\Z©;ÃÙ¥½ŸJLÛ?	ä07B¶Aß9lÛ¦©&úğõ8\rÈ®æZ‰a?…Õh¢Ü©\ZøÛg™ü‹ÔïQÄ	”Ô[0œ‹çkS=Xò¾üÏ½ªı67<¯Ï Ü­h­^Ş½¨5¯¹\'S9˜Jjà=Îÿ¶/iÁö±Nÿ‘¢DG9nH­sKÂåÇÛÜÅ\ZwÀ|àÌı‡´„2iÀrö™»U­¼¶9¦ä”&´aË’ã§.\'m¡³Ğ–²„Û¬]ª<Ö2±³TjÊZ3¦¨t?¥Ş ßT¸úÁ5w¾`ä9İ,£0ƒ¯Z  ¯¢Ê!½¥„K9áçÇ<¢SBS1İ1%6ıX³l$v´f»\'ˆ8ƒ‡QåÔÚ;æ¬˜öj¡-µq`¬byY‡óIc—ìÂ°ejg0®g²ÓÂÁæP6Á’\'g¥¼½¢\"ıÈvş1ğÛOZ8íãÇ	b ktK\Zœûñ¾,}²g~±¿ğşğ“œû_øŠµŒÎ:Eærl\\İÖï}¹Ø	ï;>øñD?»ÈÖa5ëL¹üDDPW¿úiH¬–EÆ~TµŸÊ5ë¸iKÁO5Hõ£ã,ãàå[,~WåsÛSåÌ¼ˆ–…(¤ëôjœÎU‡\Zğ`ë>ÎËAU;	İ¶‡×Àˆßu´%ivS${‚ŸìæÌÙkt\\/¯µıçÌbf] gÂU5XÇÃ´2)h¥Ë)äv4+R7À¹Ò}U3ÄQ<çĞ°+@ßô@×¡\\Ä/0í¶ÁF÷‰BÉ\Z[kæÎ‰vËáâªÁwl¬ZÂÑ`xŒŞ)ú ¥¯¶w+EFşeŒŒÔJP$Ì‚–Ë¦y°#Ùù‰ô[lºíÔPó·u¨1 ’Ã1zN¸ÎGêfÍ­db#~·€ãK÷z\n!42­\' ÚùsšDŸ:w*Nœ«L·{tş¶ƒ$àír4BY\0İw`}~^ˆs´œîg6E=İm(Õ5#`øÛiÚNúèÎ7`£®mÉØzÈo-\'OF âï–“æ|\nã‰ŞK>¥¶öP±(2…÷+—ÇRVĞøÉqÖ²“£ĞËı!c›ŒÓ_5ÙFóøI=gz³çôÃ¤ñ~\'Ò÷É¨­ı°ÿL&F	Ë@¹sgêú©R¡CÔûo®3¾<u|1¢Î~ŞĞK¥¥¯\'í`˜mq…ÖY!»¶P‰:	i³ÀãÙ.´‘s—å#Â©r»ÑtÉË™x¼Ïñ—\\sÿT\'ª&–^¤€N/‚ñÀ›£\'~–·´GY‘$¶L¶8éW%S=båS;m9|$ë\ndzL¨:[ÿ9Im[·í‡x ªC(V ø!3oü¸×h)P=9ÙÂ/….ØĞãd5 ßäÈbn¶÷ş9°¾LÁ¾²=-÷Ôt;ãÜŠ´ä¨PÇñZJŞëå<A«9b·êÇöå”ª“{ÿ\0|ßH„z©\0¬#ğşBÊ,f ií±®ö;%£ İµP¾óÄr&ñCvÕQÃ¶†Ï\\Oñ\0ÊnÌ[ÎVx®¬©Y]° ›j´lqf1¢w‚n\nwívÿ~–VX™½ºİ‚ÍaÈõM5œCF«‡øË1_?ñ\'BpÎ„ôÊ3Åî°# êÂB¾@µD<zqÚ7•ÏŠ‡Ä|¬ d­7—ixGNcJG¼E‡á>ª	¨0ÈMv{Õ¼ĞòsqªgÏ´WMùS@\0Ô*>`‚ÈÓ^Y¶ì¾´‡>¾fR¬s®ã5§“Y³)9{ºo¯:pªN+„å¡cti³\Z‹jªÇç*;—–‰!~&×‰NH’\0‹#õŞªS«³V´Ìû‹Î4‹~çç‹œ@&¹NÅŞç¬É(kÍÆ’yºøÚfU\0ìÇaØyëX‰î\'‡ÙkîGRÙWs)*›÷“U{NõÀ¦AâL(_8›GbL¸Ë½,ÃŞ\ZñÓ¥ ïé´£\\§íµ‡£íp]o=\rMİ¦S(¿ÊG€ÉÃ1\'§9Òvã±ıöó5Æõ±ÎlóA‘+-+õc}l¡D[‡ÌÂùŠs)ÂçÈÒXí%<*ò¶á|¹Â@gúÿ†:ÛÍcêŠôcx*ª²Ä#y,^·¶°f:TÀ£ˆ—#Á§ãÁìÀşª“5`ïÎpEªÛì\\sXøç@q\Z<·ÒE<MÎXO¯‰¨f³™J~EèîgÈ€ß€}âÃÀ{ö“Œ±Ä¸ìGúÕxÆ¢Ü–û)|cXyÊJ 9Lao‡DÀ¬nH!ŠÅH—ºF“şMÒjÂï¼ûñó‚<#œd‹æb,Z4QØ#œÎ‡ÂXg`K«?ë81îD‘tıi¶ápiËÙ3\0\0„iCCPICC profile\0\0xœ}‘=HÃ@Å_S¥µTì â¡:YqÔ*¡B¨Zu0¹ôš’GÁµààÇbÕÁÅYWWAü\0quqRt‘ÿ—ZÄxpÜw÷wï\0¡QešÕ5hºmfRI1—_C¯¡$–™eÌJR\Z¾ãë¾Ş%x–ÿ¹?G¯Z°‰g˜aÚÄëÄS›¶ÁyŸ8ÆÊ²J|N<jÒ‰¹®xüÆ¹ä²À3cf63G#K¬t0+›\Zñ$q\\ÕtÊr«œ·8kÕ\Zkİ“¿0ZĞ——¸Ns),`D(¨¡‚*lê«ÚOúø]¿D.…\\0rÌc\Zd×ş¿»µŠã^R4	t¿8ÎÇ0ÚšuÇù>vœæ	|®ô¶£L’^okñ# o¸¸nkÊp¹<²)»R¦P,ïgôMy ÿˆ¬z½µöqú\0d©«ô\rppŒ”({ÍçİáÎŞş=Óêï77r¡˜N9\0\0‹iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.4.0-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:iptcExt=\"http://iptc.org/std/Iptc4xmpExt/2008-02-29/\"\n    xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\"\n    xmlns:plus=\"http://ns.useplus.org/ldf/xmp/1.0/\"\n    xmlns:GIMP=\"http://www.gimp.org/xmp/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"\n   xmpMM:DocumentID=\"gimp:docid:gimp:62b9c2c5-63b0-4042-ae44-38deb0c4db21\"\n   xmpMM:InstanceID=\"xmp.iid:764239dc-1631-456c-bf35-7390e91b8b80\"\n   xmpMM:OriginalDocumentID=\"xmp.did:44c3c0f6-69eb-4ed3-901f-baf1f93b67e8\"\n   GIMP:API=\"2.0\"\n   GIMP:Platform=\"Linux\"\n   GIMP:TimeStamp=\"1688899848462183\"\n   GIMP:Version=\"2.10.22\"\n   dc:Format=\"image/png\"\n   tiff:Orientation=\"1\"\n   xmp:CreatorTool=\"GIMP 2.10\">\n   <iptcExt:LocationCreated>\n    <rdf:Bag/>\n   </iptcExt:LocationCreated>\n   <iptcExt:LocationShown>\n    <rdf:Bag/>\n   </iptcExt:LocationShown>\n   <iptcExt:ArtworkOrObject>\n    <rdf:Bag/>\n   </iptcExt:ArtworkOrObject>\n   <iptcExt:RegistryId>\n    <rdf:Bag/>\n   </iptcExt:RegistryId>\n   <xmpMM:History>\n    <rdf:Seq>\n     <rdf:li\n      stEvt:action=\"saved\"\n      stEvt:changed=\"/\"\n      stEvt:instanceID=\"xmp.iid:8ef5fa44-aaa4-4d83-ac73-d9ebc2762956\"\n      stEvt:softwareAgent=\"Gimp 2.10 (Linux)\"\n      stEvt:when=\"+05:30\"/>\n    </rdf:Seq>\n   </xmpMM:History>\n   <plus:ImageSupplier>\n    <rdf:Seq/>\n   </plus:ImageSupplier>\n   <plus:ImageCreator>\n    <rdf:Seq/>\n   </plus:ImageCreator>\n   <plus:CopyrightOwner>\n    <rdf:Seq/>\n   </plus:CopyrightOwner>\n   <plus:Licensor>\n    <rdf:Seq/>\n   </plus:Licensor>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>t)õ\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\0tIMEç	\n20Îƒó\0\0 \0IDATxÚì]gXTIÓ=3ƒbÄˆ	×5¢2PQÑÑÅ°ŠYÁv\r«¢˜s¸&0€k\n3*˜%ç 9g&Ô÷¹ãÑ°î¾Öóğƒ™;}ïíîS]]]uŠED„ò¯\"Baa!Äb1\n\n\nŸŸÜÜ\\äææ\"\'\'yy¹ÈÎÎA^^rss‘——‡B±…EEÉ¤\0\0G\rê5kB½V-Ô­[õêÕCİºu¡¡¡zõê¡~ıúÌçuêÔAíÚµQ«V-¨««ƒÅbı„‰¨ıè‚ïOòóó‘™™‰ÔÔT$&&\"!!qqqˆFtTââbÁb±TTJ”\'%¿gÿ£R‘´´Zãç¶mñóÏ?£uëÖhÑ¢Z´h¦M›¢aÃ†¨S§ÎAûÎ„õcÅşg%//))©ˆEdd$B‚ƒáëë‹ˆğ0°Øl°\0P)U°ªÀ«\n´Um£D™”<“\\.G‡Áçó¡İ¹3Úµk‡Ö­[CSSuëÖı1¸?€ı¿#™™™ˆ‹‹ChH|ıüğüùs|ˆ‰›ÅR\0°ªaù`e¶´¨S§jÕª‡\0Éd‹ÅÈÏÏ¯V{ª©4àåDø©MôìÙ«ğÚÚĞÒÒBƒ\r~ş`ÿwD,#66AAAxùò<Üİ‘““£\0šO‡ 4XJD.—£Yóæhß¾=´Zi¡yóæhÒ¤	\Z6jÄì‹KöÂ5jÔ@\Z5ÀápÀf³Áf³Áb±˜ûÈårÈårÈd2H$H$fï——‡œœdfd 55ÉÉÉˆ‹CXh(RSS‹ÛúÄŠ¨èù4lˆB__]»v…––jÕªõcrü\0ö¿K²²²†—/_âÁƒûğ÷gV³Oğ)är9ºtí\n®í;tÀO?ı„fÍš¡ÑG\0×®]jjßÖ5\"•JQPP€œœddd ))	>|@Dx86›]¦²*y¿«D‡Ë…±ñ\0èëë£cÇĞĞĞø1i~\0ûû5±ƒƒƒğìé3¸¹¹!%%™ê§“œÍfäDhß¾z k×®h×®-š7oF\ZıkV´‚‚dff\"11QQQÀDD„ƒÍfäÄ(4Å>(Vššš>|zõîÎ;ÿ0Ù\0ûû0³CBBğäÉc\\ºt	ii ärÅ‰\\ÚîÜ¥\rû@ à£]»öhŞ¼y™^e™L†ÔÔT4iÒä›¯ÒŸ#ùùùHJJBDD|ß¿‡×S/„û@.—++:M›6Ãè1£ahØÚÚÚ?ÌõÀş¶òáÃ<ş×¯_‡ïûwJ+s‰ÙÉb± “É1ÊÌ={¢K—.hÕªj×®]©ûbäÈß ­­\rtëÖı_Ù_ˆG`` |¼½áì|6[ikRz%\nEømäH uëÖ?&İ`½ÕÙßß·oßÆÅ`±XJfvÉÊÜ¸I>={ö‚¶¶6š6mZ­{&Mœ€Èår¬\\µ\ZãÇÿ×÷ejj*‚ƒƒ?*ÇkÈÎÌ„\\åJÎaÂÄI011ÇƒººúÉøØŸ/éééxşü9.99áÍëWJ°ØëÌGM\r“\'[ OŸb3²aÃ†_äşQQQğ÷÷‡­\r’’qàà!ôéÓç?æ›Æ“\'Opêä	f%WÕÇzúİ0nÜx Q£F?&ç`W]pÿş}ØÛÛ!#=\r2™\\Éd$\"˜4iÒä«=OZZ\Z¶mİŠ€À\0¸¸¸¢fÍšÿ¹>OMMÅû÷ïpçÎÜºySÉ*b±Xàp8hÚT³fÍ‚QÿşhÑ¢ÅÉúØKll,nß¾…û÷ƒÍf+L¬’•£U«Ö˜4y2\r\rÑ¶mÛoC““ƒßFŒÀæ-[şS«¶ª-HTT?~‡óç‘˜¹üÿWñÅ*—Ë±xÉ˜˜ş±ÿlÕ‡7nÀæĞÁN/™ÒŞ¹cŒ5\nzzzÿØÙ«¿¿N<…=ÖÖ•Rç_Ë••…×¯_ÃÙÙÜWòªs8ş\\´¦¦CÑªU«“ù°””Ü¼y{­­•\0]†9~ÂD>]»vı.ÜÜÜ`hhÈì3¥R)d2ãXJII­­-nİ¼ú\Z\ZØ¸qúôé‰D‚çÏA*“AMM\r‡ùc³ÙhĞ \Z6lˆºuë~wÙ\\R©puu…ÓÅ\0 4VD„eVËajjZm‡å`ÿË%\'\'Ø³{òòòTN’9sÇ!CĞ¡C‡üyóòò˜pÏøøxÄÇÇC,#88AAÈÈÈ€“Ó%hhh`Ê”)˜6m\Z\n±fõ*<dƒ&Mš`©¥%<y©D98l6À$vä29¤2zöì…;@K«5š7oMMM¨««£fÍšhÚ´)444Å÷­%<<7nÜÀq{;•Ê¸~}\rX-_ ^½z?€ı¿ 2™Ï=ÃÁ™LÆì¡K\0ıÇ¼y:tÚ´ióÍŸ¯¨¨¹¹¹HKMEBb\"\"\"Â€[7o2@’ËåŒó®©¦&x<>Ú´idffbÁüyxúì9c‚Ÿ:y?µiƒ 33			xôèÛÚÀÆÆšÍšA&“¡°°ÁÁÁˆû˜iööí[äææ0[‘’q‰D‚^½\rÑ¡Chkk£M›6èÜ¹ó7Qtt4ÜÜÜpìè€—8Ùºêè`Á‚…èÕ«s>şØÿA	\r\rÅÉ\'póæ\r@—LÜ™3gá·‘#ñóÏ?SE“œœŒğğp¼zõ\nwnßfò­K¯c\'môèÑÚÚÚ\r\rÅùsgaüohkk£víÚ\ng»çÎÅİ»ğô¹7êÖ­‹‚‚Ì;şù§B€ËÍ›7±fõ*xŞ»Æ«|¶ÂÂB†Ì!++éééHMMÅÍ7àãã\r9Ô8Ô¬YÌ[€éÓ§ÿ#ã\Z…kÎÎ8yò„Â¼àÃ†Ç´iÓÑ±cÇÿ`ÿO-dggãÚµkØk½GaàK\0m6z&Nœmmíoò<éééˆÆû÷ïáî~ş~~`³XH¥1â7L67‡§‡¢c¢qş¼455™ÕúÕ«W¸èè€†\rª<+ïĞ±#8jlÛ¶\ríÛµÃ³gÏ`hØººz\n×äƒˆ ‘HÊ|Nuuu¨««£Q£Føé§Ÿ˜Ï‰«W!‹‘€B±øß¶mÛbñ’%bj\nGG\\»zµ8ƒR©.×¯Ãõº–¯X¿ı†úõëÿ\0ö¿]|||`½g‚ƒƒ”L5ƒ˜3w.ôõõ¿ê3äææ\"66xõò%®_¿†š5kB&“Á°O¬Z½\Z\\.?ıôãmg³YØµs§B.5\0Ô«W„âsvUŠHOOC‡€›«–Y-ÇÎ]» ©©©Â%c”[U¤°°îèmØ\r\Z4@ƒ\rĞ¼yóÊ[(R)’’“¿Š÷ºsçÎØ°a#†\rcÇá…ÏsÈdrF‘ïÙ½.®.°²²ú×†çşÏ;--\rçÏŸÇ‰ãö•:‹æp8¨[·.Ö®[ccã¯’h ‹‘””„ĞĞPx{{ã‚£jÔ¨ñ1.Z~FF˜1c&Ú·o_f„ÚO?µ‡ÍF||¼Â5\r\Z4€\\.GJJJ™«ìêÕ«QXX»cÇœœ6›>}ú((0©T\n€T;77jjj*û&//ĞÑÑ©ŞŞÍÆÌ™3 ÓU£ÌÌÀçó¿hF‹ÅB·nİÀåráéé‰-›7A,C&“A*“!Àß³fÌÀ¬9s1iÒ¤2·!?€ıŠ··76mÚˆ¸ØX…UšÍfcæ¬Ù?~|•V™ªˆD\"ÁÁƒápşX,¤R)¦N†î=z ]»vX±b9ê××€Äb1ŠŠŠTF‘µlÙ >>NDõêÕƒL&C\\\\œÊûËårœ?woß‚fóæxşì\0B÷îİ•ööDÊÔI2™«V­Brr2Ú¶ı-[¶B‹-ĞLSM55‘””‹…víÚU«Øl6.ü€§§êÕ«s‹)022BÇ¿ØqbíÚµ1lØ0tëÖ\rqòä	&ØH*“ÁŞîîŞ½‹uëÖ)õÍ`g’““9l«àSSã€ÇÂÒÒzzz_åŞ)))xóæ\r._¾ïç \"lİ¶ÆÆÆ\n\"Úw€««^¿~„ø8´m×ãÇWÚû5iÒ2™‘J¶c§NˆŠŒTù1118lkƒ….Â¸ñãî±OWfy)…WZ8Ú´iƒÇ\"0À¿øŒ›ÅbR.‹Wz|V(§©©)0~Ü8dd¤ãÈa[Ø;\n¾@€ñã\'@__ÿ‹)Ş-Z`ñ’%èûË/°¶Şƒ@He2Èd2DF„cö¬˜¿àOLœ8ñ?u4öŸvpp0¶oß·o^3«t‰sl‰å2Œ=ú‹\\AAüııq÷î]\\pt\0›Í†@ Äæ-[Ñ½{w´lÙRak°k×.Ü½sıŒúC[[l...Ø»×\Z^^^ØcmÍ\0±~ıúèØ©Ş½}«<®ŞŞŞH$¨Q£†Â÷D™L†	\'–I(	ww¨«««4ÅMMMápî,Z¶j…İ»÷ °°)))HJJÂ7øÙqñ±±±ÈHOÃ½A(âùóçpttÀº5«!“Ë1qÒd˜™™¡S§N_d¬ôõõagg+W.cß_çš6‡â©—V­^ıÍ¨_]è_.r¹œÜÜÜHÀçŸÇ%®NWâêt%ŸGæôşıû/~Ïüü|ºwï>œø<.;–ÆŒM>ÂÃÃ•®/(( Q#G’®HHO<!©TÊ|—MÖ¯\']‘~·k×.âqu(77Wáó£GŸÇ¥ÌÌL¥{I$š1c=}úTås»»»“€Ç#ŸGÆÆı);;[å;nİº•z\ZôPúüÏ?ÿ¤qcÇ*¼Cudıúõ$àóŞA\"‘P`` ÙØØŸÇ%ŸK›7o¦7oŞD\"ùbã÷îİ;š4q\"	ø<f¾ğy\\âó¸tóæM’ËåÿvXĞ¿zÅÎÊÊ‚ÎŸ;«äñ7&NœøE6\nñüùs:x‘‘àòx8uú>|ˆÁh³QğññAûöíÍ\"55¬X¹\Zºuë¦ğ]ıúõ1eêT\\»æWWWŒ3†Y…;uê555ddd(¬¾-[´\0‡ÃAnn®’ãIMM\rÛ¶mÃRKKxyyÇãÃá &:\Z—.]BJJ2úôí9üııÊ?¾Ò{äççÃëÉcL˜0ñ³¢ÎRRRpıš3fÎš­ğüjjjèÒ¥ºté‚N:aù²¥¸|É	×®^PWæææèÙ³×gÇ¾=vçÏŸÃÑ#G “ÉÏùª•+€Ù³gÿ»¹Øş­\Z),,Œ,,Ì•´î/}ûª\\­>GÄb1=~ü˜&LOúº\"š0a<=~ü˜Äb±Âu¿ÿ>—SAAA•ÚÏÊÊ\"W‡ŒúıByyyÌç¯^½\"=‘^½z¥p½——éŠ„äïï_f›ÙÙÙtæÌ22êGBŸ|-^¼ˆîß»G………täğa•Ö@yòáÃ	tíÚµÏêOÒÓQ@@@™×¬Y³†zõ4 èèhrw¿K£F$=]\Z5’¼½½«}ï¢¢\"…şôòò\"CÃŞJÖŞ´iS)\"\"â_»bÿ+íååÅ˜N%ƒ!ğiÅŠ_áï%I¥&tQQ={ú”æÎ™ÃLª(ºDîß»Gúº\"zùòe•Ş\'>>|ışû\\’Éd)001ë+ó®iii”‘‘¡ğùÎ;‰«Ó•òóó+ıœ/_¾T©hª\"‰¤xë2ft™æuXXéŠ„tæÌ%åÚ·oÒÓÑ¦M›Tn{Ê™LFçIW$¤èèhæó¸¸8Z¶l)	Ê¦ù—^$¾•°ÿeÖœœœ0ïß™2‹555XY-ÇæÍ›VeI@@\0&Ošˆ¿şÚ‹ÂÂBÁRx{?ÇÜ¹s0oŞxöì)¶mßK—.£_¿~eÒóèêéA\"•ÂÍÕµÂg(ñ.€‡‡ÔÔÔ0|øgV£F •J\Z¢ğ[\r\r\r’““*öª©¡qãÆJçåi©©\nc•‘˜˜È‰Ğ¬Y³jaHHÂBC0mÚô2¶®9;ƒHAƒ)œÏ÷éÓ®®nX±r®^¹Œ1f£pìØ1$%%UêŞ‰wîÜˆğğáCæóV­ZaëÖmXºl9ÔÔÔşø}®\\¹\\¥Ê)ßƒük€]PP€ƒ`û¶­J¥ \"Æë}øÈQL67¯4«ˆ¿¿?âããñèá#¯²T*ÅË—/ñçÂ…˜÷ÇÈÊÊ†¹…X,\Z4h€ÌÌLÜ»wnnnx÷îR8fƒ\r0}ÆL8;_-3€$,,[·nÅï¿ÏÅ¡C‡påòeìµŞ¡Hccc…këÖ­‹>}ûâÅ‹\nLÅŞ}BddTµûsÂÄ‰èÕÛP¡İŠäõë×àp8ŸÔ‘““úè¥V%III8wî&M6WyäÕ AŒ7·nßÁÌÙspä°-0Æ•+W]î½ÕÕÕ±råJ^¾|©\0VuuuXXXÀÆö°CT*Ã–Í›qèĞ!ˆÿÁ°Ùÿä;--¬¬¬HXj?-àóhòäÉ^åö’’’èÉ“\'ôüùs…ıìRKKÒ	©WOº}û6³W<yÒG/-ôt…¤§+$]‘–,YBÉÉÉ\nm®ˆ\\]]TŞ{¹•éŠ„ÄçqI(à“®–-[J)))*¯ß¿?éŠ„”®`RºººÒÎ;L÷ªJnnn•¼Í‡mmiÌèÑŸ5–999ÔMO·Ì}úÙ³gIO$¤ĞĞĞJµ·bÅr\nø¤+Rß¾}ÈÓÓ“ŠŠŠÊİ\n6”FYæ»‡‡‡+yÍ…|­X±Ba¾gálÜ¸qã÷¬xâââ`eµ^O0«‹šš\ZF\Z…-[¶TÊôşTêÖ­‹6mÚ uëÖHOO‡——æÏûQQQøu	8¡P555øøøà¸½=ø|–X.ÅìÙs`j:…ExÜ½ƒ à`\Z4ˆ1+5j„{÷îÁßÏ#GR2u555áëë±XŒ¢WoCÉab2X¥YÜ¦MÔ®S­[·fˆX,´µµÑ½{wp8œj\"Ô¬Y³J¦¸H$—Çû¬à‘š5kBOOË–ZB³Y3´lÙ’	]MNNÆÒ¥–04ìƒI“&Uj;³{÷nÌ›¿\0sÿaaa8{æ4>Ä|@ç.]TzµÙl6{{CCCC‡UÙn£FĞ¿ddd ,4¤˜–‰ááaxïûß\"É÷îù61¤ä$³³³+W+WVÉÄd‰„š?>İ½{WA‹‡‡‡“®HHË—/§œœ¥³éY³f’®H ä¥½~í\ZééŠ(00På}óòò(##ƒ9/İ¼y3-\\°@éŸ®4ÿ%ñöö&³Q£hàÀ´iÓ&Ú¸q\r8€D>½xñBåo^½zE!!Á”““Cyyytùòe2èÑé·ÂÂB…˜†ë×¯©ttÎš5“®\\¹Rá3Ò‘#GH(à+8Õ†\\eÇİ¯øGñóó£İ»1 æquH(à‘³³óiÿîİ»$\n¨W/z÷îJ“öêÕ+dj:„ËlCOWHç>OLL$‘O¬Ô³Ğ”)Shê”)”””Dÿ+òúõk24ìMº\"!ñ¸:ÄçqÉÜÜ\\¥ÒNKK#ŸG\"¡€x\\âquH_O—Üİİ•®ëodD|—tEBš5kùùù)(È	ãÇ)xÅ+’+W®PÀ\'W‡w¯å×ıPQ!oß¾Ås¦JD‰3cÿC022úl\'Ü©S\'aì††Å‹—”ÉõÛo#1hI™¡™eı®yóæ1b$ìíaêÔ©:ÔªUÖÖÖØ°aŠŠŠğ_–˜˜<şÎÎÎ@ccŒ;999Xµr,,,”Âd 4$,#GB£FÁf³¡£ÓFFı®³±±AFF:._¹ŠŒôtÌ=“&>‡-ºuï‰DîGÆ™ÊŠ™™\Z6lˆ%‹1•Jsrr0~ÜXœ;ï\0@ğÃ¯ÌY©€Çc´c‰&¯êÙ°*‰ŠŠ¢yóş ]‘€„|íÚµë³Úsvv&=]={öLé»/|¨›¾.İ»w¯JÁÿu	§\rÖÓ_{÷RPPšºfõjêcØ»Ìíˆ££#:t¨Ü¶Ÿ>}Júz\"…óï””ºzõ*™›O¦E‹ş$OOÏjøøøŸÇUš›¯_¿şîúù»¢FzõêfLŸÆœ!²Y,¨««ãÔ™³àr¹ŸÕv~~>/^Œ>Ş8fgÌÌL¬Z¹VËW`Â„	UræåççÃQÃâÅ‹““WW7¥“‚‚¬[»2™{¬­¿*»©D\"X,Vú+**BQQQq¦[	]›\r‡ƒš5k¢fÍš¨U«–ÒŸªókŠŸŸ¦N±À2++Lœ¨ÚivíÚ5„…†b™•U™ÇhãÆAí:upîÜy¥°Ó/^`öÌáô™³ĞÕÕ­Ö³úúúbò¤‰ŸX“,œ:]ı6¿†|7¦ø›7oAÍfC£Aœ8qò‹dÜÔ©SÖÖÖÈÎÎfÈåııü°g÷.tèĞ¡ÂœÜ‚‚ØÙÙáÄßÇKl°Xlœ<uZeÖXíÚµ±ÇÚ\Z_¤är9²³³‘””$$$ >.ñññˆ‹Ã‡1Hş˜+]U/yÉ$mÖ¼9~ú©\rZkiAKK­´´Šs±›5CãÆQ¿~ı¯B\nXBDhl< Ìk„B6mÜ€şÆÆ*ÏÀ‘œœûã«Œ%WSSCÉ\n6cú4,]¶£F™•¹Í*Kø|>œ.]ÆŒéÓ››ó±0uêœ={B¡ğ»ÀÓw±bûûùaâÄ	Ìc³ÙhÔ¨1Nœ<ùÙÔ¿yyy`±X*;??óçÏÃ›W¯pãÖmhii•ÙNdd$Æ˜‚D*›ÅBí:u ¥Õ\ZÓ¦OÇ¯¿şúÅ‹Åååå!))	ÑÑÑ		¿¿?^¿z‰ììlàR©j•Ÿ;”%í~ªˆ\Z\Z\ZèÖ­;t¸\\hwê„ŸÛ¶E³fÍªŒò»H$*W)íÚµ/8`õšuèÖ­ã»ˆŠŠÂÌÓ1qÒd,_¾\\éw>|À°¡¦àØ²e+œ¯Âáü9ô0è‰uëÖWëÈ444Ó§OCvV&ärbúì¢Ó%tíÚõ°ÃÂÂ0qüxˆÅŒiÓ aCœ>}æ³@ıäÉ\\¹r^OC»sp¹\\Lš4I‰4663gÎ@›6?ãàÁƒe–¸•J¥puuÁ«W¯Ñ¹sg\Z45kÖÄºuëœœ„µk×ËåV;ë©¨¨ñññ		Á›7oàõä	¢¢\"Áf±@\0ˆä R\r^E@€\"8>…Šr¤ĞvY÷`ş\0È‰Ğ¾}ô64„H$‚¶¶6´´´¾ªŸ››‹­[·ÂÃı¤RC¦Áf³Q¯^=¸ºİPÊÏËËÃ¼yóğîí\\»î‚¶mÛ‚ˆàêê‚6 •–lmW‹™6,,S,,Š£é>Îİ:uêÀñÂE¥Ì¸ÿ)`ÇÅÅaê”)HNNbâ¾kÕR‡ƒãÅj\'ØËårØ;{{;tÕábıúõhÚ´)pÜŞ.®nJQìµŞ‹)S±xñâ*ïoOŸ>…cGÀÆæ0zö¬Ò¾?22¯_¿Æıû÷ğòÅ°Y,¥ºÑªÀUzµn×®~ú©\r455Ñ¨qchhh nİº¨U«ÔÕÕ¡¦¦Æ˜Ğr¹R©………‹ÅÈËË+6ñÓÒœ’ÌpŠ—°¦”¾OYÏSòÌ=zÀ¨¿tuõĞ®]»¯RZ¨¨¨?†§‡âğò…ÔÔÔ°Çz/~ıõW¥ë÷îµ†ÃùóØà úöí«ğİë×¯1}ÚT\0ÀÉS§«Å®Œ±cF+X›­´´pâÄÉ´ÜĞ?ìôôtÌŸ?ş~~¨Y,.\\tª6Q\\.ÇÙ3gpàÀ~´m×\'Obò}SRR0è×0·°ÀÒ¥Ë&ÊâE‹ğäÉcp8lÛ¾¦¦¦U¾···7:wî\\aùÜ¢¢\"„‡‡ãùóç¸yóB‚ƒ™g/=Ÿ‚X.—£g¯^Ğéªƒ¶íÚ¡U«–hÚT\r\Z4@:u ®®şÙ•9JŠ”€½d/	x{?g„*°—N*ÑîÜC‡-®(Ò¡ÃWYÉ###a>y2ô»uÃ¾}û”ŞßÍÕ7nÀüËä<†Õ²e\r\rÁ;1xğj9ÿ&}²•äó°±µıÇÊış#Î³‚‚lŞ´	şş¨ÙìbGTuA\r/¸{¸\0–-³RJâ—ËåÈÎÊVxıû÷ÃËë	œ¯]‡“ÓE¬]³\ZíÚµ«ò>ÉÀÀ ÜïñâÅ¸ººÂûù3•`.Ij€–-[¡ï/¿€Ïç¡}ûhÑ¢\Z6løU½ë%üêÔ©MMM…­D\"AVV___<yü		ñĞår9öÈ(­^½zcØğáèŞ½û%‘tttD~~,--•@íëë‹õë×aÀR½CØ\0\0 \0IDATÀ077/³Ÿş\'NœÀÚuk±zÕ*ÄÇ\'”y–^–ğx<œ8y\n3gL‡\\^LÚàçç‹-[¶`ûöí_…	÷»[±år9öìÙÇóç -û}ğ\r~ùå—/bª…‡‡C[[[a°]]]±ní\Zhµn\rsss¤¦¦áÍ›×I°eëV´mÛ™™™07Ÿ±XŒ‹>›×K.—#((wïÜÁß‡ÍV B.3›Å‚L.ÇàÁCĞÛĞ:::ĞÒÒúîÉõrrr‡€€\0xyyáîÛ*×³X,æİgÍšA&&èÜ¹ógyØ?z„%KañbK˜[X(|—ššŠqcÇ‚ÍaWjSSS±èÏ?áëûjjjñÛoX²Ä²Ê´È<ÀâEÎv‡‹)XºlÙ7/pøÍíàà€İ»v2ùÈjjjØ¼e+FŒñUî77W=rl6Ó¦Ï€\"\"\"`½{æş1¿ÿş;s}HH&Œ#ãØ±cGµ¼İ………xóæ\r®^½Š;·o1fîÿƒ™«¸¾ó˜±ãĞ·otíªƒ-Z|W.«\"D„ÄÄDøûûãÉ“Ç¸rùòGË!—“‚U\0\0ƒ‡˜ÂÌÌ\"‘¨Z}ìææ\nëİ{póöm…½|QQV®\\‰÷=qöœC…ñ¹¹9X¸p!Ş¼~‹VËĞ•ËÃ;* TFœ±iã…ù½jõ\ZŒ?ş›È7“‡*Ô|²·³ûj÷“H$´mÛVÒ×‘€Ï£;wî(Å\0ëŠ„J‘Hîîî¤+ÒÅ‹«t?±XL=¤Y³f‘ğrE·8ÕTÀçÑÂ…éÖ­[”ğEß5//²²²(99™\"\"\"(--ˆˆüııéÍ›×ôæõkz÷î1	(r¹œÒÓÓ«Ä¤RIHH 7nĞ‚˜÷æ}ì‹’xk!ŸGsçÎQI3U‘dffªŒÕ>~ü8éëéÒne&à”$çH¥RÚ¸q#ééŠèñãÇ\n	*BŸ\r{W+MóèÑ£Jó¼tûÿ©È³°°P˜\ZÅ88F™™aíÚu_uß(“Iááá‰ZµÔÑ¯Ÿ‘’WtÎìYØ½ÇZ‰ä 33ócIÖŠÓó¤R)|||púÔ)x{?‡\\&ƒüc·–˜¡µëÔÁô3Ñ¯_?tèĞ¡Úï,•JUşöèÑ£¸ÿ>’“¡V£´ZiaÎÜ¹000€®H\0‘H­´Z¡¨H‚æÍ›cùòåHKKÃ={‰D˜™FQQ^¼x---hjj¢nİºÕ¶$d2ÂÂÂğàÁüı·=ŠÄ…\nÛ6›6›ƒ½zaÚÔièÖ½{µûæşıûX¶ÔææXbi©òš´´4÷7Â_ûö#))	YïÁŠU«1vìX%o÷øqca2x6lØP%¿D\"ÁæM›àâr2™Œq‚^»îòÍÁ¾	°³²²0}ú4„…†2%`Eºº°µ=üæµ8q¶6qÈæ0z÷î]­6|}}qúÔ)xx¸+šÃAç.]`nn^½zU«{VV¢££ñæÍk¼zõ\Zññq˜6m\Z†\r®4a‰û÷íC«V­0÷÷ßÁáp——‹pu»¶mÛ*üÆÎÎ¯_½Â!ÄÇÇcÄğapquƒ¦¦&¬­­„””´nİ\Z»tÁüùó‹°ÙÕ2ŸSSSñìéSœ9{¡!!JOÙl™ÁÔ©S«B¼dñbDFEÁÁÁ¡L fdd oCæ=¦L™Z¦prrÂ®Û1Ät(Ö®[W%\'Xvv6şøıwøú¾gæ|ç.]ğ÷ß\'¾	ûéW\'ZËåØ½{zy1puuuØÙWY,îK+”ÂÂB•\0«eK!“Éa¹ti•Ï\\ãããqü¸=Ö¯[‡ğğ°âIúĞjjjèa`€å+VbŞ¼yàñx•j_\"‘ 992™Œyfü1wûôÅğáÃ!éÂj™%~ûm¤‚R,ñf‡†…!\'\'‡9³-,,ÄÕ«Wó!oß¾Å³gÏ •JÑ¶m[áØÑ#ĞĞh€6mÚ`Ş¼ùhÔ¨jÕªõÑ²h3gNÃzï^4iÒmÛ¶ÅíÛ‘™•ÄÅÅ!++«ÒN¦:uê óÇc0>_€Ô´T$%%1Vœ\\^LfpõÊáçŸ®’âoÒ¤	†^n•™L†7o ?/FFı±jõj•Â‡pòäIÄÄÄ ,,ééĞÓÓ«´BSWWG÷îİáàp@q•Œôtäææ¡oß¾_ß—òµmı«W¯|²ßà}}lU$\"\"‚lmméô©SäååEN...Ln¯ûİ»UŞG»¸¸«£@Sœ/Î§)S,èáÃ‡UŞ3úøøĞ¸qãh€qâó¸ä|õ*3hòy\\†U5  €ø<n™TJdµl™Â^´§Arrr¢GÑıû÷ Ş½{÷‘¡“O666\nf×¯_£™3f(¼;«C/^ø0<®ó›œœœ*½wAA=xğ€,ÌÍòK¨¯x\\ruu­r_–\'r¹œfÎ˜AıŒ(55µÌyÓï—¾$ğÉÏÏ—îÜ¹Cúº\"²´´¤ÂÂÂ*İïÙ³gJûíëŸIßü-øûû+òF	øJ¤_[är9…††Ò…hÅŠdü8, ·oßV©­   Z°`ÁÇIØUa2˜îÜ¹Si\'Tff&smhh(	|òöö¦ÜÜ\\òóó#‘PÀ0‰Lœ8‘–/·\"sss	äååUf»7nÜ éÓ¦1ÿ§§§Ÿ«£DàPXXHöövŒs(!!DB½{÷¹fûömdkcÃüI—²²²H,S÷nú$äó(..ˆˆ–.]J·nİªòåååÑ­[·ÈÄdJe¹páB\nş¢‹MYbBCC¨›¾	ø<ŞöË—.‘®ˆ>\\åû={VÜ>¯LvïØYYY4jÔHâÔÂ>V®\\ùSüˆÅbÊÉÉ©R‰\Z±XL/^P*#TÂ=}îìÙJ{OèÔ©S4hĞ¯äççKDDövv´råJ%ïîÔ©S‰¨¸ÔÏâÅ‹($8˜¬­­iŠ…………©lßÓÓ“ø<.ó~©©©$àóhöìÙ´víZÚ¸q#ÙÚØT*¥%K“……9½{÷<==H(àQLL£GIwKY4îîwÉÔtCSôÛˆ4yòdòòò\"±XL|W™$>>bcc+]2\'--Îœ9£Ä_B$éääôEVï²\'00ñà)}oggGúz¢*+/‰DBVVËHğñø<.3º\\*¬ï–AÅŞŞáaa×Ôl†¥K—~Uxe÷>UqüDEEá¯¿şÂ£‡”Êı6r$¦M›^©’²R©Çííááá!¦CpæÌY&\n«F\ZÈÍÍU¸¾G8°€bÁ€€\0tÒÖÆ’%KpäÈŒm†N—”RZ;uê„í;v0ÿ×¯_.¡  \0‰r™l[·nÃµk×`oo:uêàï§˜sÛ¬¬,DFF0)®\0ğòå+\Zd\0¸qã¦N›‹??_¨©©¡sç.hÓ¦\ròóó±oß>\\¼àˆ-Z¢s—.°´´¬°Ÿ\Z7n\Z\Zâä‰puuQ(¿³më<}ú‹/®VÒFé€UNPóÉ¨[¯Î;‡öí•¦M›†ĞĞ¬^µZZZàóù•º_	ï½÷so¤§§A.—#$8öööX²dÉ¿gıøñc¥}EuP²³³ÉÁÁ¼¼¼¾y±4OO¥ÕCÀçQß¾}èş½{U¢ş•Ëå´víZZ²d1c~Ş¿Ÿ¤R)’H(`LZ¢â28ÆÆı‰¨˜ÔQ(à3V\\.§ÀÀÀ2÷Ù_BrrrÈÅÅ…²²²Ó]Àç’——Ÿ«CqqqBcF¦yóş`øèvíÚEcÇŒ¡ääd†tPÀçUéLX*•’§§\'\ZöVY<¯*Ì4É›×¯I$àÓ€ÆU¡U1bøpêchXå8\nm¡€ÿÕ*|q`§¤¤¡aoÆ\"ğè¸½}µÚ’Éd´mÛ6ê¦¯§DZ÷5%77—lll:%û½;vT›p0::šø<.9r˜†LÛ·og¸Ë·lÙB½z\Z»»;cö—”Ò‹ÅñR\'Ñıû÷)++‹‚‚‚hø°¡ŒàquHÈçQJJ\neddPÀWÚ/Y¼˜ÙzTEiÛ¶m*ÇâÈ‘Ã\nµÎª#/||H$ĞĞ¡¦ôáÃ‡2•\\TT³½‰‰‰¡Ş½zÑœÙ³«ØsìØ1Ü<®ıÒ·Hô]{Ë–-Œ†åó¸4eŠE•‹Ô•È…H_WDNNNßlÇÆÆÒ¼y¨\\%<<<*ü}||<]¾|™îÜ¹£rÒ­\\¹’ŒŒú)i{±XLÎÎWÉÊÊŠ<ø]ÓÛ2+9ÑìÙ³iğ`\"\"òõõ%W‡är9åççÓîİ»É××—\n\n\nª]zW.—“»»»r½6>,X `éTE>}Jº\"!3¦ÜÕ÷ıû÷ÔM_—,X@!!!ôîİ;âquHW$$kë=Uºg~~>M<™yŸG;vìø¾ı©	.àóªíÍ,©(ù×Ş½ßlÂ¾}û–~éÛ÷óâÉSÍÉÉ‰Ó–-[h¨©)Í™=[©øßÛ·o©›¾^•ª\\~ï’œœÌ(¢’ƒ%`{öô)‰„|:^õiHpp099]¬8###iŞ¼?ÌY>KıúU¹ú‹>¤§+$s¥j.ªÁ®®®d2h	|âó¸´xñ\":pà\0éé\néêÕ+Uºw‰“îkšä_ØôëÀ¥Lğ²³\"‰ˆgÎ™—/·*“×ûKï§KÎNK›{vvv•2·öïßOBŸÙ÷æåå‘‰‰	=zTi{ñëÀtâÄ‰o<™LFR©”¤Rég•ª¬\\¾|‰\r{ÓÍ›7éñãÇJGGÌ>Z\"!=]]¼x‘–.]Z¡ò,é×^©c1ŸG÷«°ï¾zõ*=šÒÒR«äwX·v-‰„ŠŒŒ$\"¢M›6‘®^øøT©Îœ9ÃT÷äquhÈàÁ\nVĞçÊ)µµµ…İ±£ÉdÅ!£\"]ØÙÛW95333gÌ@VVfÏ™ƒíÛ¶¢víÚ°?şw¥½U•K—.aÛÖ-Lˆc	óäŞ¿öcàÀ•j#..¦CãÒå+Œ§º„uõñ/…0Â€€\0\0ø¬Üó’¨¾ÜÜ\\dee!==ùËHOGVv23³ŸŸÂBq©òH5PK]µj×FÃ†\rĞ@£\Z5nŒ&£QãÆhÜ¸1\Z4h€zõê}VZåÛ·oàêê†¨ÈHôéÛW‰è ))	¾¾¾X²xœ.]†­­-ÌÌÌ”böËwww,[jÉä´—œT¬[¿£G®ğ÷			àp8eV•Éd*‰+2220bøp1Ë—¯@NNæÎ™ÿ\0?¸¹İ¬t6XAAfÎœ	¿!§ü1¿ÿñÇ÷+ˆ	ãÇ1“‡ÃáÀñÂÅ*O\\©TŠõë×ãö­›8yê4„B!1Ş<df¦cûê1\\”^X/~ˆI³c³ÙhÑ¢%ö8Pîó‡‡‡ãÈáÃËåXfe…V­Zá¸½=<ïyâÜ¹óàp8(((€Aî¸qóV•ÓÿÊÊGtt4ÂÂB„woß 33“á\"£Ri”¥Î>Pòï§œh_ÚÇß\Z6l‘®ºví‚:¢mÛ¶hÙ²å‹ëÿş=Ì\'OÂ(33<yò:tÄÀ1bÄˆ*-~~~X¼x’“’˜#1555,üs¦OŸ^-Å$•Jaog‡ÀÀ@¬X¹R%Áåa[[ØÛÛáæ­ÛhÙ²%bbb0bø0p¹<=v¬Òıäçç‡É“&*àÆéÒetîÜùŸ—J¥X·nb?|`²¶æÌ[fÁ³òäôéÓ¸àx›6oeH4551ÄÔ±qñ8ñ÷ß`±ØàñxŸ}.‘H`kc;»c¨9zàÀÁƒefáH$ÜºuË–-…¹…²²³qóÆ\r:´µ±kçN„BhiiáÊ•+ÈHOÇdsój=¯D\"Á‡ğüùs\\¼x;vl/N8¹{/_¾DTd\nÄâÿµ.EW¤øWÜ^^n.ˆŠßóÓkJÿV,#:2¯^½‚Çİ»prr‚Û\r7ÄÆÆ\"//5jÔ@İºu«MÅd½g~ûHfğúõkL˜0¦¦¦Uî£fÍšaÀ€\n\nBRb\"ÃâòòÅHe2èëëWÜ			°´\\‚èèh|ø“AJmDDFâéÓ\'b:ššÅôTúİºáÔ©“ÈÈÌD¯^½*Õ7Íš5ƒD\"ÅÛ·o«#1!&&&ŸMóüÙÀ¾wÏ\'Oœ`ÒÓš5k­[·UÙ¿ÿ>¶nÙŒiÓgÀâFŒºuë¢ÿş¨Q£&9ŒÔÔTôêÕ«Úà.**ÂpæÌiP:›·l)39…ˆ°wï^ìûk/îº{@(¢¨¨i©©0êßêêêhÓæg,]²¯ß¼AnN¶lİV¥l™L†ˆˆ¸»»ãĞ¡ƒ°Ş³îğóóE^nnq‰™Ò\\ci¥Øl68l6XY\0 y‹Ğj¥…Ä„äää _¿~ \"ÄÅÅ¡aÃ†hª©‰‚ü|…ß2ÁÁ^r¯¼Ü\\øûùÁÓÃçñş½/\n\nòQ«Vm4hĞ JQÃÁµë×Àçó	§‹!“ÉªÅÉ­¡¡###$&&!\"<œ÷»·oQ 3I+\r·oİ.Îª‹ŠÂÄ‰“˜kÅb1ll!îC,fÌœÅŒ­––š5k{»cè×¯_™&ş§¢­­\rçkÎTĞqq±èÒµk¥‚¾š)\r³Q£”T¬-ÕÔÔ°÷¯}0`@•Ú)((€©é°À‚‹«k™”@vvv°9tl6W®:W‹X\"‘`ß¾}p8®Ë&NÆ¢E‹Ê¤föoŞ`êÔ)¸rõ*âã°øÏ…03C‡E×®]Ááp°gÏ÷ï½zUú¹RRRğòåKÜ¼y>`öĞTÁ¡L&CoÃ>èÔ©Z·ÖBófÍ–Ò†\r\";;Ç‡›«–,±Ä´éÓÖãÁƒ˜5{FŒ¹\\Ä„$%\'áÃ‡X„††àÙÓ§ ¨âÂ~Fıajj\n}}ıJgìİ¿gÏAì‡XÔª]vvöJYYiii¸{÷.Ğ§OôèÑ£Ü9´oß>8]pT Ü²˜2‹-ªÒ\"àããƒ¥––ÈÊÊÄ1;{èêê‚Íf#>¾ØjtsuÁ`Ó¡Øºu«‚B#\"L:Í›5Ç®İ»+­ìîŞ½ƒåVVJ¥`±XĞÒjK—/ÖÖç³ìÙë×¯#5%™af44ì£²h^\\\\!—ËÑ¬Y34mÚThşêÕ«ÈÎÊÂ!• &\"\\½z‡mm˜ÔÏØØX¨©©¡°°‰………(*,_ÀGİºõÊ\\\rmúÔj˜>}æÍŸ_);‘®.V®ZqcÇbä(3Ø>LŸ67½=V¯^]é>\r	»‡;>‡ı±è›j‚ÃvíÚ£·¡!Ú~$ì×ĞĞP9iÃÃÃ±×Ú\Zù¸ê|Q‚­Zµ‚ıq8:8`Ïİ\0€3f(ø¤R)²³³‘””„¨¨¨Ä…ÍŒGiâÂ÷ïáÑÃPSSÃÌY³ğë¯ƒĞ±cÇrß»ÿşè×¯ÂÂÂ`mm­ÄæYBòÿK?#ôíÓë×¯ÃÔ©SË,T»vm,[¶µkÕÂéÓ§ •J!•JqöÌiÔ¨Q,¨4Ğzôè‰\'ÂŞŞó~Ÿ‹¦Íš¡^½úˆ‡ÃAÛöíñçŸ*µÇb±0h	öıµ*éU‰±ñ\0ô0è‰çÏ~T²ñpuu­Tğ/¾b\'&&bĞ¯§‡Ãƒã&Aˆ‡ópuq‡ÃLVLò.‰ ¯§_úõCíÚµ1yÒDŒ3k×®Uy¯ÜÜ\\ôû¥oq¬³\\æ-Z ~½úPWWGıúõQ·^=hhh ^½z˜5kV™äuvvv8lk£\0êY³çà?şPi®I¥R¸»»ƒˆ`llÌl/$	fÍš…^½z1|iiiiHHH€¶¶6jÖ¬YQ/|}}áììŒ«W.3JçÓÕˆ0ğ×AèÛ·/¸\\.´´´*¬¼QXXgggìÚ¹––Ka1eŠ’3­DQDEEaë–-¸uë&ìÿ\r“2ÍÖ¼¼<ÄÆÆÂßß?‚§‡X,–’UQòû1cÇaäÈ‘àñxæ‹Åb¨««3×ÂÂÜúİºÁÊÊ\nl6‰‰‰l27nŞ*·b‹T*Åa[[œ8ñ·Â8/üsfÎœYiKtö¬YX¹jüııqï\'âãâÑ¶m[õ7Â A&hÜ¸±Ò}===±sçd¤§CMM\r7oİ®´IîëëóÉ“ò<<ïUŸÕµºçdûöícÙ|mÛ¶UáûÌÌL22êGúº\"š?>½zõŠÒÒR)==âââ(44”¼½½©WO\Z=ÚŒ233+\0‰§´´4ÊÉÉ¡‚‚’H$•¿pá‚Rüúş}ûÊ†ÊÎÎf¢†ššÒ“\'O˜ëcccIW$$OOÏ*õ›ŸŸ­]»F)S¬¤|Í3‡®_¿F111U:wŒŒ¤óçÓÌÓ)\"\"\\!rKÕs¦zú4é\n´|ùòJÕ–ÉdM×®]£Ù³g3ÏÍı„ÓLÀçÑºµkUa—\'ïß¿\'>«ıTPP@fff•\nx’H$´wï^¥¸ìK—.UúŒyáÂ…\nqëåEÎEFF’••éë‰hÙÒ¥tïŞ=ğy´aıú*½÷æÍ›™0ŸWauÑ/ Å<@É –¤û}\Z7îééIR©”>|ø@\'O¤åË­èï¿ÿ¦{÷î1sçÌùª	\rîîîJq;vì¨T\né†õëéìÙ³ôüù3\Z1|8Í›7Ş¼yCDDwîÜ¡ë×¯WºÏvïŞ­è’à\nW‡lmmÈßß¿Ê1á2™ŒnŞ¼I\"¡€Î=[! U;,,Œ¦N± V-[Ğ\r7·J§×‘¿¿?:tHá]>¸µµu¥‹Í¿|ù’I€ù4†¿²}STTD[·nUŠğªH§¥¥Uš|P,“óÕ«$ğI(à“‹‹ó|.\\ }==|øğ‹ãê«{çÎ\n«µ­­m¹×ßºu‹tE22êÇLÜĞĞP	4|ØPfğ=<<ªO\\^˜héÁğy´bÅŠJÇ¯?}ú”&ODb±˜6lXOŒ…R™Õ4\'\'‡™wT$à‘É AäääTíèºÄÄDÚ°aÍš9ƒ‰†ª,¨UüïãÇIÀç‘•Õ²J±DèâÅ4pà@~ğ…vñâ…\nóóòòÈÌÌŒ)((ˆ<y¢Ò2/7c,??Ÿ¬¬¬˜~/aŠ-/üôùóç4fôhÊÈÈ(÷ƒ‚‚hîÜ9¤¯\'¢Õ«V)õ•X,¦éÓ§Q##ÊÎÎ®t<xP[{vïş6ÀˆˆPLPÁÎñiÂÀšÕ«I(à3ñÀr¹œìììhÑŸRbb\"EDD0´fÍê*O¨ò:zõ4`&ŸÇ¥éÓ§•º—’’¢ğ>¹¹¹dlÜŸÆCG¡¢¢\"Š‹‹«T’Æë×¯iòäÉ\nÖBÉ€ı:p ]¿~­Â	TQlşÀÆäP*t·ª€Vîàà š<i\"µjÙœÜª°z—Hzz:9;;Ó\0cc%](à‘……9cõ”%III´bÅ\nF—(ü¼¼<züø1ÍŸ?Ÿ„>­Y³¦ÜíXff&M™2…±’x\\24ìMñññå*„²$77—ÎŸ?O\"¡€|¹»»—¹…††’®HH§Nª’rü4M¸2¡¶Ÿ\rìs²ä¦Ç¯ğ7R©TÅ+¸PšH,ÓÕRf««k•ù¥>Õú3gÎPĞ_,3‹G,Óıû™•uıúõ”ö‘kÛ¶­´xñ¢Jß;;;›ìíí”ÌÒâUK‡>+U/##ƒ<H³gÏ¢èRƒş9 Vğ£GŸ«CVVVÕš\\iiitşüyâót>É–ÓaæNeVo©TJ			äèèHcÇŒ¡9³g“‡‡M<‰Î9SásÄÇÇ“‘Q??»\Z)—ïß¿§	Æ“®ˆ¶mÛV®rÈÊÊbòĞ|^™)¡ªÄÎÎNc{«‘U%`ÇÄÄ(í«š›,‹iÈÁ4eŠ…Ê• \"\"‚–-[Júz\"úsáÂ2)€*’¿şú«”	V<‘TÌ—Èİ»iÍšÕ”œœLÑÑÑ4oŞ<\Z7n‰Åbzûö-ñyÜJÑòÒ”)S7%	%»wï®Ò\0—µµ˜8q]¸àøÅ­\nÜşşş4~ÜXjÕ¢9¹ººV‹Ú*&&†vîÜ©DX(äóhÚÔ©:ÄJ¸ÖfÍšI|—BCB(%%…ø<n¥d	ÿ^	WÏ£Tz‘°··#]‘ºéë•»ÿ–H$ôğáC\Z`lLº\"!-·²¢núz´qã†*m¯>¥†ŠızÀ¶µµUĞ$vvÇª<È>$=]ù”“\r#‘HèÖ­[L†—““S•´ëİ»w•<àå9MJ:²´g>??Ÿ†5¥ë×®‘X,&OOÏ\n\'uÉ3×B¿\0\0 \0IDATjJ63ûlfÖüü|:sæÍ3[Á¡ò5@ı)Àår9Ù:H:]»T{õ.Ş¿>£Q£F*åºx\\¥*-¥E.—3>ˆ·oßÒ˜1£iÎœÙtøßNHHH¹Î5wwó¢9ö!ÁÁ¤¯§Kû÷í+“Ù”¨˜AvÉ’%¤§+¢qãÆ’··7Éd2rtt$=]=yò¤Ò}uøğa¬;vôë\0;%%…ôõt¤<S¤,ÀN<‰~éÛ·Rér±±±´qãFÒ×Ñ´iS+ulI|WÁåØ±òP\\\\	ø<%–££#YZZV\nt‡R˜4%Î±#GTx”WáÄ\n	¡æÓ¥R„_ĞªVïwïŞÑh³QÔò3VïŒŒ²µµQr®	|²µµ©”÷ğğ =]‘Â*æèè D/¥0¥\'WG‰€Q•|øğ¡Ü|é„„:xğ éŠ„$àóÈÅÅEd#7\'‡†L½z\ZPn%	ccc}=İr•Ê§RéXq7WW<xğ€Iô˜6}\r\ZT¥3ó7oŞà¸½\nÅpw÷@ƒ†\r¡©©Yf§††úõë‡Î]ºàÄßÇqıº3¤Rx<Ê(±ÂÂB¬Zµq±±¥¢áúbÅÊ•å†Ö«W!¡!xêõ}ûöE\Z5@D8zôŒ K—.å†‚nÚ´	W.;1UÙl6\Z7n‚ıbÔ¨QÕ.£*•Jáææ†3gNcÍšµèÙ³§ŠÌ­o\'-Z´€ÙèÑ¨Q³vîØ˜±ĞÖÖ®°&xi©U«ºwïP„Ç£¨¨ˆ‰d{óæ5bbb §§Wn…+W®@³Y3Œ3EEE°±9›C‡àxáb…%tø|>|}ıË$^DEEaP9Á9\Z\Z\Z*³óòòòpóæMÌœ1ïŞ½Åœ¹s±cÇNèéé)ÌÏš5kâ§ŸÚàÆ\r7tì¤]aT^É=sórá÷ş}ñxáçŸ®|Æde÷Cf4¬€Ï«òŞW&“Ñ‚ÈdĞ zôèYZZ’®ø<.9:8TxÜ“””D§OŸ¢\'O”¹×={æŒŸTy{“ÂÂBruu¥GÏÓÒÒhôh3\Z`lL\'Oœ ĞòåËËİWGFF*™–B>–ZZV›®§´ÆŞºu+9;_ıGVéŠVï×¯^Ñ˜ÑfÔ¥³6¹ººTËÑK‹/V:;fL¹«è…(88˜rssiéRK\ZlbR¥=h‰¯¨4)ˆCHAd2=}ú”~ûméëŠÈÊÊJ%]ñ§ä)S,høğa•¦PV°.†Vé-i¥€ıèÑ#ÆÌäó¸´ÜÊªZNŸnúztùòef’úùùÑ–-[HWTğãÇWû¨+((H)¡,&K™LF6¬§™3‹1/_¾PğÌoÙ²…\\\\\\Ê€€€\024ìı	Ÿ;Vm·ÒÇE\"‘vlßş]úSpgee‘±qêÒY›şúë¯jû9¬°áó¸ôKß¾å‚%==&Nœ@ëÖ­«ÖVGUĞRHHH…¿ËÌÌ¤5kV“®ˆ†UŒF¬Ìñ¤¾n¥+oÊår²´´dæ˜PÀ/·XD•€-“ÉháÂ…ÿß8¿z%zÒÒÒ(,,L¥Æ	£)S,H$H( ={vSH¸ÒÄb1MŸ6M nûöme^âÄ	Ú¸q#ãhë¦¯GÓ¦M¥TúØ£´Æ/aétssû\"çïñññÄãêĞÏm~¢qcÇ¯¯ïwğÒ“t¨©)iwêH|—æÏŸ÷Yï\\Rv‰9’úhq•Ålš——GK/.³sJJ\n]¼x¡\\å¼yófâÍY³fVhyøûû“®HH—.]ªğ¨îÓ¹.‹iøğa4eŠE¥•ÁÓ§OÕ%KW*ŒºB`‡……)˜fff_´–R‰ØÛÙÑ¸qãèôéÓ$àóHW$¤µkÖĞÛ·o+tÒ\\¾t‰yyW‡ŒŒú•yâííMúzºCb±˜ÆŒC7oüwßÖTÚ¼}Ÿ“z/¢ ØQ:vì]±î®úÚ{ïeík/kïì`ïŠ‚¥«€téM:$9çû#ä˜Äİı}s]{í®œúÌ33÷ÌÜó~ıú5mgkS/ (M©m¬­\Z•ŒN¨ØV–èæ¦&´E»¶ôşıûÄ÷ßTè¢¢Bzıúuts3ÚÜ¬9mmeI[[YÒ3fLÿé)/ïŞ½“à«K¹KKKi7·ôİ»>Ş¡­5½pÁ‚:I#%©²mnôº2(õy•!!!ô†\rëéáÃ†ÑkÖ¬çóäÉº“ƒ=C-]ŸTTTĞn#Fˆ„ÁVóÜ¤ØgjJ…Öú–œ…ôÒŠ6bbbè¤¤$©»âüùów.//¾uëmmeIwêhOÏñğÉ$™‘‘!á×UŸ›ŸŸOïß¿:t½hÑBÚ§f@Z~~>mkc]g^>&&FªR‹Î»j ¢?®aÑ®-mÜÄv>Œ\núÇ­·h:¯—³mÜÄˆîĞŞB,0aÂ?UP$ª”ÒŞ±¬\\wNNİµKg:33“ær¹ô•+Wh{;úöíÛÌ;*)‘]ÒùêÕ+‰0 ¡å½EÑ§OŸ¢;:Ø3ÍCöv¶´µƒ¹”––Ò½œé…ÊİÀtıúu±Ô×…óçëıM\rª¥¥¥ğô¼Ê´fR4NN\nîİ¿w“\'ÿ‡ÿ\r÷‘nX´p!RRRÄˆíŞ¾ñ…««\0Á8ÔÑ£Gã]@ vîÚƒ¹óæI´É	åìÙ3L»I’pqqeFÈJ===,^¼S¦L…ßÛ·ĞÒÒByy9–,YŒ­[·Él³KMMÅ´©SÂá8à7oÁÖÖ¶QÑgAëÁ àl6†ˆŠŠÂï¿ÿ†­[· ´´TŒtáWˆğüÙÙÙX²xfÎ˜´´4Hô\"WTTŠµ6Tìììpíú\ræÚÂ÷=sÆ|ıúUâxCCC<{ş¥¥¥X¼x1NŸ:	¯k×1jÔ(äää`ñ¢EX¼h1³†kKŸ>}0dèPæy‚Àùóçtï×®]ÃÑ#Gpğà!ø¾y‹gÏ_`ê´é`³ÙxñâÃ´`áBøû½Å—/_ä:¯“““	¡(\n^^^(++«ó7d}=¢ù¹¹LêhÌØquÎ–Öw|òÄ	lÜ¸{÷îÃÑ£ÇpöÜybıúuMÏâÅ‹@@UUµä?`À\0X[[KMEDEEáæbÊcÎœz;A7nŸ8‰Å‹ÂÕe8lmm1ÂÍMêñyyyX²d1JKK¥&—¯\\­3ÖP‘–Î¢i\ZZZZàp88vôFºÀëW¯Äú«[©àÖ­›áê‚ë×¯CKKjjjRï¯ ?\\.·Q®mii)¡Ü……X¶l\n\n\n$×ÖÖFDDğäé3XXXàùóçøı·ñhÙ²%TÕÔğğáC™Ï9wî<±MÕËó*>ş¬Ğ=\'%%a×Î¿póÖ-8÷ê===ÃÃÃÍ››1$\0Ğ¿ğx<xyzÊuîfÍšÁm¤;Ó£Ÿ•™QïıÕ™Ç¾pá>ş$È]“$/Y*6¤­>‰ŠŠÂ¦MbåªÕŒmÖ¬ÊÊÊğâÙ3äæå!  \0vvö Yl=ü7š›™£mÛ¶råx7mÚ„´´¯«ÆbaÅªÕpRÀ£011ÁàÁCÀãñ±`Á©¹îÊÊJ¬[·á¡{I’¸êéÅJ4¶âš——T\"IêêêÈÎÎ†··7²2³Ğ©&ïÛ\n.T¦””,_¾‡ÿş\\.·NŞ6¡òMœ4©Á9{i–Ø±gOøøx3[aAÒÒÒĞ·o_‰oÕ¾}{ôéÓ¹¹¹Ø²e3N?‹…cÇOÀÉÉ	Ó¦N›ÛH©=ÚÚÚPSWÇû  fˆdNvB¤‚[·nÁÔ©ÓĞÃÑQ‚C-::\Z¦&&èØ©Ãö¢¢¢‚Ë—/ağ!rÕ¨ªªâÑƒ h\Z ¨k¨×é™Ê¼ë¼¼<Üõñf³¾¡!¬\\ÈÏŸ=EQ\nĞ¬™	’DZÚWlÚ´	8pà\0ºtí†µkV#33³Şs!8(¹¿f&¦9r¤Ôc}||.õïZµj…åË—ËœÀyâÄ	ø½õŸO1Šuâä©_Æq.¯EWWW‡ºº:.]ºWWÜ¿wï§­·ğ·çÏŸƒÛW<yôºººPQQ©³(†¦iT”—7šÅuËŸ8	Vrñù|¼~õ§N’ºá•——aèAPWWÇ«×¾øã	8sæL\r‹hÊ¼–»»;Œ›5cXaŞ½óÇû÷ïåºÏÌÌL¤¦~ÅĞaÃ¤†pèÕ»·ØŸ64MáÎíÛr]ÃÚÚ\ZºúúÌıùx{Kõ^êUì¨ÈHğj>I’;f,ÔeÊ¢»ñòòA@lw---Å“\'Ğ˜?£Pêêêéî6‹…ÈÈˆzé9,ÆÇ¼tÙ2™|i4MaÊäÉØ¹s\'²²²ä~†GáÂùsLE›ÍÆö¡‡$…¿RH’„²²²0gæÍ›‹ŒŒo\nÇŞÂã£££ñûï¿aíš5¨¨¨€®\\Cê9H¢Ñ\0±eë6f\rñx|œ=s\ZOŸ>•8V]]›6oEu5zzz˜>c<¯^Áü/±±°··¯³ÒkéÒeLÈÇçóqìØQTWW×{!!!˜:uŠXµYAAöíÛ—áÃSã]‰âJMš4Áä)Ópùò%¹Ö¤¦¦&FÃxU••øø1JqÅ~õúµÀì×ˆ¢ Yuu5Æÿö;fÎò`˜+)ŠÂğùÓ\'XYÛÀÚÚZì7jjj ”””Öyî€€\0ÄÄÄ0ñ®­­ÃC.mÑº»‚ÿ»\04mÚóæÎÅı{÷êâââ°fõª¼Y,<<æÀÅÅå±ÈŠ«ª* \0ö¾s#\\]áåå)·õ&<ÿ}£G¹ÃßÏúúúàp8\n–®I“nn˜1sØ5JÇãñ°rÅr$$$Hëææ†oßÒñàÁ@‰ÃÁòå+àíãS/¥oïŞ½Ñ¡C&´øôñcV^(i_¿ÂÑ±§ØŸ)))áÂùså5Ï«?n,rrr˜cF\Z\0xøà\\ïAÔõ¦h\Z¯_½VL±k»áææòÅ½µwÀ•+WÂÃÃŒbwëÖ\r+W­Æ¬Y³%\01 @×y­ªª*f”ÀZ“ğ˜3G*`VVÂÂÂğşı{|üøfffhÚ¬)6oŞ—áÈÍÍ•z²²2üùçFfa³H½úôÅÔiÓşK,Á­OAõõõñıûw,[ºS&OFbb¢Lë-üó>`Ô(wüµc3¤¡RUUõËŞÉÌ™3áÔ«7c±hšÆ¦M›P^^.áÅìŞ½;ÿÚáC‡`È¡èÔ©ôôô––†Í›6áÍ›7R¯¡¬¬Œ¹óæ‹YíÓ§OÕiµiš†ÛÈ‘YMMM¼õóÇ½ûpòÔiôé×\\n52€™™º÷èôoér½ƒ¶mÛ¢™‰	ã?xp_¦;.µ3\"&&,’¯f×p×FEØl¶ÌÆ‘„„œ>u=œ$,¹¨„††2Öš$	Ø;tB—.]¤¦ŒvíÜ	?TUUÁm¤;”””Ğ²eKXYYAOO_æ\"¾tñ\"b>f66Mmm¬]»Vf.MòóóÁáp\ZÄ\r-¼nC,½²²2”••ñâÅs„††`ÁÂE˜9s&c…„ç-++ÃÁƒpşÜ9p¹\\†Ùµ¡\r&ÑpW¼¬¬ååur’+++cİºu\rAII	(ŠÂ§¨H\\¾|³gÏ;¶I“&xôø	JKKÑ¬Y3äääàÁƒ8x`?úôé‹C¢[·nR×t·nİ`kk‡ğğ0Æj‡……1\r8Ò[kª®®.tuuannkkkLœ8\'OÀ”)SÁb6&FMõÕÕÕõ²Ûª©©ÁÕÅ\'kËELLzöì)ŸÅsÃ»uëöË,SNNîİ»‹Ñ£Ü1`à ¬_¿Af\'ŸÏÇÅ‹‹F’$¦OŸ.µÓ‹ÅbaİúõX°`!ÔÔÔ`ee‰+V`Ù²å˜3g.Æ/õw8yòC:Ïb±°wï>…Ò|şşşpu±cÆàÈ‘#”éÈzÎŸ]]]TWWãÏ0~Ü8|ŒŠb”Ú×÷5FºÀ‘ÃCIII¡I%õe*ÙøŞ¿\'cÂ„	è×¯/^½zYçoš6mŠ½ûö1•ÇçãøÑ#ˆŠŠ’ê1jjjÂËËôÇ‘Ãc÷=øûğaØØØàÑ£GR¯Ááp0}Ætæ\ZEáÊ•Ë\rò¢DECC+W®Â”©SAƒFNN^¾|‰¸øx$&Ä#))I®ótïÑƒ™¼FÑ4¤o8t­-º´´®.Ã‘——\00jÒwïŞ“9£!\Z\ZŠOŸ>¡¨¨%%%022‚““,,,êÇ\":ÄŒ ´oßW®^­×’~ûö\r‡‚¿¿¶mÛ={JıMyy9&Mš„¸/±L{êÌY³1ş|¹«´´W¯^ÅÑ#‡ÁårÁf³×‘¢(¸pƒ££#,--abb\"ó¾?şŒ?~ÿ­ÑbÖââb¨««cşü((,ÀÙ3‚¢\r\rFke±X8}æ¬Ìi\\.ß¾}CLL‚‚ñàÁ}ğ¹<Ğ5ï†ÇãAII	Ó§ÏÀ”©S¡­­-óZÄùsg™É®,-qáÂE‰ößGáü¹³Ø¼e+JJJpûö-ìŞ½iiié6AR¿Aee%şøıwÄÇÇ1ë !C&kKnn.bcbğòÕKøx{ƒÅ\"¡§o€œìl,\\´X.Şó’’6………Œ~Ş»w_‚o^Â4&\'\'£  €)J<xH£*5\0´hÑfffPSS«—\0_Tîß¿á„9‹ÄÔiÓ¤~˜êêj<şQQQhİº€İ»w#00çÎƒ½½½Ôßy{{#±æcó-0yòd¹î-11ıõŞùƒËåBGGeeebŠóàş=<|p4MÃŞŞ}ûõƒ½½=Z¶lùS±m}¢­­\r‡;ÿbZXìĞXBHñ4Š‹‹‘’’‚ÈÈH¼yã‹÷ÁÁ 	B0LÄRuuu—”àøñcÆ†Ñ¡C©×š6m\Z^<ÔÔP…/±±¸{÷.~ûí7±ãˆBII	áááxñü9Î;‡ªªJp8™VXEES§MÃ†ukÏíÁƒû\rRìÂÂBÄÄÄàõë×¸qı\ZØ,ª¹\\Ì›¿\0={öD«V­°mÛ6xyzbâÄ‰õ\Z)MMM:×¼¼@Qòrs‘’’\"‘R–Pì?şğÓ	Bjüú³\"kRG]’••/OOAü	@K[GjlAQvîÜ‰„„x899ãŞ½{økÇ>rNNNèÖ­›Ô¢ƒôôtìÚù—Ød“6Ö#Ó4§OŸbÕÊ(**‚¦¦&öíßšæÏ›+fyDRxx“ÖÓÔÔÄpWtéÒVVV¨¬¬lt”ÅbÕi^³	””” \'\'ÑŸ?ãCH<yŒ¼šD81Dš*}ÿşëÖ¯‡‘‘V®Xÿ·ømü8lÙº\r...^œ––6lÜˆÙ³f2£|vlLhmÖ¬™2-Ø•+W¡´´)É)¸tùJsÚœœœ ¦®†ââğù|\\¹t	S¦L•k²Gqq1bccñæÍ\\¹tl%%Áô˜™³àää„víÚ‰ËÁƒãÙÓ\'ˆ‰‰©3%÷#4î×®1ïòÓ§Ou+6EQx÷£.•¦™!îÿ¶¼{÷N°Û Y,Lš4IêB\rGXh(nÜ¼	‡ƒ3fàÅ‹˜?o.<}&3V¾xñƒ²X,Œ7ëÙÔ\n\n\npöìY\\ºpyùùprrÂ¶í;`aaüü|\Z\Z¢¼¼\\*f@Ó4cá¾ÿ/Ï«¸îå	>E¡MÛv iŠ¼şëÂb±Ğ³§<x€eK—ÔÌ “ä\'OĞÑÑ³s/˜™™ÁÇÇë7¬Ã‹çÏ±nÍjDEFb¶‡‡„BuëÖ\r£FÁí[7™ĞìÒ¥KX½zµÄ5Ş¾yƒ‘‘8|øˆÜ››®®.&ıo\nN?Æ¸ü2‹ „ßôâ…Ø¿”””Àãq1ñ“,@2¯mkk???¹ÛÂÂ‚ÁÀhšF@@\0Æ\'¸’µÓ\\o|}T¶sç.\nF¿Jª««qëæ\rğE,^ÿş¤‚¡Ã†1#I’4hlmíYY\0á(WáËš6­îxçãÇ˜9cN8²òr¬X±×oÜ„……hš†¾¾>:wî,‘‘µ (ŠÏMÓHˆÃü‹j\\fâ?­Ôl63gÍÆŠ•+‘”˜Xc!ù3½dIEElmí`ff\00oaË—¯`ãŸ¢šËÅùóç0iâ„„„HüvúôéÌ5„5ŞR+ÛÿúKaeàÀkŒO	ªÄêBş³³³qàÀ~Œ;‡…ï?¬X±]»v­óÚzzzá6w}|äJ\ZÃÁ¡#“özõòòóóe£â©©©LùI’prvnğpóÆ”øøxDGG3q¯Ş}Ğ¢E™¹¾ë×®1à‚ğ£Ëø&uÀMÓ8î³@Ø,V®Z¦M›Ênİº…	ü  \0˜››ãêUO,]¶\\\"ní?` ø\n ÅÌG!I˜ššâÆÍ[hÕº\róMşKBØl6V¯^ƒùóç#>>ééi\n{ÕÕÕèÛ·/ó-„¿Ÿ3g.®ß¸‰:àãÇ˜:e2®\\¹\"¶ğMLL°lù\n±q¿.\\¸†³³3ª«¹ğôôÄíÛ·qõêUœ9}\ZÎŸ‡§§§XÑˆ¨´jÕ\Z={2ß522BjQŒPTUUñìùlÜ¸DkKQQ\"##qñâ„†„ 77ß¾}“k3urvfBJ’$ÅšL$;&&¢ŸÅê\'QÀÆ¿·oÅâş#FÈ,ÎïÙ³\':wé‚Ş½œqÿş}„††âÏ?7¢K—®R_>şŒ§OŸ0^Š®¾>\\]]eÆù›6ı‰õëÖ¢°°\'N‚Ïİ{èáè(Õítvv†¡¡Âè6EQ8vôLMMqæÌYô0ğ?±ÁşØxÅ-‡Áo¿ÿ>Ÿ‡óçÏ7è9µ´´Ğ·_?‰Í–¦i888àöoÌíââïØ²yÖ¬^´´4æX777hëè0ÖëÑÃˆ;Ÿ’’Øl¾|ù‚-›7!44Ê**ø–ñ\r÷ïCXX˜Ì\rÖÍm$H×ßß¯N²®é˜<iiixöì6ıù\'z9;aÚÔÉ8°?Œj~÷IãªK¬¬¬ êËÅÆÆJWlš¦&Ö÷i.Ã*ş“R^^ïš*8¡Käàà Õò\nÇ±îŞ½»vïÁùóç0uÊÿ ««‡õë×Kİ®^½*Va¶pá\"©nSpp0Æ‡Ë—.ACSGÃ®İ{ ©©)ÓJ5kÖöör¹ãµŸ%--\rïƒƒa``€;v`úŒ™\n\roÿuñ4‰-[áæ­Ûp®)ãÁçO¶Ö°²²’ÉÚIÓ4TTTğç¦M8sö<\r\rqóÆu:okªÇttt°pá\"Æ«¡i\Z^^^çrqqÅæÍ›±tÙrôèáˆ1cÆ \'\'Lœ(³\0:vìÈ„€EÁÇÇr?ã÷ïßk¬òEL˜ğF¸º`Íª•¸}û¦LŠCÁ³ç/pòäI˜››ãÙógrg–DãìˆğpéŠııûw‚ªmì:2¥ ÿ¦$$$ +3“qÃG#õ¾²²²Ğ»—3>Œ/_¾`èĞ¡¸sÇQ?c™Œ‘ÄÄD<zø€±Ö†F0`€Äâ;ş<¦M‚øø8ô0\0wïŞÅˆnÌK•µ( o¿~\rªÈ¢i\Z÷îßg\\¼…âÏM›Áf±~)¹B} ÙÀƒqæÌYXXX0şôÉ\0Šƒ|UU•èİ§O ¡ğÏŸ»÷0ÂÍ\rùğğ˜cÇ¡¬¬®®®bO÷îú 9YzÁÇˆ#páÂyôrvB«–­˜&Ybdd$Ö–†Ä\Z,A–p¹\\¼xñ›7o†³SOL›:öïƒ¶¶Ö¬]‡«^×üK—.ƒ““ŒŒŒ ¬¬Œ‘î£ğÎß_®¦Õ&PÀÀ\0|ÿş]R±333–…¸ ]»vıOXˆ÷ÁÁbn¸0“(9z………7vztï†Î#!!Af­ï‘â{’$1sÖ,±ôVrr2–/_­[6ƒ¢(lÙºçÏ_€‰‰©\\ˆ/\0ôíÓººº\rrSïß»‹ôôuÄîîî8~òÓşOƒd³f{`ë6q–™¼¼<\\¼xikUdãRW×@¿Zn¸¬ciš†¡¡!;={Õg{víÄÂ››‹åËWˆ½“ÇËÌdd|KÇŒ™³°pÑ\"°X,×Ù¢Ù¯o_1w<äÃ‡:ï7\"\"kV¯Â­›70yÊT<ô7<}†\'N`Ü¸qhß¾½Ôú\rtìÔ©ŞÒR@P!×¥k·\Zp•FII‰Ø†@ş\0ÎRÄ~ø+˜A\Z‚†?}úTÌ\r·”ÒÎãñğäÉ888`ãÆxóÖ»wïALLÆŒ%µ¿;??—/]dNII	ıû÷gşşåË—p>ŞwnÃÚÚ7nŞÂŒ3ë´ÒÒÄ¼EØØØ*ä¾‰T~~â1]=àís7æÎ\0\0 \0IDATíÛwøGân‚ Àb±°eëVÌ›7O\"÷Ô p¯¢¢íÛ·‡¥¥•B›\0üñÇÜñöA—®İğøñ#ĞÉÉÉĞ®)ò”_hàr¹páŠ…‹–`öìÙŒçCÓ4¦M\"fñÄâYkk1wüÙóçuzaªªª8wş‚‚ßcÙ²epvv†±±q½›±¥¥%<$“LÚñ‰´E4òò,ö	ÓòÊ—/_pùòe7Ú¢JOOgÊ;I’ÄĞ¡Ã¤6\nddd`ó¦MÌ‹ÓÑÑs¯^Øµk7^½ö•Z¤Ìô›³X,Lúßdàû÷ï8xğ\0æxÌFYy9æÏ_€[·oÃÆÆFn+-á÷í‹êt>Q/Ï«›BëÖ­qüÄ	6ü—zU$IBYYgÎcBÚêÍâiHy¥²²½jºµ}§4-è\0¼vãV®\\.—‹ıûö¢PD‘«ª*ñ¡–eURRÂoL:Uâ^Ú¶m+ÓÅ622ÂÀAƒ˜{ıô1ªNôÚÚÚ\Z666\nUUNEš†ÌÍÍÅCKÄ. èèÏŒeTVV®³ÓFšlÛ¶»wí¬3^QTbcc™]• ™=á111033Crr²DÕ–ÄâçóùğññfÀUUU¸»»#11sæÌÁ¾½{allŒóç/`íºu\rèM—>}ûBSKKáFš¦ñ55U¬\ZP(úúúØ¼y3<æÌı%ÊÍb±`kg[·ïÈ¬>ŒEDD¸ÂïFŠõñ\Z‚AÅK–àêUO´nİ\Zyyy\"à/{wïJ¼óvíÚ¡²²±±±ğòòÂÿ&MÂÀı‘ŸŸ/“GŒ 8;;ÿ Í$¹‰¥1ß¦)DÇÄüh%pBT ØÙÛ+”Ì/++CDx8fÎšİ¨‹,44T¬ËLV­nXX(TTUá>Ò\r]:wÂ={€Ü\Z\"ÆÚ’ššŠà  4³´´BpPP\rÚê‹Ñ£ÇÀçî=ôÉ¯şŒ´k×VVÖ\rrÇ)š–Ùˆ¯¬¬lÛ¾¬FÕØl6ÜGÂ‘#GdÖ\0À³gOtşªª*´iÓæ§Ù]…Ö»[÷îğö¹‹©S§¢¸¸••• i\Zş~~Ì¦UUUømüxü6~1nüx<zü§NŸÁá¿É,\r(šFXXè¿®ØÚÚÚ°±µ«°ĞP”–\nHJØ€ P]Ø°@²Htè XüVPP\06›]/C…\"RZZ\n_ß×LCF3©.u~~><¯^Å›·~ jvÒÀ€\0xÌ…®]»áÔéÓ^(¡i\Z>¼GPP tut°mÛvŒ7®QZx‚ Ğ»Oo*ìQoï;˜íá!V-Êq±±1æÍƒŠŠŠŸj1d³ÙX¼d	&L˜(µ­µö{oHZyy9œ{1Ããkhh`Ç_;áØ³\'şÚñòóó ¬¬Œ>ˆmNÊÊÊØµ{7\r\rÅbYŠ¢°jÕj™ïÎÔÔFMš0\Z___,Z´¸Q=Ô†|+KË\rEQ())FAA´´´;\';û‡Ë-Z(¦ ß¾¦ilİ²kÖ¬ÁÕ«Wˆ¯_¿¢¬¬´A7™™‰¼\Z‹Kzõê%õ%*++ãÔé3ĞÓÓƒ®®.ºwï%K—âı‡ìÜµK°mÂhhh;;{”––bİ†\rªÔbÈj¿ş2©{¢Õ–Î;ãú›°µ³o¨&ÉöîÛ)S¦Ö©Ôµ1\nE•Ãá ÿ€ú~…ïÕÅÅíÜ‰ÊÊJĞõô©Äæcaa!PÑ4Ş}ú ¤¤DfüÛ»wo&5—•‘!éæ¯––-[‰…«Â¾\02jİ ,Ë K’’“AÓ4\r‚ˆˆpìÙ½óçÍÛWtïÖ\rK—.ÅÅàçç‡¤¤$×»ÀE‰ß„¼fÒ¤¨¨¦¦¦f***Róİ\ra\0¹~ı`¶‡\0àcÔÇ_¢ÔÂ0ÂÂÂ¢A[Eáúµkõş¶E‹8|ø0ÜGV($\"IMšãÊUO‰<¾4áñx¸Ñ@Ğ¬ºº\Z-Z¶DÇı¿ÛÇ¨(p¹\\Ğ4àà ©\nÈår‘™™	:x®..8 ?^¾|!óü¶¶vLÚ‹ ¤Š¬ÑKj{±Âge+Ñ£iZ®Ö4Q *((;aË–-àñx(**Bvv6RSSƒÀ€\0¼zù,’ºfa8:ö„½ƒZµj…>}úHäîjƒ²æ¿}û{vïÇCÿşĞ½GXYYÁÄÄºººnxtôg¦KŒ têÔ‰éÏ~ûö\rV®Z6›İ¨Ê-l›ìÕ»7ÂÃÃël”õû¤Ä|úô	;w®óX]]]¬[·ffføûĞÁzYM„Yë7l{C‹‹CxXhƒŞQyy9ë¥4nˆ­é«W/4bbbÄøğy<.\\€À€\0\ZÁÍm$şÜ´©Ş¾øÖ­[3e8tÍ{ø\0°q\04qû[Mİƒ@±¿~e^²’’’BÀYQQŞø¾Æºõ@’$8ŒŒŒ`dd¸¸¸0Ê““ƒ´´4ÄÅÅ!88\'Ã¶í;¤¢Ö?~CéeÕà?Ã‡Ç·oßwïüñ×í°´´Äå+W%ÎıáCˆ gaaMMMôíÛ¾¾¯ıY¦wğ³Ò¿ÿ\0œ<qBŒ{L!íáƒz[ø\r§M›SSS¬X¾Lf§›ÍÆÄI“àá1G!2gÏ5ø°X,0ğ—-ôäädÄÄÄ@UU…yo>¼ÇÀÅÛÃc6nüÆÆÆ¨ªªByy9TTTê,166†’’ø|>hŠÂ§ÏŸ@QÔ?^,$*::ºŒĞ4Ô\Z°äñxHJNb[‹–-x***@D›`ö”,--1xğ`,X°\0/^Â[?¸¸¸H¼˜ââbÆ\"Ô‡Ò³X,hiiÁÂÂcÆŒÁüû”Pê²²21@®iÓfL—cOGTTTâí›·¿ì#ØÙÙ¢u›6\rbó¤(\n·oİR(®4h.]¾==}±wLØ,Ö®[¥K—)¤Ô¸rùRƒ@³êêj˜™™É¤Ojyçï¢¢\"ä¯7oŞJÔëÛÙÙA__ÇC·®Ñ·OoôèŞ\r7nÜ¨C‰t`+D¡„†„ÈŒÉCäyÇêêêhİº\rã­¤¦$ƒÇã¬¨¨@Jr2P³Ø[µl¥#iYYC}«èÎ-‹D¯  \0UU•Lügee-zòä1z÷î\r{;:×¯_‡Ã‘ÚvYëİ§7ÈYYY×¸ão™ÅßØñŸ’N=P¡`Sˆ¨B¾{÷NÁÍÄW==Ñ­{°X,¦3ëèqAy£¢Öæıû†fB7¼[÷îÊµV[|ßøBI‰-VU–•ñM¢şš¦ilÛºïpñâe<}ö^×°më‹”1×^³VÖV H•••Õ9£¡RUUOOOøúúÖ{¬ŠŠ\nZ¶lÉ<obb\"ªª*ŠÍårACPœÖ´YS…n¢´´TÀäxù2NŸ>Û·oãåË—øğábbbğõëWäææ2ù5y$;;„H©\\+i´¨¨(¬Z¹Û·oÇUO/,Z¼×¼¼pğà™€!¢$66¶bÀ‡ÃAtôg‰ŞÖFuÇô‡R^„“µø¦¦¦Ø·oFºB3SÜº}G*­”< Ù­›·ÄB™†„#¿B„ˆpDx8Ú´m‡¡Ã†‰¡Åµ¿inn.||¼ñ÷ß‡aïà\0cccXYYaÿ¸_Ó|#MZµjÅ¬MÁŒ¯ìF–²²2ìÛ»[fŸxíçnZƒ;+**Á.//ÿa††F\nİDII	@Óˆú…/ƒÅ\"AäsÒ4(š[‰yó`Ò¤Iõ\"¶™™™b½BMe€:X³v3!ÁÆÆ;vDß>½1kÖl‰ò¼øøx±óŠrúúúèİ§îß»‡wïŞI”ë5–têÔ-[¶DzzºB<åÂ—‡OŸ>¡SÍ€7yEKKk×®EYY™ÜµÈµ%>>>¼oPœËåÂÔÄô—GzŒœœôí×cÆŒÅ“ÇE,t	Š6Ñ4\rMM-©^cYF¨YSñµ˜Ñˆ)/>Ÿªª*”––‚ËåÉ¬]—\0Ğ\rÅ6±²²2°k[ÒúX¤g \\¼x	ººº5;FÊÊÊPVV†ââbäççáöí;8ü÷!888ÔËë$Z‡+¤’&_¿~EûöíÅ\0555´mg!ábRÅ\ZÆı¢€I’ptì‰\'ãí_üñÇ¿dñ©ªª¢oß~8yò„ÂŠ-ƒ?~¤°bAÈ†\\S(ÏŸ?oğoËËËí•\n®/Eİp’$`ee…öíÛ3ßš¦iÄÄD‹–†††èĞ¡<==³øø8,_º‡–y\r}1o+3#£A÷š¨¨(ÈÏG^~>233kz#b@’‚*Â’ùú.joÔeee`—””üpO…y¡\nAQ´µµ™	ÒÄÁ¡#ÓiUŸbgd|#|¶«R…üü|,Z¸\0æææè`i‰¶mÚ‚Ğ¬iS‰bAÙkóq­­m$ÕÒÒjªªCAAôôô\Z-.¨°°P¼kpÅEQ¸qı\ZfÌ˜ùòÑ64nhaaax÷îzöìÙ¨DA ¢¢ïƒßCMMĞÒÒ‚½=\"#\"jh\"QVVÆ\0…$IbÓæÍ˜1c:öïÛË¬‹õ6¢W¯Ş2¯¥­­-¶ad4@±?şŒ‰†ƒâóÁ§(ØØØ UË–èÑ½;\r\ráíã-7Pª­­-¦Ã¥¥¥ÅÍÍi*È!——uuõz-hŠª7‡[]]ôôtæE·”Ò“$‰½{÷\"+3YYYHÿ–ÄÄ$¤¥}…““³øõıûw1…)í;´—	Z´h’E\"33Ş¿Çà!C\ZU©Ï=ƒ];w‚Ëåş€D$Şùûcô˜1ÿ˜bøğ¡Aj¢ŞBjj*ş7q\"/Y‚6ªr‡‡‡ãë×hhh2%¤í	Š¢›“ïß¿‹e\0LMMqÿş|ıú$I¢Y³fõ®c555˜6oô4¿[ú·oàr¹2+õª««Aó÷UUUX±b9<æÌ…››TTT ¢¢%%%1€8%5àñxõ†®\Zššb:\\RRví6KU-IVV6Z¶j]ocZZ\Z’¨w¸_ee%¾Ö\0˜™›K}Ù\\.%%%hÛ®ÚŠP$S%ÕªŠÅ!ÍM›Kuiúö\0ï;·áûÆ·Q› äcİÚuğññ†––ÖO£ÂEáÚµkpquı)×Z‘ØïæÍ?šÑ4\r555p¹\\lß¾\r¡¡!økç.&{ñ³\nşÆ×Õ\\.ì:2Vfff\"ßœDQQ‘X¥¿†“ÜÈÈåååøššŠâ’ÂÎŞ^jå¢ŠŠ\nÌÌÌ‘^SÔ•–öUUU2»¸¸§OŸÆ’%K ¢¢‚¨¨(|KOÇ¤I“êôÚ‘ñíªªªêUìÚç)..ûû÷ïb®…\"©.>ŸÒÒR|ŠŠÄôéÓajb£&M ¯¯]]]èèè@SSåååX²d1¦N›!s€™¨bÖXl†††RS2åîwxÿş=¾/Â!CñâÅTWWÁÅÅµÖñùbîŠ‘”‚‚ Ğ­[7<{úÁÁÁ¨ªª‚²²rƒë»\0ß;¬Y½\Zñññ?=øNTIâã¾ &&\Zöö¿\\±ğ>8ø§çWÑ4ÍÔ4<ş±±±Ø¶}Ğ`ëMø|¾šª\ZzöìÉ(B“&FkFT>}şŒ3¦£¢¼­Zµ‚†¦b¢?Åbãª§—TÅf±X022bh˜r²³QQQ!³@UU×¼<QRRŒ-[¶\"3#ööõ†bzzz IUUUõÖ•ˆWñÑÅµØÂ}yEà6§ÁÚÖæffHKKÃ»wşÈÏÏgæ?ØŒ™³0cÆŒzÏ),xºâººz2Áá¬¯èèhæ¾ããã¥V©Š¹+²a++Kp8¤$%!*2]\ZPL!Tê#‡ãÀ} (\0ØØeª>üGûÅ‹~N===äææbú´©˜7o>–¯XÑà±Cññ_UUUØØØˆ\\C_Âk•6mÚÀÛÛ‡}/\\¸€Â‚lß±£ÎAºººbiÓºjøÕÕÕqû7ÆŒr‡¶¶Lä,Û*¶<­¾ÊÊÊÌè+šf\\ñï\rVìÊÊJ¤§}…«‹+<æÌa\\äªª*¦L¯²²ZZuÓ²Ö>§h|¬%ƒQ¢¤¤„9gii)ƒ—””ÀZ\n}RQQ‘ØÿËbª033‡ªª*òòòàûÆW!ÅŞwff&Ö®Yƒ\'OC[[»ÑÚÅ¼¥šÆI“ş§0Û\"’““ƒÇ5úıÓ4\rUUUğù|ì¯¡\0Ş¹k+r½·oıPRReee±fío\\{\rÁŞÌÌLìÙ³†¸qóf½,&ÚZZ‚8±&\\¬¯9§M›6xøø	¦OŸ†ÌŒhëè °°°Î††‚«şCIII,[\\üdqq	cÕÔÔjù«ªªAÌC\n/¢¡¡}}}4oŞmÛ¶“[©…ç‹d¸!ÅÅÅxıúnİº…×¯^!11_¾|ARRt¤¼0AN[T²vc\'gA‹è;¹ëº…Ç¼zõî#İğìÙSèëë7zC‰¨K¨¡©ùKK\Z™\rÔØø—ñ«±X,Àßß£ÜG2¤Š¼ó·o|¡¬¬ŒÎ»ˆ1ÿÔn“­¦(\noß¾ÅÁƒ ¡¡qãÆáÛ·oğóó“É¦\"¹&	¹\n†LLLpç7F‹âïßqçöm©›ŸÏGuu56È“…`³Ùàp8Œ§[RRƒŠ3;œ––BPàÛS\nàTWWIÄ(ÒÄØØÓgÌD`` Z¶l	ï;w°wÏn$\r6H_ZZ*ôV˜ñ²K—.]ğìéÄÆÆ\"!!¡^ÀOoíİ»Ç‹ÅjÔTYík±X,L<L˜ Ğ¦Ùiİº5nÜ¸‰ë×¯áÄñãÌ8¢Æ]]]ÃÃc6¦OŸ!7%UFF>~üu558::ŠM¢øMÓ(--‘ûÌŸ€@Td,X\0eMŒ›ÀÕu„Ä ;YkR.Ëú„¸/_@PQQEQøûĞAÄ\'ÄCUU¥%¥(-+EyY9JËÊPTTˆì¬,$)W?I’PQQeî£´´T¼@EEEE¡ÚaÁ& ¢ÒxŠÍåòÄ@.Yhc›6mÄˆæ¹\\.ó4\0PØ@ÂºmÙD:t\0I’(..†¿¿ŸLÅZŒÔÔT¬^µ\n¯_¿‚®®.X,Ö/Qj6‹‹–X¶lÙ/m¤ïÍ™3=z8âĞÁƒeÆË6¦k.ì®:qâ8\"\"#°{÷n´kgQ§kˆ¼¼<\ZÀZ$¾Z2ÑßUVTJ(è½ûÁáp˜´‡Ã©×¸q8±)u1–æååáß›Ådl(\nPSW‡ß[?¨©«AG[\02kji¢‰qhhh\";+şş~õ¶İ\n½ÁdPGRQ^vUUãn*±•j~àóÃ×nİºØ˜X¨¨ª@EEª**PVQT:q8PVQ†’à%%%$	‰fÚ®G]PVV’’’Ğ¶m[\Z\Z‚ÅbáéÓ§°±±‘˜.ñÃ]\" ©©Qçfffeeep””ğÆ×S§N“@m…ïéáƒØ°a=rrr~Ù€!¹tÙrŒtw—Ù<ó«ÅŞŞGÅƒ°cû¶_b½IR		\rÅèQ£°qãŸ[3IRšr¿ñ}\r’$Á§(	j.‹eeeÆ’UÕòI’lPé°èš$êq—9<|eee°Ùl°X¬šf’ù·ğ¿Eu/$ää6!zO•U•`sEV¸€Ql(Qˆ à`ä‹¡Ú4MƒE’ Y,Á\'dy$	p¹<<yúL† òòeÜO^^\\†Cuu5Ú´i‹İ{vãÀğ÷óÃÓgÏ%¬%òò…K]naß¾ıpÿş=DFF\";;[Ìå%ÕÕÕØù×œ>}\ZÊÊÊĞÕÕı5VšÍ†s¯Ş˜;w®ÌAğÿ¤¨««cüøñèÜ¹3N:…§Oú“ñ×ÖÖFee%/^„ĞĞlÜø\'ÔÔÕ™ëââb„„„@]]İ»÷ØX	‚\0‡Ãa›Ïã7ÚæS×š--­mÄÂ¶ÓúÜ|ásŠŞ·š¶ğ\rs›¹`³ÙX±bú÷\0>ŸÏXñ””ÄÇÇ¡U«Ö022Ç—Ëeş­««+s¢¥<’˜˜ˆ:ãğáÃğôôÄØ1c0fì8¼ö}#W“C}±K×®xòä1rss777fÓ‹‹‹Ãª•+È¤%\Z[©Y$	\ZÀÖ­Û0hğà¤EÑØ{ûöíè×¯6nXÊÊÊ—›Êú>ÊÊÊàp8¸xñ\"\"##±k÷1fÓĞĞ¤§§CWW={Ju¡ù2H[;¿bäR}œsõ\Z%/ğx\\…¨\0\' ¥%HéˆŞŒ¾¾>&OÚ‚?&LÄò+\Z¾Ò”LoÁÜÜŒaW7ş7¬Y³Fæ¦ÄùqoBzÚºäÇ$¾¾¯áæ& Ì¿uó&¶lŞ„¢¢\"\Z\Zşz‹…Q£Ç`êÔ©hŞ¼9ş«Âf³1xğ`ØÚÚâÊ•+¸zåø|ªQß	A000@tt4Æ‹5k×âÿ›\0ğ}íË(®4 ‹¢(ˆv/²k)KII	üüüÀáp ©©	555¨««CEEººº2[	¯ò0¨ëKäRğZ!‘G	lUÆEæòx ˆ™„¨£´\\[³fÍ0á\"9|cÇ«3–)((ÀÙ³g1sæL¨««‹åä¸\\ÌØEHƒıù3Øl\"\"\"PUU…¶mÛJXmeef·-//¯w\'oŞ¼9455QQQˆ°pdffâø±c8{öÔÔÔ ­£ÓøVšÅB“&ÆX¿aƒAı]š6mŠ+VÀÙÙ»wïBbBB£[o---TWWcõªUˆˆˆÀŠ+\ZUUUPRâkáæ/ZìTäÍËËÃÚ5«aaÑ99ÙÈËË€ÅfãØñ2[L…ü€ ú+RBLHºŠ¦Å\\vUUU°54ÔEPÃ\n…˜\'…è³¬é€C‡Åá¿!&&Z¦b\'\'\'ã“&ÁÑÑE‰\0t1†††ÒÒÒ0vÌh473ƒ2G>Ş>PRbãè±ãŠ­¦¦*fê%´µµÑ«w<¸ùù;f4¾~ı\nšYÌ©Ô$A€ IÌö˜ƒñãÇ+ÌFó_‘îİ»ãÜ¹ó¸sç<Ğ¨àš0“¡««‹[7oâ}p0JKJ¡ªª\n\'gg©ï¬ö7VSS—°Ø}ûöÃƒ™±ºº\ZuÆÅµ×$G·¹¤¤‰‰	HIIŸÏƒ¹yØÚÚJ(°Ğ«”§Ä›¢(”•–‰=\'[KSKÌü+²Ó²X,p8™ NÓ¦MÑÁÒ\n‰‰IÌ\røúú\"66ÖÖÖĞÑÑÁ‘#G°oÿ~&}S{&’¬’º¶mÚàÎo±ª®ºâPMM-±&yh€»téŒGîƒËã!\'\'ç— Ñl6vöX²dñ?Rú«EGGÓ¦MC·nİpôÈ¼“+e£ˆk®¥¥…œœœšöltïŞCª;,¬bZìÚ‹¥¥¥Ğ¨©2c³Ù`³ÙPUU­·u¹öšäÈdggãÁƒxøğâãâ$œ¦i¸¹dòö¢ºHQ”\\Š-èÙ(©q¼	hjj‚­¥­ÍXTWW+ôTUUqÇÛG¬±CÈç,¼ÉV­Z1üe¯_¿ÆŠåKÁçˆš›™áêUO±>A\\óÃ\ZÊb³`±ÙPg³™F\r\0ˆ }ÈÇ\"B®aôíA²X`5€UT^,aõšµpuuUxBÈ]„4CO?ÆÆêE‡Ã(‡••ôÑOB>>¡®¥°ÕÕÕ\rêi\r=ë*vn=BXX(ú÷€S§NCCC•••ğ÷÷ÇÚ5«áí}³fÏ£rïËãŠóx<f#Ib“µ­\"CÚUUU¥NNNÆ¶mÛĞËÙ	ƒÂ¡C‡˜˜ˆ¤¤$¦È ;;A2¥sí-ÚKÔå\nªÙ~¼´ïÅ²éa>~üˆñãÇ1;è—/_0iâøûûK*v­2SyhgZ·nM›·0üYl6Ká” 4‹Ãf³1xÈÜñöÁo¿ıöÿR‹~Ë‘îî¸ÿà!Ft›ÍşéwG’$Ø,H‚À€ƒ°~ÃF™£xE«*	H²5iÒƒj°%ÚMU—U\rùğ,ş¹	ıúõƒTTT ££ôpì	š–Œ¥¡¦¦.x&ìùfÂH--°µµµñƒòŒh5îóçÏñçÆ\rX¼d)wü…°ĞP\\8gÏœ‡ÃaSFŒ%6¦Í›###/œŸÏTTTÄvö‚ü™1×ıû1nÜx&Æqww‡‰‰	6oŞ„»wï‰ÅëµcnyØ%•••1bÄ¸ººbÉ’¥5|èÁxôè!\nòó+$o¼Íb± ¤¤„mÛw ÿş?Òø¿\"æææøsÓ&ôí×[¶lFA~¾Ü!ŸP™	¸Ğ·7\0\0 \0IDATF¸D·nİĞ¾}ûzgNçåå‰á5zµ;11À¶mÛâbËÏÏ«¹7ÁTÏºÈCœ{õªó\\–––x\'aõòóann.×DQ%šZZ`,¶b±§¨DGGcÕÊğôºÆ¤ˆúõë‡¾ıúaŞÜ9ĞÖÑe\Zß544˜ÙXÁÁÁRA7˜˜š2óÀ²²²¤²HP…Ì¬,ôêÕ,‘¿kİº5²23™»,ÅV„Ÿ› ÃØØ½zõÂ¬Y³”˜ˆ°ğ0¼|ù\nŸ?ı\r$Íİ$,’Ä„IÿÃÄ‰*ÿUX,úöíkkkxyyáÜ™ÓàËØE.ÚYX ÿèÜ¹3Zµj¥cío\\Ûk8p\0óçÍEï>}±páÂ:§‹\n=Ú¬¬ìšû&`ŞÂ\\!Ik[%1¨€¦idçä Y³fr!î‘ZZ`×n‹¬=«>¹yóš6k&’÷H§NĞÓÉ¯^<‡ŸŸú×\Z…RVZŠ®İºIÜ¸ŠŠ\nš›6GF\rˆ–œ\"˜y]»ÅbaÈ!¸zõ*æÌ™%%%äççãäÉé>JbÕÑÑŸ˜ğÃÚÚÚpèØ;bÂ„‰HKKÃÇñöÍ¼zõ$I€¢hfLo·îİ1wî¼_2¯êÿš\Z\ZbáÂ…4hÎ;‡ÇŠ(³à½9÷ê…Ş½ûÀÖÖæææ\nDJJJŠw^mW\\YYæææ8h0ºté‚ùóçaòä)2dˆÌÖÍÊÊJ¤¦$3ÿojÚü§Š‡R’S ­£#f„x<rsåkkë¬¦¦&ØšZZbMŠ¶ædç ª²\n•••b;Wbb\"Ş¢(,Y¼gÎcoš¦qóÖ-L˜0A*JljjŠ÷ï0Tˆ’Ğ‰Ê”)S°ví\Z8õtdæc\r4Ë—¯ªŒfææøšš\nš¦ñéÓ\'1àígâÈ¶mÛ¢mÛ¶9r$233‹ÈÈH\\óòDEETUÕ???ğù¼_ª8LŸ1Ca_X¬ñOIPUUƒ•¥¥À»âqaaaGÇèĞ¡ƒÜ–ª>äúó§\"Şºu©ï$::\Z:tÀàÁƒÁçó±g×Näæä`î¼y2³¼¼<†;ÏÔÔô§îÕÖÎ6¶¶bçàr¹ÈÊÌ#¨ïÛ‰ê°¦¦&Ø\Z\Z\ZbÉvy¹Œ…Ò­{wàÄ‰?~<H’DHHşÜ¸^×®ãÅ‹8uòfÎ˜™³fÃ¬ysøúúB_ORÏÙÌÄ„q-HRÀU%­=Q[[‡ı””†/[V¥–ªª*ììì‘öõ+(ŠBB|\n\n\n\ZÕ-6¶˜˜˜@GG7®_ÌR~ı\no}_ÿr…K>\\aÅNNNÆ†uk½k«>ißÁ[¶l……E£·  €±Ø$IÂÆÖVÌğàÅ‹8x`?ÊÊÊ°wÏnØØÚá÷	ÑG„¼¶Æ‘Lñ‹¢“i…çğõ}ÈÈ(€¦Ñ§O±¿çóùàr¹073—û|¢:¬¡¡!Plq` _¡›>|8?~„Ë—.àÂùsì~áÂE´mÛ-[¶„––víüçÎ\0Œt…åË—Ë>šÕšF’››+óÃ³Ùl±N®ÏŸ?#))	ƒ\r’°ÆíÛ·ÇÃ÷%ÌÈÈø%ñn\\\\<fÏbğ\nš¦ÁÿE#m¤Å§\n+Jzz:x5µşÿ¤ÄDÆñcÇ°}ÇFÍdddˆÕ-Ô“’’ˆ%K—¡M›6066†¾¾~½œpş´P]?‘‘X¸`!ÜİİQTXˆ7o|¡©¥…Ş\"Ê]VVIÂXÎs×ÖYuuu°ÕÔÔÄbÏœÅF–èëëãäÉSFÚ×¯Ğ70@÷îİËf³1aÂ\Z4ùyyPSW¯—ÊÇØXüj­Ô/8€3fÀØØ•••Ø¿o/\"\"\"°nİ:±Í£M›6b}´			\r\"Ş¯K²³³±páÛaÿ\rIJJ›z!ÄÇÇøçï—¢(¼~ı\n»wïÂ†\ršë]ÿó@T333ìÙ³Wa7:½fLmC;==S§LÆºõ1zôhTUUaìØ1ˆ—XÓIÊ=Î:\'\'GKPSS©¢¢uušİÆ·oß.$ĞÒÒÂÀ1mút¸¹¹Iu›\r\r\rÑ¾C¹ø¹ŒŒŒÄ˜/âeûêÕ+DD„3¬:uÂƒ‡ğüù3¤Ô\ZLŞ¼ys†B—¦i„…†6ê\"-))Áºuk‘Ñ€wØhî8M#6&F¡ßğù||şüõïlD|>w}|pæÌ™F;ghh¨Ø\Z\rÑ¸\\.ÌŸáÃ‡áÄ‰\r\rKÕ%			bç¥bªO._¾MMm>œï¦OŸÏŸ?áıû÷Œb&%	*5åÉ\0ğù||û–.Bş)h^!UTTĞ¶]Ûš€^ò0#Š.¤<zô¨Ñ>Šk(^išFTd”Ìšñô´4¸»‹)ÕÕÕajÚÅµŠ[š4i‹öL¥İÛ·o$î\Z*\\.{÷îÁ‡÷ïÿ5¥f6¬ğ0…† #\"<ì_EËy<N?oï;_û½}Ãd%¬¬¬Ä¬_zz:¸\\.V®\\‰ÔÔTÌ˜>\rıúöÁª•+òAæy«ªªñcs3¹G•••ÂóêUôêİ[,ÖïÛ·/Z·nƒÙ³fâ÷ßÆcÌèÑXºd1¸\\®\\Sy*** â•¶…²²2H‹sóŒ¥§¥)´(ø|>¦Nş>}úS‹QT444ààĞ‘¹§èèÏÔ±¢àİÅ““ƒªª*äääàÊ•+øú5mÚˆS\Zq88÷êÅ¸çåååHNNn”…yöìYÜõñşÇcTiï27\'G!¬$77÷_\rD•{ó¦MR+…E$IÂÙ¹—X1PDD\r\Z„~ıúcÈ!˜0q\"î?xˆØØXÖ¹aÄ}ùÂ(vÇåÆÊË+@’Jke´´´pêôiœ¿p“§Lû¨Q°³·‡Ã‘‹ï¬´´Y™™Ì=™·0°²ã\rQZ–É¯ÆŒ‡ğ°Ğz«Ö(ŠÂ÷ïß‘œœŒ   \\¿~‡–ZÆjme%vO²âlŒÿm<èÇİ1p@Ü¼q/^’úb:vì(g7†;îí}\'÷ï*µPÈ\Z\0M^©Ãø7Üòysç0uÿ\r‘ñ5R«~ 88mÚ\n\0Wï;w0pà ˜››CMMµÎÓ·oß£@„BŒ6ÚÚÚĞÓÓÇË—/$\08ØÛÛcÈ¡˜4i:tè\0CC#¹æ»ˆİ“Y\r’Î3Œj@µQÄº¤Cûğ¹sªX^^ÂÂBäææ --			ˆˆGxXXMÍ0\0˜9k¶ÔB÷6mÛŠ]ññR<‚Àôé3Ğ¿ÿ\0äççCGG-Z´\0‹Å‚ìììÄzu-,,˜ÖTŠ¢ğèñcLœ4©Áùl???lŞ´©Q;˜~ÚjHII–»LRÓı\'î½¦zo‡®zzJ¬Íú¤²²=bÂ!Š¢$Èÿ­­¬±iÓ&¼ÿ¾¾¯á:b‚A¬:›BâããÄş¿.öZ>Ÿ§OŸ\"/7–VV077Ç¤ÿM†ŸŸ¢¢¢$\n¶DŸ?*2\n–V–r‰ÙµæsÓoliÈ¢;xû\0‚€··7H‚@dT=}RÃ-&¨&âóxpìé„ÙsĞºu+˜˜˜ÂĞĞP& ¹¹¹8Ğ†qãÇË¼‡-Z0å€<§NÂ±£GàísWÄ6L¢æ³“““ÚÈ„ùóæş«1µ¬Å\'÷ñ_¾Äşënxíû/,,Àª•+qôØ1èèèÈıÛ¤¤$$\'\'1ùk×½Ú¿ÿñttu‘Ÿ—‡7oaá‚ÈÊÊÄÙsçëlR	\rÎê‚pêÔ)¤¦$$Yàóù°°hÖmÚ 33)))hÒ¤‰DU]yy9bb¢Ñ]ÎM¹6J/Ü˜ØÂÅ.zÃ‰‰‰r£ÀÑÑÑxóæ\rx<Ø_cmÛaÂÄ‰°°h3³æ02j===¨««Ëİİ#ºbcc@QŞøú¢¨¨¨Ş\\XXˆõë×!8(/]–Ê¬Ñ·_?<}òBu|÷îÂŠY³f*ÔòO*FDD¤D5 ¬íÃû÷ÿ¹g (\nŸ>}ÄÛ±uë6¹=*Ñøœ$©i?.—‹2ç¼ãíÊÊÊ:Qè‚‚¼yãË\0rÖ6¶u¦£Úµk‡›7o\"??éééˆAÈ‡Ü¿w=Äş}{A$Fº‚ƒƒZ·n\rSSS„‡‡ƒÍf£wïŞr=ob-”^h(Ù€ ­‰±1„úøÕÕÕ2{A+++áãã§OŸÂÎÖ‰KÆÿ\rsçÎ”´É™,))Áë×¯áââ\"–s]qq_ÀçóQ^^ÔÔÔ:;99+V,ÇàÁC`ee…Ô”ØÙÙIËE]µ›7n(Ô>YTT„U+W¢Xd áM±âãPXXXo5//ùùùÿÉçàóùxúä	Lš™`á¢Eõ\Z…ÒÒR\\¿~ù¶|Š’˜Å~÷î]lX¿N0¢kWÌš5]»v­7MMMäœœzÖÙ\'+lêÜ¹3&Nœ„¢¢\"dff\"11áááğñ¾ï;·A\0¨æraÔ¤	ÔÔÔêœ&†ÒGE1À™‰©)ƒÒ“€ =äàà \n]TT„ùóç#99{÷îÃâ%K0tèPØ;tDvv6tuu*28}ú4¾|‰•úÑìíÅâì¨¨(™ç‰‹‹Ã(÷‘èØ±Æ‹®]»ÁËËeee®r“&Mà>j4Ã.š•™Qç¹k¿Ì­[·âÓ§Œµş/Zm’$‘Uïq™™™ÿin5>ŸóçÏÁËË«Ş\'\"\"ù¹¹Œ>vÜx±<ó»wï°aı:\\¸x	7nŞ‚³³3<fÏÂÿãîËãb^ß÷¯YÚWÙ“tìieÉ–TD¢ÅV(û.K–,•ì¢ìK­d‰¤RÖ\"QB¶„”¶iofßSo™¦™ç|~ßûõòzÃÌ{Şóç~û¾îû¾®;qqÍŞGú³g?€¾¾A‹¾ªª*´µµamm\r6à^r\n\"\"£à¿w/æÌuEÁ÷ï<ØL,D¼¨¨oß¼¦»±Š\'uDöî­Í‡B©är¹Ø±c;°víZ¾Ü¥_¿~ˆ¿\'ÑtXzz:N8…BW÷=ø€®¸¸¸&A*)))hiı…Œçé°µ±Æ‚ùóğòåK˜€-›7,Š±VV ÓyŸÉ%‘b;LaAu=&“	6›ÊÊJ”––¢¸¸EEE(..FII	ÊÊÊP^^^/PXM±Ô4Ğ4ÿÉ\ráÓ§OÍ¾æ×&?\rŠq8°ÙlÔÖÖ¢ºº\Z`±X(--EII	õüJJJ(f.—‹ØØX‘ÏŠ‚ˆˆ\n—¡Ói°üEßüø±c8vüŒÑ«W/8;»`ÿƒT§`SÆf³wç_$ĞœìÓÃ‡‘‘‘ÑìP•œœºté‚¡C‡ÁÅÅt:†F†b=Óoõ2@\rBïFmÄÔÑÚ­[7¾Óñƒ0öÓ§O¸‹€£Ò­[WHIIáë×/õãÆCÃTTT`Ætœ9{¾É±¼öíÛcÈ¡HJJ—ËEZêäåå	%Füë¯¿rájkk)Rººº:TVV¢¦¦†ï³@__êê\ZÈÍå\r…Ü¸q®nn­‡Â6»‰ñìÙScê´iprrFiI	JJKPZRŠ²²2””£¬Œ…Ò2ŞÿW”—ƒÅb¡ªª\nUUU”“×ÕÕQNÎÃ³iÔ<2N§¸µ%ß\0^g7 ½~İâÍ¥1|ƒÓ6lV¯Ù ~!%%EÉéÈËËCNNJJŠPTR‚²’TTT¡¤¬„Vª­ĞºukDDD 9ù”•”0yòd‘íŸoß¾Åí[±T¬©Ù…ƒœÃá ;;[`­éêêÖçİµMæñ¹¹¹Hö”Š†\r·™_ÇÅÅaåŠåiæ${{hŠ={¢cÇMâ999`ĞéèÕK<¼ç×jF·F3”ckjjò¡Ğ/_¾ ¸´ù u\ZMhFÃÍd¾Ì¤›‚ÂÂB¼ÿÏŸ§#=ı9TT”1gÎ\\ÄÄÄ`šÃt‰<-,,|/	Üz0$ıÙ³&Oô—Ä1yyy¸¸¸`»÷6j¢)**\nË–-kö½FFFÔ˜è»wï¨ÅÑœ50`VUUÅb¡²¢¥ee(«ÿSR\\«%¥¥(+-‹Uœœ·øñã‡Ä=Ô\\.AFF†P’\n¾íYz‹›ËåBZZ\ZÊÊÊ”­’’2”•• ¤¬UUU(++CUE***PTR‚ŠŠ\n ¨¨\099yÈÊÊŠÌSÏ;KET¿æÊ¿ZdäÏˆ‹A§ÃÙe&ßZ`0pvqÁzOOì?p€ZC±±7ae5ŠŠMKç>}út\ZZƒ\"Ó— 2*\Z999xüø1Îœ9…¨ÈH\0€ŠŠ*ì&N„±±1ºvíŠöíÛÁ`ÖW\'²Á%Dìşóõc©\r¾Ö¸m–úÅÛµkÇ %\'\'×ÏÿÜáê%VRSSj¤=zô€††î&$ k·nÈÌ|‰»ñw‘’’ƒ‡.—€†è¨((((Hñu\"ccj4K®ß¸k‰IÚ¿}ûUUUşv>lİº…ÚÑO<©S§6;Š§¡¡¦¦H¾w™õÓd]»vmÒA\ZAƒv™ŠŠŠØ$z—BC±dÉb±[‡¦ii©())i²¤XTT„·oß´È±ËËËáãëkkÈÊÊşãá_uÑ^½z…—/_B^^C†¹Ø?şŒ³gÎüL¤¤„¢Ê...(((À„ñ¶022SJ\n÷SRpCD×$‡ÃÁ×©” ùMFAQ\nŠŠĞÔÔÄğáÃááá¼¼ÏÈÊz…””\nÄi))p¹\\èèêbôè1ĞÕÕErr2ºvë.Vÿyee%î§ÜçÎ\Z¿ŞØi\ZLh¹Ÿ>	¿µ´´ ##ƒ À£xğàJKKñõëWÜ¹‡;w¢M›¶¸}ë&gLÇíÛQPX€…‹#èØ	\\¹\Z-­¿¨pfïŞ}bÍkjjÂĞĞˆÊµ’ïİCnn®ÄçØ±cˆø%nÛ¶-,p§B<\Z†0!ºÅ¿\Z½e,˜L&JKKñ¸¾_Ô¢mÉ\0011ªªj‹ZUét:¾ÿşÛ3‡UUU6œ7ûÛ˜ş|×ÆöàÁ°X,0Œ=FäF~ùòeê{0ÌuuãÛÌîŞ½‹ÔÕÕÁÓÓá‘°±µ…­­-î&$ğ±ì\nÃ)Şÿé@}ûšH¬Î\"//=zÂÖÖ;wîDBÒ=œ<u\Z+W­†œœüwûaö¬™HJLÀ¸qãÄÚ$¿}û†¯_ó¨û\Z<ØŒÙç{Zú?4\ZM †WTTÄ¡ÃhÛ®Ìwƒ¹Ù`¸¹¹âşı9r$œ]\\À`0±xÉ\\¹\ZƒààÌ=ÆÆÆèÜ¹3›™CJJ\n“§LÁ€Åz(L&“ï„¦ÑhxğàÄ‹ÑÙÙŞŞÛúàmÇ§‡ÃAPàQ±6### ~“J¹ŸòÇ@\'Í.]Ğ­[·‘L6œfÿ\\kªÜÙ£gO*êå -µû÷SÀd2Á%DdºöñãGœ<~œÚø!°µµX·BB0~¼-nŞ¼	\r\r\rØÙÙÁÚÚºYq†”””Fb’tXÛØücvUUUèëëÃÁÁGâfì-,[¾e¼^“Ÿóæú¿´ÂÒùóä^ jı«#,,C/!2*\Z!!àéé‰~ıúQúIÊÊ*ĞĞĞÈŸ\r\Z\r\r\r¸¹Í“èA0€oŞ444Tâ…Ş¹sg¸ºº!<œz¨S§Npu›ÇwjŸ9sZŒH¢3úö3¼¼<>}Ê§õ;‘d:##ã;¶¨vÑ·oZ†×ÖÔ _¿~!ôï°ÍŒôç——Ç`33‘\'êéÓ§Ñ0GÎ`00»@ØŞ¯_?DEGÃÅe&<×®±‘!bcc)},QØ¥ĞP>¾‚ß­KN§ÓÑ¾}{ÈHKƒË%Bªš,¿5zö=~©{ÓÍ•””¨°7áî]¡¬¥***èÑ£\'ºvíÊ×Ô¡¦¦}}„‡‡	­9šššâ|pˆÄ:Ò;wÆÈQ£¨ºsÎ›×xùò¥D×xşü9ÒŸ=ÃÁûJfööö|§vèÅ‹ÍÖµ&ÆZYAVV¹Ÿ>áEFÆ;µûĞ¤œ°è‹ÌÌL¡ÎÇf³‘‘‘Ñ\"Çd0™0`Àû¾ÏÓÓ‘÷5222=zt“aø³gÏ~ù_ItÒ¤I|¯)--ÅçÏŸ‘‘‘´´48tÇOœÄšÕ«˜˜(ò>^¾|‰ÚS--ÇJÜ».nj†¾ıLÄšÁ®ªªBüİxpëÃpû¢ÿê°Ã-FPyöû÷ï$ê§Óé°k‰—/2„®3™Ì&Ù~˜7oŞğ®Ñh4ØÚ§~`.!ˆ‰‰ë^¾|‰…ÂÉqÌ‡ÁÍØ[øşı;ßÆÓ¡C¬Z½ÌúS»³¼9mâö•šš\ZÜ¿ÿ-tCCC¨µn-qMOjVØÉTRR‚´´T‰»®®íÚµkqƒ†8–r?ìÚºú”Ç¸IDß÷nJ•Édbçz¾2T||<†\r«±–˜î0\r:¦¦¦èŞ½;&†4ÃùÅW·±±‘è{°Ùl$\'\'cË–-puuÅ¦MqùòeƒåÅ‹xûö5lllÄŠúrssñ97—Ê¯G\Z-àWtÁ°·?ßÅ%=uuõ@§Ñ‘-ö{ŠŠŠpçÎ,^¼“\'MlÒ‰Z©©QÑÄ¥Ğ‹\"óÇ²²2,]º3¦AWW7nÆÂÅÅUUUk9F\0?~<:tT§®ÿôi\Z®^½Ú,°§o`\0Y<|ø€ÿÖ©S\'ôèÙSbÎwBÊËÊ„n²-’­©©AïŞ½%ºÄ\rÃàáƒ•“Cÿşšª¢££ñüy:¸\\ŞâÖĞèÌçx\rXJè¥Ë¸wû!%%%ğööÆÚuëD‚·¹¹¹ˆŒ§êâmÛµÿ]5`ÁËËóç¹ÁÂÂÃ†\rCtT	l¦wîÜ›Í 5uX5¬2:ÁCö×¿ĞÖîÃ·0’%zïÒ¥êØuyâÕÔÔàÅ‹8tè†\r‚•+–#+3[½·ePRR‚““3ˆÛäõ¥¥¥aj:W¯]‡››:tè\0‹…ùóçaÑâÅ%%%%x®_OåÚl6^›6Š˜˜L&¬¬¬ //ÌÌÌ&UGG¨_¿~-Ë³i4Š£ı×…Û’-¨¶¶ıú™ü‘üºËÎÎ†¼¼,--…U>|ÀÖ-›©“Á``§\'_fJJ\n®]‹A=ê#}¼zõ\nÃ‡\rEiI	EOÔ”İ¼qƒ4stt«Í“ŠøöìÅÕ+Ñ¸q3fffppp@gMMhhhğ¡Ş•••¸zì&Š=Å–””HE\\B„Î…8¶††oºşäºv-Fl>(p¦‡éx••)ôÔÎËËCdDàä8AGáì2\'NBô•+\"ÃQ£FıÑêì¦zÚeee1eÊ\nxáp8ğööÆçÜ\\tì¨.´¤`ff«qÖ`4:É||v‰Ô331é“‰ÂÂBÿßiúhq­ø½¶Ñœ·o%¦.l‰ûİ\0Rc{òø1Š‹‹A§3`,„h²¶¶>»v5Â:°±/ĞWajjŠOŸrqúÔ)\nÿ		Á¹óÁØ·¿Èi±¢¢\"ò!íMÍO³W¯^!2\"«×¬åë‰033Ç›7¯ùBñœœÔÔÔ`Ô¨Qb]ûû÷ï¸ËGû$\\plXZ¥NF,	ÉñæÎ[_Ø¿€§úñğáCxym‚õ¸±Ø²e3Z·n¹s]Áårë9¿\rš°ÑĞĞÀßS§‚Á ƒ\0¨ª¬Dœ\rü\0pêäI!\"2\nAAA,\rQ€‡‡¯±³~c»—”ˆË—/‹ŒPttõ@£Ñœ|ï-x=}Ş˜ ¤„„¼zõJ\0ËÈÌÊ‘p¼®®êêêĞ“È¾EùuJ\nt:\r„†á¡¡¡HI¾G-l.—wwwHVV²22Ø·o/ÒÒÒ¨CGGG§Ù)¾[·n¡¦>ía0˜>ÃQ$2/Ô 0\nl:p ***púÔ)|ıúEEE¸yãØl¶P…Xa–™™I<t:£FÚ½G~\n™Pa\Z—$%%Jôã´nİ\ZÎÎ.¸x!GÁ!æX0ÂÃ.Ãİc!B.\\D@@\0æ/X€ğˆ=‚àà`±®=i’=\Zêw.Gš-[ÄÆÆâÀı˜={6*++!--g\'\'xxxàîİ»|¯UWW‡ßnÿF!9;wl§~¬_MJJŠ\nÇÓRSQWW÷Gòì6mÚ ·¶v‹òì§OÓødƒY,¦¥J|bWWW£ÎÑ	oĞK{šy¡\ZiiiğóÙEµ\03ìÙ»¯‹¯¶¶„œ={£FÆ©Óg0ÓÙIèF.ÌJKKqèĞA\nixb¢\0ßÌÌLÜ¿Ÿúmª««BT_ššbı†¸qãÆaC‡àìÙ3˜8i’Øšd‰‰?Ãğ_\ndûËîİ»£uÛ¶Ôx	W~ó\0\0 \0IDAT%:Zb6Ï1––`³Ù8t––c±oÿ$İKÁœ9sÑ«W/ÊqºwïÃğõÙ)ÖÃïİ»7QBPXğ·n‰nM}—“Bvlßuk×ÂÈÈ“§Lµµ5455ĞæQ£Faâ${ê¹\\.V,_Şd—‰‰	dd¤ñşı{‰˜K$Í³Mú™4‹Ô{oŞçÏ|ê¢………`±XçÈl6›ZH\"¿Î|ùŸ>~„´´4úÖ×ÉìÛ·oXºd1åp“§LÁÈ‘#©×cêÔ¿1eÊdØ¿²²²hİº5şæ\0/¯Mbi¢ß¼qe%%T‰kœµÈÙè?ÂÕu.z¸ÃÁa\Zâãã!%Å„¢²’€>œ””&L˜€/\"<2\ns]İÀ`ĞÅÍŠŠŠpõJ4­tì¨®]»\nÇ„ı¥¢¢\"lllqò¯£§ª²™™™MJò³={¢“Fg´VSÃÖmÛD\"°ı@ëÖm‘šú––c›½¶“³3nÜ¸NÚ{üwÃÂÂ¢É~j—™31~Â())ANNIJJÂ¡C‡°uëV* ÑhX¸p!Ü¿ÜÜO”Â–-[àçç\'0hò×_A[[÷î%ááƒT£ÎoÏ³€ŒŒUæ×èt:>|ø@Õ:ß¿\'1pFO.ÖÄäÏå×÷ğN=ÓAƒøh‡*++áµiŠ‹‹±qjÁİİƒïırrrØ¼yòòòğåËÜ‰‹ÃíŞ`0¨«­­×œ–é8{÷î¡6\ZGGG‘÷ü×_!&æ\ZRSŸàÔ©SX±|)êêØĞÕÓG]»IĞµk×®h×®¸\\ñ†ˆ^¾xÚFdÖ66M¦Mz›¹¹9_8.n.Ûxw\Z9r$?Oo–\n—É`ÂØØ_¿Š‡*ëèèÀjœ5uj³X,jz¦) ­cÇPTT¤œúÇØ¼y3-ôZÏmÕªüvïşY;çr‘”˜€ƒ4ßHKKÃjÜ8ÈÈÈ %%ù-ü>::èØ±£H0OXˆ«¢¢Êç(ÊÊ*â+	\Z®¡¡Ñ\"n8qË\\îß‡¬¬,¬¬ÆQy#—ËÅpÿ~\nõÜét:víòáC‘3ê„ôôô`ii‰Y³fáp@\0“îáÒå0„^k6Oˆˆ@EEuZÛØ‹‰TEE#pìØq‡İÄ‰xù\"Û½·Áßß¯^	rÊ±Ùl?v#Fˆ]:Œ½u‹/7<¸éÍ\\TÈÛ¶}{*½xAì<¥Á¬¬¬À Ó‘˜ rû^\"UjAp8øûï»™æÑ£G°>ŒÇfÑG…î|}úôÁ.*×ãp88wî,Î;\'uôïYYYddd ¸¸ø´—6€?âæÙ\rsİGğ9vÿşı±Ék³D({uu5ôõy\0çŸÃ\n\n™™	YYYª]\0Îœ>àóTºÄd2áë·›Ïáª««á¹n-œœˆ#Ğ¥K—f‰rss±oïêsh4\Z\\\\\\$úÒÒÒèÛ·/6oŞ‚°ğ¸Í›3§OÁaÚT,_¾> J–=Â…;ÖJ¬kçççóÕÕ;uÒ@/›l“­  €I“ìùĞñT	9¸{öì‰Afæ8tèP“ùMnn.ÂÛ7oÄ–\rx}íÓgüìñpòäÉf#00n®spìø	L›6\rÏÓai9µµµh\\±´‹î”°Ùløïö`\\éÚµ+zõîüüoMm¿ÃLú÷gĞé8rT(âjggw…`2Åhàp8è?àÏ…á©O   \0ººzT¿tXXöîİC}_&“‰…yÚÚ¿FdçƒC0tè0ØMO©Òüøñ;vl«şâÄq*Be0prvæ{”ÔºwïwwwÜ¸‹5k×âVìM,˜?3fLGTT6nØ\033sqê6¶\'Oğ¡á“&M©.²õ¨ñL+—DEEJDµK£Ñàää„²²J›¨1’èãã[k>Œ¥Ë–7I Ğ”9::şìñærq9ô\"UÚhê~påê5˜˜˜àÒ¥Kp÷X«sæÌÁµk1BOÚY³fñil6^^›øÚZedd`cc‡‹û)nÚË¤Ÿ	äääš=5™L&¶mß!™9s&ì\'ÿİì´—Ë…¢¢\"úöí÷Ç¾Wr}\n3ÁÎRRR¸zõ\n_\n“Á€ıä)pnâURR‚»»;aİšÕğõõÅ¶m[¡®Ş©IRÎŸNóáá?g®	Áôé3~Ë÷êĞ¡¦LùÉ)÷áãëEElÜ°……prvK€Ãa#22‚Ï÷ÌÌÍEã*Íí:ú†T8’œÌ§$@³‹N8’’<|øË–.…ãtŸ?W77„^º\'\'\'‰šºº:V¯YKõxs¸\\ìÚµS$ú9`À\0hhh ´´\'Ã×¯_0zÔHX[[ãøñB)o˜L&–/_áÃ-øœÛsİZ¾¶Ó@VVêé|ÿDÙ«·¶6:wî,g2™Xºt¬­­›uşeË–aÈĞa\"»¶¶ZZZÍ†³-Í¯Ùl6RŸ<AëÖ­ajjŠ;wâ°ŞÓ“¯³Ìbä(,[¶Œ/}xùò%nİŠå[“ıû÷ÇİÄ$\\¹r¬2EşØ±c\'_¨¿Îs½ØDâš²²2FŒƒ‡¡“†zõê-öˆæ›7oñèáCp	FCß¾ıš¥ğ¢7€M¶·çëÄ’D“––†««ÒÓŸaÒ¤‰X0Ï\r÷î%a­çzÜŒ½ùó4{“¢lÂ„	ĞêÚ•\Z\\É~•%YBBBh\0^½ÊFè¥Ë˜2e\nŞ¿oooÌ;|!¯‚‚¼6o†Iÿş|Î½ŞsÂÂx\r,=zô@=ñöí›ß¦	&™Ö××o2ÏfÖ7T8Š¹QÊËËcóæÍèÑ£g“•‹êêj@JJêä×oß¾Å»wï £«‡¸¸8,]²„Ï©4Å¦M›¨Ó‚€€Ã˜5Ó\'OÂdûI8zäõââbT”³š­Æ\0<†šœFLŸİº÷˜ç–ÔD\rëäää ÿÛWÌu+’ª±5.çÒétL²·oiv\n` ©)ßXÜùsg%®i<ŠŠŠøŸ?ÿ=ˆ¿›\0{{{¡r»’š‚‚Ö­óäk(ñóõivE]½#æ-pÇ‰\'Ğ»wo<~ü“&Úñhk\'OÆíÛ·±{÷n¾ğGUU»vù o¿~|Î½uËœ<yÒÒÒ˜1Ãeee|©Çï¶şı]<£FÁÂ…%\ZğPSSƒÿ=PVQzºBÄ&Æh‰=zôeeeÈÊ|É`1ô0;wîä›ˆ‹»ÄÄ$Ü»ƒàà`„†^ÂáÃ‡êg³yÎã·Û¿Yî°¬¬,ìÙãÏ×ğ²nİ:±Âã_ŸOff&.\\¸\0¯M›àááÕ«V	Ş8}ú4ètOé£¨¨çÎ¡	‡Ëkd¶Ù_¿]»v˜áèF}i©œÅ’xDQII	nóæSDè¢F7[¶Ğû×·šş»Ü¾İ[$zÜ¯Ÿ	æÌ™aîìYØ¸Ék×®ÅèÑ£±wï^\\‰\0ÂZ·n\r?¿İ04ˆÏ¹÷íİƒÃ‡¡K—.h¥¦F•½h4ÚoûÓ`}ûõ…’’ß¦C§Ó¡««ÏõëÅ&tllššš8zô(èt:ßgq¹\\¨ªªR#ªM…Óÿä;¥$\'ƒÉdPl²\rNffn]»v	teŸÆìÙ³©uÔ£gOœÁş}{QZZŠ‘#G\nU\0il•••ğöö¦\"†ÖQQßS”cgggcÇvoDD„#ù^®_¿&°Îß½{‡ø;qpus{ $99™¯½uæ¬Yb•ÇÄªwX[[#øü9jÇ8{ö,FŒÑ,(ÑØF=ş»3füö]ßÕÕ\r7®ß@QÑp¹\\¤?}ŠóçÎaöœ9Í¾733\Z51aÂ¾4ÄÈ¸¯P1@555ìÚåoooÄŞ¸v=Wö‘€\0hiiAA^É÷îaÑ¢…PVV†œ¬äää ¤¤i³§ŒŒ,äå!¯ @I¦JIIA^^ÒÒ2’’âé7:yA[»zõê…—/_BNN4\Z\rmÚ´¯ŸŸD:W¿š.ûüyÔ)VUU…~ıúá¯¿ºòİƒ¨E^[[Kı©¬¬D]]***PSSƒªª*”——£¶¶ee,T”³šš\nyyE¾tÂÒjÖ51Z©©©‰\'OğuijjRŸ-={ÏÓ©ò‘ZëÖ˜={v‹N‡F\Z…uëÖ!)1ë7lÀkBB‚Áår1~ü±®[SSƒ3§Oóµ·Š[Ë±{õê…şàáƒ<DûE?O§Æ÷Ä±öíÛÃÓs=†ŠÙ>\'©µnİ\ZŞÛ·ÃÃ}Øl6Øöïßô31iØhÜÕÄ,Şà^R\"Üİİ) ¦gÏT^¤¢¢///´iÓÁçÏÍfƒËåR¹5›ÍFÜí8”••\n8CÃiE§ÓÁ`0@§Ó!--\r:^OÉ+\riÈÉÉAJJ\nŠŠJ––†‚‚< /¯€ºº:0êZ‡4Ë®*nÚ´Õ{;6¬÷¤û¥ed†ŠŠJ”••¢¶¦,Vªª«yÊ*G]]-Xåå¨«¨®®›ÍFUU¸\\.jkkÁáp@¸\\Ô±Ùàr9àr	õü¥¤˜ „€ÉdÂÑÉ,à+ç¤¥¥!//666pvqÆ$;;hué‚ñ&€Éd\"$$VãÆ‰uš=|ø‡ò…üÛ·ïÙ¯ıáÃ\\¾|™§\"cg\'ôÄ­®®Fö«,´nİF`Z+\'\'á—/Ãcá\"‘œäíéÓ§xSÏûÎ“2KúGlÇf2™pp˜ÇñÈá	App0úöí\'ò;ÉŞÒÌÌÌàäìŒÓ§NQäõË—/Gè¥K\"óy6___ØÛÛ#7÷–,^Œ…‹£wïŞˆˆˆÀ–Í^¸q3–ï:òòòX¾|9ÔÕ;ÂÏ×—·pëC;&“É÷çÎ…ŠŠ\n~ü(¬wŒ2TTT ´´¬²2”––¢¨˜§|ñ%ïÅÃÇâYÿÌ	á‚Ëåı¢¢\"ï´p4èØoí³±±Aaa!öíİEEE¤¥¦6j2ú)j@£Ñ@§Ñ@«ßÏÊÓh4(++£³f´j¥\n5µÖPSkuõNÈÏÿ†¨ÈHê“ÉÄªÕk0uêT¡×¦PQQÁ!Cpòô8Î˜oïmèÜYš]4±sç®f×#ÕsÎùò»Ìœ%–äğ÷ïß|áğô\\/¶_¼x………Ø¸ÉK Ò8sæ8\\._TØ\\‰ñüùó\\è˜:mšØDŠ4\"&ÌYYY‰)“\'ããÇY~È…‹b›ı[Æb±0ÓÅ¯³_ñÊt:,,F`—ÈÜŠŠ\nÆ™Ó§¡¨¨ˆuëammk×®a½ç:œ9{N¤0Àİ»w±h¡õ£4,p[¸º¹Q¿ÂBW6›\r6›šš\ZÔÕÕ¡¦¦†:õ*++QUU	‹\'Ä*+«¼eee(-)ÁKK†ßa{÷îEDD8Ú´nƒ6mÚ@YEªª­ ¤¤%EE(++C^AŠŠ¼|º‡ddd(1\0iiiHIIQ‘Nvv6Bü;ÒàÄ +jE=yüsçÎÁÙsç¡««‹…×¯_ƒÉd¢OŸ>Í¢Ì555X±bîÆSÊ0Ú}úàøñbç¼)))Ø¸aŠ‹‹0c†#¦OGûöíñşı{L´›€öí;àrXßõ^¿~iS§`á¢%bw³edd`Ætp8Ğh4ôèÑÁ!!âã\'D‹ˆˆ úºD§6ÑÓÕ!7l ÿ¥ÕÖÖ\nıû¬¬,¢¯Ç»O>ÚÄ@O—ˆuÍòòrR]]M!äæÍ›ÄØÈ€<{öŒï5·nİ\"Ÿ?xï›7oˆ““ßgëéê}=]râÄ	R\\\\ü[¿?—Ëı£Ï—Íf“’’RQQAêêêşÑç•””\'N}=]¢«Ó‡z>úzºÄÅÙ™¼}ûVà=‡‡iäìÙ3äÅ‹$.î6ïyêêOŸ>I|‡$~}=]’İâïbdh@ôõtI||<yûö-Ù¶m+¹-ğúµk×}=]òãÇ±?cíÚµDOW‡·~õuI´ëŠ2‰»¸¸˜dJı0-}0¿ÃH```“ÿCôõ~:·¾¹~ıšØ×‰‰!F†äÉ“\'¿8u,162$YYYBßWVVÆ[@úzØÆÆšÜ½{·É\réÿ¢ÕÖÖ’ø;wÈ8++¾\rOW§1Ğ×#„Åbñ½\'77—äææ’W¯^‘‹/’õDOW‡ØÛO\"_¿~%!!!dôèQäË—/bßÇÕ«W…¬‡ëÿè»eff’ùóæ‘¾Æ†dóæÍB×DVV162$çÎûº&]>dØ°¡¤´´ôÏ96!„Ÿ§v==]âåµé_](,V9zô(é××˜ìÚµSäk÷øûó-&}=]’ššÚìgÔÔÔÕ«W“¤¤$¾¿OKK#ÆFäşıûÔ{÷n¼Ğk¤¤¤1cF]ÌK–,&OŸ>ıã\'îi\\.—¤¥¥‘Å‹	İäÆ³¢ã¯vàÀ2aüxÂáp¨Ír¬¥%)++£œÔÜl0ÉÉÉë^?z$°öíÛ÷[¾gMM\r¹rå\n1Ğ×#†ú$$$„Ú¨Øl6Y±b91ĞÓ•(Zó¬ßÈ\Z¢ÍĞĞP‰ïKbÇşñãéoÒïÔnêôúİöòåKâè8ƒ\ZC‡6û°*++É‚ó©‡¤«Ó‡èéê7oŞˆµ0kjjÈ©S\'Iyy9ùôé124 W®\\¡^s,(ˆ¸»/hò\Z………äàÁƒD_O—º‡Æáù†õëIzz:a³ÙÿgšÍf“gÏ‘õë=›üŞ‡ÂRŞ³>E233Imm-qp˜F¶mÛF=G}=]K‚‚‰ƒÃ4òíÛ7±î\';;›èéêğ­WRUUõ[¿w^^Ù¾};162$ãÇÛ’ÔÔTr,(ˆ\Zk×®I´ÆŸÖƒ™¶(…<ãk†ÏÎ`s8 Óé°\Z7;vìücêµµµˆÆÖ-›A@xÅì„úşı;œœñ%ï3¸\\^¯m‡ê8yêT³ó¹uuu8sæ4®_»6‡©S§aêÔ©Ô¿»¸¸@[[«W¯yôôtEò½{|ÈyC3ÈË±˜hg}1xßşW­²²’Gà†[·b)=ì‘×p2nnnS|Ÿ?ÆæÍ›ñæu6¤¥epåêU”——c„ÅplØ¸“&ÙãÎ;Ø±};ÆXÁ¼yóÅ»>şggäç£JFš]ºàÔ©Ó„>àiùøìBÎÛ· Óépw÷Àœ¹sÅFÂW®\\‰[±7ÁårÁd2°vİzüı÷ßßG‹»¤¤Öã¬PZZÊ«=28uúEh,‰F`Ù ÑèBK?~ÄŞ½{‘˜6›WÂZàî	ìÄ–}ûö\r&ÚÙQå£4ôàÁCbÍ€ß¸qëÖ¬ÆùÔpqq1¬ÆZ¢GÏ^èİ»7æÎ‹ôôg(--P£h@d“’’°ÿ>|úø—ÏÁé4\Z´ut`o?ıû÷—Xøí¿²ÜÜ\\<|ø—.…\"ûU¸\\A‡îÚ­Üİ=`ffÆW™àp8ˆ‹‹ÃŠåË°gï>˜››ÃkÓ&()+cíÚµÈÌÌÄŒé8‚Š”şÕòóóá¾`^¿Î¦šPh4\Z\"\"£şÑl‚8öíÛ7LoÕV­pùr˜Øˆ{jj*fÏšIõ´iÛQQÑ-ã˜kièFzº:dÎœÙ-…Î;GÂÃÃBá[·n}=b ¯GbbbHXXkiIŒ\rÈ°aÃ„\"ÓMÙ“\'OøY=]âääH\nÅzjj*Ğß„|üø‘ºŞ˜Ñ£	›Í&û÷ï\'F†DW§‰\'?~ü Bsè’’AÆŒMôùb]>TøºŞÓ“ÄÅİ;äü7íë×¯äöíÛÄsİ:*¼şõ{èë’±c-ITT¤HàçèÑ£\"^]]M¼½½I?c#O˜úzºGÄÑq_\n¦¯§KÒÒÒş•çFŒ\r\ršÄšÊÕ]œ‰n\nÜ‹ŠŒlñ=´èÄn¨ûN›6ïß½£:†vûï‘ˆ¹!üX´h!’ïİÃ•«1ĞĞĞ@AA‚‚‚vMaÅŠT¸¬¬×®]ƒÏÎfa__?±‹ö‰‰‰X´Ğ£Ñä}ûõ‡X¡Ù·oß ¢¢999?v¥e¥033‡·÷6XZÅÔ©SÑªU+=zGãÖí¸&¯[RR‚äädœ9s\ZÙ¯^ñ\Z~éı¦Óiàp¸gmSSSôîİ:uûø]V^^¼¼<deeáşı\\‹‰ƒN·Q¸ıóyÑ££, şğîİ;ãË—<L<…êéÎÊÊÂzOOØM´C=à:w.Â#\"Ñ­[7äææ¢S§Nb\r¶`ÅŠx––Jµb2™<\033³?ş¬²³³á0m*ÆO°ÃÆÅ~_ll,V­\\AÖ=zôÄùà`‘d\n¿=o°øøx,]²˜º™N4zé’Ä¡Cnn.l¬ÇÁr¬¬­­±|ÙRÔÕÕaÕê5°³³ÚXrñâEìÚ¹á‘M64÷\0Ëˆ¡q_øøøˆ=mÆår1ÓÅééÏ Ş©¼·ySò/>|À„ñ¶àp8ˆ½u;vÄË—/Ñ¡C¡’­xöìb®^ELÌ\0¼Ù÷Æ?KãÁŒN4`:húôé---´oßªªª——o‘dÏ¯ß«²²%%%ÈÏÏÇ‡ï‘™™…ä{÷ğõëªa¤±37tœB`cc‹qÖÖ044Š¤¥¥aÁ|7¬ß°	¹¹¹TËîÖ­[1|ø0˜›Á×¯_a5Ö+W­†ƒƒƒD!ğŠ+ğ<ıuL&~»wcäÈQÿÊ&´ÔT¸{xˆ=Ó]RRûI“(,€ÉdbÿƒÍj‹ı1Çf³ÙX°`ÔÍ1,^²³fÍ’øZ·oİÂÊ•+@&ıbÉ’%\"Ù>+**0lØPøøø6;Éó«]»v\rëÖ®¡œ›N§£gÏ^ğß³‡LÔ CJJ\n>|xñã\'ğ .D—.šxüè1<99917Ãùà‘]z<Ä÷HIIÁ•+ÑxU/Òğ«“ÿ:Eº:OÛ«sçÎhß®ÔZ·†’’êL¤¤¤øHºÛ*++Áb±Pôãò¿Gnn.Ş¼~/_òø®ÿ«öuãöÑ>::°±±…©©)´´´D¨ãÆYaŞ¼ù”ÚKyy95ìÒĞa‡5«Wa·ÿ¡¦˜€ìÇ±xñ\"¼ËÉásê»v‰Å|û_Z`àQ:Èë]§Óé2t(öîİ×bå—ìØ\rÃÓ§Mı9ÓJ§#2úŠØ:¿ÍÛÛa—/!èØq±ÆçÜÜÜğ÷”)°0üoÊ¹[·iƒÃ‡Äb¦lªİĞÍu.î&$b›öíß°°0”••ÁÓÓSìëTUUáíÛ·HM}‚øøx<MKF«ï˜ç9:¨nŞ¡YA€Æ¯á]“€4q}\Zu}ûöÃ°áÃÑ·o_tëÖMìpq÷n?<AƒáN\\^eeBÏÀ»víB§NpãÆuaÏŞ½bm°\r–™™‰ùóæ¡¸¸è§ö¥¥åÿ´Sçää`¢İ¾”C[¼›c€¯¯Î=Kí8#G†¯¯¯Ø¹oƒbäˆá6Ì~»wS;Öë×¯qøğ!´j¥†±cÇBWWµµµp˜6\rGE\"ÈuuuMöÇÅÅaù²%Bİ°€‰5ĞØÊÊÊ`n6GbĞ ApvrÂÈQ£à³k\'âï&´¸¼RSSƒ/_¾ ;;Ï=Ãƒû÷ñî]è4\ZH£õ§sşƒÅĞ°)4DàqİuïŞ„¡¡!zõêuuu‰FvŒÅbáÂ…¨¨(G_ã¾èÚ­<ˆÎšš˜?>ÊÊÊ %%%Q^™œœŒóÜ¨M¯!šØ³w,,,ş§šÃfcÉÒ¥TïzÃ@ÊÒ¥Kÿñµ‹cÀzœ*++©Á×o·ØBcü\'i6¬_¥Ë–ÃÁÁ‰		X²d1ŒŒŒñòå°ÙlhjvAIq1ÆŒµÄÚµëš¼Vxx8!BËOën®s©—F£A§ÃkóŒŸ0AìP°¬¬‰‰‰7n¸\\.æÏŸ\'ÁËk3lÇoöıµµµ`2™ÍæÉ•••(((@^^>~ü€wïŞ#çí[¼~²²²tb+++£gÏ^èÖ½;ºuí\nÍ.]Ğ©S\'´mÛVìúzcFÑ¦ìÃ‡<ÿº:ÌssÃ;%&8 „ <<[7{Óè·£Óé8r4Pâù¿°ë×¯cíšÕF¥¤¤„+Wc„b1ÿ‰c@LL<×­¥nR^^Wc®IÄŞ`şş»qæôiŒµ\Z‡×bà»Û#FŒ@ee%®_¿íÛ¶BQY‘‘QMÎĞFGEaë–Í˜6}:–-[.ğïÕÕÕğóóƒ««+~üøg\'jv¸aaº¸ÌÄœ¹s%F¡Ùl6F))Ñs®Ñ\0\0 \0IDATi\\¹zUäTÙ«W¯põêUdd<‡šZkŒ1£FùaQIee%Êë§¾X,ÊËËQYYêê\ZÔÕÕ‚Ã®õ˜HIICVVòò\nPTT„’’”••¡¨¨yyy±¹¸~®®^½ŠîƒNgÀÌÌÖÖÖBŸ³gÏÂÏ×zúX¼xq“úS¢Nş   œ9}Š/•RTTÄÑÀ ‰h¬oÌ÷îİÃı”p¸\\\Z4¬aèÛ·o°g…šš\Zê0Üåã‹1cÆü–ëÿ6Çf³ÙX²d1¨°b’ıd‰ ÿÆ§’‡‡;ÒŸ>ÅtG\',[¶ŒïßÓÓÓÑªU«&ó°àà`øûùÂjœ5V¬\\)¥çr¹djŠ›6ÁÊÊ\nïß¿Çš5kğ*+S€skİºuc÷ïß‡œœ\r\r›|ÍãÇ1wÎ,ª‰‚Á``ü„	X·Î³EáîaŸ?†‹‹3\n\nø]Ï½p8 @h\ZRVVyyy‰¢wïŞaûvo<~ôˆï³tuõ°}Ç‰)¬®¹|Ù²úPx&dddpùÒ%TVVbßşıbæImlØ°W¢#ÁáğÆG‡[Œ€¿ÿn0Ìßò///¯ßq!:Ş½µqñâ*ïËÎ~…^½{KìRRRèÛ·B/…BYI	C‡å;E:tè PxL\'NÇıû1eê4¬\\µªIm#\Z†’’ş(Ä AƒĞªU+Œ1?\n \'ç-šÉËÃ…ôÖÖ–è{tîÜYd¹£¼¼ÎÎN¨¬¬¤¢„†RÒ›7oĞ«Wï&×ş—Œ___<MKã#Xär¹(..ƒÉÚşû+í“8‡™.ÎÈËËã‹¬lÇÇ–­[›íDd±XFRRtúô´ŒÊÊÊà0m\ZZµj…³çÎA[[İºuƒ••?y‚[·naôèÑÿ¸”ÈWº}‡ FÃ¾ı~ëòÛàé]µjÅ#òkpŒ„„»°±±•8œUVV†£²²ªYÅ„ÚÚZ:x\'NÇì9sàááÑì‰WT\\Œ˜˜«˜2e\n\0¨Ûˆ# #+‹ÇõÜà\rMlìMTUW¡W¯^-n\ZhlÙÙÙ	>ß¤\0ƒ¬œ\\“àOmm-BCCÁb±Ğ¹sg¤¥¥án|<444¨{{÷î®_¿®]»BJJ\n‘‘‘HMMÅ£‡ñ<ã9¾}Ë§êß\0¯\\tíÚ5´k×ï·zøğ!¡¦¦&4ò)**ÂÚ5«…~B>}úˆ)SşnQxß`?~ü@@@\0|}vña!L&K—-‡»»‡Xë‹Á`àÓ§O8x`?>å~Æ!C€›±7Ñ½{w<}úªªªhÛ¶-ºuëŠİ~>n1â·õ–ùò3(mr&“‰7I$xù¯;6ÀãÖNOOÇ—¼<Ş	Äá  °\0#$Şõ444 ¤¤ŒcAGÑ¾CÇ&é*++áçç‡Ğ‹°pñÌ=G(\"_ZZŠ´´4´jÕŠrúcGñøñcäÿÊÊ\nÈÈÈÀÜÜÚ}úàúõk_9—ËÅóôtÜ½{İºu—H½©ğ5**R(’M£Ñ ÕE«If”êêjÌšéÕVª<x0nŞ¸ıû÷Ku:fdd`ÓÆ\r˜æ0\r22²ø{Êd¤$\'CQQ	9998sú¢¢£0jÔ((++#++^›6`ÌK\n©©©‹³ -##”ö–ÅbáÌ™ÓMFE„Ìpt”3hl>ÀÒ¥K‘”˜ğó„£ÓApğp\0lmmÅ®¾ĞéthkkC£sg?„¢âb¤>ylÙ²RL&?ÈÈªá\'*2ƒæ‹ÖÂÂÂp\'.]´´$:°\Zd\Zº5ét:ÌÌÍ±hñb‰+HÍ~×ßšÉÈÈ`íÚu”‡ËEìÍ›ˆ¡†)ÊşşûoŒ;[¼6áÆBs5///D†‡a­§\'œ›D²óòòàá¾\0¦àÌéÓPPPÀÉÓg0tØ0deeÁ}Á¬^µ\n\0OŞ(úÊU:ŒO”ïı»wp;ûöîmR/[ÜM«)xƒN§ÃÀÀ@dYŠÃá@Q·¨äååQWW‡S\'OàÅ‹ÔIÀ£Õ¡S§§«Û<ìÙ»AAÇsí:jª«qäÈêwc³9|ìÅ‹(**Bÿş|âcû5JÓÓ7ºiÓh4˜Ú¢Øïß¿cÏ¸¹ÎÅÇø”:†·ÀÕk×aŞŒÌMSfee…M›¼v	ÉÉ÷——:GÁâÅ‹qÿş}8;ñ$¤\Z§TÑÑÑØ±İßò¿5™æ5eaaaˆ¿s‡/ºYµjõÁR~»c<º­Û¼ù„ì¶löBff¦ä!ƒå+V SgM¬[»‰‰‰|!ÚªU+w+[½·cÒ$ûf£‰Ûqwrá\"Š‹‹áææJi ûûûãñ“Tìö÷§NKK¾¾¾X±rÅÚÀQvâÄqØÛOBll¬Äbô\0µuÕê5’’âÛˆÚ´iË±âwKq¸´iÓ½z÷†O}¸*l±4ŞH:uê\'\'gDGE¢®®N(ˆ¡Ã†cåªU¨ªª*‚ --%K–€ñyCßø¬Y³$ŠÔjjjpóæMLœh‡S\'O‚Íæ¹ÒëÅ•«Vc—X\r,>|À¦M›pòäIMÔvüxx®ß\0\Z†”ädJd‘Á`ÀĞĞsæğ¢>Ë±V3h\\\\6{m‚µ\r6nÜ$Ñ†•‘Á“Õm\\Ü¹Ë§E`ßæØ\0`mckkêàr¹X³fµÄ*\"\0O#((¦ƒaÉâEHO†‚‚,ôğÀ£‡á¿g/ÆŠáRRRPSSƒ®®./Y‚€€#Ø·o/ê8eddĞ¦M¾*\'\'‡3fàì¹ó004¢Ô)9Š‹Š°jå\n¬\\±ÏŸ?—ø{M›6\rë7 M}NG§Ó1ÎÚ\Z\'N”(§c³9èĞ¡Ö¯ß€ˆ\Zúşº¸Û¶k:êêjçûşı;®Å\\Åßÿ\r---Œ±´ÄéÓ§„*ôïßF]00˜˜ôÇñ\'E¶ÿjéééX¾|9V¯Z‰Ò’’F§4†ÆÆ8w>Ó§O›ĞO]]jjj8|ğ\0.^¼(ğï“&Ùcõšµ ÑhØ´i#¶mÛ†;wî 44Vc-1v¬Ö­[ƒ””¬ZÉÓo“ô”-**ÂÊ•+øÄ&L°kÍ¶Ô˜êÂt:K–.Åƒ¨æö>`ÏlÜ¸Iâœ¢}ûöØ¶ÍK–,ãŒhß¡JŠ‹qäh ú÷o™¼kçÎ±ÿ,X°\0=zôÉË­¯¯€€\0DDD`·Ÿ/•w³ÙlÄÇßÁİ»ñp˜>öööbÏû2ØÛÛcÔ¨QøñãdddĞ±cÇ!°ïß¿‡.Z„¥‹añ’¥Í*£VUUQŞ¯NÿàÁ\0¼„„»““ÃË/““#”ÛÚÌÌ}ûöE~~>h4\Z:tè v^ıöí[\\ºt	B‚ù†L\Z†_V®\\ñ&HÒKKKÃÃÃåååğõÙ…¶mÛ\nLN›6\ruuuğßí‡K¡‘ñü9ºuë†={÷ÂÜ|¤¤¤––÷ù01€4ÄÄŠ¦8øùùáë—/è×Q]‹/şcÄ$ôÄ@©S0têKFEF\"44´Å¨û={xax=ssNİ»wÃÏÏ÷îİĞ––——‡››®_¿Şìç+))ÁÉÉ	¡—.côè1`2™”)‡ÃAğù³°›0`e***èÚµ«Ø£‰ÂŒËå…¬S¦üÕ±ÿ^g•n„Ls¹\\$&&@[[²²²c—/]‚‚‚\"N<Y‘d€Ëå\"66¶É{““ƒ––ºté\"–S¿ÿû÷íÃ$»	¸P/nßPÏg2™°k…K—Ã0}ÆŒª2,]ºMM±rÅr¡2ËNNNX¸pOÕsÄlß±# %%…ÌÌLÌå‚={cûO.ãZÌ>àÏÇÇ÷·×Æ……gÜ.\\¸ÀÏ©§KRRRZt­øøx²|Ù22Ù~™<Ù|øğ¡É×?}=]2mÚ4b ¯G/^DòóóˆÖ¯_/Ñ}ÔÕÕ‘¸¸8bccÍG”×À«¥§«Cöøû“×€Åµ¢¢‚èëé’={öB9~ü8ÑÓÕ!555‘¢¡>Ñ×Ó!………„Íf>ÚÄÉÉ‘ÄÄÄÈÈH²bùrbdh@?~L!äáÃ‡¤¯±ùøñ#yıú5éklDHmm-©©©!555Ä×Ç‡\Zè‹MNÑ”½zõŠøûï¦H\Z(‚†úµ1~¼-‰¿s‡ÔÕÕı¶gVXXH&ŒOôuINÎ[¡wÄØÈœ<q‚p¹\\Š-ÔrÌòõëW‰?3))I€õòåËÿ\nÙÃo/w	3mmmäççãu6O®„\0¸zõ\nÆXZ¢U«V+W,Ç‰“§`ffû÷#>şF% €{Û¶lËÌYø«kW¸»»ÃÕÕ\r7oÜÄ¡C‡ §§‡víÚÁ` ::\ZjjjHtMMM“Qt:ıõÆµ‚ºz\'$%&‚Á`ğ9¦§§#44ùùùPTT‚ššÚ?\ZÅkŞ½~ı:::ĞÕÕEnn.\0`ô˜1`0èÜ¹3êêØPRâi2ËÊÊâ[~>ªªªqçN=}\nÎ\ZX½z\rÕ£]TT„ÂÂB˜››ãÙ³g¼2ÕŒ••¥òæ6mÛâÛ×oè¨®.1uSuu5>}Š£G`ÛÖ-xöìßH*ƒÁ€´ŒÖ¬óÄŠ+Ñ»wïßÚ\"//SSS„#)1	cÆŒáCµi4\ZŒŒŒPÇfãHÀ!äÿ-[¼\0‡„@CCC¢Ï{ûö\rœùòêÉSş†««ë\rÁ©ïó»ZJ›³ÒÒR¸ºÎEVf&¥ÂĞ½G«é½ºº\Zvvv8p`?ºwç	°¿|ù3¦; g¯ŞØ³g•#?yò®sç`È¡ğõóÃ©S§ ««SSS”——ÃİİÏÓŸB­uhjjBUUŞŞÛùr§W¯^!::\Z«êË_ÍÙ·oßpıúuìÙí\ZÎ25äŠ†FF˜8qLLLş±ÎVc¯Æ\\n¿¾¦ñvãE,lq5\\“ÃáPU\0a¯!\\.bnP_¾|Á£‡ôôgD\r\\.+V®„¥åX‰¤•+ÊËQT\\ŒÊÊJHKKCUUµÙƒâùóçpqv„‰É\0ìö÷\Zâ/Z´÷’a`hˆ7IÜ9YPP€™3]ğéÃJFßÀ¿]iö?wì†œj¼­\rµ†·À;›íæJHH@dDöìİË÷÷OŸ>ÅLgtì¨Ã Óéokƒî=z 00jjjD×®])uÆØØ›	³‹¤¥¥Ñ¯_?>”³ºº\Znnnxš–ŠANN\\G¬Åœ——‡ØØXøïöƒN§&\ZŠA§ƒC¸˜:ÕÃ†\rƒ¶¶öŸÏ·şe+**BVf&âïŞEèÅñës`JIaá¢E5j´D]~~>\"\"ÂqøĞ!B0ÎÚ\Z:tár!%-\r---2¤É|øîİ»X¾l)llm±~ı¾(*!!‹yÀ|È0lÙ²E¢ˆà5K­\\¹I‰‰ÔF)++‹°ğ‰fÌÿ¿rl\0xôè\\çÌæŸæ0+W®‰”oßîNêà,Dû(++Ó¦‚Ãá@µU+htÒ€¯/>×sGÙÙÙ\0®\\¹‚‹.àÜùóB?+00Gà»ÛÃ‡Ç·oßpø06yy‰~ÿş‰‰‰8uò$>Îm’ÓLNN\'ÙÃÔÔ={ö[‰ñÍòóóñúõkÜ¿áa¨ªªäc,m\\ÛÖìÒÎÎ.077—øûæääÀÑqª**°Ñk3†\rÆç|,¥¥¥hÛ¶­H\0/ìòeìØ±sæÌÅ¼ùóğØh=×­ÅĞaÃáåå%1PÆf³±cÇ\\¾Ê7 râä©énÿO–»š²şıûcË6olÜ°l6B‚Ñ¦uk‘üËUUÕÈÌŞàòèáCÌptÄ§O¹HJLÀ¡Cùr\"üøñƒ*ßìÜ±Ó§Oz­àè‘\0LŸáHQ.)++ãÑãG(**»¾Ü®];ØÛÛcôèÑxúô)®DGãÖ­X*œåıá\rƒœ=s\ZçÏ¡ˆ€Ş½{C]]]è°Ëÿ‚•––\"//¯^½Â£Gsõ\n:¥ÚøtnØGk·($­­­Å¦MQQ^¨è+B¹î”””Äºö${{|ÿşAAT´°y³ÆŒ±Ä:OÏ¡ğÇ‚‚vù_—Üö;ÿu§şO\0lmmQğı;ØO)M<x\0ÊÊÊ˜Ò9º¡¡!¶{oÅ]Ë±Öˆã,22QÑQ¸té2ª««±kçN=B5–0ÈËËãÛ·o(//ÇÒ¥KPQQ	õ§÷¯§ì’Å‹Ğ­[w¸ººò/ÚÚÚøøñ£ÄÃ\0ÊÊÊ:t(ÌÍÍñîİ|Ü»—„ğğp|¬/‡5vr\0¸s×¯ÅÔ—ÁT1dÈèêé¡[·nèØ±#Zµj%q+ã?µŠŠ\nãË—/x—“ƒ/^ 1)¥%ü’¿ìú™ï†ñS\0è¢¥…I“&ağ`3tíÚõbùùùÈ|ñË–¯pê’’”••Éd¢C‡b}Î¼ùóQÆbaãÆ\r ÓépttÂüÄW´ldçÏŸÇ‘#|eÃ¥K—ÁÊÊê?Ùx™ÿÕïââ‚‚ÂB„Ô×/Ùl6¶o÷†¼‚<¬­m^?lØ0ìöóÅÒ¥‹±jõZèèèàÁƒ\n<Šë7n‚Á`@AAë×£}‡8°òóó±téR¨««#::\Z;wìÀ»œ;v\\ §c³ÙğóóEmM\r¶y{ìØ::ºÈÊÊjñîK§ÓÑ½{wtïŞöö“‘””DGGá{~>Ÿ“7Xqq¢££påJ4å@ZZZè££---hhh mÛ¶PUU…’’%a+--İ$øõK©l6›\"7¬ªª‹ÅBII1¾/@ŞçÏøğñ#22#÷Ó\'±	;vT‡µ\r\r\Z„={ş6ºdiiiú*KƒâÄ‰8î,zöê…NêP[W‹yóæC___äõX,ªªªÀ Ó±hÉ8;»´è¾\"\"\"àë³«‘S3àèäG\'§ÿ,¢ú×sì_‘îM›6âÆõë|á‹¯ŸĞÉ¦Òºòr\0 }‡ZŠ¸tévîØ[·°ÀBÿ×Şu‡5‘}Ñ3I+ ØÖ‚‚º*»¨k+öUQT,Ø®\"M±°v±‚}U,kwUD*À‚¢‹(H•&-“ùı‘dÈĞQÊ\0s¾/_ÚLòfæy÷İwï¹K!àóáæáY¨JÅ™3gàáî\nGGçB¥Œ‚ƒƒqúô)lÙ²µ\\ÏAjj*\"##ñôéSÜòˆ&m~v~ÒŠD\"Ô­[Í›·€²²2\Z5nÅºŠP¨[rrràKHGJTJ³23ñ#ó¾\'GRR>BNNN‘*F@‘\'i‡ˆ¢Ğ£gOèëFÏ=Ñ®]»\nñşŠD\",Z´ÂìÙ³\r[Ûµ\rÅÂEf˜3g¶oßß£GpñÒå\"—å>şk„‡…a£«\0@AAºººÚ^œn^~QL>Ÿ±cÇÁÁÑñ§3Úª=±¥ÛjÍ\Z<|Ä ÷f¯-´[‰‰‰‡‚‚ºtéR¬7ıÎ;°´0I’¨SGö022*°]XXfÏÄèÑc°nıúBÍ¸÷ïßcÁ|S\\½vı§LµÒ ;;±±±ˆˆˆÀ«—/ñøñc„…….,ê’É’½´k¥²¿UÜïæ8ìÜ¹3z÷îƒ®ÚÚhß¾=š5kV)Š/?~„Ñ¸qod„sçÎ¢œş6nîî´wûÊ•+pt°ÇæÍ^Œi›¬WÜ|å\n\0|B¯^½••…“\'Oàè‘£004„¶vWÔU¨‹¯11¸wï,--„Ò^¿~ÖVk¤Ö<®®®•^ÔuÄ/$ÂÜÜÏCBÊ]èıùóç˜=Ë<£Gâ¦¦¦bÆŒéHOKÃÙsç¬©ÇÆÆb×®ˆˆˆ@Xh(®\\½Væ`…_±hğåK4>F~DÄû÷Ehhh¡#ki‰ZÜ 0K K—.ø½shjj¢mÛ6hÑ¢e‰^çŠDHHÌ-DvVÆÁÂÂ’öŒ‡„„`á‚ùÈÎÎÆ›·\n¨Øaù²¥èÓ·¬­­,A½{÷ŞŞŞxô\0\0HÎa5uœ=wJ’TÙk×®ÂÆÚšQUFW¯76oöB£FªÜ¹É\nbâE}ó•+ñêÕË<róùp÷ôüeÁ÷?ÂÚÊ\nï0ÒÀË—/§…ÜÜ\\ñ÷™ÓØïs=%Õ<dçİææ+(‰1gƒfvv6RSS‘œœŒÄÄDÄÇÇ#>>			HLL@B|’’’””ˆ¤¤¤\"GnŠ¢ ¬¬ee(++Cµ‰*TTT¡ªª\n555¨ªªBUE••Q¿~ı*5+‹rè¥§§CMM\rA \'\'çÏŸ‡‡»”UTàíı£@CZZ\ZÎıŞÛ·A]½öíß_¤™NQŞ¿ÿşû?~ü@£FhŸÇÃåË—ao·–vJ«ÉlÙ²¥\\Fk±¥^Oó•\r\reŒÜëÖoÀøRHø–tãpssÃİ;·A’\"8x)))°Z³\Z+VšÃÄÄ¤P“ÍÂ|%4ÚµCÄ»wàñxX¶ly©Ë¢Vrssé‡t9Q¶t¯ÔcÍçó! \'\'G?ª+¾}û†­[·âæë3v,–.]ÆXöìœñ%ú3æÌ‡™3gştPĞÙ³g±aı:†:j÷=àåµå§y+l«äøíÛ7jæÌ™”v×ÎŒày??¿B«W–ÙÙÙÔë×¯)SÓyTîİ(í®](+«5…n›ššJıñÇPêÏ?§Q©©©Ô£G¨iS§RîîîöàÇÔˆ#¨îİ´©óçÏSB¡ş.11‘Ú¹sÕ³GwÊĞĞ€zòäÉOÿI’ÔáC‡IÚ]»PsLL¨øøxÖ°ñbÅÅÅQ¦¦ó™?İ´»R;wî 3˜~5;ÊÇÇ‡êŞM›25GEFFØæèÑ£TÏİ©§OŸÒŸ¥§§—©œ+‡ÊÁ…¨=ºSèÏ‚‚‚¨¾}zS=»w£|||~éºeeeQÛ·m+@êÅ‹Í¨ÄÄDVV™â²HNNÆ:ggÜ¹ó/CIcÂÄÉ°´´,—å”GaÁ|SZ~iÌ˜±hÔ¨¾|ù‚1£GaÌØqØ°aÃOıöë×¯ñèÑ#¼{÷EACCzzzĞÖÖ®”ì6Cê¯(¯ì-’$ame…û÷àsà nİº…c¾GÑ¡c\'¬µµE—.]~ú·SRR°yó&\\¼p!¯òù>r$ìíXÈZbâpËM›<qÁßŸ±¤Ğ·_?899—¨#]\ZÄÆÆâèÑ£8uò89xxnÂÃ‡A¸zå\nŸ8YfxVV8€ı{÷ĞKT²KFÓşœ%K–°¶CTRRR„G‚ı9\ZõêÕƒv·n8p 455ù÷?}ú„ñcÇ€dÒY[Û`Üøñ¿TÉ#::\Zxúä	c)vò”©°°°¨ôÀ\ZCl©xï=8xğ\0ÃaÑ´i3lİ¶;w)—ÿyùò%vîØ\'Oş’$1}ÆX[Û”yäpwwÇ™Ó§\n(µH!0xğxxz²ÎÓ\\Qxıú5ììlé·b‰ Ğ\nªVÖ6˜>}úOàÑÑÑğõõÅé“\'0vüxÌ;ï§ª½æïË—-+PÁsá¢EX°`!ë•\"´ğ+ĞÕÓC£Æñ0(ˆîééé8wî,45µÊ¥b†ºº:F‰:\"44ƒ‚ğ#3­Zµ*u–O`` 6oò,’Ô€x]8**\n-[şV¤NzMBTT&N0BRRÃ;/-×KQ£aÃFe®¹•’’‚7n`Á|S„¾z…9óæAQQ	Ã†\rû%3ÿÚµkX²ØŒ.2)•j²µ³Çœ9sË]¼V[jÆvíÚí55é)i¹uó&rüş{ç_V\'áóùĞĞĞÀ¨Q£¡¢¢Š½{vãØ1?(«¨ U«VÅ°\"‘^^^øôñc‰!E!ê¿(L˜8±Ø6\'$$àãÇ\0Àj³¯¸sâââ‚ÈÈÅ\n+ŠD\"bäÈÒ)ê¤¥¥áöíÛ˜o:wşı#\r±eËVàû÷ï°]»Ã†/sÅ–?~ÀÇg?<ÜİhÓ[\Z¿}»7FSmÎ=ëMñÂL$ó•+ÀdòÇXµju¹F…}úô	~~~8î,TUU±{ÏŞ\"­ƒäädĞ¿Tåk¥Ó‰â¢Øîİ½‹•+W@$\"¡ªª[;;6			¸ví\ZcÔàñx…&eHŠ»a–´Maí–’‘ÿF\ZU¨UóéÓ\'Œ7¶PÉâÂnª+VšÃÔÔ´Øíâããa2{6ââb1pĞ`˜˜Ì†v¾‚¾¾¾¸àï£¾¾¥cGEEaÓ¦M¸w—!<(òm+“Œ2+,İê6\nhkkÃ×ï\\]7\"ğş}IB’Äí[·ğ(8^[¶–[eao„\0\0 \0IDATdX›6m`ooCCClöôDzzz‘ÛæääĞ2E¥EQ…ÒÓÓ±|ù2LŸ1+V¬@VVşüs\ZZ´hMMM?DP` „(\n4Éd­)y‹³JÚ¦¤}ø|>äää\n­A¢¿úêmúUUUxxz\"#=ºzz…šÅ³fÍÂ£G°{÷.¬ZµºÄÿ~ğà›-bÜä>\n›µÅWäFìrFFF:Ÿıûè9­4ªjÙòåøóÏéå\ZˆŸ™™	W¤9‘‘1£G#!!¡Tä&ÿŞ¹[h´R\\\\F†¿Ï¥õİÜÜ\\-[¶\"++iii Ş¿‡™Ù\"Ø;8B__Ÿ&†ŸŸğÁ™¿ÏBEE¥Ğì,ÿóç±c‡7|ı£Y³f¥j·â¾}Ã½{iRñx¼BC)oİº‰Õ––´ZN±–\0A oÿØ-‘·úU|ü‰I\'àô™³hß¾}‘&ı±c~Ø³{7=ÿ—ö!³ÅK`bbR.¹»PRRÂ²eË ©©‰5«WÑæ¡P(Ä_ŞŞ¦Õ.Ë%]`%¥z00…ãÇüJ4=¥õ‹Š+VRRI’ädœˆrxûöH’„‚‚a&%¸ªª\nC¢Q£FbqúfÍŠtş5VV¦·)­€„’’\"äååK5Š)+« Ô£AĞ±ØåzõêKş±Pb‡‡‡ÃÃÃÏC1Lo\0ğÚ²µ@aêª9F‰¿ÏC:ôB’$?z„iS§àôéÓÈÊÊª”¶L™2¥T¦-ÇÃÜ¹sŠìÄJJJ˜mb‚7o^çÍAy¼BÓ\"…¹¹âg!óf\"í¬¹’ï)±tŠÛ¦À>¤X‚,Æó/Eûöí¡¨¨X*SŸÇã¡9•’ÍÎÎÆ‰ãÇH™™‰\'N`úŸÓòì)C›L¯woœ÷¿PíI]#ˆ\r\0ZZZØ±c™™¨ÎáºÑ«W¯ÆÛ·o+¼\Z\Z\ZğğÜ$®ÃUHg&rlÖÚ¢{÷ÅşÖ‚ø HNNÆçèÏPRR¬òs-­êR\Z4hĞ\0k×ÚÒõÎŠ#u‡Ñ§|#wîÜÁ’Å‹Œ»v3Ö³ÃÃÃaanN{½e«,]¶Û¶m/uy&Î¯$Ô¯_K–,E÷î=`ccƒ”ïÉ´äRÀ½»¸pk¬¬1~üø\nÕv600€²²2vîÜ‰!Ï@{( ½¦–-_Áƒ—ø;\Z5‚…¥%.]ºˆ¸¸x¢W/İr&iá„ËÊÊÂ­[·è2Á”ŒtğÛ7oËäL\Z5z4][(³-ÛUxxxşR”˜ºººèÔ©TTTè ’””œ?[%•TeEüÕÕ›bƒËôîİ5	Ô0ôë×gÎœÁÁƒqêä	úÎ\0›<=péÒEXZZVè…”Æ„GFFâë×¯‰DhÖ´)Újh”É¡§¬¬LëpEGGãû÷äd”/£šKVV²³³ˆ½ï…ùËN8oïí€¤j-±zÊoeĞÇX±r%´:tÀŞ½{ğß§Obç=%ş-ãY³all\\.áÁâ¹u=úS…‡b‹—\"\"Ş1Ö¦ù|>ŒgÍ‚‰Év¥[rÄ.\Zêêê°±±Aß¾}áäè€ï’’¬$I\"<,‹,Àä©Ó`ll\\¨„my@AA¿ÿş;#Ù¿¬HMMÅ«W¯ÀãñƒôŒtĞss‚ Uê%¶ììlÌŸoŠÈ@<äææ@”oÍÉÉÁÅ‹A’$/^‚á#F@Yâd\0kkk¤¦”­2ŸÏÇèÑ£¡¯¯¨¨($\'\'C^^-Z´(7BçÇ‡àë{şçÏ3\"Ş¤£´ƒ£#ˆš\nAM=0‚ 0xğ`œùû,;†Ã‡ÒU9„$‰Ó§Nâô©“Xµz\rÆŒÃ\Zå‹üeK—Ğj¢\0°rù2†y/’Œ¤¥A:u0|ølõBn®8ÃJDQŒ©‰P(Ä»woÑ¯ÿ\0ZH_ŠŠu‘$Ñhÿ™ÑôWnt¥A||<.^¼ˆíÛÄ¢“y%y	.ÂŸşYfiÎyÆ2¨©©ÁÜÂFO^çZÔï¯Í˜<y._¾\\l\0JUYÛ½ÿ¢;fŸ>}qùÊU\\¹zW®^ÇÕë7°k÷R/Ù³gcş‚E İ­;:Ì vİºuÑ½Gtè Uèo¤ˆ•×955şşş?n,¼·o£¯¯Ô9¦×»=ŠeË–ÕxR×è;?ttt°k×.\\¿~Nàóy´y{;[hjiaÑ\"3ôë×¯\\9åAƒÁÁÑ	]6@H’´V›ìœeˆ#‹-B\\\\2ÒÓÔ\'FFX-®kFz:b÷î]øôñc³[NNNN>|Dµ\r6áFì ¤¤„‰\'âú›05O‹êKMİ7¯_cõ*K,\\¸·oßFFF+Ú=iÒ$¬ßà‚víÚˆëÎ-\",µ$‡–\r¾§¤`ïŞ½¾2dB=cÍñ†ôôtÜ¸qóLçÁÚj\r>¼¡PHWåóùXd¶—ÿ¹‚qãÆ×*R×ª[Í›7ÇŠ•+ahhˆ¿vìÀoË”©âÅó¬²|‰;ÂÄdúõëWå’²cÆŒÁèÑ£ËM}¥nİºğòòÂ¤I¡¦¦F,\0ÌgŠk×®\Z^•HJJBPP<€È#´´Ğá„‰“1}úô:à±k	4ó]xq¶ ‰	Ûµ6h¢¦ùóçcàÀ¿\\×úWP©…$)©¿ÏDÍÈ(²¶\r6Äñã\'0ì¡PUUex‰§L™‚Å‹£_¿~ÏuBB‚8R­’å¢££€ıû÷!9)$Y°,ï°á#0ÓØİ»w¯õòS¼Ú|ğgÎœAÀ½»tğ«Ö­¡?x(|>\n)\nó®]`0b8¶mİŠ°°°bÅ*Íš5Ãà!CñãÇæÜ|à@4oÑ¢ÄpQ555\\şç\n–.YŒ¨¨(Æˆnccƒƒ0bß!\'\'WªTÌ_Enn.^¾|	///Œ24€‡»âã!2å”uõôpèÈQ¸{x GµÔ@5Îî*`”¡Cöfï¾}ĞÑé…§OŸâÌéÓ¸yó#RIê€bìØqĞÑÑ©ò\0‡œœ¤¦¦ğö&%%AAA¡TÀ¸¸8Ô«W¯À¶qqqPUUexŞãââ ¬¬üËÂEáÛ·oxúô).^¸€‡ƒ\0Š™¯Î¶têDz÷éƒ={öVX{8bWP{{\\ºx¤H>£	á¼n}·\'Iaaa¸páş>}\nÄŸÓó9‚\0ÏIŠ0gî<èëë£cÇU^³©º\"--\r¯_¿Æİ»wá{ôˆdÕBT Î6EQ˜>c^¾xĞĞPPŸsKÌ™;—;‘µ™Ø<À²¥KâˆW¯]/°”$Edd$nß¾ƒ|™™ÉpØH÷\'­Û´ÁØ±ã §§‡víÚq$/™ß¿G‚áŞ11_XH<˜Ğ\r\Z6Âœ9s1dÈ´mÛÏŸ?ÇœÙ³è\\o>ŸsçıkLGìŸèLÓ¦NÅçÏâPL@\0G§Ryñøñc\\ğ÷›ˆ\0c—­İºM@WWLòŸ-)SÓ˜˜ˆ÷ï#ğøñÿğÏåËˆ‰ùZìy8HãÆC¯^½\nœÃM›<áçëRâ@Ô<Û¶m«bƒ±ËûöíÅÎ;èÎĞ½{ì÷ñ)“pnn.\"\"\"€S§N\"9)\"s¤‘íœòòò5j4tõôĞ¡C4oŞœ50Œôt|ùúoŞ¼Áÿ?†¿ÿy†nZ~Ë‡Gh¢®©S§aÀ€ĞÔÔ,rîœ€qcÇ --¾I»{xÂÀÀ€#vm\"ö»wï0eò$Fr½ß±ãe–½•Å÷ïß\ZŠ»÷îáä‰ãàóùt8£,¤æ:(\nm5Ú¡ÿ€èÚµ+Úih@½iÓRK³İw‘’’‚ØØXDFFâåË—xpÿ>>¢¿Ïóß\0	r˜2u\Zô\rÂï;—ú|Ü¸qVkVC(‚ Ô¯_/]®a£±!NnX¾|9Ü‡H$ŸÏÇœ¹ó`aaQnÿğğpâìßg@\n…Œ´ÇZRĞ^YY½ûôE§N ¡¡æÍ›CYY\r\ZÔŸÏNOonn.ÒÒÒ˜€/_¿\"22¯ÃÃñğaÒÒÒh\"¦*]w¯[WF&¢ÿşèØ±ãO‘‘\naai‰»wş¥¯ëŒ™Æ°¶¶æˆ]ôêÕ«XkcMßÙ++ÃßÿB…Í}¥sÉ§OŸâÎ;x\'Qp)ª³ÓÉ6ò\n\nèÑSZZZø­eK¨7m\nUUU4lØJJJPTTD:u*lÍV$!\'\'?~ü@zz:RRR˜€ØØXü…ˆwïüP–ĞåŒŠ:6A@DQèÒUúúúĞÑÑA»víJ¥#^\"##1Áh<£ÆÛÁCG\nÔ;çˆ]Ã1£GÑ•6oöÂ°áÃ+åÿ333ñåË¼}ûÏ=Ãİ»wOä\'ƒ”ÒËGAAmÛŠGvÕ&MĞ¸Q#4hØõêÕƒ’’äåå!_§rryÓ\0sX(\"77999ÈÊÊBFF22Ò‘’’Š¤¤$ÄÇÇ#&æ+\"?|@nnn6Öæ¼™\0±5Ò¢EK4=zô€––š7oN1–\'>Œ­[¼ $I:áÈ‘£µÆ—Q+‰íéé‰c~yŞÓ!CÿÀ–-[ªÌ{šššŠ˜˜DFF\"<<!!!xñü9Mô/šéeŸFªvé:@!ÛŠ»%QW¡\nUY‘†ßŠÿ› Gy]==tëÖ:uBÛ¶mÑ¬Y³JYöËÈÈÀ¬YÆˆT7ğùXme\rcccØ5!!!˜k2›±ŞyŞÿB¹Ôû*/dgg‹«QÂÑÑv00Ñ™ÚWÌçrï27ü£³¢¢\"š7oßZµ‚––Úµk‡–-[¢iÓ¦hÜ¸q•¬{ò¿ÿaş|Ó¼ø>/^ª0•6£FÇàeffÂİİGğù°°\\Å*Râå0555„¿§?ãñx?Ş¦óç#99ñññøöíbccó1_¿\"êóg¤¦¤Hö(m™¡Â¶•’¸qãÆhÕº5Z¶l‰ääïxH(+«`×îİhÚ´i¹é€—zéêbê´i8uò¤x¾MQğöŞM›6×ºµí\ZMl¼}ó†)n£¡Éío¶áÚµ«8}êT^M,\0K–.E³fÍ\nŒ8EÑsã¬¬,dff2RÁÂÜÜ\\…¹ …$mâó|êÔ©ù:u P·.S^·n]Ô•¼———‡¼¼<RSSal<##AQbb¾âßÛ·a<këÎãüùpîìYzÉñßÛ·q÷îİ\Z¡Î™â×\Z3zT¾$ıèİ»7ëÚ\ZƒÃ‡Ñ¤Øèê†Ñ£G³¦OŸ>…é¼¹´™Ëçóqâä©\n×0ûüóÏ?°³]K¯€4lØ/]®UÑ52m“¢(ìÚµ“~Ïçó1qÒdV’š¢(ìÜ¹“Np†F9’UíÔÑÑÁl“9´IKQÜİÜ*­ÊJY0räHôë×Ÿ>§iii8|øp­\Z±k$±píêUzNH‰(,X°€•m½{÷.._ºÈÈo¶´´de\nâÜ¹s¡®Ş”®´òòåœ;w}óK\0æŒL½£GáÅ‹±«+RRR°ÑÅ…6ºŞÅ¥Âô«‰‰‰pp°—	¬ÀÉÉ­[·få¹mÜ¸1œœéQ[(ÂÃİ\r>|`][µ´´°bÅJº­\"VZ±KãÇáÛ·XÚ¬í©£ƒQ£F±²­ûöíEZj*İV]==Œ7Õç·ÿş˜2u*Ã$ßäéY¦Â~•…©Ó¦á·ßZÑFxØ+øûûsÄ®nxóæ\röìÙÍ(å²zõšB«TV5‚ƒƒó–e$mµ²²fe[ócáÂEPRR¢	ü—/_f];ë×¯;{{C\\¤ñóçÏ±«rssáåµ™¡)=ÁBVzmSRRàììÄˆm^µz\r455«Å¹nÒ¤	6¸ld˜äN¬$Lß¾}1aâDÆ:ö¿ş*}Ç›¥¸~ı\Zş÷ø1í0kÒDµá„GAÌ×¯´	Ş¹sWº¶vuÁ!C`8j4ø2*Û¶m«‘ÃŸ±0(J$™k‹pıú5ÜàˆÍv|ûö\rÎNN‡™½}¹d•7BBBpĞg?Ã_kk[ííy<–/_Jr\"‘·oİÄÍ›7X×ÖfÍšaƒ‹+½Ò@’$œ×9#99™#6›áã³¹¹¹ô8|ø\Z4ˆuíÌÈÈ€‹‹âÊçó±dé2téÒ¥Z÷æÍ›ÃÕÍ6sI’„½bccY×VCCCèêéÑkÛI‰‰ğóóãˆÍV<yògNŸÎ,]¶Œ•±Á\'Ç‡ˆwtˆkë6m0sæÌj}ş\r0H0M˜ÜÜìÜ¹lh¬S§,-W1Ö¶}öïCXX(Gl¶áÇpssc¬¯±²fe6Ïë×¯ñ×_ŞyYf<œœœª½’©@ ÀªU«è÷$)Â¥‹pïëÚÚ©S\'˜-^ÂXªóôôDvv6Gl6áÜ¹sŒ°]{MLdY­)@\\ÓÍÕ•á±Ÿ=g.ttzÕˆNÔºukØ;82æ°vövHüÉ:Ú‰3f0¢ç^<ÎÊ¥ºZKìOŸ>a“§#ÏzíÚµ¬TÌ8wî^¾|A{ìÕÕ›bn\r·722B¯^ºyñÙ©©ğñña];6lG\'\'ÆRİ:g\'|ùò…#vUC$açŒpê´ièÕ‹}#à‡àáîÊÈŠrrvf¥ÇşWç°VÖÖŒ9ì‰ãÇğ(8˜umíß¿?ÆŒK/Õ\0vïŞš”èX-‰}ïŞ=Ü¼yC2rrr05Ïºvæææb“§\'--Äçó1yÊTôïß¿F:l´´´°jõ\Zd¼äëÖ­Cjj*«ÚI/YBL\"._ºˆÀÀ@ØU…ääd¬_¿NfÍZ\0gçuPWWg][/_¾Œàà‡´	®¤¤„E‹¡&còäÉèÔ¹³XZ™¢ğåK49Âºv¶hÑNNÎ¿€‹ËÖİ„j\r±ıüü”˜ÈHœÉÂÊŸ?†“£„d	¾Áec•Wæ¬h(**ÂÖÖ„ÄÌ•.+=şœum3v,ºuïNûb¾~Å±cÇ8bW6ÂÃÃá³#jkÕªÕU&WH’„÷öíâ7”8JËpÔh2µ]»vÅb™e%‘H„\r6 ##ƒUí”——‡•Ó/°g÷.¼yó†#ve!\'\'›7mb8ÌÌÌ£cÇ¬këÍ›7ó|\0’Ï–/_Î*á¿ŠÆLcc´nÓ†V9ıñ\'Od];;wîÓùkÛ^^›‘““Ã»2påÊ<{ö”±d4ƒ…Q[±±±°·³ÍópusGóæÍQ›P¿~}8:8æ-+‘$¼·oÃë×¯Y×ÖY³fAYE…^ÛşßãÇ¸ví\ZGìÊ ‹£ƒ=cÉÈŞÁ\r6dU;¥úe²qëƒô×Úê½tu1ÛÄ„©“æîÆºH¯ÆÃÑÑ‰‘·mogËÊ˜÷\ZEì}ûöÑó ÃQ0`\0ëÚpï.]¼Àˆ[g«~YeaîÜyhÒDéuîÜYÖµS__#\r$Ó%q$ã¾}û8bW?~Œsgÿfäù.]º”uóÕÄÄD8::2âÖíkeŠü£¡óºuŒH/w77DFF²‹<–.]F¿\'IçÎş`ØT{bg¤§ÃÅeƒ,kmíğÛo¿±®­>>>øş=™6Á{õÒ…‘‘8\0À¤ÉS\n8¨Ø¦“ÖªU+ØÚÙ3×¶7l@zz:GìòÄ™¿ÿÆŸ>ÑI~ÿ•dyôèN?ÆX†[ceU-ôË*fffPPP MòÀpåÊÖµÓÈÈ~ÿöæş…S§NqÄ./DFFbë/†*Š••5ë”FRSS±nsUÁçÃrÕjtèĞc³š4i‚®®“ÜÁŞÑÑÑ¬j§‚‚lllè8rRâÍˆˆàˆı« IıåÍX³1Ó=zô`][9‚/ÑÑ´	Ş©sçj§_VY:ô\Z2tÒ¼½·³N\'­[·î˜=‡YõdÛÖ­ôªGìŸÄÿÅÿ¥×¬X™æøâÅsÈ	gkkWk‹­—ØÙx<,_¾‚¡“vãúuÜºu‹um51™ƒú\r\ZäMàÆë±IIIØ°a=Ãw^·u1Ö…é—™™-F×®]9ƒ-Z`£«C\'ÍÑÁß¾}cU;UTTàì¼ÑÎuÎÎˆ‹‹ãˆı³¦í÷ïßiÓ¶o¿ş>|8ëNÜ©S§ñö-C¿ŒeeÙCCC8N¾ÈÊÊÄî]»X—=dÈ:T¦YğñÙÏ»¬xõê:È0m-,,Xàñúõklß¶UF½…GGÔ¯_Ÿcm) ÖI[-ãSÁßÿ<îß¿Ïªvòù|¬X±’÷\'I§OÂ“\'O8b—ÙÙÙØ¼y-ìÎçó±lùrhii±ê„eggÃİİáØ›5Û½tu9Æ–mÛ¶…½cÍØÉÉIII¬kçj+k†x„«ëFÖeª±–Ø—/]Â‹çÏ!‰MÛ-ZbÚ´?YwÂÎ;‹!!´cOYEóæ™rLı	¡§Cë›:i“&M‚f‡ôÚväû÷8{ö,«Ï-A±`bóõëWŒA×SØ¹k7ë$„\"##1Áh<#nÇÎ]¬Œ[¯.xûö-¦N™Ì¨c¶oÿèéé±ªOŸ>…é¼¹ŒD¤óş ¡¡ÁØEaÏîİŒ$1cÆ¢_¿~¬:Q¹¹¹ğÚÌ,ú7qÒdÔ¿ˆ:ÀÒr•Œ©+‚³“ë$Šttt0}ÆLæÚ6Kk•±‚Ø>ÄE™Œ(\0X¼d	Mt¶àÊ•+|ÀX[733ã˜Y˜2u*:têD›º_¾DÃ××—uíœ7o#,6àŞ]Ü¾}›#v~¤¥¥aÃúõ3ÌŞÁ-Z´`ÕIŠ†ƒ½cm}£«+ÔÔÔ8V–aggÏãÜ·w^¼xÁªv6iÒëÖ¯g¬m;;9²²0B•ûôéÓøú%/³KWmŒ7U\'ˆ$Ix{o§Í/i>øĞ¡pŒ,Ghkkcá\"³<SW$‚‹ûtÒ†\rÎXƒÏÈÈÀ¡ƒ9bKñş}¼·o£×‚y5k¬   ÀªtûömÜ¸~Q(½¶é—UŒgÍÂo¿µ›º…ˆ·oqúôiVµQ ÀÜÜ‚!€èç{!!!±…B!¶mÛÆ¬ee2İºucÕÉùöíl×Ú0¼à]İX7U¨)hĞ œœ:iÛ¶najhûöíana™çğ‰àîî†ÌÌÌÚMì[·náÁıû!}“9sX×ÑvïÚÅĞ/0p \r\r9V tuual<‹á}öpwgNÚ”)SĞFCƒvø½}óçÏŸ¯½ÄNHHÀz™üei’‡ŠŠ\n«.\\@@\0üıÏ3ôËV­Z]«õË*óLMª¡!!ÏXE\Z\0¨W¯lmíòI>¹â¿ÿş«Ä>|è222èQpà }:”U-))	NNLı2[{´mÛ–c]%@YYëÖ­gÆÍu#>~üÈªvêéé1$Ÿ\0`Ç_1ü1µ‚ØÏŸ?‡ŸïQF’‡¹¹9ëFAŸıŒ2B=ut8ı²JÆ Aƒ0aâÄ:il;X¸p!ääähëâæÍ¸{÷ní!vVV<==!’q˜­4·@»víXu¡?~ŒãÇ˜úeÖÖ6——çØVÉ03[Ìypÿ>®üó«Ú¨®®§|yÛÎÎNUÌRiÄ¾páÂÃ^Ñ³ÖmÚ`*Ë$„RSSáìäÄĞ/³°°äôËª4\\62Lr{{;Ö©700@Ÿ>}éµí”ïßqôèÑšOìèèhltÙ\0¡0Ïafgk‡z,Ë_öõõÅ™€™:aê´iÃªüñFŒÉˆğöŞÎŠy¬rrr°°´d¬m:x\0/_¾¬¹Ä¦(\n»víÊûCÆÆ³Ğ»OVu /^`ÿŞ=ÜÎÎÓ/«bHÅ¤×D$áúµk¬‹ÑîĞ¡ÖXY3\"ç<==ªl™®Â½V¸òÏeúKQââã°cÇ>ŸŸ¾@\0@÷ÏÏ§?ËÿàñxÌÏx<ğd¾“~/}]Ü#++®72ôË-2ƒ¶¶6Ç, eË–pqÙGG…B$	{»µĞĞĞ@ãÆ!‰Jx É¼÷$IBD’ ¥¯e>’$ı™P(„HDB(F\n… Eâ×Â\\q;„$)ÙN„Ä„ºŸ‹(\n¡¯^áÂ…˜:uj¥Ÿ³\nÍÇNMMÅäI“ó•¡gEx<@Ù3¸d÷(±áU`æáR (Ğ&­_Öº\rŸ8\r\Zp¬b	„B!ÌÍÍpï.í§‘½²Ù€…e–”-X¦~UD\"Qİ6‡+W¯¡eË–5Ç?æç‡¸¸o–¢(¤ø.YÖ‡PæQâö…Ü½)Š’yäµG6¼ÕÉÙ™#5Ë ÖI[)?¥×Œ\0ó=EQ…ÚåÚ¯Šx6y}U\0\0ğIDATFQ%yÛ6b¿}ûS&O‚œœ²³³Ü1¾G©GğŸº»2zËÚRRÏ46Æš5V“XŠ“\'OÂİÍUÆRx¿!ò¾¬˜ş$Óo\n·Åïååå!\n±cç.8°ú;33“1BJ_ö,}-ÛĞŸËŒºÒïØ–(ÂÁ\nÍ38”#©	‚à’Š9p¨àˆÍGl8pÄæÀGì²€¢¨OA ßcSi÷\'âX¾}3Jñ?ßªû\'bAW‚øBD6A1AÜ$b^9üv@¾sjXÂö…\\Ã¢ØpŒÕ5Mdf¶P›îà¹¹¹GêÔ©Ó\nÀñ|_5“<†ñÀDŠ¢¾ü©Ø]“‘±+Ò°æA”¢Î ˜oß\Z:uê´0¤„Íz¸ò¤n	ÀCò6©&#GìªA8€hÉëÙ¥Ø^ºM€ôš~‘	‚° ­EDğĞQÂ `£Ì\r®AËø»4\0pÀÍŸhb3Ô·ĞG»*>Æj7W­–‰D%ğ€»äuFqûh\r@$Ùv€ï’×é¥øŸØêx®\0ÄËƒuÛ˜Êl“Q†ß&Ù\'Ào\0NÊüA	û>(îÜ³å«áõ®Q^ñ#’gÅœ$³!Î‰D6µ`´6 *yû¢(÷\"nğ>\0ş\'sKúíÌÌÌõ’‘\0¬(ŠŠªiÇÈ™âUoy„xR\ns|–äù\"AmjÁôZÖçPR¥»ÃEìW(ÛPp¢¨İ5ñ9b³kÔÖ/Œ´Aô ™oÛš.2¯JØönû6J\ZHn’™\0æ×ÄcäˆÍüøñ£	€\\‰©]˜™e\"y£(êr-!¶–Ìëw%X=aÿCşı\nÃ^É³#EQ¿ØF9‚ |	‚ˆ\"\"‡ ˆd‚ ^±‡ ˆ~UxŒ±Ù€ºuë:ø§s\\ªQsµd:ut)¶—.W)3Z{Cì„üEQ›Ê¡u$£+ÉëÆ\0´˜\"âÂ÷ïßM+ó9b³RİW-‚ úÊtÆi2àh-\"¶’ä¹´ªz?¤/H’¼W©ûX&±ŒL+éÆ7nÜxee#Gl‚¢¨s\0µ¥føKŠ¢BÀ¡È¹„ïHú+EQ¿ª¯\r`+€±\0~—‘¨j+™JËl«MÄîJ:FØ,ÅIÉó4É(ÓÀˆZ8Z€4¾´¥LêJ_ğù|ı|£õz\0¿¥(Ê©nÂÓ(Š² (ê’dUCúùGŠ¢ü(Šê@ÖÔ_@QÔ§Š<FØì†Ôã­LÄ$ˆcÈG±r~M„G	I³~ò§¿ËüGi¤2•ó›«’}»\0°‘œÃÊ2ÁAQÔ\Z\0a’·g^QÇÈ›ıæøc\0¯eÌq©~ƒ¢¨˜Z6bËz‰µJ¸¹t–éù½ËÆ;¶ø\0u’ZI\\•ùnñ/Ã\r™×¿Uà1rÄ®šÜc!ö°Êäl¼Y—+íû“?*ózP	Û.b?¶ÏKËë9bWøA¼^)=ÆŠ¢N¢öáºÌë’Ìù9EìWÕ!ó:º†#GìR€Ÿü+óÑ™ZHjPuy«í‚°)ÂD@Wò6S$m(£E!õhŸ’ÙÍPæ»ŸòhKÄ3:KŞ’B¡Ğ¼¢‘#võéÔÃd:Ö|Ô^¸É¾&Â› ˆ’Î®A„ò\"É\0`[EÇÑq˜ ˆ¿	‚XH„Ame¾kCÄL‚ X#³ÛÁb¼Ø¬;Æªîü5\"móRÜÊ’¶Y–Çf–¥ò–²İ/ñJ•¶	À¿Œç34\'\'ç0‘KÛäÀ\Z$\'\'\0PR”Õ\0£XØüóÿı÷Ÿ¹œœœI\r>Ær…€ëòµ\Z5: ©&jñÒU7\0*ÇM‡8!ÉWş\\I–âx‚ ÆA,e¤±&™:ÄKj)\0>\0xÀ—¢¨g(…FÛ±*Á•øáÀ¡¦‘š+ñÃCÍGlj şGı7¸Å:Ä+\0\0\0\0IEND®B`‚',''),
('nabl_symbol_high_resolution','','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0ö\0\0J\0\0\0.m¢r\0\0DQzTXtRaw profile type exif\0\0xÚ­½m²ä¸mù_£¨!ˆ¤ø5ñCf=ƒ~¯EÌº7ë–Ù3ë—‘™\'âÄq¹D{ƒ\0üÚÿïÿó]ÿõ_ÿrÌízrm¥—róÏÓŸ_~Óîß?ïù¸ŸóÿóÏWşü]ø÷ï_Ïûç·‘¯‰¯é÷íÏÂ_ß_à÷Å×å¹P›şbüû_ôç÷5¶\\èÏ%ï(ò›õçBıÏ…RüıEøs÷÷Xwé­şë#Œıûúçõ¿eà¿ËÿÍ}®}‡?ïöÏ??•Õ[™o¦wâÛü?¦ø»äéJ/¿©çÿ©ğ{ÿòMOjî„ùOëtÿË]]ÿÜ•¿nıŸ»ò÷ïş±)©ü¾ñ_Ìò÷×ÿøıÿóâ_g‰ÿåÓüûÿíû¹¥÷Ÿó×ß·Úõ}û÷tïSXÒòç¡şz”ó;~p°äé¼¬ğ«ò_æ÷õüêüjÖ;ÙòuÏ{ğk†\"Ûò…\'¬ğ†/ìóu†É->qÇÊ×gLç{-ÕØãL÷Å>=ş\n_¬©§•\Z{6ÙŞÄwãß÷Îûöóv34Şx~2.4…Ëÿıßøõ¿^èû4ùîö[\'Ì‚ûŠ\Z!·áÎù~Š\r	ß_v”ÏÿõëŸÿ¸¯‰Ìg™øŞãw‰‘ÃÛÒÒÙèÄf¾ş|-Ôõç,ï¹™Ø»„”C	w±†À:6öçåB-¦\'¶ äwŸ”\n›Ó¢ïÍkj8?sü}Ìb#2ÎTÙš^öêØ°Ÿú4lèÍ)?9ç’kn¹ç·¤ò”\\J©Eğ{kªOÍµÔZ[íõm©=-·ÒjkWëíí±\'À1÷Òko½÷÷åM_®üòê—xßG\ZÏÈ£Œ:Úèã˜Ï|feÖÙ®Ùç»âJœXeÕÕV_ïSÚÏÎ»ìºÛîûı0µ/}Ï—¿òÕ¯}ı{ÿŞµp·ÿã×ÿù®…¿v-òëß»ÆKkıëA8Éî;ŸÀWw\0ƒîÙİÂóÄË­sÏîÌ¥¹Ëìæ¬à±ƒÏ1áï½ûïû·}»çÿ×¾Å¿vîrëşoìÜåÖı/;÷?÷í?ìÚîæ®³Cº¡‹z\'Üzcã_bÒ¿|`Sªm¦§~÷›¹ç‘ãè‚Túj½\næ‘âÓ¸úå4‰‘åË%”19èM…½‰û}CÛÏ,ìÑ[YÔ\n¸ÆÔß‡Œk§\n¦oï‘v+<_\Z­ÍÅ£§¯·o¥/¼»	}­,ğrİıÛë.,À—7+[X­y¥]\0ÉM$ßFì\')¿«dcsad­U*_òjp6ÈéÛ¼õ^q€¿åb/ú«|Ï^‘uà®JµÖòk«ÖÁ–/¢f}òxYøróóşvªXx.ÏÚµr­È_ôXÙÖ8¾õx7qO6;~›¹weoÚ÷ïw˜e÷µï2æªoª}—¯ª®w­ÈMaf£`µë	3K‰››ñ]ıÃrß<[Miõ~Ï[W~w®ÜoWn#k6ãÊ›{/‹€SAdóì<3¿à55y-HR3Õ\Zö|V¹ÒÂ,y„¾bk%õKW.\r[k¾¹ÆòÜ»Ñwå[m²£ŸÏ³\"7xè§UçÓ_¾QyŠ]=9\\Ïú0Â–+÷ÑFŒÏî}§9>îÕÅÒ—ã¬_Ï¸Y	oßcÔÅ>ãO}+ü%×ô]¥¦ÑûzR_%\Zá¼ë`5òXl[î+İKßZìÄhe´^çË&>cÀ;ËåÛWºÇêÏWq™]ÇÚaåI/Ë—Büˆ	Ü!7³×Äp7hº+×|nã¹ v QÁ‰Æ¬ı+‰?Öòn¼O\ZæûİGŸïİ“ìœ¶Œ°}óí#ºOWıÂ˜9MEYˆQ»ùÁCÏ•UÆÊ¼1„Å·¬ï	„İ¼0úJÄ^X£ü/Ï{¿WøY¾³¿û[”áÎÙaÖĞ(Ï7Şg•pÎĞy®ÁÃlì<bİq‘àÀ#ˆñÅ„¡Uw“w‘?â?À\\ß@Ù»Ú*U;×\\ğ}BuÛï/ó¹\nF&;Îáù_¾qu‹ßq¿üíØRÓ1ÆòÓXuCÃÎ<	ïÙA‡Å3¼]\0”V\r«óí|lî©RtÇõíw.ˆÙüV¹\"k¸¦‹¨\0âàş¬n-È‘gÏ#ƒ¿³	ZPÜ!°V³İ¼WIì\0>Óµ+WŠ¸&‹šy¿/…]ÀÒÁ:°Y@ÃGxy÷—±ÆÚ¹Ş½\0óØkù ìÊcé[t	˜êú×á€¬0’é7\\¾2x³§§GïŞ™ÇJ\rWxj[ër½9æ“#ZözÁük<+±Š¿nøI±±¶g‚@÷™†‚\'½•áÂ½	#¿ønÉë×¾Áê„YâÏì»â!ƒ\\…Ô|8\\÷aQxç‹ÖÜì¯jïh›°Jh	<y6wßc!&aˆ/~½	Ğüó.oş’P¸®áÿgÚ7ø°r¼õ<•TÄ¡bÁŒ¸únãíÏx	ŞÉ2cI‘+>3¥/èw#¸O‚O\'ÆÂ]ŞÔ› yxV…«·†\Zßç\nÜÿ£0ró26z^ x\Zù^™[ÂZÇG¼\"d¹ŸˆßÜH0»æLâ1“àßx;‚‚÷‡¯ïkƒ[“á\"ó†µ)ä?_1¶Í»ñ.A´g#Ü8X×õÄRâ!0\'Ï.0¤ÌÀƒm¼‘ÿŒ\0êïŠ)÷%k¨ äòaî•=zÛÀÊx&æ\ZïU;¤î¹Ù¤Å/ldB,\nÆï\'a,×ùuhCí0°ë†hÅ&4×¾ò¾À7†õ‚©*’İD^?n?ó$Ç8Rò\'±(.>¦ñ,3akæ~|œÕ°É;~øaA†à‰`!hKÌaƒ½ØWÛà7ü0ÌCÊ_ pWõ@Yò…O%c)ïÚa0¥´…cb5³cày­ğÍZ	Û•½Ü\0{^¯çÃa¨pFiNX‡J\r–´sóŞ±Nü±Æ\rßf=Ñ5ea¿7\"‘	3¸\ZÁÿ«X„Ó‚Ôw`±ËkO\'ÂaÔ>E\\ê™í\0MX©ù<‚;x¶.!Á8ˆŞÄÀÄ‰Æç\'”{ú¬Äbà’f`¯¸t–4Â+“JöUö»®\"åÙ¼\ZN63À¡ÏñÍM7ƒÂs»\\‡EŒ¸¾„3gã×ı`lÏ0R `ÇºeØ&¯0¸Şj”±€U±Íï‹‡€àäàü­Ä<yxn‹ ‘—àQäÎ\"ˆñEÀô™D°M¸3Š¢½Ğq|§Û•0ˆécs±Köóğ‡¿îDÎ«¨\ZXxÌOâêõ¸Ñ\0w\"àà®1ì\"Âiüáú€ñ¾@ $\"\'ôù!ä]Ş2{]B°¡yO6–e RG÷/´t¾aOaÁ¬$rÚm`‚ceé…Íëƒ¤7^‡gá xb’V\"I J¼œ•%AmQ\"(¨|Bçï+Ö”°¹ïĞà=¿·Mv¾WàzI”¤ò/–ğÜôÈa‚ÆxÌ÷àñÜÚæ–¡Ç‘µ*D–šñ>(a¨Üşvc_Ã{Kf¿¢á…A-ø¡-³¼\nw\r=ƒÿˆ°¤xœ÷Ø£¿DiÈ¤a/w\r	Î¶º:7à·D¦°€G+\\ıÎÃO$\\¾5±m¸åÒ Ü€-4‡›_ïÏé#5Á©L”wğ\r|\r‡Ädùÿ7Zïş`n«~I`£x8$øWXZü¾w¶Õn4XZ0¶¾\03$/‚>\Z:’áO~†À[s|Ğ|ó%bL¡L¶¨_ÓG/{öD4- ˜DĞ¹„¥Œ»xt}¹Ê\0«y¾‡½Ç‡Às{~>wå#ÈÃ{Ö‰\0ĞÇ¿?‚,‡—(>\\Òø¡Hˆ«ìÄñ»a#¼	jBjfbÅÍJ¥v_OŸ Ø»lü«néĞ]p–÷æ:¨[Â×Û({gnqP(óÍß~îüä-G¨ëŒµ5Èß¹h#hj‚ÖM@ÂÏ$\0òTE¾Æ==}\\l9à<¸;Á’áA-!Û¸Y’ˆÇMƒ~ùŠúğâP˜úN^è;”\ZR|œs—.>=à²»¢dJòÑ:C‚¼f¬Yç>š>l›¸1€>¿Pá¢‡?ŠİtÄ¢¡‡+Áà¸X×€Â—à›ÀÑ&Iá¸>ğf4Éº4óÜü)nõ;‚êX$·XjèØ)\\Å¥GÈDb³×x7bjãG·\nÕÄc’Ê  éV‡¿JK@µ1ÿ\rUvoöòØ ‚$¤£\0°­ŠhÚ›Ø@—Í;b]¸ô ş#Õ_ŒƒõyXÔù±B¶AĞEz–ï0íÔvI{!¶¶½Â1n°5#qfÏàã@Â¸YFC‡_5°ÄxÂ4Xh»‡ùsûĞÂ†Z¼ó˜+@†ÎŸ¼Á|€GŒ†½³ß‚j¦¤§,™Í_°ÔÑP¨?Ú\';F8m=£ Ë¨Hü™ÀÛ\rÙ°?$\Z1DèT*\0€õÙ<%2¤_æEĞô;N`¿PñÈ@>¢54İTYÂp·™Cª‰Ü¯I[m™!4¤‘Jj¥ğˆ>€şò-¼ËË@(ÛdŞ‡÷Zw„f)B•©M¤…Ïœ\rèÄíNøK -`q˜nók\røÆ€¡d-øçê ´¤Ÿ\rçh4/\"ØCa±\Z„0UcÊ¥¥?ñ­ ƒ‹Á@µÕ×TÎ«b…psûƒú\ZIU_ƒJÂh3L\Z]Äªg8‰ò›wÃ_+s?<$\\EtğQäûüxñ„Ö‚-áœˆŒ]÷PQ«P\"h1Œ¶Æ‚‰áFKåmo\\ü°ëR©¸åáVÄf°FÏê5ŒEŠ.î‡ƒºÎP#”8k)s…¯FàA¿ÈóòµÏÇ8ÈöPë¸ß²ç$õ~2Á&Ó‘làî6ÓöÅSV|Ë xƒû)ŒD–\"ÕÙ@*Œ{EùrQn+bæı,(B˜‰(òÌròÀå\r§!r„¯L@Zƒ9dü]oI–Z  ÜLğ9Âr1Í\0Á`‡¾Kâ:¸-wàFÜÀEüˆØ)ĞÌ­6“A_8†ÖŸ6:Z	ŸwŞ[½ÃŠ^¦r6«À&†)ša+éÓ÷ò‰ò€ªö‰ÑÃFyÆ¨P”Ğ8Ã0m?ØµzïíÜäØ\"X² 2¼~œ¥ÂHN¼f¸õ„§ÈúÄ„‰yc(Èõ·°;ôçxò#1ˆ¸o¦‘¡æ`][DÈÜ\r…eåñ„Ù¾–½İ†#Œ€ÍÅ©oÎğ?ÏÒ¹/ˆ\räš™n}cõÚ{5ÃÀ»¾›5Ä‹•0Ì¯£²âÂ” VuÜJÏÂÃ•d°.¶	Ê—1g€¯…Ö$ô·üÂËîMTÜÆ¼ ¥x{ÀîsG°H1‚‹½Ó|&~[°ÀÌ#°/È	‚‰2ÀF Mvº¯ ßR‚-€Îj£Ñ@wŒÀFàª˜õCîPÔ³›hgùœdÂ¶Bİæí/Â´«£4Iœ‘œÍ¨h5a›÷Å?BŞg2©©¡£I;¬Äd$ôP™±lHÂÓ°Ğ/CœpXBÕXZ‘ªÂöAÂ;ÁûY^Ås€†™³ø÷‚ÊM‡¯a§ÖÀ¦aÖè\"ØtQœ`˜Ø5—BjÇXĞ¾wÜÊìa\";Cä¦\'æÃ]D$8¼eùQÖA\07˜±çG]c9€­ç®Ä\r©Bƒ‡!‡“;Aüğ\09ÕB=¨hÍ]¼)ÇÎ _>È%Ğú¶›Á]#wƒ]}„sBÿ¼nï‹ÒƒŒ9Ív¼E0·‹Œù~€SléÌ^PE·3UŠ; mÑóßëQc‰\"* I¸E…?&ˆ\'åMÄ2‰:h¦‰0ÂãñÉ—_’${5#vÅôíuRoè\Zs\rÖ$¡¢£|Ì3¦“íç´ãyŞ\0‚àDÓ£\"x0Şß§±õq¯âiH\'¤rs!cû‹Ø1«+¨¡še!`8G£‰°à(Kxû¢f1>¿.úï‡9æó\0c}ïÇş¼­!ıoI¼?i‰‰n^¾×¯ì±€bàï!èO}_ş Â×–¥À\n3¡Bqs˜=äƒ¿÷f31çS»#¶ğ|Ö‚{€ëÜPr¤(ÚaDnö5Ï>›/\"ä\"¸°ÑsÜ\r?b{§xcß¨u³ü¯Šöb9ˆÍßå•ã@\n^óÙõGÖ‘ÒÓ¼ÀÓ:‡	\rän±áå¯ª‹1êaİzà\rAÂfGˆÆ3ƒnò¦ËŒäï6ñ¾l\n€èÒµ>.E©š‹†x¤@8$LeÏP1wWìÊ…Èƒ¤ã]’40€ƒÕìÆmæ8¹!‡Ğ¤«mÈ£<<³¡`Ş—Ç†PXóM8Ê&ZX.8A®\r$AáØo..¯ñ0`\nƒº‡…¬%…ËTç<çH5ŞŠ¼­IbRÅpÖs¶óSñ\r•Õ±d€à—e4Á­ º„Wãl™‡êÄ>“”f·ÁÔ§±dâXğlTÌı1ÅÃwuaèfuïÆ†\\ 9oˆQ=E,\nÄùï Rsd$ßˆÒ‹D¨U	`ÁÁRêÏ5·I2¤\r»`vlóÊ¡Áñã‘>(E{\ZÌ=|¡7^‡@ÕáOn¨öÌ—YøLğ-Çæ O\0×Äya,Ûì`¥Ï9†A4Pyİæà»fÚÏ²—eV0¹µêEÂÁí\"qŸõ7Ïí;?Kó>qİ²|#üñ+Ïø¯=OnŞl*€Ã‚\"zìfã\rIÈ³±,Ğt,[D|Â1Ã0x8Ân—¯ô—P\"9jwà†p7LÁ#¦1	ºô™–?¹bA#H®Š±ƒpøëÙAÖ)Xp=íI³öÎòw|±âÊµ¼ßÃ	†ÑVHŠaÿ,9¤!?F€N\\îƒ¼—ƒÜ¯Ç˜f‰ŞÇ2õ`*ûÁÆÚI|Õ[v€Äà£0ìFõ;‚÷ ç!šlÖtÁòáô_î^ï}[†¾éœ5ƒEaï7Ñpôá`„ì¦€úKĞÏş˜ìç	e	\nÓ+	G.×‰N9õˆqÖ“­¼Rõ<^Äb\'OÑ°½|«/·Å&	ó%.\0l÷[ìã`#ê\0\r»yêi?Ï•îéã´ee\r(ñsá§J	â„S™°\"•°.£ytt~»V(7ˆê~Œ¤!Êºò#ğz–Q~h[ƒu‘‹Ü\"˜UfÈÏí}¥ovşs‚úñ›÷ÕµrŒ‰5X^¬¼¢Ì‘BÛ£î†ST\râ`u€áj	Ğ0_ìqu	$/6„×Ş¸\n€ĞŒ–dAL!i{7bÉx\nòş¬†åawùX\nE€)ÁP__c³`íwÍîG°†/L%‚§…8`š—õ¨¢U Q“¸sš·\'¦éß¿Ó€©lóé6uÛ¬c€3B‘ §3~?ß.EÒoO×jñ•³\"~Š0Ş´<‚öÀCjÑ<~5Ù‡ÃÍ>´µ+I+ˆõ˜§Çl8Äâ†‘\0ÆL=ñ±\Z®>húz¸İnš%x\ZfiïÅ›â$ÖÆmÒÂvÄón“_è¹\"R&_¼#ñÎ„zÉ|s.¼Ë;QÙK°ëF$öúNó3U`ãq!ÍŞE–UNÓ•û–‚ë´·Üğ¬ª\"®ÍaYŠ*÷FUÇr?‘°–?@@‰qx¨V „µ4ß#©Úá&š0.ËÈ÷OßYNã6ızº~ÒVfœäí¼÷ûÚcCÃ$î›d¾¿ŞéI1?Í¢Ÿ#5dºZ\nÜ`yXiòÆ†¤üÑ›Ü¿-â\ZF€ÑNÏ4\n¬}„s€YšI£&1ÉÃ2L7\'^5uÄCvm,âxÄ¹Ü˜lq2ß_:ñ}¾\nÍ!bär£C«;fÒ‘ÂøêÍí]yñqxó	‡ƒvˆz0¯Â{l½Ï]\Zà‹¥C_ ˆuÙ@·Â…0±†$’M¼écÁˆ¦AJFq…z¶I»t®ú{Jc¡TD7£Õ=c¢!»„K¤TÑ°Gr`?Ø–´Ñü=èçP0Sw»‰`·¦+¾KGD¸!râšôÁ`@ÆÃd4rsÃìô3ãsëHÚ}’5fP\n¦xÌØ‹©§VÍX(P”²ì€;ù[…Éğyòô¦—‡ï„<µ”q’+¡Ì*y\Zj¶ÉÓ1µ°ƒÁzuBº\0Ò9×5zxİHü¦‡…wİ+Ò-ı$ÎFTÛ(Ìäi?æùB÷<EıyX=JàyW§uÄqeû¹5½R1ß7%Â™èèÑ‹aŒuì|âÁ;·Á£Ø<D·‹FFâÁ0=ÔußfgÃJ\rC‘âÓRfm@İ—#Ïˆƒt:Ü‰Ğ¨ÛDo2^{ÅÕR“ƒ?­ˆb‹ĞºÅf\\ù²1‚õc¬i±J-z:\0f½×R,iù\"t–˜y\nğ8a:À¬,\0¦fÉïå;ñOöĞöU÷$’±I´àTã¤©Ìb²°¦|`«8xøQ‚š™\"râ*õâ³\r¦›OÍ3·ôí¤ÖÖ(Aóe%™pô—0ĞQ¼@m>k ¤hc6	Ş8Y‰yËê£ÙlóÇP.œáå6ÍşâİÃ\nˆXÄØ’®äqqúä½¹éj™¤\"­@¾¾s´İ6ñ€©·)ï“5™fÙ=Ül .á\nHœo²²\0Ô­_±hX\r6ni]*¾í\"Ä„BtØg`AMw?æ7€k²–M8HPß&ãÂÀÌWù„ÙjC¿ÀèˆäbC×İÔîÖñÃ<1èóµk@t¹Ó{{Š\ró¨Ü\\ÙãîŸ€˜ùğ`±@N_ÏÉ¥nMìã³}bá‚¨zƒ·!òàŠ@¨–!1V¯ÜÏ@5×³~áf™²ã¾“+ò€„xôæ®ñµ¯à7àD(9W¨(Œ	‡¾uÌ‘-æAˆYMÇ™‘ÒVÅáÌÉ¸µM]ô×ÌP–xˆE°RÕ’‘u¶PÒÜ,ñİ0(Šu™ÿk‚½²I¹Æ¡\'$¦©«E­ŒÔÊ¼M.A§:X¾X^IdÎ\0CO”€vÁC°ù?…o³\'°\0\0`m?}YC¶TÛ$\"ÆråŸ.£fépªŠ‚œ*z”²%˜À´`\0¶ˆ{‚;(íÁ\"ö›˜pÊç	Ê¸;Æ‹­2}\0CĞ!ĞJÒn¢˜õ@nù×v÷pîõ‡AXÚ=ƒLÄ%Ö Çûj­j`6„Ş\Z»nf½¨Àk	S„b(ÁrÛœ6°¸’zXQú÷ªâ±¶÷}üÍ,OğÛ%ì#†ˆ¶_›°ª–[÷àa\rd«´@@ÂÚCHÂ¼€v«»:Õ\nã.Ä¬\'Ïe:¼@³z.ÉXÖÌ\"~YK~:i9(1]¼#ê­^QÖ†B0ÇÌÓ9Lƒ,ë¨d’løg%/yNXï6n#tâ¹UŞègö%?AZ`ÆÍl§É,«M¤ù‚üi‹·¥q`\\\\ôÒÂwtí‹îtj•–ÎYˆÜ¦z±¨£aÇ¦’›ÄÔê5PtÇ¾§ÜóÊß‚E)ö`¸æÍS~K‹FnÔN8Ÿ¶ßĞWÜ{bÖ¬Ömc.UŸzL¦\\thš°sÛÕš»üÉ[@67«ĞUÍ\"|HAKI†1**»`\"ÚM}¢Ìá$fêzŞ®³?\rS±bĞÚâŒÄØWã%†Ã.je¸ffËÒ+vvW7$Ì30¢)Öj²Öî\n¬{¬VZ?[«$Ÿİ§Î‹ÍöcÏèÃ5‘¢/€ˆ\rÃÃ›Ù‡ÇŒP´šë1;XîøI€WƒÕÌŸ•&ÜÔ³$Û¦…n€ íı(SáAæVÿPP¨`ù»ç¼,­Ï\r«½­7>¥ÍÃ’•±»\'\\YäùXÃ%Ğìí\"\0áI±çCqÂ½QËjŸÈÛtl½êÉI¬İïÌ°¨ø™üú“%Ö\nc-XµÚF¹ËÓ`Wßióÿs¾\Z¼İŒ€!<TDô¿?Ú’¥Å™ò²İ¼âKàeÈh€ºŒÍôguƒ&\nno-€Õ1ì*Ÿ\rGZ\Z\r,Õ\'ä#Bm¸­Hâç-1Ùãòár>Q’øÎ©·†ì!LË+ò\0d$ıÏ`v_yõ‹˜J\\Ùß\n?VªcAXA³\r\0)dIíö²…İZ©ª–8$+Äª\\î^+šßµ!Ó\0m7F¡Ú<Ó‹+ü5ÆdÏ}ê¶p›	Ó<½F~7}ĞÆï÷ò ¢‡@õX‡~á³€`•¹\"x`\\ó™ı!xF¼‘ÖWLØibW€‹SéÄ„4Mp6X–U ±jTÛÒÏÚáéÅ“?t1¶[!öV?|j ƒIàùsAÕL7¹‘œì^YYƒ«(§-æEG¿æqÊDì°ïìYÎùÃœ%±¦x6;~ÀÎÂ”Ç³·“Ø†— Í]ë‹y\'Ä:Í8|[~²›X	Ü=\\ˆUã2´N!+¡XU`ÆÜ©e¬¼ÁŞj@\"k·çTÑ”$²İ³ã{]ãô~Z¡ùÉz©óvÖúBaB»`„]à<Z¿}{bè‚˜û0Ù\ZúõY´…{–Y¹ï¾Lg=Öqœ?zôÌË6=í1ì¯,~Ü­¼ı˜½eOCÇ-ë0é!Ìeoi‹où‡)\"ÄŞh!åj,åq»ÌíŒ†ğ©Áº7wØ?Zâµ€ÎÊ(Ö]ÍX€™ƒ\'7\0>wÀìÎİÄ\'şY›\nL#7\'¾ı\rV%JÅ“ù®˜ü´Í\"€‘„ä}Êµêh><ÚóZÀïqG/6^À\'1#à\Z½{W¶€©sê%†)k›ùåŞ.×á÷ ªc{*+0Øİ@‹c/Ë?e–òX\r6Ò0¸ÚZÑjøRV¾Ø?$œb[@’Ezİ¸‡Åø~Å¼‰@%(=#ì³˜a·fQt¸¸=°Ñ”¯†R=}<–YMgÓŒ øan\r¬ÜœV·?Ê)5o„´LæµÜóCøe­œ<	¾(ƒÕ€ŒØ”ğÂ!¦İ8\'¦Ø†ÿX6„½aìÅ2{¥na=ÌJg%M<ìhßŸ{Ã·å]ÀÂ0¶w\"mİ¿’-Ä<K‚£|&?fµˆßÓjcÌ= €ç{áì!€›ÆÚ¿yA1ˆ6R `İ<‘e-bÖŠîúÀÒcHìã»	İ–\0/OeİZÙ« ¼yfh2²STÖ}çèù¦\r‰7$Œ\0ÉŠ«ôËÉc\"¤­ÓXÖpÏp¡>YêÇsßMd‰)7ÂRàa°«„X˜L\ZK\'Ò…_ºş	ò%	 §@Âe¡n¹Ïœ<&€6dîW\ri–ovÏR‰&/#|BMCÔ¾ø6Ø)æôôïbN²nŞ@PĞËAµğf¤±«Àş‚ÙÛ{Ş³¡“`c‹VlXû]Ä©ÛîıÊKğ#Âb¦QÔ¼ïDã!VÚêõ ò7Ae?x\"u®Ïã0¶®{0d¡ş‹Ù´aM(PŒb_Ÿ.f¶›ğš=6Å¾f87Uˆjí¢Å¥7MÜ3ò?\Z‚†êÜFbà–göĞ\rY¬ø´ñ¨\rÔ½`*çÀ`\nÄa~N¹èî¸¹Ğ>bÌ=n	Û`	C.‚pu¨c&Š|•÷ñÔç1İjç\rÄæ”KçÃŒ5NÅŞWÊ\'İÄs£„¶H\0Í±Ñæº_Ííıà&spà;ù¬¿\'PuÛ†\ZJ×¸·Ì¥± ÃRïñbŸy{OíZÏ{›Í³¨×Îö~íãÓ2¹´å) …A\Z›°ş\r;ÂnM]G÷œ?1DCllH@á€KDĞ~lŠézÄb&\n]¶¬\'²·@îŸ~ÄÜs>Í9`yÜ0ıòb •…¹o)_C\rMìA_Ã1Šijv=×¼RülhMš¢İhÆ&“ø&—FáÀÚwf[YQI›§‡¶ãÁ‰ŞhÂ`Z{]Ë³c<øw ·us“¾ÿ9&=çé˜hz­ê\"J±µæ\ZñÏi#<½m³~0ö\ZfäAŞ‹§l¹Œ÷¹dƒÍæN/OÑàVºã_Ü	:-3|_k†Œ©üúÌeò¦JÃ²Û6\ZPhÍÍjÓ\ZOÛdÑÌsİû©“şuÜéıÂe:¹ˆïj>°—Ê‹µ!ÊÁ”`IŠe•ì9‰@öÆ[¶1=¥+@!ÂÙ2jÏb<ÿA±#>14x@]²k~â[qC‹W¢ˆvNğ*Œõ|ï—ß=O 2ÿÛ}[ú3­WòŒy7¬+V´s„Ïm^Ö}6òÂ(­aÂ«ÑXè[\"ã÷Á3@ÇŠr\rCà>{,^ë‚›µasß£lt»Âk†×öB|®1€ƒZ_Ü§¢»âW˜ØÖf•—öšµÕ5Š/à>¥^)ÅFl5ös6<H—›õƒÙ0®bé_²ó8SP>Y~ŞA7Ì0ÌKt²ÃÆ9wX§ßğ3Â[~Z¨jßºwË[uue¦ Ä#³²í3öÅ!‡Óé‘Z=‚¥­c‰Ş;ÁS½uä¤E}–£bí)ÁØş”<îwUC€­ùFzíYÁgSÿX§¿m³‘®Î_—á—{¾#0yì½&kÜğ,Âø2ÂB^„ß¯ÜoÙ\\Pq¾ó¤ƒ	Â„äÑkiÕ@=}êhğº’GDqƒ¾GÅ§Æš+Ö–ÇçÊ,RF…ÓKÈ¶¢¥÷X“4¿çµÊÄT’]blšŒõp®XzU™eÕvB¢1(½š3=²Úˆ›ó³§™ıƒY#»àˆ‡Û¨Bì„ë8Û‘ÊÀäñvŸã¯|ƒ‚¡]0ÆÛÊ‘~%ù[àñ‡…¨6óeeBCÿóı‚Å­û\"dDÂ-ñ”;KXjD‹ Msí§D…Uaşv“··„ ¢e1X8ÿ šx2?Yş«Í !©¨ì,aäÄv.Ÿ…¦0M¹Áiá§}®B@àVºI’5£ı#¦ßeÃ­Ú0wY…Š3,Ï^ì4AìÁ•aó¸A|˜µ{ßM²jŒ°,ûW §uX…{Yqf]şÄ\'»r!½€àY1®øÂÙc­¥y@xèÉI\'¡_·‡ìÑ¡*ÉNqbiløR@5ìyÑƒúÊD¡ñ@Dˆ;ÁÖª ãæÒo%¤n´)¹×}±Ÿ–rQk\rQëŠ ğËo†Ôà7\n]TuŒVy4–ê1•¡ƒLø|ÜÚÕ‡>l\ZçxLæÀ\0y×êi™ÉÍÖn+Ô)ÙU¦º…XÙ°‹ğ\0b$òğ4å\0±/PgÂ¿ö,¶ışÂœøBc‚Ôx„¶”Ë¸à05°:€\'¦$mRÀ\rÑ8¬x‡%•SÀ†ÆÀ…\n¶OÇÑ‘ëÈ Ì8]–‘â0ğL¢×²à]kíÊ•p\Z‹å-ÃÜk·¯Èªc/ ¢A±yVC;²GàT§`7è‡‘›¦§mEi\ZåÂ1•²m‘ÎûWTãÀÂküs6ÑjPL0§yèfY„B]Ø!\" ÁÊíL³Ñ)4ÒÃ&àxW_x‚Ñ³\\\'PG<=œ‚cş‚\nÃ‹Aû_ŠóqAD@D—gĞˆx‚Èè­_nşòàsêîdgò8é¡ûÁ)„Ïòù§tiv’+h\'¥%Ê\ru¦MĞÜÅºc¢­µí¯e²ğ<Èìb›úkNÙC»[Ïy?İØŠƒY×kq‘iñ$õÏéÜ4«P‹“fJµÄçt«(Ï5l¾nÚa*ÊkAœãšbk±€¶ånVÈ°áçhu+h¢-5ˆ¼Mç8ŒiIàšvDä²2ŠuXØª2Ú¤§LæŠÓR&îkÍÕ¦Ï,çy‰LvA¢{€ŒûrDSR™`˜ÖØ£ÛãgŞÓ“ÚÒyœùğûãîË^ñÏ.b87</| ÅnËmt\"Ç\'py$œÛÁlíã5uj8×ã ì&á<ööü¹†-~Ôº¥bjÃÄÔ=~gÅF£ŞÃBùJÕ“¾Ù°}¸*ô³ƒ\Z×g¸o-AEöš(ÃAYp¾C°9³7tŸï[QÜÃ£Xï¶N]IX¬ıEh|³\rŸç\rs~±ğò(ØĞù|íäÃììí§™à‹ò\Z±1™y”@›CÏ§˜Í^÷K9¹N®hÌSÁİ¬ûœ¢İuË5<¶èğÃCÃ«ÌÙ’İl´—ËŒkîvˆ@à,Ö&L‚¦f°Íä%†Á°¿Ë˜Ş‡4ƒ»wğ‚†M÷\"øÏç±‘ğ/²™ÜZ“Iâ°ª›¨P.h7PmŸºY­`Ù«Ç:vœ1–Ÿ±84cT5D[ëàZá¯8+ñìëé2¡•,¸¿î£†Mğ$x¤&ğ7<Äü)šÌBj_mÒf?qydw~=ÀdVCx*X’=ó,9‚ÇÊé9x] Ü}ˆlmµ\'!İák“˜·Av4+!NÜL×¾§…nÑÂ!½IÚ`—ªµíÿ’“QeßvÔŞdeçys‹i¼ı–lJÃÉKìaé[aX~Ğ¹š\0r˜ÀÂ¤Ê{šJ|ÚR	u¥—ª£ÏrÅ).³!<…Š¥6¬«››!€ÈÆIÏhMÏ1ÔK(åmKVá–\"”G5d^m;¦ŠÎ²7rGo¾å÷É£WÛû<´Eb+š9	Ë#¬áÊlç\"b˜2‡qŞÒmŒ¿‡ß1ĞeO}ëG„+Zùe\ro:´fÚÕ$)-_,GŸú{ÔkáÄªå–[¦Ÿ,?Kı	CÆ\'ÿ°¯A/²+ÿµ¦æX$¨Ú!ı,K¯X…l=´Ğ:{²ò×éK|šÇwÑrûşîw<²BL=«dÎ|Úh‘9ôìÁ%ÔlIdôõ\\ã±“ï†çÀ °~”¦­â1O£¾ĞÇRØdÒ,§auXÇú²Jò²Ñ6{$¶\rƒªböûõhU‘‡y¾~GbFÌëöB—à ÿ±¦;JŸé2\"Ï+€6[!±›BĞ€\\°¯ÓĞ‰eÄêlY“M®-¾ïwµbÕ¢…7¢#d\"¤»5Ï¡*R\\jm±Ì ¦dF\"Á%P¾m‰ÿI©Ô«A[ú9×5E\\A	Â‡%É6Ô5\Z²‹%BZŠ#Ÿ3ÆŸ>D\\C[L›¦`aÃí	æT \';Ìf©•Ê,}AM‘Ì{®éd‹à€Cx–GŸá+]¿Ã_@÷¤º‹ÍŸ¬&^LàÑ>àhØOp\r`şó9(N7/°R½ì‰gŠÒmcÕiëZ’3ÈéäûPÓóùeZ?û€ìäyßò&uvA.äìØDcÕnEæ×çÉ·Ââ¥Ø2ƒN„<ônxX„°r\\Nù¹c8ğùËÊf›İŞWVÅ–Bãı#‹â/ç4Ëä	ëŸ…Ÿõ¡™P!‚½}ãC_l«qM[ä#cñëiä%äYÉš‘y\Z÷¢s†p`k×1(¿Y›i‰%ŞO=•©fSÁG‹Vs‹Še\nÙ;`z¤[Æm]Ç©<à—E82ò|Kè}f(ŞNGG\\¿3‹«›2Ûbj‡§’¶Òs}™©óEf¿`òİÓk—Ã¬iš\'6¯æzÏlÆöÖ\"<=‚Å¬ë™şóxtØç*ø„M—ã…B~0E§ >¡#²{\ZñP~#PqùgøÆù~‘Â·“6‚k”-‚°ßtQùÔ(ºN¡fÁmm…gW_+&ƒ­ËÕ&&“y ˆu«(³¶<D}Î™·£7$\rş‘õ;2$%kïÀÍb­bPIb«Óª¨´Êx\\Í\\¯c£,‹H=Ã¿0QhÙ„ç½ Ø)†ƒs;|N“+d{8¬\'{(ÚÙhô3¯ÖuÏó‘ÙÑJiÌhú¿‰İï00Ãºííœ`»õ=1¾VgBÁêkÃbãBlQ´ØÃLƒJîZeGv `,¶|Ï¾»ÈM&«+0pİÔã^V¼<GG Y\nk¡’m<0c‚¬7Ÿ51vçTOe•5·ØÛ–IâTÑê¾PZÆvUÑø+‰£¼Zôe#9B	¢èÎ*%ğV³½§O\' Øh«}ïöÀ<¼\"ñ,â•MÏñ!ŞÙ¢ßƒÇR(‚÷#Â°¦&‘)fœ­¸µ#^¨\"ºcø<QgYK\r³œ‰w…¾ĞãÑy º’•&ŸôsÖŸ“X?·­¬²•¾¥e+Ü¦˜K´y	^\\à·¼›œ\Z‘âùAö°.«ï ˆ÷á»¶œ!ˆG:ä¥ñ$u;şé¶`Òæ§Ç	¼¦8•Ï{„ŞOG ¬Q\\·ó~)8ˆåùõ0Çœ;ÕŠX$Ìæå†iˆ¬víVâò¼š«²;hoW»¹ˆ®vÈ|ïTŸ/‡é8ÖIÜTÊ6B\n:ŸR°ø¨ì$³‹Ù­ç¶X|#Û’V0ÊTğ\\ÑØı*$Nô(‰sÆ—8AÜ÷¾¬uì6pZ‘`çúkFØ(‚Ò1g¶£¯­ÕŠZ`%ÙK{qO6ûò”E%WutJ°0UJLz\"³³OP;¡x2ŸÃ¶ñÿJ&6½+æBFımÓ„bcD<)—p*ã¹ø£¬ûˆ+?YñRÏ`©ğ|Y¿OT†Yt»3âÀ\rŒÅÇsô‘Íp L³„…gÕ³‡\Z¦]î7ÊHì!½n+œdıÄsv–}vÎÑrPŒ¼w‚aUn”ÌÉ2¶@¥§éÙ‘GİÎÂ‹à¶µ8úÎŠ×¾‘–\'>¹öB6JtT×P„­{¦pfûä±Ç{Š*íç:“ƒRqG ¾¨ğ,[éù!k–ã‡Pa§a„Ç¹ƒ/¾×Â££\rÖH˜ÈtØÔ\'µe,5l\r:Ç„È¢¶ª¤iæÙâË4‡PN8€QÀy=ír¤ŠµşÄ*‹ïØmûªõ$ÓŠEc(]‹§Y;ÇÕ\0šáZ.+~\Z>u‹I”ìiC´Õm8­rŸ5Ü¨^¸\nXó‚\0¨ogcÁæ9ïŸÊ3%1yÿ9œà‚O\"šLbq‚µ5ÊÈ9âˆ^“j:vÇ«hE1æ©:haÆwòÕaDq_Ü0´À5¡İºõ[:Õaß¯XñT/\"ˆ¨£w¿äØ x†£U7rë³ìÇ‘%V7éòYÌ»ƒ×^Ñ<İfKH½/:\n‚FÔÃ,Ó´%š&1~‡âl!Ñ7—ƒ®y¯ëÌGû3s`i0ÛòËm+Ë‰›ÏMÚ˜©ï=‘ıñ´€,¡…jÛˆæl³VÓã¡×“‡#Ÿ¬õ?9d»qğ?$lÆ:¥G½	A&VÏ€äŒ\r¡w•ƒO1¼?A¡˜?tò“³B-²;ó…ßÓš›Û{ôf´zW‹§ÅîÒÅòjÈ“ÔÅ]Qí-#ç·…@ùŒ¾àì{\"‰B…¿\0v£	í¤$d{…õL¦Äòbb‹¦àài•:ƒÀgB†{ğ@À¬ëCX#!UøJ¸Øà[ùİå„ßÈàf‰ó4×Ï@œÓn\n3‚o9mÓÂ©‡•FÃaF±zYE7=lF¸ g¬^l§’l[l¾ĞCUßÏi,&˜M‹yàİ‚³CÕ©MaéˆÑ¶3yüzÑ±-y&ì@­ÇÓğ\0¾ômõ=QË9¦luûÙÍÓ®d­…\0©·j=O61ÊÓ€l¡j°µş±šîTOı=ü±¦&p8‰ãÓLgjjHâöbF<´øq%gÃ½§¡N{	¯Ñ$”µôn7’Ù2¢¯è Òi‡„“Â³:€™İëÁNLpæÑŞ¨gëeãØíx÷çTˆJÙ.§ÚÕt¨Y{O*úu{6$„bD#Òa~ÇŒnÛÖİx‰H=Y“ÇbéÔ@\"·‡è7bĞ9”…Æ°øÉ&¶5ZƒcõätİØ<;¼‚ÔSÌßc\\Èß~ê‚q:³úDw ô|s)XÚ¬ÃL\ZàüX¿ie‘–\r?éƒ8YÉàqÅã°qÚÎ&ù¿·‚49µèœ».‘&TÍœ:„F^˜oyl(#|Ì†ØqÙ«S„!§å´IDà>ÅŠ(ùéÔ­zAfµÁr>a\ZúúÂ\'Ğx\r\n{8­ãVXœ[tñ}ôöõaûùkk¹Oo°ãJq.â> gÛ\ZÊå”c?ÖÂ?XğsXzŠîp¤á´çír¨Á€ıùFrÂk‚I\Zt¶mP”Û:Ï‘­†÷¾§ÒÙÑ	„d´„QhiÖ•»üÜÈmôå?Œ‰ş·¯\'ooc®ıÖø	ÈÉíH¡o¼ï0\r·o¶lK^§ój€‡8,Ğ~‘¿ÃªTiEƒ9Â&ú™¿èÊjéƒÓíä&§ß”rº¾ÀK§ãÙß…¡t*{\n—´îvç¦&B”c3œ8ì´¿é ¯â)á¸Zç\'Ÿ-ƒß<–¿‚#>®ƒóõüÑ±W s´*ŠŸ»#€‘}ì—¿ï@}Êãq>›\n4W>{!À ÷Ru?ÎuÎ×8Gó6ï[›³<MS]ÅÒg\r-ğô8ÃYè°okDßvû¿3<	š7Ïèáh…[sª¸Õw§=ÁÀc± ªä–ûšĞY¬I°¹á<»[\rm¿X>‘!ƒ¯Ç•O·eù–ÈÙ$ğ](ş:I~vÆ\"W<`—ç²íùóhkÔfg`W¢iP@@Sr£Çlh«m£-)P´Ó¸úWØCÿòëÚöiŞ Rl;ÄÆ±^5Ü£\rz‚óhxXdyÁL+º›‘‹ ÉÂğÊ|yrRì¹QÁúXä&TÀN=«GJX¼Ô(úG—öuôÏä‰¯°owşQó„Æv6ÈƒCÏLvxO’m(ÂÁ–å8EQûÀknËöCO×ıĞÜ-2z-Ë±9ú¼Ô‘ô–FŒéƒDÇD#£-¼„Hy‹1WK;<ªb[¯b÷®MÜ+éñ€\0Ö4Ç‘ÿı4CÃÛ‘öDÆWTVi¢•<ËFôë=å6\'Ì)À,9Ó¤Óá±ÓâÚ)òV¬½ä§³ÚÃşÙ|bCİ¼œÚ2—“ ‰¾ŸC¬æÛß/7Ñst+ó7ßáQ]/ÌFÙ×zC?|àby‰Zá7oãtÒ`È\rUMXYle>T³Õ/¢©·Ç¨u¦=‘~ı¤–ë=œø Ô?¾öó™ç §F‰\rÜ£I™7ngÿ2wï€é¢®aÒÈÖH›eŞîĞ´¬ôŸ)¥b—C¤€×\0r9ÁÁø¥œ@Xù™«à[×ò•©Ù:g‰¦í$­²ÎÍ–ĞÑÊÎŞ6¹Ü¿Êÿ=×ÓñpÛcz\0ãşub?É©´8‡C|ŞüË>EËµ\ZË>µ)h¨gœdçàÈT{×Úœód“Sbˆ¿IÕê™ê6»}°^Ş%¬À*˜â@?8;1e\"`ˆóC¯Yq‚ó\0ù‹Mµ³Î¡Wı{.iµ²+Ÿ¶ÿ}z¯a;qŞqo\\&ƒ	}ˆìş¡5ng0Ûû[)?:/³äÖ_âKéˆzÖlgÛx)ÉòMaóòdíe{S¸ºü@Ë¥¬òDZ+!Ö™Ş%\Z8€GˆT‡÷ÊÃ¡[–!­ I¸Û––ä~RólG-§Ö€ïWÇ8\"UÓû&À9;^¡yF“MGØb\ZLÉ°:¶„Y–‡Q{â²âw“m¿ó\rã¶eô»xjÓ…Íƒ¨¼Ök¿¿¿\0Û¼Ïxß	¹²¯?ûßIŞøÕ`;°Ğ‘Ïíz¼ú:\rÆëq{gn&wy>Ùöòßãdÿí+êÂ„u]×ebëE ×¯ÇP\"„vşèôypÌI×ıp¬dvº“™fÔ½iËåŠ÷‚#E‰H§—ö7ˆÈÕ´,ÂiõãSP½RyƒåXÊÉ¾ì\'¦ğ^¿¼&[d;~n„—ãLµyôå {‡T9(¿Io‡ø8$İøé±7‹p	tö5eT°IÈX@İ\"q=—÷d²7{Zo{”³àPN‹2»¥z¾œ=%~f©…jé DİáÅÎDı¬hæhëøÎD¥3ÀóÌ[täçš©›VÄtÏ‘ˆ@ügq…§–¸àşÏõ-ê»Q°Éòl§<‡çub¢\\ekã3÷	F~PÂM¬ûºYDó(öÿÕ×ù»³v´íâ)­ÓÏ›{Ùxè¯6¢ÜeËsÖ×ç™{çÛDu]ÜçsÎÿ$šxRã(¥gVJ§¿7srB·ïMSGIm)İğ#¹XıágÂ$Aqò&ü(šşù øEÜi9RÍSILôƒ@ğ\Z©;ÃÙ¥½ŸJLÛ?	ä07B¶Aß9lÛ¦©&úğõ8\rÈ®æZ‰a?…Õh¢Ü©\ZøÛg™ü‹ÔïQÄ	”Ô[0œ‹çkS=Xò¾üÏ½ªı67<¯Ï Ü­h­^Ş½¨5¯¹\'S9˜Jjà=Îÿ¶/iÁö±Nÿ‘¢DG9nH­sKÂåÇÛÜÅ\ZwÀ|àÌı‡´„2iÀrö™»U­¼¶9¦ä”&´aË’ã§.\'m¡³Ğ–²„Û¬]ª<Ö2±³TjÊZ3¦¨t?¥Ş ßT¸úÁ5w¾`ä9İ,£0ƒ¯Z  ¯¢Ê!½¥„K9áçÇ<¢SBS1İ1%6ıX³l$v´f»\'ˆ8ƒ‡QåÔÚ;æ¬˜öj¡-µq`¬byY‡óIc—ìÂ°ejg0®g²ÓÂÁæP6Á’\'g¥¼½¢\"ıÈvş1ğÛOZ8íãÇ	b ktK\Zœûñ¾,}²g~±¿ğşğ“œû_øŠµŒÎ:Eærl\\İÖï}¹Ø	ï;>øñD?»ÈÖa5ëL¹üDDPW¿úiH¬–EÆ~TµŸÊ5ë¸iKÁO5Hõ£ã,ãàå[,~WåsÛSåÌ¼ˆ–…(¤ëôjœÎU‡\Zğ`ë>ÎËAU;	İ¶‡×Àˆßu´%ivS${‚ŸìæÌÙkt\\/¯µıçÌbf] gÂU5XÇÃ´2)h¥Ë)äv4+R7À¹Ò}U3ÄQ<çĞ°+@ßô@×¡\\Ä/0í¶ÁF÷‰BÉ\Z[kæÎ‰vËáâªÁwl¬ZÂÑ`xŒŞ)ú ¥¯¶w+EFşeŒŒÔJP$Ì‚–Ë¦y°#Ùù‰ô[lºíÔPó·u¨1 ’Ã1zN¸ÎGêfÍ­db#~·€ãK÷z\n!42­\' ÚùsšDŸ:w*Nœ«L·{tş¶ƒ$àír4BY\0İw`}~^ˆs´œîg6E=İm(Õ5#`øÛiÚNúèÎ7`£®mÉØzÈo-\'OF âï–“æ|\nã‰ŞK>¥¶öP±(2…÷+—ÇRVĞøÉqÖ²“£ĞËı!c›ŒÓ_5ÙFóøI=gz³çôÃ¤ñ~\'Ò÷É¨­ı°ÿL&F	Ë@¹sgêú©R¡CÔûo®3¾<u|1¢Î~ŞĞK¥¥¯\'í`˜mq…ÖY!»¶P‰:	i³ÀãÙ.´‘s—å#Â©r»ÑtÉË™x¼Ïñ—\\sÿT\'ª&–^¤€N/‚ñÀ›£\'~–·´GY‘$¶L¶8éW%S=båS;m9|$ë\ndzL¨:[ÿ9Im[·í‡x ªC(V ø!3oü¸×h)P=9ÙÂ/….ØĞãd5 ßäÈbn¶÷ş9°¾LÁ¾²=-÷Ôt;ãÜŠ´ä¨PÇñZJŞëå<A«9b·êÇöå”ª“{ÿ\0|ßH„z©\0¬#ğşBÊ,f ií±®ö;%£ İµP¾óÄr&ñCvÕQÃ¶†Ï\\Oñ\0ÊnÌ[ÎVx®¬©Y]° ›j´lqf1¢w‚n\nwívÿ~–VX™½ºİ‚ÍaÈõM5œCF«‡øË1_?ñ\'BpÎ„ôÊ3Åî°# êÂB¾@µD<zqÚ7•ÏŠ‡Ä|¬ d­7—ixGNcJG¼E‡á>ª	¨0ÈMv{Õ¼ĞòsqªgÏ´WMùS@\0Ô*>`‚ÈÓ^Y¶ì¾´‡>¾fR¬s®ã5§“Y³)9{ºo¯:pªN+„å¡cti³\Z‹jªÇç*;—–‰!~&×‰NH’\0‹#õŞªS«³V´Ìû‹Î4‹~çç‹œ@&¹NÅŞç¬É(kÍÆ’yºøÚfU\0ìÇaØyëX‰î\'‡ÙkîGRÙWs)*›÷“U{NõÀ¦AâL(_8›GbL¸Ë½,ÃŞ\ZñÓ¥ ïé´£\\§íµ‡£íp]o=\rMİ¦S(¿ÊG€ÉÃ1\'§9Òvã±ıöó5Æõ±ÎlóA‘+-+õc}l¡D[‡ÌÂùŠs)ÂçÈÒXí%<*ò¶á|¹Â@gúÿ†:ÛÍcêŠôcx*ª²Ä#y,^·¶°f:TÀ£ˆ—#Á§ãÁìÀşª“5`ïÎpEªÛì\\sXøç@q\Z<·ÒE<MÎXO¯‰¨f³™J~EèîgÈ€ß€}âÃÀ{ö“Œ±Ä¸ìGúÕxÆ¢Ü–û)|cXyÊJ 9Lao‡DÀ¬nH!ŠÅH—ºF“şMÒjÂï¼ûñó‚<#œd‹æb,Z4QØ#œÎ‡ÂXg`K«?ë81îD‘tıi¶ápiËÙ3\0\0„iCCPICC profile\0\0xœ}‘=HÃ@Å_S¥µTì â¡:YqÔ*¡B¨Zu0¹ôš’GÁµààÇbÕÁÅYWWAü\0quqRt‘ÿ—ZÄxpÜw÷wï\0¡QešÕ5hºmfRI1—_C¯¡$–™eÌJR\Z¾ãë¾Ş%x–ÿ¹?G¯Z°‰g˜aÚÄëÄS›¶ÁyŸ8ÆÊ²J|N<jÒ‰¹®xüÆ¹ä²À3cf63G#K¬t0+›\Zñ$q\\ÕtÊr«œ·8kÕ\Zkİ“¿0ZĞ——¸Ns),`D(¨¡‚*lê«ÚOúø]¿D.…\\0rÌc\Zd×ş¿»µŠã^R4	t¿8ÎÇ0ÚšuÇù>vœæ	|®ô¶£L’^okñ# o¸¸nkÊp¹<²)»R¦P,ïgôMy ÿˆ¬z½µöqú\0d©«ô\rppŒ”({ÍçİáÎŞş=Óêï77r¡˜N9\0\0‹iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.4.0-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:iptcExt=\"http://iptc.org/std/Iptc4xmpExt/2008-02-29/\"\n    xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\"\n    xmlns:plus=\"http://ns.useplus.org/ldf/xmp/1.0/\"\n    xmlns:GIMP=\"http://www.gimp.org/xmp/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"\n   xmpMM:DocumentID=\"gimp:docid:gimp:62b9c2c5-63b0-4042-ae44-38deb0c4db21\"\n   xmpMM:InstanceID=\"xmp.iid:764239dc-1631-456c-bf35-7390e91b8b80\"\n   xmpMM:OriginalDocumentID=\"xmp.did:44c3c0f6-69eb-4ed3-901f-baf1f93b67e8\"\n   GIMP:API=\"2.0\"\n   GIMP:Platform=\"Linux\"\n   GIMP:TimeStamp=\"1688899848462183\"\n   GIMP:Version=\"2.10.22\"\n   dc:Format=\"image/png\"\n   tiff:Orientation=\"1\"\n   xmp:CreatorTool=\"GIMP 2.10\">\n   <iptcExt:LocationCreated>\n    <rdf:Bag/>\n   </iptcExt:LocationCreated>\n   <iptcExt:LocationShown>\n    <rdf:Bag/>\n   </iptcExt:LocationShown>\n   <iptcExt:ArtworkOrObject>\n    <rdf:Bag/>\n   </iptcExt:ArtworkOrObject>\n   <iptcExt:RegistryId>\n    <rdf:Bag/>\n   </iptcExt:RegistryId>\n   <xmpMM:History>\n    <rdf:Seq>\n     <rdf:li\n      stEvt:action=\"saved\"\n      stEvt:changed=\"/\"\n      stEvt:instanceID=\"xmp.iid:8ef5fa44-aaa4-4d83-ac73-d9ebc2762956\"\n      stEvt:softwareAgent=\"Gimp 2.10 (Linux)\"\n      stEvt:when=\"+05:30\"/>\n    </rdf:Seq>\n   </xmpMM:History>\n   <plus:ImageSupplier>\n    <rdf:Seq/>\n   </plus:ImageSupplier>\n   <plus:ImageCreator>\n    <rdf:Seq/>\n   </plus:ImageCreator>\n   <plus:CopyrightOwner>\n    <rdf:Seq/>\n   </plus:CopyrightOwner>\n   <plus:Licensor>\n    <rdf:Seq/>\n   </plus:Licensor>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>t)õ\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\0tIMEç	\n20Îƒó\0\0 \0IDATxÚì]gXTIÓ=3ƒbÄˆ	×5¢2PQÑÑÅ°ŠYÁv\r«¢˜s¸&0€k\n3*˜%ç 9g&Ô÷¹ãÑ°î¾Öóğƒ™;}ïíîS]]]uŠED„ò¯\"Baa!Äb1\n\n\nŸŸÜÜ\\äææ\"\'\'yy¹ÈÎÎA^^rss‘——‡B±…EEÉ¤\0\0G\rê5kB½V-Ô­[õêÕCİºu¡¡¡zõê¡~ıúÌçuêÔAíÚµQ«V-¨««ƒÅbı„‰¨ıè‚ïOòóó‘™™‰ÔÔT$&&\"!!qqqˆFtTââbÁb±TTJ”\'%¿gÿ£R‘´´Zãç¶mñóÏ?£uëÖhÑ¢Z´h¦M›¢aÃ†¨S§ÎAûÎ„õcÅşg%//))©ˆEdd$B‚ƒáëë‹ˆğ0°Øl°\0P)U°ªÀ«\n´Um£D™”<“\\.G‡Áçó¡İ¹3Úµk‡Ö­[CSSuëÖı1¸?€ı¿#™™™ˆ‹‹ChH|ıüğüùs|ˆ‰›ÅR\0°ªaù`e¶´¨S§jÕª‡\0Éd‹ÅÈÏÏ¯V{ª©4àåDø©MôìÙ«ğÚÚĞÒÒBƒ\r~ş`ÿwD,#66AAAxùò<Üİ‘““£\0šO‡ 4XJD.—£Yóæhß¾=´Zi¡yóæhÒ¤	\Z6jÄì‹KöÂ5jÔ@\Z5ÀápÀf³Áf³Áb±˜ûÈårÈårÈd2H$H$fï——‡œœdfd 55ÉÉÉˆ‹CXh(RSS‹ÛúÄŠ¨èù4lˆB__]»v…––jÕªõcrü\0ö¿K²²²†—/_âÁƒûğ÷gV³Oğ)är9ºtí\n®í;tÀO?ı„fÍš¡ÑG\0×®]jjßÖ5\"•JQPP€œœddd ))	>|@Dx86›]¦²*y¿«D‡Ë…±ñ\0èëë£cÇĞĞĞø1i~\0ûû5±ƒƒƒğìé3¸¹¹!%%™ê§“œÍfäDhß¾z k×®h×®-š7oF\ZıkV´‚‚dff\"11QQQÀDD„ƒÍfäÄ(4Å>(Vššš>|zõîÎ;ÿ0Ù\0ûû0³CBBğäÉc\\ºt	ii ärÅ‰\\ÚîÜ¥\rû@ à£]»öhŞ¼y™^e™L†ÔÔT4iÒä›¯ÒŸ#ùùùHJJBDD|ß¿‡×S/„û@.—++:M›6Ãè1£ahØÚÚÚ?ÌõÀş¶òáÃ<ş×¯_‡ïûwJ+s‰ÙÉb± “É1ÊÌ={¢K—.hÕªj×®]©ûbäÈß ­­\rtëÖı_Ù_ˆG`` |¼½áì|6[ikRz%\nEømäH uëÖ?&İ`½ÕÙßß·oßÆÅ`±XJfvÉÊÜ¸I>={ö‚¶¶6š6mZ­{&Mœ€Èår¬\\µ\ZãÇÿ×÷ejj*‚ƒƒ?*ÇkÈÎÌ„\\åJÎaÂÄI011ÇƒººúÉøØŸ/éééxşü9.99áÍëWJ°ØëÌGM\r“\'[ OŸb3²aÃ†_äşQQQğ÷÷‡­\r’’qàà!ôéÓç?æ›Æ“\'Opêä	f%WÕÇzúİ0nÜx Q£F?&ç`W]pÿş}ØÛÛ!#=\r2™\\Éd$\"˜4iÒä«=OZZ\Z¶mİŠ€À\0¸¸¸¢fÍšÿ¹>OMMÅû÷ïpçÎÜºySÉ*b±Xàp8hÚT³fÍ‚QÿşhÑ¢ÅÉúØKll,nß¾…û÷ƒÍf+L¬’•£U«Ö˜4y2\r\rÑ¶mÛoC““ƒßFŒÀæ-[şS«¶ª-HTT?~‡óç‘˜¹üÿWñÅ*—Ë±xÉ˜˜ş±ÿlÕ‡7nÀæĞÁN/™ÒŞ¹cŒ5\nzzzÿØÙ«¿¿N<…=ÖÖ•Rç_Ë••…×¯_ÃÙÙÜWòªs8ş\\´¦¦CÑªU«“ù°””Ü¼y{­­•\0]†9~ÂD>]»vı.ÜÜÜ`hhÈì3¥R)d2ãXJII­­-nİ¼ú\Z\ZØ¸qúôé‰D‚çÏA*“AMM\r‡ùc³ÙhĞ \Z6lˆºuë~wÙ\\R©puu…ÓÅ\0 4VD„eVËajjZm‡å`ÿË%\'\'Ø³{òòòTN’9sÇ!CĞ¡C‡üyóòò˜pÏøøxÄÇÇC,#88AAÈÈÈ€“Ó%hhh`Ê”)˜6m\Z\n±fõ*<dƒ&Mš`©¥%<y©D98l6À$vä29¤2zöì…;@K«5š7oMMM¨««£fÍšhÚ´)444Å÷­%<<7nÜÀq{;•Ê¸~}\rX-_ ^½z?€ı¿ 2™Ï=ÃÁ™LÆì¡K\0ıÇ¼y:tÚ´ióÍŸ¯¨¨¹¹¹HKMEBb\"\"\"Â€[7o2@’ËåŒó®©¦&x<>Ú´idffbÁüyxúì9c‚Ÿ:y?µiƒ 33			xôèÛÚÀÆÆšÍšA&“¡°°ÁÁÁˆû˜iööí[äææ0[‘’q‰D‚^½\rÑ¡Chkk£M›6èÜ¹ó7Qtt4ÜÜÜpìè€—8Ùºêè`Á‚…èÕ«s>şØÿA	\r\rÅÉ\'póæ\r@—LÜ™3gá·‘#ñóÏ?SE“œœŒğğp¼zõ\nwnßfò­K¯c\'môèÑÚÚÚ\r\rÅùsgaüohkk£víÚ\ng»çÎÅİ»ğô¹7êÖ­‹‚‚Ì;şù§B€ËÍ›7±fõ*xŞ»Æ«|¶ÂÂB†Ì!++éééHMMÅÍ7àãã\r9Ô8Ô¬YÌ[€éÓ§ÿ#ã\Z…kÎÎ8yò„Â¼àÃ†Ç´iÓÑ±cÇÿ`ÿO-dggãÚµkØk½GaàK\0m6z&Nœmmíoò<éééˆÆû÷ïáî~ş~~`³XH¥1â7L67‡§‡¢c¢qş¼455™ÕúÕ«W¸èè€†\rª<+ïĞ±#8jlÛ¶\ríÛµÃ³gÏ`hØººz\n×äƒˆ ‘HÊ|Nuuu¨««£Q£Føé§Ÿ˜Ï‰«W!‹‘€B±øß¶mÛbñ’%bj\nGG\\»zµ8ƒR©.×¯Ãõº–¯X¿ı†úõëÿ\0ö¿]|||`½g‚ƒƒ”L5ƒ˜3w.ôõõ¿ê3äææ\"66xõò%®_¿†š5kB&“Á°O¬Z½\Z\\.?ıôãmg³YØµs§B.5\0Ô«W„âsvUŠHOOC‡€›«–Y-ÇÎ]» ©©©Â%c”[U¤°°îèmØ\r\Z4@ƒ\rĞ¼yóÊ[(R)’’“¿Š÷ºsçÎØ°a#†\rcÇá…ÏsÈdrF‘ïÙ½.®.°²²ú×†çşÏ;--\rçÏŸÇ‰ãö•:‹æp8¨[·.Ö®[ccã¯’h ‹‘””„ĞĞPx{{ã‚£jÔ¨ñ1.Z~FF˜1c&Ú·o_f„ÚO?µ‡ÍF||¼Â5\r\Z4€\\.GJJJ™«ìêÕ«QXX»cÇœœ6›>}ú((0©T\n€T;77jjj*û&//ĞÑÑ©ŞŞÍÆÌ™3 ÓU£ÌÌÀçó¿hF‹ÅB·nİÀåráéé‰-›7A,C&“A*“!Àß³fÌÀ¬9s1iÒ¤2·!?€ıŠ··76mÚˆ¸ØX…UšÍfcæ¬Ù?~|•V™ªˆD\"ÁÁƒápşX,¤R)¦N†î=z ]»vX±b9ê××€Äb1ŠŠŠTF‘µlÙ >>NDõêÕƒL&C\\\\œÊûËårœ?woß‚fóæxşì\0B÷îİ•ööDÊÔI2™«V­Brr2Ú¶ı-[¶B‹-ĞLSM55‘””‹…víÚU«Øl6.ü€§§êÕ«s‹)022BÇ¿ØqbíÚµ1lØ0tëÖ\rqòä	&ØH*“ÁŞîîŞ½‹uëÖ)õÍ`g’““9l«àSSã€ÇÂÒÒzzz_åŞ)))xóæ\r._¾ïç \"lİ¶ÆÆÆ\n\"Úw€««^¿~„ø8´m×ãÇWÚû5iÒ2™‘J¶c§NˆŠŒTù1118lkƒ….Â¸ñãî±OWfy)…WZ8Ú´iƒÇ\"0À¿øŒ›ÅbR.‹Wz|V(§©©)0~Ü8dd¤ãÈa[Ø;\n¾@€ñã\'@__ÿ‹)Ş-Z`ñ’%èûË/°¶Şƒ@He2Èd2DF„cö¬˜¿àOLœ8ñ?u4öŸvpp0¶oß·o^3«t‰sl‰å2Œ=ú‹\\AAüııq÷î]\\pt\0›Í†@ Äæ-[Ñ½{w´lÙRak°k×.Ü½sıŒúC[[l...Ø»×\Z^^^ØcmÍ\0±~ıúèØ©Ş½}«<®ŞŞŞH$¨Q£†Â÷D™L†	\'–I(	ww¨«««4ÅMMMápî,Z¶j…İ»÷ °°)))HJJÂ7øÙqñ±±±ÈHOÃ½A(âùóçpttÀº5«!“Ë1qÒd˜™™¡S§N_d¬ôõõagg+W.cß_çš6‡â©—V­^ıÍ¨_]è_.r¹œÜÜÜHÀçŸÇ%®NWâêt%ŸGæôşıû/~Ïüü|ºwï>œø<.;–ÆŒM>ÂÃÃ•®/(( Q#G’®HHO<!©TÊ|—MÖ¯\']‘~·k×.âqu(77Wáó£GŸÇ¥ÌÌL¥{I$š1c=}úTås»»»“€Ç#ŸGÆÆı);;[å;nİº•z\ZôPúüÏ?ÿ¤qcÇ*¼Cudıúõ$àóŞA\"‘P`` ÙØØŸÇ%ŸK›7o¦7oŞD\"ùbã÷îİ;š4q\"	ø<f¾ğy\\âó¸tóæM’ËåÿvXĞ¿zÅÎÊÊ‚ÎŸ;«äñ7&NœøE6\nñüùs:x‘‘àòx8uú>|ˆÁh³QğññAûöíÍ\"55¬X¹\Zºuë¦ğ]ıúõ1eêT\\»æWWWŒ3†Y…;uê555ddd(¬¾-[´\0‡ÃAnn®’ãIMM\rÛ¶mÃRKKxyyÇãÃá &:\Z—.]BJJ2úôí9üııÊ?¾Ò{äççÃëÉcL˜0ñ³¢ÎRRRpıš3fÎš­ğüjjjèÒ¥ºté‚N:aù²¥¸|É	×®^PWæææèÙ³×gÇ¾=vçÏŸÃÑ#G “ÉÏùª•+€Ù³gÿ»¹Øş­\Z),,Œ,,Ì•´î/}ûª\\­>GÄb1=~ü˜&LOúº\"š0a<=~ü˜Äb±Âu¿ÿ>—SAAA•ÚÏÊÊ\"W‡ŒúıByyyÌç¯^½\"=‘^½z¥p½——éŠ„äïï_f›ÙÙÙtæÌ22êGBŸ|-^¼ˆîß»G………täğa•Ö@yòáÃ	tíÚµÏêOÒÓQ@@@™×¬Y³†zõ4 èèhrw¿K£F$=]\Z5’¼½½«}ï¢¢\"…şôòò\"CÃŞJÖŞ´iS)\"\"â_»bÿ+íååÅ˜N%ƒ!ğiÅŠ_áï%I¥&tQQ={ú”æÎ™ÃLª(ºDîß»Gúº\"zùòe•Ş\'>>|ışû\\’Éd)001ë+ó®iii”‘‘¡ğùÎ;‰«Ó•òóó+ıœ/_¾T©hª\"‰¤xë2ft™æuXXéŠ„tæÌ%åÚ·oÒÓÑ¦M›Tn{Ê™LFçIW$¤èèhæó¸¸8Z¶l)	Ê¦ù—^$¾•°ÿeÖœœœ0ïß™2‹555XY-ÇæÍ›VeI@@\0&Ošˆ¿şÚ‹ÂÂBÁRx{?ÇÜ¹s0oŞxöì)¶mßK—.£_¿~eÒóèêéA\"•ÂÍÕµÂg(ñ.€‡‡ÔÔÔ0|øgV£F •J\Z¢ğ[\r\r\r’““*öª©¡qãÆJçåi©©\nc•‘˜˜È‰Ğ¬Y³jaHHÂBC0mÚô2¶®9;ƒHAƒ)œÏ÷éÓ®®nX±r®^¹Œ1f£pìØ1$%%UêŞ‰wîÜˆğğáCæóV­ZaëÖmXºl9ÔÔÔşø}®\\¹\\¥Ê)ßƒük€]PP€ƒ`û¶­J¥ \"Æë}øÈQL67¯4«ˆ¿¿?âããñèá#¯²T*ÅË—/ñçÂ…˜÷ÇÈÊÊ†¹…X,\Z4h€ÌÌLÜ»wnnnx÷îR8fƒ\r0}ÆL8;_-3€$,,[·nÅï¿ÏÅ¡C‡påòeìµŞ¡Hccc…këÖ­‹>}ûâÅ‹\nLÅŞ}BddTµûsÂÄ‰èÕÛP¡İŠäõë×àp8ŸÔ‘““úè¥V%III8wî&M6WyäÕ AŒ7·nßÁÌÙspä°-0Æ•+W]î½ÕÕÕ±råJ^¾|©\0VuuuXXXÀÆö°CT*Ã–Í›qèĞ!ˆÿÁ°Ùÿä;--¬¬¬HXj?-àóhòäÉ^åö’’’èÉ“\'ôüùs…ıìRKKÒ	©WOº}û6³W<yÒG/-ôt…¤§+$]‘–,YBÉÉÉ\nm®ˆ\\]]TŞ{¹•éŠ„ÄçqI(à“®–-[J)))*¯ß¿?éŠ„”®`RºººÒÎ;L÷ªJnnn•¼Í‡mmiÌèÑŸ5–999ÔMO·Ì}úÙ³gIO$¤ĞĞĞJµ·bÅr\nø¤+Rß¾}ÈÓÓ“ŠŠŠÊİ\n6”FYæ»‡‡‡+yÍ…|­X±Ba¾gálÜ¸qã÷¬xâââ`eµ^O0«‹šš\ZF\Z…-[¶TÊôşTêÖ­‹6mÚ uëÖHOO‡——æÏûQQQøu	8¡P555øøøà¸½=ø|–X.ÅìÙs`j:…ExÜ½ƒ à`\Z4ˆ1+5j„{÷îÁßÏ#GR2u555áëë±XŒ¢WoCÉab2X¥YÜ¦MÔ®S­[·fˆX,´µµÑ½{wp8œj\"Ô¬Y³J¦¸H$—Çû¬à‘š5kBOOË–ZB³Y3´lÙ’	]MNNÆÒ¥–04ìƒI“&Uj;³{÷nÌ›¿\0sÿaaa8{æ4>Ä|@ç.]TzµÙl6{{CCCC‡UÙn£FĞ¿ddd ,4¤˜–‰ááaxïûß\"É÷îù61¤ä$³³³+W+WVÉÄd‰„š?>İ½{WA‹‡‡‡“®HHË—/§œœ¥³éY³f’®H ä¥½~í\ZééŠ(00På}óòò(##ƒ9/İ¼y3-\\°@éŸ®4ÿ%ñöö&³Q£hàÀ´iÓ&Ú¸q\r8€D>½xñBåo^½zE!!Á”““Cyyytùòe2èÑé·ÂÂB…˜†ë×¯©ttÎš5“®\\¹Rá3Ò‘#GH(à+8Õ†\\eÇİ¯øGñóó£İ»1 æquH(à‘³³óiÿîİ»$\n¨W/z÷îJ“öêÕ+dj:„ËlCOWHç>OLL$‘O¬Ô³Ğ”)Shê”)”””Dÿ+òúõk24ìMº\"!ñ¸:ÄçqÉÜÜ\\¥ÒNKK#ŸG\"¡€x\\âquH_O—Üİİ•®ëodD|—tEBš5kùùù)(È	ãÇ)xÅ+’+W®PÀ\'W‡w¯å×ıPQ!oß¾Ås¦JD‰3cÿC022úl\'Ü©S\'aì††Å‹—”ÉõÛo#1hI™¡™eı®yóæ1b$ìíaêÔ©:ÔªUÖÖÖØ°aŠŠŠğ_–˜˜<şÎÎÎ@ccŒ;999Xµr,,,”Âd 4$,#GB£FÁf³¡£ÓFFı®³±±AFF:._¹ŠŒôtÌ=“&>‡-ºuï‰DîGÆ™ÊŠ™™\Z6lˆ%‹1•Jsrr0~ÜXœ;ï\0@ğÃ¯ÌY©€Çc´c‰&¯êÙ°*‰ŠŠ¢yóş ]‘€„|íÚµë³Úsvv&=]={öLé»/|¨›¾.İ»w¯JÁÿu	§\rÖÓ_{÷RPPšºfõjêcØ»Ìíˆ££#:t¨Ü¶Ÿ>}Júz\"…óï””ºzõ*™›O¦E‹ş$OOÏjøøøŸÇUš›¯_¿şîúù»¢FzõêfLŸÆœ!²Y,¨««ãÔ™³àr¹ŸÕv~~>/^Œ>Ş8fgÌÌL¬Z¹VËW`Â„	UræåççÃQÃâÅ‹““WW7¥“‚‚¬[»2™{¬­¿*»©D\"X,Vú+**BQQQq¦[	]›\r‡ƒš5k¢fÍš¨U«–ÒŸªókŠŸŸ¦N±À2++Lœ¨ÚivíÚ5„…†b™•U™ÇhãÆAí:upîÜy¥°Ó/^`öÌáô™³ĞÕÕ­Ö³úúúbò¤‰ŸX“,œ:]ı6¿†|7¦ø›7oAÍfC£Aœ8qò‹dÜÔ©SÖÖÖÈÎÎfÈåııü°g÷.tèĞ¡ÂœÜ‚‚ØÙÙáÄßÇKl°Xlœ<uZeÖXíÚµ±ÇÚ\Z_¤är9²³³‘””$$$ >.ñññˆ‹Ã‡1Hş˜+]U/yÉ$mÖ¼9~ú©\rZkiAKK­´´Šs±›5CãÆQ¿~ı¯B\nXBDhl< Ìk„B6mÜ€şÆÆ*ÏÀ‘œœûã«Œ%WSSCÉ\n6cú4,]¶£F™•¹Í*Kø|>œ.]ÆŒéÓ››ó±0uêœ={B¡ğ»ÀÓw±bûûùaâÄ	Ìc³ÙhÔ¨1Nœ<ùÙÔ¿yyy`±X*;??óçÏÃ›W¯pãÖmhii•ÙNdd$Æ˜‚D*›ÅBí:u ¥Õ\ZÓ¦OÇ¯¿şúÅ‹Åååå!))	ÑÑÑ		¿¿?^¿z‰ììlàR©j•Ÿ;”%í~ªˆ\Z\Z\ZèÖ­;t¸\\hwê„ŸÛ¶E³fÍªŒò»H$*W)íÚµ/8`õšuèÖ­ã»ˆŠŠÂÌÓ1qÒd,_¾\\éw>|À°¡¦àØ²e+œ¯Âáü9ô0è‰uëÖWëÈ444Ó§OCvV&ärbúì¢Ó%tíÚõ°ÃÂÂ0qüxˆÅŒiÓ aCœ>}æ³@ıäÉ\\¹r^OC»sp¹\\Lš4I‰4663gÎ@›6?ãàÁƒe–¸•J¥puuÁ«W¯Ñ¹sg\Z45kÖÄºuëœœ„µk×ËåV;ë©¨¨ñññ		Á›7oàõä	¢¢\"Áf±@\0ˆä R\r^E@€\"8>…Šr¤ĞvY÷`ş\0È‰Ğ¾}ô64„H$‚¶¶6´´´¾ªŸ››‹­[·ÂÃı¤RC¦Áf³Q¯^=¸ºİPÊÏËËÃ¼yóğîí\\»î‚¶mÛ‚ˆàêê‚6 •–lmW‹™6,,S,,Š£é>Îİ:uêÀñÂE¥Ì¸ÿ)`ÇÅÅaê”)HNNbâ¾kÕR‡ƒãÅj\'ØËårØ;{{;tÕábıúõhÚ´)pÜŞ.®nJQìµŞ‹)S±xñâ*ïoOŸ>…cGÀÆæ0zö¬Ò¾?22¯_¿Æıû÷ğòÅ°Y,¥ºÑªÀUzµn×®~ú©\r455Ñ¨qchhh nİº¨U«ÔÕÕ¡¦¦Æ˜Ğr¹R©………‹ÅÈËË+6ñÓÒœ’ÌpŠ—°¦”¾OYÏSòÌ=zÀ¨¿tuõĞ®]»¯RZ¨¨¨?†§‡âğò…ÔÔÔ°Çz/~ıõW¥ë÷îµ†ÃùóØà úöí«ğİë×¯1}ÚT\0ÀÉS§«Å®Œ±cF+X›­´´pâÄÉ´ÜĞ?ìôôtÌŸ?ş~~¨Y,.\\tª6Q\\.ÇÙ3gpàÀ~´m×\'Obò}SRR0è×0·°ÀÒ¥Ë&ÊâE‹ğäÉcp8lÛ¾¦¦¦U¾···7:wî\\aùÜ¢¢\"„‡‡ãùóç¸yóB‚ƒ™g/=Ÿ‚X.—£g¯^Ğéªƒ¶íÚ¡U«–hÚT\r\Z4@:u ®®şÙ•9JŠ”€½d/	x{?g„*°—N*ÑîÜC‡-®(Ò¡ÃWYÉ###a>y2ô»uÃ¾}û”ŞßÍÕ7nÀüËä<†Õ²e\r\rÁ;1xğj9ÿ&}²•äó°±µıÇÊış#Î³‚‚lŞ´	şş¨ÙìbGTuA\r/¸{¸\0–-³RJâ—ËåÈÎÊVxıû÷ÃËë	œ¯]‡“ÓE¬]³\ZíÚµ«ò>ÉÀÀ ÜïñâÅ¸ººÂûù3•`.Ij€–-[¡ï/¿€Ïç¡}ûhÑ¢\Z6løU½ë%üêÔ©MMM…­D\"AVV___<yü		ñĞår9öÈ(­^½zcØğáèŞ½û%‘tttD~~,--•@íëë‹õë×aÀR½CØ\0\0 \0IDATÀ077/³Ÿş\'NœÀÚuk±zÕ*ÄÇ\'”y–^–ğx<œ8y\n3gL‡\\^LÚàçç‹-[¶`ûöí_…	÷»[±år9öìÙÇóç -û}ğ\r~ùå—/bª…‡‡C[[[a°]]]±ní\Zhµn\rsss¤¦¦áÍ›×I°eëV´mÛ™™™07Ÿ±XŒ‹>›×K.—#((wïÜÁß‡ÍV B.3›Å‚L.ÇàÁCĞÛĞ:::ĞÒÒúîÉõrrr‡€€\0xyyáîÛ*×³X,æİgÍšA&&èÜ¹ógyØ?z„%KañbK˜[X(|—ššŠqcÇ‚ÍaWjSSS±èÏ?áëûjjjñÛoX²Ä²Ê´È<ÀâEÎv‡‹)XºlÙ7/pøÍíàà€İ»v2ùÈjjjØ¼e+FŒñUî77W=rl6Ó¦Ï€\"\"\"`½{æş1¿ÿş;s}HH&Œ#ãØ±cGµ¼İ………xóæ\r®^½Š;·o1fîÿƒ™«¸¾ó˜±ãĞ·otíªƒ-Z|W.«\"D„ÄÄDøûûãÉ“Ç¸rùòGË!—“‚U\0\0ƒ‡˜ÂÌÌ\"‘¨Z}ìææ\nëİ{póöm…½|QQV®\\‰÷=qöœC…ñ¹¹9X¸p!Ş¼~‹VËĞ•ËÃ;* TFœ±iã…ù½jõ\ZŒ?ş›È7“‡*Ô|²·³ûj÷“H$´mÛVÒ×‘€Ï£;wî(Å\0ëŠ„J‘Hîîî¤+ÒÅ‹«t?±XL=¤Y³f‘ğrE·8ÕTÀçÑÂ…éÖ­[”ğEß5//²²²(99™\"\"\"(--ˆˆüııéÍ›×ôæõkz÷î1	(r¹œÒÓÓ«Ä¤RIHH 7nĞ‚˜÷æ}ì‹’xk!ŸGsçÎQI3U‘dffªŒÕ>~ü8éëéÒne&à”$çH¥RÚ¸q#ééŠèñãÇ\n	*BŸ\r{W+MóèÑ£Jó¼tûÿ©È³°°P˜\ZÅ88F™™aíÚu_uß(“Iááá‰ZµÔÑ¯Ÿ‘’WtÎìYØ½ÇZ‰ä 33ócIÖŠÓó¤R)|||púÔ)x{?‡\\&ƒüc·–˜¡µëÔÁô3Ñ¯_?tèĞ¡Úï,•JUşöèÑ£¸ÿ>’“¡V£´ZiaÎÜ¹000€®H\0‘H­´Z¡¨H‚æÍ›cùòåHKKÃ={‰D˜™FQQ^¼x---hjj¢nİºÕ¶$d2ÂÂÂğàÁüı·=ŠÄ…\nÛ6›6›ƒ½zaÚÔièÖ½{µûæşıûX¶ÔææXbi©òš´´4÷7Â_ûö#))	YïÁŠU«1vìX%o÷øqca2x6lØP%¿D\"ÁæM›àâr2™Œq‚^»îòÍÁ¾	°³²²0}ú4„…†2%`Eºº°µ=üæµ8q¶6qÈæ0z÷î]­6|}}qúÔ)xx¸+šÃAç.]`nn^½zU«{VV¢££ñæÍk¼zõ\Zññq˜6m\Z†\r®4a‰û÷íC«V­0÷÷ßÁáp——‹pu»¶mÛ*üÆÎÎ¯_½Â!ÄÇÇcÄğapquƒ¦¦&¬­­„””´nİ\Z»tÁüùó‹°ÙÕ2ŸSSSñìéSœ9{¡!!JOÙl™ÁÔ©S«B¼dñbDFEÁÁÁ¡L fdd oCæ=¦L™Z¦prrÂ®Û1Ät(Ö®[W%\'Xvv6şøıwøú¾gæ|ç.]ğ÷ß\'¾	ûéW\'ZËåØ½{zy1puuuØÙWY,îK+”ÂÂB•\0«eK!“Éa¹ti•Ï\\ãããqü¸=Ö¯[‡ğğ°âIúĞjjjèa`€å+VbŞ¼yàñx•j_\"‘ 992™Œyfü1wûôÅğáÃ!éÂj™%~ûm¤‚R,ñf‡†…!\'\'‡9³-,,ÄÕ«Wó!oß¾Å³gÏ •JÑ¶m[áØÑ#ĞĞh€6mÚ`Ş¼ùhÔ¨jÕªõÑ²h3gNÃzï^4iÒmÛ¶ÅíÛ‘™•ÄÅÅ!++«ÒN¦:uê óÇc0>_€Ô´T$%%1Vœ\\^LfpõÊáçŸ®’âoÒ¤	†^n•™L†7o ?/FFı±jõj•Â‡pòäIÄÄÄ ,,ééĞÓÓ«´BSWWG÷îİáàp@q•Œôtäææ¡oß¾_ß—òµmı«W¯|²ßà}}lU$\"\"‚lmméô©SäååEN...Ln¯ûİ»UŞG»¸¸«£@Sœ/Î§)S,èáÃ‡UŞ3úøøĞ¸qãh€qâó¸ä|õ*3hòy\\†U5  €ø<n™TJdµl™Â^´§Arrr¢GÑıû÷ Ş½{÷‘¡“O666\nf×¯_£™3f(¼;«C/^ø0<®ó›œœœ*½wAA=xğ€,ÌÍòK¨¯x\\ruu­r_–\'r¹œfÎ˜AıŒ(55µÌyÓï—¾$ğÉÏÏ—îÜ¹Cúº\"²´´¤ÂÂÂ*İïÙ³gJûíëŸIßü-øûû+òF	øJ¤_[är9…††Ò…hÅŠdü8, ·oßV©­   Z°`ÁÇIØUa2˜îÜ¹Si\'Tff&smhh(	|òöö¦ÜÜ\\òóó#‘PÀ0‰Lœ8‘–/·\"sss	äååUf»7nÜ éÓ¦1ÿ§§§Ÿ«£DàPXXHöövŒs(!!DB½{÷¹fûömdkcÃüI—²²²H,S÷nú$äó(..ˆˆ–.]J·nİªòåååÑ­[·ÈÄdJe¹páB\nş¢‹MYbBCC¨›¾	ø<ŞöË—.‘®ˆ>\\åû={VÜ>¯LvïØYYY4jÔHâÔÂ>V®\\ùSüˆÅbÊÉÉ©R‰\Z±XL/^P*#TÂ=}îìÙJ{OèÔ©S4hĞ¯äççKDDövv´råJ%ïîÔ©S‰¨¸ÔÏâÅ‹($8˜¬­­iŠ…………©lßÓÓ“ø<.ó~©©©$àóhöìÙ´víZÚ¸q#ÙÚØT*¥%K“……9½{÷<==H(àQLL£GIwKY4îîwÉÔtCSôÛˆ4yòdòòò\"±XL|W™$>>bcc+]2\'--Îœ9£Ä_B$éääôEVï²\'00ñà)}oggGúz¢*+/‰DBVVËHğñø<.3º\\*¬ï–AÅŞŞáaa×Ôl†¥K—~Uxe÷>UqüDEEá¯¿şÂ£‡”Êı6r$¦M›^©’²R©Çííááá!¦CpæÌY&\n«F\ZÈÍÍU¸¾G8°€bÁ€€\0tÒÖÆ’%KpäÈŒm†N—”RZ;uê„í;v0ÿ×¯_.¡  \0‰r™l[·nÃµk×`oo:uêàï§˜sÛ¬¬,DFF0)®\0ğòå+\Zd\0¸qã¦N›‹??_¨©©¡sç.hÓ¦\ròóó±oß>\\¼àˆ-Z¢s—.°´´¬°Ÿ\Z7n\Z\Zâä‰puuQ(¿³më<}ú‹/®VÒFé€UNPóÉ¨[¯Î;‡öí•¦M›†ĞĞ¬^µZZZàóù•º_	ï½÷so¤§§A.—#$8öööX²dÉ¿gıøñc¥}EuP²³³ÉÁÁ¼¼¼¾y±4OO¥ÕCÀçQß¾}èş½{U¢ş•Ëå´víZZ²d1c~Ş¿Ÿ¤R)’H(`LZ¢â28ÆÆı‰¨˜ÔQ(à3V\\.§ÀÀÀ2÷Ù_BrrrÈÅÅ…²²²Ó]Àç’——Ÿ«CqqqBcF¦yóş`øèvíÚEcÇŒ¡ääd†tPÀçUéLX*•’§§\'\ZöVY<¯*Ì4É›×¯I$àÓ€ÆU¡U1bøpêchXå8\nm¡€ÿÕ*|q`§¤¤¡aoÆ\"ğè¸½}µÚ’Éd´mÛ6ê¦¯§DZ÷5%77—lll:%û½;vT›p0::šø<.9r˜†LÛ·og¸Ë·lÙB½z\Z»»;cö—”Ò‹ÅñR\'Ñıû÷)++‹‚‚‚hø°¡ŒàquHÈçQJJ\neddPÀWÚ/Y¼˜ÙzTEiÛ¶m*ÇâÈ‘Ã\nµÎª#/||H$ĞĞ¡¦ôáÃ‡2•\\TT³½‰‰‰¡Ş½zÑœÙ³«ØsìØ1Ü<®ıÒ·Hô]{Ë–-Œ†åó¸4eŠE•‹Ô•È…H_WDNNNßlÇÆÆÒ¼y¨\\%<<<*ü}||<]¾|™îÜ¹£rÒ­\\¹’ŒŒú)i{±XLÎÎWÉÊÊŠ<ø]ÓÛ2+9ÑìÙ³iğ`\"\"òõõ%W‡är9åççÓîİ»É××—\n\n\nª]zW.—“»»»r½6>,X `éTE>}Jº\"!3¦ÜÕ÷ıû÷ÔM_—,X@!!!ôîİ;âquHW$$kë=Uºg~~>M<™yŸG;vìø¾ı©	.àóªíÍ,©(ù×Ş½ßlÂ¾}û–~éÛ÷óâÉSÍÉÉ‰Ó–-[h¨©)Í™=[©øßÛ·o©›¾^•ª\\~ï’œœÌ(¢’ƒ%`{öô)‰„|:^õiHpp099]¬8###iŞ¼?ÌY>KıúU¹ú‹>¤§+$s¥j.ªÁ®®®d2h	|âó¸´xñ\":pà\0éé\néêÕ+Uºw‰“îkšä_ØôëÀ¥Lğ²³\"‰ˆgÎ™—/·*“×ûKï§KÎNK›{vvv•2·öïßOBŸÙ÷æåå‘‰‰	=zTi{ñëÀtâÄ‰o<™LFR©”¤Rég•ª¬\\¾|‰\r{ÓÍ›7éñãÇJGGÌ>Z\"!=]]¼x‘–.]Z¡ò,é×^©c1ŸG÷«°ï¾zõ*=šÒÒR«äwX·v-‰„ŠŒŒ$\"¢M›6‘®^øøT©Îœ9ÃT÷äquhÈàÁ\nVĞçÊ)µµµ…İ±£ÉdÅ!£\"]ØÙÛW95333gÌ@VVfÏ™ƒíÛ¶¢víÚ°?şw¥½U•K—.aÛÖ-Lˆc	óäŞ¿öcàÀ•j#..¦CãÒå+Œ§º„uõñ/…0Â€€\0\0ø¬Üó’¨¾ÜÜ\\dee!==ùËHOGVv23³ŸŸÂBq©òH5PK]µj×FÃ†\rĞ@£\Z5nŒ&£QãÆhÜ¸1\Z4h€zõê}VZåÛ·oàêê†¨ÈHôéÛW‰è ))	¾¾¾X²xœ.]†­­-ÌÌÌ”böËwww,[jÉä´—œT¬[¿£G®ğ÷			àp8eV•Éd*‰+2220bøp1Ë—¯@NNæÎ™ÿ\0?¸¹İ¬t6XAAfÎœ	¿!§ü1¿ÿñÇ÷+ˆ	ãÇ1“‡ÃáÀñÂÅ*O\\©TŠõë×ãö­›8yê4„B!1Ş<df¦cûê1\\”^X/~ˆI³c³ÙhÑ¢%ö8Pîó‡‡‡ãÈáÃËåXfe…V­Zá¸½=<ïyâÜ¹óàp8(((€Aî¸qóV•ÓÿÊÊGtt4ÂÂB„woß 33“á\"£Ri”¥Î>Pòï§œh_ÚÇß\Z6l‘®ºví‚:¢mÛ¶hÙ²å‹ëÿş=Ì\'OÂ(33<yò:tÄÀ1bÄˆ*-~~~X¼x’“’˜#1555,üs¦OŸ^-Å$•Jaog‡ÀÀ@¬X¹R%Áåa[[ØÛÛáæ­ÛhÙ²%bbb0bø0p¹<=v¬Òıäçç‡É“&*àÆéÒetîÜùŸ—J¥X·nb?|`²¶æÌ[fÁ³òäôéÓ¸àx›6oeH4551ÄÔ±qñ8ñ÷ß`±ØàñxŸ}.‘H`kc;»c¨9zàÀÁƒefáH$ÜºuË–-…¹…²²³qóÆ\r:´µ±kçN„BhiiáÊ•+ÈHOÇdsój=¯D\"Á‡ğüùs\\¼x;vl/N8¹{/_¾DTd\nÄâÿµ.EW¤øWÜ^^n.ˆŠßóÓkJÿV,#:2¯^½‚Çİ»prr‚Û\r7ÄÆÆ\"//5jÔ@İºu«MÅd½g~ûHfğúõkL˜0¦¦¦Uî£fÍšaÀ€\n\nBRb\"ÃâòòÅHe2èëëWÜ			°´\\‚èèh|ø“AJmDDFâéÓ\'b:ššÅôTúİºáÔ©“ÈÈÌD¯^½*Õ7Íš5ƒD\"ÅÛ·o«#1!&&&ŸMóüÙÀ¾wÏ\'Oœ`ÒÓš5k­[·UÙ¿ÿ>¶nÙŒiÓgÀâFŒºuë¢ÿş¨Q£&9ŒÔÔTôêÕ«Úà.**ÂpæÌiP:›·l)39…ˆ°wï^ìûk/îº{@(¢¨¨i©©0êßêêêhÓæg,]²¯ß¼AnN¶lİV¥l™L†ˆˆ¸»»ãĞ¡ƒ°Ş³îğóóE^nnq‰™Ò\\ci¥Øl68l6XY\0 y‹Ğj¥…Ä„äää _¿~ \"ÄÅÅ¡aÃ†hª©‰‚ü|…ß2ÁÁ^r¯¼Ü\\øûùÁÓÃçñş½/\n\nòQ«Vm4hĞ JQÃÁµë×Àçó	§‹!“ÉªÅÉ­¡¡###$&&!\"<œ÷»·oQ 3I+\r·oİ.Îª‹ŠÂÄ‰“˜kÅb1ll!îC,fÌœÅŒ­––š5k{»cè×¯_™&ş§¢­­\rçkÎTĞqq±èÒµk¥‚¾š)\r³Q£”T¬-ÕÔÔ°÷¯}0`@•Ú)((€©é°À‚‹«k™”@vvv°9tl6W®:W‹X\"‘`ß¾}p8®Ë&NÆ¢E‹Ê¤föoŞ`êÔ)¸rõ*âã°øÏ…03C‡E×®]Ááp°gÏ÷ï½zUú¹RRRğòåKÜ¼y>`öĞTÁ¡L&CoÃ>èÔ©Z·ÖBófÍ–Ò†\r\";;Ç‡›«–,±Ä´éÓÖãÁƒ˜5{FŒ¹\\Ä„$%\'áÃ‡X„††àÙÓ§ ¨âÂ~Fıajj\n}}ıJgìİ¿gÏAì‡XÔª]vvöJYYiii¸{÷.Ğ§OôèÑ£Ü9´oß>8]pT Ü²˜2‹-ªÒ\"àããƒ¥––ÈÊÊÄ1;{èêê‚Íf#>¾ØjtsuÁ`Ó¡Øºu«‚B#\"L:Í›5Ç®İ»+­ìîŞ½ƒåVVJ¥`±XĞÒjK—/ÖÖç³ìÙë×¯#5%™af44ì£²h^\\\\!—ËÑ¬Y34mÚThşêÕ«ÈÎÊÂ!• &\"\\½z‡mm˜ÔÏØØX¨©©¡°°‰………(*,_ÀGİºõÊ\\\rmúÔj˜>}æÍŸ_);‘®.V®ZqcÇbä(3Ø>LŸ67½=V¯^]é>\r	»‡;>‡ı±è›j‚ÃvíÚ£·¡!Ú~$ì×ĞĞP9iÃÃÃ±×Ú\Zù¸ê|Q‚­Zµ‚ıq8:8`Ïİ\0€3f(ø¤R)²³³‘””„¨¨¨Ä…ÍŒGiâÂ÷ïáÑÃPSSÃÌY³ğë¯ƒĞ±cÇrß»ÿşè×¯ÂÂÂ`mm­ÄæYBòÿK?#ôíÓë×¯ÃÔ©SË,T»vm,[¶µkÕÂéÓ§ •J!•JqöÌiÔ¨Q,¨4Ğzôè‰\'ÂŞŞó~Ÿ‹¦Íš¡^½úˆ‡ÃAÛöíñçŸ*µÇb±0h	öıµ*éU‰±ñ\0ô0è‰çÏ~T²ñpuu­Tğ/¾b\'&&bĞ¯§‡Ãƒã&Aˆ‡ópuq‡ÃLVLò.‰ ¯§_úõCíÚµ1yÒDŒ3k×®Uy¯ÜÜ\\ôû¥oq¬³\\æ-Z ~½úPWWGıúõQ·^=hhh ^½z˜5kV™äuvvv8lk£\0êY³çà?şPi®I¥R¸»»ƒˆ`llÌl/$	fÍš…^½z1|iiiiHHH€¶¶6jÖ¬YQ/|}}áììŒ«W.3JçÓÕˆ0ğ×AèÛ·/¸\\.´´´*¬¼QXXgggìÚ¹––Ka1eŠ’3­DQDEEaë–-¸uë&ìÿ\r“2ÍÖ¼¼<ÄÆÆÂßß?‚§‡X,–’UQòû1cÇaäÈ‘àñxæ‹Åb¨««3×ÂÂÜúİºÁÊÊ\nl6‰‰‰l27nŞ*·b‹T*Åa[[œ8ñ·Â8/üsfÎœYiKtö¬YX¹jüııqï\'âãâÑ¶m[õ7Â A&hÜ¸±Ò}===±sçd¤§CMM\r7oİ®´IîëëóÉ“ò<<ïUŸÕµºçdûöícÙ|mÛ¶UáûÌÌL22êGúº\"š?>½zõŠÒÒR)==âââ(44”¼½½©WO\Z=ÚŒ233+\0‰§´´4ÊÉÉ¡‚‚’H$•¿pá‚Rüúş}ûÊ†ÊÎÎf¢†ššÒ“\'O˜ëcccIW$$OOÏ*õ›ŸŸ­]»F)S¬¤|Í3‡®_¿F111U:wŒŒ¤óçÓÌÓ)\"\"\\!rKÕs¦zú4é\n´|ùòJÕ–ÉdM×®]£Ù³g3ÏÍı„ÓLÀçÑºµkUa—\'ïß¿\'>«ıTPP@fff•\nx’H$´wï^¥¸ìK—.UúŒyáÂ…\nqëåEÎEFF’••éë‰hÙÒ¥tïŞ=ğy´aıú*½÷æÍ›™0ŸWauÑ/ Å<@É –¤û}\Z7îééIR©”>|ø@\'O¤åË­èï¿ÿ¦{÷î1sçÌùª	\rîîîJq;vì¨T\né†õëéìÙ³ôüù3\Z1|8Í›7Ş¼yCDDwîÜ¡ë×¯WºÏvïŞ­è’à\nW‡lmmÈßß¿Ê1á2™ŒnŞ¼I\"¡€Î=[! U;,,Œ¦N± V-[Ğ\r7·J§×‘¿¿?:tHá]>¸µµu¥‹Í¿|ù’I€ù4†¿²}STTD[·nUŠğªH§¥¥Uš|P,“óÕ«$ğI(à“‹‹ó|.\\ }==|øğ‹ãê«{çÎ\n«µ­­m¹×ßºu‹tE22êÇLÜĞĞP	4|ØPfğ=<<ªO\\^˜héÁğy´bÅŠJÇ¯?}ú”&ODb±˜6lXOŒ…R™Õ4\'\'‡™wT$à‘É AäääTíèºÄÄDÚ°aÍš9ƒ‰†ª,¨UüïãÇIÀç‘•Õ²J±DèâÅ4pà@~ğ…vñâ…\nóóòòÈÌÌŒ)((ˆ<y¢Ò2/7c,??Ÿ¬¬¬˜~/aŠ-/üôùóç4fôhÊÈÈ(÷ƒ‚‚hîÜ9¤¯\'¢Õ«V)õ•X,¦éÓ§Q##ÊÎÎ®t<xP[{vïş6ÀˆˆPLPÁÎñiÂÀšÕ«I(à3ñÀr¹œìììhÑŸRbb\"EDD0´fÍê*O¨ò:zõ4`&ŸÇ¥éÓ§•º—’’¢ğ>¹¹¹dlÜŸÆCG¡¢¢\"Š‹‹«T’Æë×¯iòäÉ\nÖBÉ€ı:p ]¿~­Â	TQlşÀÆäP*t·ª€Vîàà š<i\"µjÙœÜª°z—Hzz:9;;Ó\0cc%](à‘……9cõ”%III´bÅ\nF—(ü¼¼<züø1ÍŸ?Ÿ„>­Y³¦ÜíXff&M™2…±’x\\24ìMñññå*„²$77—ÎŸ?O\"¡€|¹»»—¹…††’®HH§Nª’rü4M¸2¡¶Ÿ\rìs²ä¦Ç¯ğ7R©TÅ+¸PšH,ÓÕRf««k•ù¥>Õú3gÎPĞ_,3‹G,Óıû™•uıúõ”ö‘kÛ¶­´xñ¢Jß;;;›ìíí”ÌÒâUK‡>+U/##ƒ<H³gÏ¢èRƒş9 Vğ£GŸ«CVVVÕš\\iiitşüyâót>É–ÓaæNeVo©TJ			äèèHcÇŒ¡9³g“‡‡M<‰Î9SásÄÇÇ“‘Q??»\Z)—ïß¿§	Æ“®ˆ¶mÛV®rÈÊÊbòĞ|^™)¡ªÄÎÎNc{«‘U%`ÇÄÄ(í«š›,‹iÈÁ4eŠ…Ê• \"\"‚–-[Júz\"úsáÂ2)€*’¿şú«”	V<‘TÌ—Èİ»iÍšÕ”œœLÑÑÑ4oŞ<\Z7n‰Åbzûö-ñyÜJÑòÒ”)S7%	%»wï®Ò\0—µµ˜8q]¸àøÅ­\nÜşşş4~ÜXjÕ¢9¹ººV‹Ú*&&†vîÜ©DX(äóhÚÔ©:ÄJ¸ÖfÍšI|—BCB(%%…ø<n¥d	ÿ^	WÏ£Tz‘°··#]‘ºéë•»ÿ–H$ôğáC\Z`lLº\"!-·²¢núz´qã†*m¯>¥†ŠızÀ¶µµUĞ$vvÇª<È>$=]ù”“\r#‘HèÖ­[L†—““S•´ëİ»w•<àå9MJ:²´g>??Ÿ†5¥ë×®‘X,&OOÏ\n\'uÉ3×B¿\0\0 \0IDATjJ63ûlfÖüü|:sæÍ3[Á¡ò5@ı)Àår9Ù:H:]»T{õ.Ş¿>£Q£F*åºx\\¥*-¥E.—3>ˆ·oßÒ˜1£iÎœÙtøßNHHH¹Î5wwó¢9ö!ÁÁ¤¯§Kû÷í+“Ù”¨˜AvÉ’%¤§+¢qãÆ’··7Éd2rtt$=]=yò¤Ò}uøğa¬;vôë\0;%%…ôõt¤<S¤,ÀN<‰~éÛ·Rér±±±´qãFÒ×Ñ´iS+ulI|WÁåØ±òP\\\\	ø<%–££#YZZV\nt‡R˜4%Î±#GTx”WáÄ\n	¡æÓ¥R„_ĞªVïwïŞÑh³QÔò3VïŒŒ²µµQr®	|²µµ©”÷ğğ =]‘Â*æèè D/¥0¥\'WG‰€Q•|øğ¡Ü|é„„:xğ éŠ„$àóÈÅÅEd#7\'‡†L½z\ZPn%	ccc}=İr•Ê§RéXq7WW<xğ€Iô˜6}\r\ZT¥3ó7oŞà¸½\nÅpw÷@ƒ†\r¡©©Yf§††úõë‡Î]ºàÄßÇqıº3¤Rx<Ê(±ÂÂB¬Zµq±±¥¢áúbÅÊ•å†Ö«W!¡!xêõ}ûöE\Z5@D8zôŒ K—.å†‚nÚ´	W.;1UÙl6\Z7n‚ıbÔ¨QÕ.£*•Jáææ†3gNcÍšµèÙ³§ŠÌ­o\'-Z´€ÙèÑ¨Q³vîØ˜±ĞÖÖ®°&xi©U«ºwïP„Ç£¨¨ˆ‰d{óæ5bbb §§Wn…+W®@³Y3Œ3EEE°±9›C‡àxáb…%tø|>|}ıË$^DEEaP9Á9\Z\Z\Z*³óòòòpóæMÌœ1ïŞ½Åœ¹s±cÇNèéé)ÌÏš5kâ§ŸÚàÆ\r7tì¤]aT^É=sórá÷ş}ñxáçŸ®|Æde÷Cf4¬€Ï«òŞW&“Ñ‚ÈdĞ zôèYZZ’®ø<.9:8TxÜ“””D§OŸ¢\'O”¹×={æŒŸTy{“ÂÂBruu¥GÏÓÒÒhôh3\Z`lL\'Oœ ĞòåËËİWGFF*™–B>–ZZV›®§´ÆŞºu+9;_ıGVéŠVï×¯^Ñ˜ÑfÔ¥³6¹ººTËÑK‹/V:;fL¹«è…(88˜rssiéRK\ZlbR¥=h‰¯¨4)ˆCHAd2=}ú”~ûméëŠÈÊÊJ%]ñ§ä)S,høğa•¦PV°.†Vé-i¥€ıèÑ#ÆÌäó¸´ÜÊªZNŸnúztùòef’úùùÑ–-[HWTğãÇWû¨+((H)¡,&K™LF6¬§™3‹1/_¾PğÌoÙ²…\\\\\\Ê€€€\024ìı	Ÿ;Vm·ÒÇE\"‘vlßş]úSpgee‘±qêÒY›şúë¯jû9¬°áó¸ôKß¾å‚%==&Nœ@ëÖ­«ÖVGUĞRHHH…¿ËÌÌ¤5kV“®ˆ†UŒF¬Ìñ¤¾n¥+oÊår²´´dæ˜PÀ/·XD•€-“ÉháÂ…ÿß8¿z%zÒÒÒ(,,L¥Æ	£)S,H$H( ={vSH¸ÒÄb1MŸ6M nûöme^âÄ	Ú¸q#ãhë¦¯GÓ¦M¥TúØ£´Æ/aétssû\"çïñññÄãêĞÏm~¢qcÇ¯¯ïwğÒ“t¨©)iwêH|—æÏŸ÷Yï\\Rv‰9’úhq•Ålš——GK/.³sJJ\n]¼x¡\\å¼yófâÍY³fVhyøûû“®HH—.]ªğ¨îÓ¹.‹iøğa4eŠE¥•ÁÓ§OÕ%KW*ŒºB`‡……)˜fff_´–R‰ØÛÙÑ¸qãèôéÓ$àóHW$¤µkÖĞÛ·o+tÒ\\¾t‰yyW‡ŒŒú•yâííMúzºCb±˜ÆŒC7oüwßÖTÚ¼}Ÿ“z/¢ ØQ:vì]±î®úÚ{ïeík/kïì`ïŠ‚¥«€téM:$9çû#ä˜Äİı}s]{í®œúÌ33÷ÌÜó~ıú5mgkS/ (M©m¬­\Z•ŒN¨ØV–èæ¦&´E»¶ôşıûÄ÷ßTè¢¢Bzıúuts3ÚÜ¬9mmeI[[YÒ3fLÿé)/ïŞ½“à«K¹KKKi7·ôİ»>Ş¡­5½pÁ‚:I#%©²mnôº2(õy•!!!ô†\rëéáÃ†ÑkÖ¬çóäÉº“ƒ=C-]ŸTTTĞn#Fˆ„ÁVóÜ¤ØgjJ…Öú–œ…ôÒŠ6bbbè¤¤$©»âüùów.//¾uëmmeIwêhOÏñğÉ$™‘‘!á×UŸ›ŸŸOïß¿:t½hÑBÚ§f@Z~~>mkc]g^>&&FªR‹Î»j ¢?®aÑ®-mÜÄv>Œ\núÇ­·h:¯—³mÜÄˆîĞŞB,0aÂ?UP$ª”ÒŞ±¬\\wNNİµKg:33“ær¹ô•+Wh{;úöíÛÌ;*)‘]ÒùêÕ+‰0 ¡å½EÑ§OŸ¢;:Ø3ÍCöv¶´µƒ¹”––Ò½œé…ÊİÀtıúu±Ô×…óçëıM\rª¥¥¥ğô¼Ê´fR4NN\nîİ¿w“\'ÿ‡ÿ\r÷‘nX´p!RRRÄˆíŞ¾ñ…««\0Á8ÔÑ£Gã]@ vîÚƒ¹óæI´É	åìÙ3L»I’pqqeFÈJ===,^¼S¦L…ßÛ·ĞÒÒByy9–,YŒ­[·Él³KMMÅ´©SÂá8à7oÁÖÖ¶QÑgAëÁ àl6†ˆŠŠÂï¿ÿ†­[· ´´TŒtáWˆğüÙÙÙX²xfÎ˜´´4Hô\"WTTŠµ6Tìììpíú\ræÚÂ÷=sÆ|ıúUâxCCC<{ş¥¥¥X¼x1NŸ:	¯k×1jÔ(äää`ñ¢EX¼h1³†kKŸ>}0dèPæy‚Àùóçtï×®]ÃÑ#Gpğà!ø¾y‹gÏ_`ê´é`³ÙxñâÃ´`áBøû½Å—/_ä:¯“““	¡(\n^^^(++«ó7d}=¢ù¹¹LêhÌØquÎ–Öw|òÄ	lÜ¸{÷îÃÑ£ÇpöÜybıúuMÏâÅ‹@@UUµä?`À\0X[[KMEDEEáæbÊcÎœz;A7nŸ8‰Å‹ÂÕe8lmm1ÂÍMêñyyyX²d1JKK¥&—¯\\­3ÖP‘–Î¢i\ZZZZàp88vôFºÀëW¯Äú«[©àÖ­›áê‚ë×¯CKKjjjRï¯ ?\\.·Q®mii)¡Ü……X¶l\n\n\n$×ÖÖFDDğäé3XXXàùóçøı·ñhÙ²%TÕÔğğáC™Ï9wî<±MÕËó*>ş¬Ğ=\'%%a×Î¿póÖ-8÷ê===ÃÃÃÍ››1$\0Ğ¿ğx<xyzÊuîfÍšÁm¤;Ó£Ÿ•™QïıÕ™Ç¾pá>ş$È]“$/Y*6¤­>‰ŠŠÂ¦MbåªÕŒmÖ¬ÊÊÊğâÙ3äæå!  \0vvö Yl=ü7š›™£mÛ¶råx7mÚ„´´¯«ÆbaÅªÕpRÀ£011ÁàÁCÀãñ±`Á©¹îÊÊJ¬[·á¡{I’¸êéÅJ4¶âš——T\"IêêêÈÎÎ†··7²2³Ğ©&ïÛ\n.T¦””,_¾‡ÿş\\.·NŞ6¡òMœ4©Á9{i–Ø±gOøøx3[aAÒÒÒĞ·o_‰oÕ¾}{ôéÓ¹¹¹Ø²e3N?‹…cÇOÀÉÉ	Ó¦N›ÛH©=ÚÚÚPSWÇû  fˆdNvB¤‚[·nÁÔ©ÓĞÃÑQ‚C-::\Z¦&&èØ©Ãö¢¢¢‚Ë—/ağ!rÕ¨ªªâÑƒ h\Z ¨k¨×é™Ê¼ë¼¼<Üõñf³¾¡!¬\\ÈÏŸ=EQ\nĞ¬™	’DZÚWlÚ´	8pà\0ºtí†µkV#33³Şs!8(¹¿f&¦9r¤Ôc}||.õïZµj…åË—ËœÀyâÄ	ø½õŸO1Šuâä©_Æq.¯EWWW‡ºº:.]ºWWÜ¿wï§­·ğ·çÏŸƒÛW<yôºººPQQ©³(†¦iT”—7šÅuËŸ8	Vrñù|¼~õ§N’ºá•——aèAPWWÇ«×¾øã	8sæL\r‹hÊ¼–»»;Œ›5cXaŞ½óÇû÷ïåºÏÌÌL¤¦~ÅĞaÃ¤†pèÕ»·ØŸ64MáÎíÛr]ÃÚÚ\ZºúúÌıùx{Kõ^êUì¨ÈHğj>I’;f,ÔeÊ¢»ñòòA@lw---Å“\'Ğ˜?£Pêêêéî6‹…ÈÈˆzé9,ÆÇ¼tÙ2™|i4MaÊäÉØ¹s\'²²²ä~†GáÂùsLE›ÍÆö¡‡$…¿RH’„²²²0gæÍ›‹ŒŒo\nÇŞÂã£££ñûï¿aíš5¨¨¨€®\\Cê9H¢Ñ\0±eë6f\rñx|œ=s\ZOŸ>•8V]]›6oEu5zzz˜>c<¯^Áü/±±°··¯³ÒkéÒeLÈÇçóqìØQTWW×{!!!˜:uŠXµYAAöíÛ—áÃSã]‰âJMš4Áä)Ópùò%¹Ö¤¦¦&FÃxU••øø1JqÅ~õúµÀì×ˆ¢ Yuu5Æÿö;fÎò`˜+)ŠÂğùÓ\'XYÛÀÚÚZì7jjj ”””Öyî€€\0ÄÄÄ0ñ®­­ÃC.mÑº»‚ÿ»\04mÚóæÎÅı{÷êâââ°fõª¼Y,<<æÀÅÅå±ÈŠ«ª* \0ö¾s#\\]áåå)·õ&<ÿ}£G¹ÃßÏúúúàp8\n–®I“nn˜1sØ5JÇãñ°rÅr$$$Hëææ†oßÒñàÁ@‰ÃÁòå+àíãS/¥oïŞ½Ñ¡C&´øôñcV^(i_¿ÂÑ±§ØŸ)))áÂùså5Ï«?n,rrr˜cF\Z\0xøà\\ïAÔõ¦h\Z¯_½VL±k»áææòÅ½µwÀ•+WÂÃÃŒbwëÖ\r+W­Æ¬Y³%\01 @×y­ªª*f”ÀZ“ğ˜3G*`VVÂÂÂğşı{|üøfffhÚ¬)6oŞ—áÈÍÍ•z²²2üùçFfa³H½úôÅÔiÓşK,Á­OAõõõñıûw,[ºS&OFbb¢Lë-üó>`Ô(wüµc3¤¡RUUõËŞÉÌ™3áÔ«7c±hšÆ¦M›P^^.áÅìŞ½;ÿÚáC‡`È¡èÔ©ôôô––†Í›6áÍ›7R¯¡¬¬Œ¹óæ‹YíÓ§OÕiµiš†ÛÈ‘YMMM¼õóÇ½ûpòÔiôé×\\n52€™™º÷èôoér½ƒ¶mÛ¢™‰	ã?xp_¦;.µ3\"&&,’¯f×p×FEØl¶ÌÆ‘„„œ>u=œ$,¹¨„††2Öš$	Ø;tB—.]¤¦ŒvíÜ	?TUUÁm¤;”””Ğ²eKXYYAOO_æ\"¾tñ\"b>f66Mmm¬]»Vf.MòóóÁáp\ZÄ\r-¼nC,½²²2”••ñâÅs„††`ÁÂE˜9s&c…„ç-++ÃÁƒpşÜ9p¹\\†Ùµ¡\r&ÑpW¼¬¬ååur’+++cİºu\rAII	(ŠÂ§¨H\\¾|³gÏ;¶I“&xôø	JKKÑ¬Y3äääàÁƒ8x`?úôé‹C¢[·nR×t·nİ`kk‡ğğ0Æj‡……1\r8Ò[kª®®.tuuannkkkLœ8\'OÀ”)SÁb6&FMõÕÕÕõ²Ûª©©ÁÕÅ\'kËELLzöì)ŸÅsÃ»uëöË,SNNîİ»‹Ñ£Ü1`à ¬_¿Af\'ŸÏÇÅ‹‹F’$¦OŸ.µÓ‹ÅbaİúõX°`!ÔÔÔ`ee‰+V`Ù²å˜3g.Æ/õw8yòC:Ïb±°wï>…Ò|şşşpu±cÆàÈ‘#”éÈzÎŸ]]]TWWãÏ0~Ü8|ŒŠb”Ú×÷5FºÀ‘ÃCIII¡I%õe*ÙøŞ¿\'cÂ„	è×¯/^½zYçoš6mŠ½ûö1•ÇçãøÑ#ˆŠŠ’ê1jjjÂËËôÇ‘Ãc÷=øûğaØØØàÑ£GR¯Ááp0}Ætæ\ZEáÊ•Ë\rò¢DECC+W®Â”©SAƒFNN^¾|‰¸øx$&Ä#))I®ótïÑƒ™¼FÑ4¤o8t­-º´´®.Ã‘——\00jÒwïŞ“9£!\Z\ZŠOŸ>¡¨¨%%%022‚““,,,êÇ\":ÄŒ ´oßW®^­×’~ûö\r‡‚¿¿¶mÛ={JıMyy9&Mš„¸/±L{êÌY³1ş|¹«´´W¯^ÅÑ#‡ÁårÁf³×‘¢(¸pƒ££#,--abb\"ó¾?şŒ?~ÿ­ÑbÖââb¨««cşü((,ÀÙ3‚¢\r\rFke±X8}æ¬Ìi\\.ß¾}CLL‚‚ñàÁ}ğ¹<Ğ5ï†ÇãAII	Ó§ÏÀ”©S¡­­-óZÄùsg™É®,-qáÂE‰ößGáü¹³Ø¼e+JJJpûö-ìŞ½iiié6AR¿Aee%şøıwÄÇÇ1ë !C&kKnn.bcbğòÕKøx{ƒÅ\"¡§o€œìl,\\´X.Şó’’6………Œ~Ş»w_‚o^Â4&\'\'£  €)J<xH£*5\0´hÑfffPSS«—\0_Tîß¿á„9‹ÄÔiÓ¤~˜êêj<şQQQhİº€İ»w#00çÎƒ½½½Ôßy{{#±æcó-0yòd¹î-11ıõŞùƒËåBGGeeebŠóàş=<|p4MÃŞŞ}ûõƒ½½=Z¶lùS±m}¢­­\r‡;ÿbZXìĞXBHñ4Š‹‹‘’’‚ÈÈH¼yã‹÷ÁÁ 	B0LÄRuuu—”àøñcÆ†Ñ¡C©×š6m\Z^<ÔÔP…/±±¸{÷.~ûí7±ãˆBII	áááxñü9Î;‡ªªJp8™VXEES§MÃ†ukÏíÁƒû\rRìÂÂBÄÄÄàõë×¸qı\ZØ,ª¹\\Ì›¿\0={öD«V­°mÛ6xyzbâÄ‰õ\Z)MMM:×¼¼@Qòrs‘’’\"‘R–Pì?şğÓ	Bjüú³\"kRG]’••/OOAü	@K[GjlAQvîÜ‰„„x899ãŞ½{økÇ>rNNNèÖ­›Ô¢ƒôôtìÚù—Ød“6Ö#Ó4§OŸbÕÊ(**‚¦¦&öíßšæÏ›+fyDRxx“ÖÓÔÔÄpWtéÒVVV¨¬¬lt”ÅbÕi^³	””” \'\'ÑŸ?ãCH<yŒ¼šD81Dš*}ÿşëÖ¯‡‘‘V®Xÿ·ømü8lÙº\r...^œ––6lÜˆÙ³f2£|vlLhmÖ¬™2-Ø•+W¡´´)É)¸tùJsÚœœœ ¦®†ââğù|\\¹t	S¦L•k²Gqq1bccñæÍ\\¹tl%%Áô˜™³àää„víÚ‰ËÁƒãÙÓ\'ˆ‰‰©3%÷#4î×®1ïòÓ§Ou+6EQx÷£.•¦™!îÿ¶¼{÷N°Û Y,Lš4IêB\rGXh(nÜ¼	‡ƒ3fàÅ‹˜?o.<}&3V¾xñƒ²X,Œ7ëÙÔ\n\n\npöìY\\ºpyùùprrÂ¶í;`aaüü|\Z\Z¢¼¼\\*f@Ó4cá¾ÿ/Ï«¸îå	>E¡MÛv iŠ¼şëÂb±Ğ³§<x€eK—ÔÌ “ä\'OĞÑÑ³s/˜™™ÁÇÇë7¬Ã‹çÏ±nÍjDEFb¶‡‡„BuëÖ\r£FÁí[7™ĞìÒ¥KX½zµÄ5Ş¾yƒ‘‘8|øˆÜ››®®.&ıo\nN?Æ¸ü2‹ „ßôâ…Ø¿”””Àãq1ñ“,@2¯mkk???¹ÛÂÂ‚ÁÀhšF@@\0Æ\'¸’µÓ\\o|}T¶sç.\nF¿Jª««qëæ\rğE,^ÿş¤‚¡Ã†1#I’4hlmíYY\0á(WáËš6­îxçãÇ˜9cN8²òr¬X±×oÜ„……hš†¾¾>:wî,‘‘µ (ŠÏMÓHˆÃü‹j\\fâ?­Ôl63gÍÆŠ•+‘”˜Xc!ù3½dIEElmí`ff\00oaË—¯`ãŸ¢šËÅùóç0iâ„„„HüvúôéÌ5„5ŞR+ÛÿúKaeàÀkŒO	ªÄêBş³³³qàÀ~Œ;‡…ï?¬X±]»v­óÚzzzá6w}|äJ\ZÃÁ¡#“özõòòóóe£â©©©LùI’prvnğpóÆ”øøxDGG3q¯Ş}Ğ¢E™¹¾ë×®1à‚ğ£Ëø&uÀMÓ8î³@Ø,V®Z¦M›Ênİº…	ü  \0˜››ãêUO,]¶\\\"ní?` ø\n ÅÌG!I˜ššâÆÍ[hÕº\róMşKBØl6V¯^ƒùóç#>>ééi\n{ÕÕÕèÛ·/ó-„¿Ÿ3g.®ß¸‰:àãÇ˜:e2®\\¹\"¶ğMLL°lù\n±q¿.\\¸†³³3ª«¹ğôôÄíÛ·qõêUœ9}\ZÎŸ‡§§§XÑˆ¨´jÕ\Z={2ß522BjQŒPTUUñìùlÜ¸DkKQQ\"##qñâ„†„ 77ß¾}“k3urvfBJ’$ÅšL$;&&¢ŸÅê\'QÀÆ¿·oÅâş#FÈ,ÎïÙ³\':wé‚Ş½œqÿş}„††âÏ?7¢K—®R_>şŒ§OŸ0^Š®¾>\\]]eÆù›6ı‰õëÖ¢°°\'N‚Ïİ{èáè(Õítvv†¡¡Âè6EQ8vôLMMqæÌYô0ğ?±ÁşØxÅ-‡Áo¿ÿ>Ÿ‡óçÏ7è9µ´´Ğ·_?‰Í–¦i888àöoÌíââïØ²yÖ¬^´´4æX777hëè0ÖëÑÃˆ;Ÿ’’Øl¾|ù‚-›7!44Ê**ø–ñ\r÷ïCXX˜Ì\rÖÍm$H×ßß¯N²®é˜<iiixöì6ıù\'z9;aÚÔÉ8°?Œj~÷IãªK¬¬¬ êËÅÆÆJWlš¦&Ö÷i.Ã*ş“R^^ïš*8¡Käàà Õò\nÇ±îŞ½»vïÁùóç0uÊÿ ««‡õë×Kİ®^½*Va¶pá\"©nSpp0Æ‡Ë—.ACSGÃ®İ{ ©©)ÓJ5kÖöör¹ãµŸ%--\rïƒƒa``€;v`úŒ™\n\roÿuñ4‰-[áæ­Ûp®)ãÁçO¶Ö°²²’ÉÚIÓ4TTTğç¦M8sö<\r\rqóÆu:okªÇttt°pá\"Æ«¡i\Z^^^çrqqÅæÍ›±tÙrôèáˆ1cÆ \'\'Lœ(³\0:vìÈ„€EÁÇÇr?ã÷ïßk¬òEL˜ğF¸º`Íª•¸}û¦LŠCÁ³ç/pòäI˜››ãÙógrg–DãìˆğpéŠııûw‚ªmì:2¥ ÿ¦$$$ +3“qÃG#õ¾²²²Ğ»—3>Œ/_¾`èĞ¡¸sÇQ?c™Œ‘ÄÄD<zø€±Ö†F0`€Äâ;ş<¦M‚øø8ô0\0wïŞÅˆnÌK•µ( o¿~\rªÈ¢i\Z÷îßg\\¼…âÏM›Áf±~)¹B} ÙÀƒqæÌYXXX0şôÉ\0Šƒ|UU•èİ§O ¡ğÏŸ»÷0ÂÍ\rùğğ˜cÇ¡¬¬®®®bO÷îú 9YzÁÇˆ#páÂyôrvB«–­˜&Ybdd$Ö–†Ä\Z,A–p¹\\¼xñ›7o†³SOL›:öïƒ¶¶Ö¬]‡«^×üK—.ƒ““ŒŒŒ ¬¬Œ‘î£ğÎß_®¦Õ&PÀÀ\0|ÿş]R±333–…¸ ]»vıOXˆ÷ÁÁbn¸0“(9z………7vztï†Î#!!Af­ï‘â{’$1sÖ,±ôVrr2–/_­[6ƒ¢(lÙºçÏ_€‰‰©\\ˆ/\0ôíÓººº\rrSïß»‹ôôuÄîîî8~òÓşOƒd³f{`ë6q–™¼¼<\\¼xikUdãRW×@¿Zn¸¬ciš†¡¡!;={Õg{víÄÂ››‹åËWˆ½“ÇËÌdd|KÇŒ™³°pÑ\"°X,×Ù¢Ù¯o_1w<äÃ‡:ï7\"\"kV¯Â­›70yÊT<ô7<}†\'N`Ü¸qhß¾½Ôú\rtìÔ©ŞÒR@P!×¥k·\Zp•FII‰Ø†@ş\0ÎRÄ~ø+˜A\Z‚†?}úTÌ\r·”ÒÎãñğäÉ888`ãÆxóÖ»wïALLÆŒ%µ¿;??—/]dNII	ıû÷gşşåË—p>ŞwnÃÚÚ7nŞÂŒ3ë´ÒÒÄ¼EØØØ*ä¾‰T~~â1]=àís7æÎ\0\0 \0IDATíÛwøGân‚ Àb±°eëVÌ›7O\"÷Ô p¯¢¢íÛ·‡¥¥•B›\0üñÇÜñöA—®İğøñ#ĞÉÉÉĞ®)ò”_hàr¹páŠ…‹–`öìÙŒçCÓ4¦M\"fñÄâYkk1wüÙóçuzaªªª8wş‚‚ßcÙ²epvv†±±q½›±¥¥%<$“LÚñ‰´E4òò,ö	ÓòÊ—/_pùòe7Ú¢JOOgÊ;I’ÄĞ¡Ã¤6\nddd`ó¦MÌ‹ÓÑÑs¯^Øµk7^½ö•Z¤Ìô›³X,Lúßdàû÷ï8xğ\0æxÌFYy9æÏ_€[·oÃÆÆFn+-á÷í‹êt>Q/Ï«›BëÖ­qüÄ	6ü—zU$IBYYgÎcBÚêÍâiHy¥²²½jºµ}§4-è\0¼vãV®\\.—‹ıûö¢PD‘«ª*ñ¡–eURRÂoL:Uâ^Ú¶m+ÓÅ622ÂÀAƒ˜{ıô1ªNôÚÚÚ\Z666\nUUNEš†ÌÍÍÅCKÄ. èèÏŒeTVV®³ÓFšlÛ¶»wí¬3^QTbcc™]• ™=á111033Crr²DÕ–ÄâçóùğññfÀUUU¸»»#11sæÌÁ¾½{allŒóç/`íºu\rèM—>}ûBSKKáFš¦ñ55U¬\ZP(úúúØ¼y3<æÌı%ÊÍb±`kg[·ïÈ¬>ŒEDD¸ÂïFŠõñ\Z‚AÅK–àêUO´nİ\Zyyy\"à/{wïJ¼óvíÚ¡²²±±±ğòòÂÿ&MÂÀı‘ŸŸ/“GŒ 8;;ÿ Í$¹‰¥1ß¦)DÇÄüh%pBT ØÙÛ+”Ì/++CDx8fÎšİ¨‹,44T¬ËLV­nXX(TTUá>Ò\r]:wÂ={€Ü\Z\"ÆÚ’ššŠà  4³´´BpPP\rÚê‹Ñ£ÇÀçî=ôÉ¯şŒ´k×VVÖ\rrÇ)š–Ùˆ¯¬¬lÛ¾¬FÕØl6ÜGÂ‘#GdÖ\0À³gOtşªª*´iÓæ§Ù]…Ö»[÷îğö¹‹©S§¢¸¸••• i\Zş~~Ì¦UUUømüxü6~1nüx<zü§NŸÁá¿É,\r(šFXXè¿®ØÚÚÚ°±µ«°ĞP”–\nHJØ€ P]Ø°@²Htè XüVPP\06›]/C…\"RZZ\n_ß×LCF3©.u~~><¯^Å›·~ jvÒÀ€\0xÌ…®]»áÔéÓ^(¡i\Z>¼GPP tut°mÛvŒ7®QZx‚ Ğ»Oo*ìQoï;˜íá!V-Êq±±1æÍƒŠŠŠŸj1d³ÙX¼d	&L˜(µ­µö{oHZyy9œ{1Ããkhh`Ç_;áØ³\'şÚñòóó ¬¬Œ>ˆmNÊÊÊØµ{7\r\rÅbYŠ¢°jÕj™ïÎÔÔFMš0\Z___,Z´¸Q=Ô†|+KË\rEQ())FAA´´´;\';û‡Ë-Z(¦ ß¾¦ilİ²kÖ¬ÁÕ«Wˆ¯_¿¢¬¬´A7™™‰¼\Z‹Kzõê%õ%*++ãÔé3ĞÓÓƒ®®.ºwï%K—âı‡ìÜµK°mÂhhh;;{”––bİ†\rªÔbÈj¿ş2©{¢Õ–Î;ãú›°µ³o¨&ÉöîÛ)S¦Ö©Ôµ1\nE•Ãá ÿ€ú~…ïÕÅÅíÜ‰ÊÊJĞõô©Äæcaa!PÑ4Ş}ú ¤¤DfüÛ»wo&5—•‘!éæ¯––-[‰…«Â¾\02jİ ,Ë K’’“AÓ4\r‚ˆˆpìÙ½óçÍÛWtïÖ\rK—.ÅÅàçç‡¤¤$×»ÀE‰ß„¼fÒ¤¨¨¦¦¦f***Róİ\ra\0¹~ı`¶‡\0àcÔÇ_¢ÔÂ0ÂÂÂ¢A[Eáúµkõş¶E‹8|ø0ÜGV($\"IMšãÊUO‰<¾4áñx¸Ñ@Ğ¬ºº\Z-Z¶DÇı¿ÛÇ¨(p¹\\Ğ4àà ©\nÈår‘™™	:x®..8 ?^¾|!óü¶¶vLÚ‹ ¤Š¬ÑKj{±Âge+Ñ£iZ®Ö4Q *((;aË–-àñx(**Bvv6RSSƒÀ€\0¼zù,’ºfa8:ö„½ƒZµj…>}úHäîjƒ²æ¿}û{vïÇCÿşĞ½GXYYÁÄÄºººnxtôg¦KŒ têÔ‰éÏ~ûö\rV®Z6›İ¨Ê-l›ìÕ»7ÂÃÃël”õû¤Ä|úô	;w®óX]]]¬[·ffføûĞÁzYM„Yë7l{C‹‹CxXhƒŞQyy9ë¥4nˆ­é«W/4bbbÄøğy<.\\€À€\0\ZÁÍm$şÜ´©Ş¾øÖ­[3e8tÍ{ø\0°q\04qû[Mİƒ@±¿~e^²’’’BÀYQQŞø¾Æºõ@’$8ŒŒŒ`dd¸¸¸0Ê““ƒ´´4ÄÅÅ!88\'Ã¶í;¤¢Ö?~CéeÕà?Ã‡Ç·oßwïüñ×í°´´Äå+W%ÎıáCˆ gaaMMMôíÛ¾¾¯ıY¦wğ³Ò¿ÿ\0œ<qBŒ{L!íáƒz[ø\r§M›SSS¬X¾Lf§›ÍÆÄI“àá1G!2gÏ5ø°X,0ğ—-ôäädÄÄÄ@UU…yo>¼ÇÀÅÛÃc6nüÆÆÆ¨ªªByy9TTTê,166†’’ø|>hŠÂ§ÏŸ@QÔ?^,$*::ºŒĞ4Ô\Z°äñxHJNb[‹–-x***@D›`ö”,--1xğ`,X°\0/^Â[?¸¸¸H¼˜ââbÆ\"Ô‡Ò³X,hiiÁÂÂcÆŒÁüû”Pê²²21@®iÓfL—cOGTTTâí›·¿ì#ØÙÙ¢u›6\rbó¤(\n·oİR(®4h.]¾==}±wLØ,Ö®[¥K—)¤Ô¸rùRƒ@³êêj˜™™É¤Ojyçï¢¢\"ä¯7oŞJÔëÛÙÙA__ÇC·®Ñ·OoôèŞ\r7nÜ¨C‰t`+D¡„†„ÈŒÉCäyÇêêêhİº\rã­¤¦$ƒÇã¬¨¨@Jr2P³Ø[µl¥#iYYC}«èÎ-‹D¯  \0UU•Lügee-zòä1z÷î\r{;:×¯_‡Ã‘ÚvYëİ§7ÈYYY×¸ão™ÅßØñŸ’N=P¡`Sˆ¨B¾{÷NÁÍÄW==Ñ­{°X,¦3ëèqAy£¢Öæıû†fB7¼[÷îÊµV[|ßøBI‰-VU–•ñM¢şš¦ilÛºïpñâe<}ö^×°më‹”1×^³VÖV H•••Õ9£¡RUUOOOøúúÖ{¬ŠŠ\nZ¶lÉ<obb\"ªª*ŠÍårACPœÖ´YS…n¢´´TÀäxù2NŸ>Û·oãåË—øğábbbğõëWäææ2ù5y$;;„H©\\+i´¨¨(¬Z¹Û·oÇUO/,Z¼×¼¼pğà™€!¢$66¶bÀ‡ÃAtôg‰ŞÖFuÇô‡R^„“µø¦¦¦Ø·oFºB3SÜº}G*­”< Ù­›·ÄB™†„#¿B„ˆpDx8Ú´m‡¡Ã†‰¡Åµ¿inn.||¼ñ÷ß‡aïà\0cccXYYaÿ¸_Ó|#MZµjÅ¬MÁŒ¯ìF–²²2ìÛ»[fŸxíçnZƒ;+**Á.//ÿa††F\nİDII	@Óˆú…/ƒÅ\"AäsÒ4(š[‰yó`Ò¤Iõ\"¶™™™b½BMe€:X³v3!ÁÆÆ;vDß>½1kÖl‰ò¼øøx±óŠrúúúèİ§îß»‡wïŞI”ë5–têÔ-[¶DzzºB<åÂ—‡OŸ>¡SÍ€7yEKKk×®EYY™ÜµÈµ%>>>¼oPœËåÂÔÄô—GzŒœœôí×cÆŒÅ“ÇE,t	Š6Ñ4\rMM-©^cYF¨YSñµ˜Ñˆ)/>Ÿªª*”––‚ËåÉ¬]—\0Ğ\rÅ6±²²2°k[ÒúX¤g \\¼x	ººº5;FÊÊÊPVV†ââbäççáöí;8ü÷!888ÔËë$Z‡+¤’&_¿~EûöíÅ\0555´mg!ábRÅ\ZÆı¢€I’ptì‰\'ãí_üñÇ¿dñ©ªª¢oß~8yò„ÂŠ-ƒ?~¤°bAÈ†\\S(ÏŸ?oğoËËËí•\n®/Eİp’$`ee…öíÛ3ßš¦iÄÄD‹–†††èĞ¡<==³øø8,_º‡–y\r}1o+3#£A÷š¨¨(ÈÏG^~>233kz#b@’‚*Â’ùú.joÔeee`—””üpO…y¡\nAQ´µµ™	ÒÄÁ¡#ÓiUŸbgd|#|¶«R…üü|,Z¸\0æææè`i‰¶mÚ‚Ğ¬iS‰bAÙkóq­­m$ÕÒÒjªªCAAôôô\Z-.¨°°P¼kpÅEQ¸qı\ZfÌ˜ùòÑ64nhaaax÷îzöìÙ¨DA ¢¢ïƒßCMMĞÒÒ‚½=\"#\"jh\"QVVÆ\0…$IbÓæÍ˜1c:öïÛË¬‹õ6¢W¯Ş2¯¥­­-¶ad4@±?şŒ‰†ƒâóÁ§(ØØØ UË–èÑ½;\r\ráíã-7Pª­­-¦Ã¥¥¥ÅÍÍi*È!——uuõz-hŠª7‡[]]ôôtæE·”Ò“$‰½{÷\"+3YYYHÿ–ÄÄ$¤¥}…““³øõıûw1…)í;´—	Z´h’E\"33Ş¿Çà!C\ZU©Ï=ƒ];w‚Ëåş€D$Şùûcô˜1ÿ˜bøğ¡Aj¢ŞBjj*ş7q\"/Y‚6ªr‡‡‡ãë×hhh2%¤í	Š¢›“ïß¿‹e\0LMMqÿş|ıú$I¢Y³fõ®c555˜6oô4¿[ú·oàr¹2+õª««Aó÷UUUX±b9<æÌ…››TTT ¢¢%%%1€8%5àñxõ†®\Zššb:\\RRví6KU-IVV6Z¶j]ocZZ\Z’¨w¸_ee%¾Ö\0˜™›K}Ù\\.%%%hÛ®ÚŠP$S%ÕªŠÅ!ÍM›Kuiúö\0ï;·áûÆ·Q› äcİÚuğññ†––ÖO£ÂEáÚµkpquı)×Z‘ØïæÍ?šÑ4\r555p¹\\lß¾\r¡¡!økç.&{ñ³\nşÆ×Õ\\.ì:2Vfff\"ßœDQQ‘X¥¿†“ÜÈÈåååøššŠâ’ÂÎŞ^jå¢ŠŠ\nÌÌÌ‘^SÔ•–öUUU2»¸¸§OŸÆ’%K ¢¢‚¨¨(|KOÇ¤I“êôÚ‘ñíªªªêUìÚç)..ûû÷ïb®…\"©.>ŸÒÒR|ŠŠÄôéÓajb£&M ¯¯]]]èèè@SSåååX²d1¦N›!s€™¨bÖXl†††RS2åîwxÿş=¾/Â!CñâÅTWWÁÅÅµÖñùbîŠ‘”‚‚ Ğ­[7<{úÁÁÁ¨ªª‚²²rƒë»\0ß;¬Y½\Zñññ?=øNTIâã¾ &&\Zöö¿\\±ğ>8ø§çWÑ4ÍÔ4<ş±±±Ø¶}Ğ`ëMø|¾šª\ZzöìÉ(B“&FkFT>}şŒ3¦£¢¼­Zµ‚†¦b¢?Åbãª§—TÅf±X022bh˜r²³QQQ!³@UU×¼<QRRŒ-[¶\"3#ööõ†bzzz IUUUõÖ•ˆWñÑÅµØÂ}yEà6§ÁÚÖæffHKKÃ»wşÈÏÏgæ?ØŒ™³0cÆŒzÏ),xºâººz2Áá¬¯èèhæ¾ããã¥V©Š¹+²a++Kp8¤$%!*2]\ZPL!Tê#‡ãÀ} (\0ØØeª>üGûÅ‹~N===äææbú´©˜7o>–¯XÑà±Cññ_UUUØØØˆ\\C_Âk•6mÚÀÛÛ‡}/\\¸€Â‚lß±£ÎAºººbiÓºjøÕÕÕqû7ÆŒr‡¶¶Lä,Û*¶<­¾ÊÊÊÌè+šf\\ñï\rVìÊÊJ¤§}…«‹+<æÌa\\äªª*¦L¯²²ZZuÓ²Ö>§h|¬%ƒQ¢¤¤„9gii)ƒ—””ÀZ\n}RQQ‘ØÿËbª033‡ªª*òòòàûÆW!ÅŞwff&Ö®Yƒ\'OC[[»ÑÚÅ¼¥šÆI“ş§0Û\"’““ƒÇ5úıÓ4\rUUUğù|ì¯¡\0Ş¹k+r½·oıPRReee±fío\\{\rÁŞÌÌLìÙ³†¸qóf½,&ÚZZ‚8±&\\¬¯9§M›6xøø	¦OŸ†ÌŒhëè °°°Î††‚«şCIII,[\\üdqq	cÕÔÔjù«ªªAÌC\n/¢¡¡}}}4oŞmÛ¶“[©…ç‹d¸!ÅÅÅxıúnİº…×¯^!11_¾|ARRt¤¼0AN[T²vc\'gA‹è;¹ëº…Ç¼zõî#İğìÙSèëë7zC‰¨K¨¡©ùKK\Z™\rÔØø—ñ«±X,Àßß£ÜG2¤Š¼ó·o|¡¬¬ŒÎ»ˆ1ÿÔn“­¦(\noß¾ÅÁƒ ¡¡qãÆáÛ·oğóó“É¦\"¹&	¹\n†LLLpç7F‹âïßqçöm©›ŸÏGuu56È“…`³Ùàp8Œ§[RRƒŠ3;œ––BPàÛS\nàTWWIÄ(ÒÄØØÓgÌD`` Z¶l	ï;w°wÏn$\r6H_ZZ*ôV˜ñ²K—.]ğìéÄÆÆ\"!!¡^ÀOoíİ»Ç‹ÅjÔTYík±X,L<L˜ Ğ¦Ùiİº5nÜ¸‰ë×¯áÄñãÌ8¢Æ]]]ÃÃc6¦OŸ!7%UFF>~üu558::ŠM¢øMÓ(--‘ûÌŸ€@Td,X\0eMŒ›ÀÕu„Ä ;YkR.Ëú„¸/_@PQQEQøûĞAÄ\'ÄCUU¥%¥(-+EyY9JËÊPTTˆì¬,$)W?I’PQQeî£´´T¼@EEEE¡ÚaÁ& ¢ÒxŠÍåòÄ@.Yhc›6mÄˆæ¹\\.ó4\0PØ@ÂºmÙD:t\0I’(..†¿¿ŸLÅZŒÔÔT¬^µ\n¯_¿‚®®.X,Ö/Qj6‹‹–X¶lÙ/m¤ïÍ™3=z8âĞÁƒeÆË6¦k.ì®:qâ8\"\"#°{÷n´kgQ§kˆ¼¼<\ZÀZ$¾Z2ÑßUVTJ(è½ûÁáp˜´‡Ã©×¸q8±)u1–æååáß›Ådl(\nPSW‡ß[?¨©«AG[\02kji¢‰qhhh\";+şş~õ¶İ\n½ÁdPGRQ^vUUãn*±•j~àóÃ×nİºØ˜X¨¨ª@EEª**PVQT:q8PVQ†’à%%%$	‰fÚ®G]PVV’’’Ğ¶m[\Z\Z‚ÅbáéÓ§°±±‘˜.ñÃ]\" ©©Qçfffeeep””ğÆ×S§N“@m…ïéáƒØ°a=rrr~Ù€!¹tÙrŒtw—Ù<ó«ÅŞŞGÅƒ°cû¶_b½IR		\rÅèQ£°qãŸ[3IRšr¿ñ}\r’$Á§(	j.‹eeeÆ’UÕòI’lPé°èš$êq—9<|eee°Ùl°X¬šf’ù·ğ¿Eu/$ää6!zO•U•`sEV¸€Ql(Qˆ à`ä‹¡Ú4MƒE’ Y,Á\'dy$	p¹<<yúL† òòeÜO^^\\†Cuu5Ú´i‹İ{vãÀğ÷óÃÓgÏ%¬%òò…K]naß¾ıpÿş=DFF\";;[Ìå%ÕÕÕØù×œ>}\ZÊÊÊĞÕÕı5VšÍ†s¯Ş˜;w®ÌAğÿ¤¨««cüøñèÜ¹3N:…§Oú“ñ×ÖÖFee%/^„ĞĞlÜø\'ÔÔÕ™ëââb„„„@]]İ»÷ØX	‚\0‡Ãa›Ïã7ÚæS×š--­mÄÂ¶ÓúÜ|ásŠŞ·š¶ğ\rs›¹`³ÙX±bú÷\0>ŸÏXñ””ÄÇÇ¡U«Ö022Ç—Ëeş­««+s¢¥<’˜˜ˆ:ãğáÃğôôÄØ1c0fì8¼ö}#W“C}±K×®xòä1rss777fÓ‹‹‹Ãª•+È¤%\Z[©Y$	\ZÀÖ­Û0hğà¤EÑØ{ûöíè×¯6nXÊÊÊ—›Êú>ÊÊÊàp8¸xñ\"\"##±k÷1fÓĞĞ¤§§CWW={Ju¡ù2H[;¿bäR}œsõ\Z%/ğx\\…¨\0\' ¥%HéˆŞŒ¾¾>&OÚ‚?&LÄò+\Z¾Ò”LoÁÜÜŒaW7ş7¬Y³Fæ¦ÄùqoBzÚºäÇ$¾¾¯áæ& Ì¿uó&¶lŞ„¢¢\"\Z\Zşz‹…Q£Ç`êÔ©hŞ¼9ş«Âf³1xğ`ØÚÚâÊ•+¸zåø|ªQß	A000@tt4Æ‹5k×âÿ›\0ğ}íË(®4 ‹¢(ˆv/²k)KII	üüüÀáp ©©	555¨««CEEººº2[	¯ò0¨ëKäRğZ!‘G	lUÆEæòx ˆ™„¨£´\\[³fÍ0á\"9|cÇ«3–)((ÀÙ³g1sæL¨««‹åä¸\\ÌØEHƒıù3Øl\"\"\"PUU…¶mÛJXmeef·-//¯w\'oŞ¼9455QQQˆ°pdffâø±c8{öÔÔÔ ­£ÓøVšÅB“&ÆX¿aƒAı]š6mŠ+VÀÙÙ»wïBbBB£[o---TWWcõªUˆˆˆÀŠ+\ZUUUPRâkáæ/ZìTäÍËËÃÚ5«aaÑ99ÙÈËË€ÅfãØñ2[L…ü€ ú+RBLHºŠ¦Å\\vUUU°54ÔEPÃ\n…˜\'…è³¬é€C‡Åá¿!&&Z¦b\'\'\'ã“&ÁÑÑE‰\0t1†††ÒÒÒ0vÌh473ƒ2G>Ş>PRbãè±ãŠ­¦¦*fê%´µµÑ«w<¸ùù;f4¾~ı\nšYÌ©Ô$A€ IÌö˜ƒñãÇ+ÌFó_‘îİ»ãÜ¹ó¸sç<Ğ¨àš0“¡««‹[7oâ}p0JKJ¡ªª\n\'gg©ï¬ö7VSS—°Ø}ûöÃƒ™±ºº\ZuÆÅµ×$G·¹¤¤‰‰	HIIŸÏƒ¹yØÚÚJ(°Ğ«”§Ä›¢(”•–‰=\'[KSKÌü+²Ó²X,p8™ NÓ¦MÑÁÒ\n‰‰IÌ\røúú\"66ÖÖÖĞÑÑÁ‘#G°oÿ~&}S{&’¬’º¶mÚàÎo±ª®ºâPMM-±&yh€»téŒGîƒËã!\'\'ç— Ñl6vöX²dñ?Rú«EGGÓ¦MC·nİpôÈ¼“+e£ˆk®¥¥…œœœšöltïŞCª;,¬bZìÚ‹¥¥¥Ğ¨©2c³Ù`³ÙPUU­·u¹öšäÈdggãÁƒxøğâãâ$œ¦i¸¹dòö¢ºHQ”\\Š-èÙ(©q¼	hjj‚­¥­ÍXTWW+ôTUUqÇÛG¬±CÈç,¼ÉV­Z1üe¯_¿ÆŠåKÁçˆš›™áêUO±>A\\óÃ\ZÊb³`±ÙPg³™F\r\0ˆ }ÈÇ\"B®aôíA²X`5€UT^,aõšµpuuUxBÈ]„4CO?ÆÆêE‡Ã(‡••ôÑOB>>¡®¥°ÕÕÕ\rêi\r=ë*vn=BXX(ú÷€S§NCCC•••ğ÷÷ÇÚ5«áí}³fÏ£rïËãŠóx<f#Ib“µ­\"CÚUUU¥NNNÆ¶mÛĞËÙ	ƒÂ¡C‡˜˜ˆ¤¤$¦È ;;A2¥sí-ÚKÔå\nªÙ~¼´ïÅ²éa>~üˆñãÇ1;è—/_0iâøûûK*v­2SyhgZ·nM›·0üYl6Ká” 4‹Ãf³1xÈÜñöÁo¿ıöÿR‹~Ë‘îî¸ÿà!Ft›ÍşéwG’$Ø,H‚À€ƒ°~ÃF™£xE«*	H²5iÒƒj°%ÚMU—U\rùğ,ş¹	ıúõƒTTT ££ôpì	š–Œ¥¡¦¦.x&ìùfÂH--°µµµñƒòŒh5îóçÏñçÆ\rX¼d)wü…°ĞP\\8gÏœ‡ÃaSFŒ%6¦Í›###/œŸÏTTTÄvö‚ü™1×ıû1nÜx&Æqww‡‰‰	6oŞ„»wï‰ÅëµcnyØ%•••1bÄ¸ººbÉ’¥5|èÁxôè!\nòó+$o¼Íb± ¤¤„mÛw ÿş?Òø¿\"æææøsÓ&ôí×[¶lFA~¾Ü!ŸP™	¸Ğ·7\0\0 \0IDATF¸D·nİĞ¾}ûzgNçåå‰á5zµ;11À¶mÛâbËÏÏ«¹7ÁTÏºÈCœ{õªó\\–––x\'aõòóann.×DQ%šZZ`,¶b±§¨DGGcÕÊğôºÆ¤ˆúõë‡¾ıúaŞÜ9ĞÖÑe\Zß544˜ÙXÁÁÁRA7˜˜š2óÀ²²²¤²HP…Ì¬,ôêÕ,‘¿kİº5²23™»,ÅV„Ÿ› ÃØØ½zõÂ¬Y³”˜ˆ°ğ0¼|ù\nŸ?ı\r$Íİ$,’Ä„IÿÃÄ‰*ÿUX,úöíkkkxyyáÜ™ÓàËØE.ÚYX ÿèÜ¹3Zµj¥cío\\Ûk8p\0óçÍEï>}±páÂ:§‹\n=Ú¬¬ìšû&`ŞÂ\\!Ik[%1¨€¦idçä Y³fr!î‘ZZ`×n‹¬=«>¹yóš6k&’÷H§NĞÓÉ¯^<‡ŸŸú×\Z…RVZŠ®İºIÜ¸ŠŠ\nš›6GF\rˆ–œ\"˜y]»ÅbaÈ!¸zõ*æÌ™%%%äççãäÉé>JbÕÑÑŸ˜ğÃÚÚÚpèØ;bÂ„‰HKKÃÇñöÍ¼zõ$I€¢hfLo·îİ1wî¼_2¯êÿš\Z\ZbáÂ…4hÎ;‡ÇŠ(³à½9÷ê…Ş½ûÀÖÖæææ\nDJJJŠw^mW\\YYæææ8h0ºté‚ùóçaòä)2dˆÌÖÍÊÊJ¤¦$3ÿojÚü§Š‡R’S ­£#f„x<rsåkkë¬¦¦&ØšZZbMŠ¶ædç ª²\n•••b;Wbb\"Ş¢(,Y¼gÎcoš¦qóÖ-L˜0A*JljjŠ÷ï0Tˆ’Ğ‰Ê”)S°ví\Z8õtdæc\r4Ë—¯ªŒfææøšš\nš¦ñéÓ\'1àígâÈ¶mÛ¢mÛ¶9r$233‹ÈÈH\\óòDEETUÕ???ğù¼_ª8LŸ1Ca_X¬ñOIPUUƒ•¥¥À»âqaaaGÇèĞ¡ƒÜ–ª>äúó§\"Şºu©ï$::\Z:tÀàÁƒÁçó±g×Näæä`î¼y2³¼¼<†;ÏÔÔô§îÕÖÎ6¶¶bçàr¹ÈÊÌ#¨ïÛ‰ê°¦¦&Ø\Z\Z\ZbÉvy¹Œ…Ò­{wàÄ‰?~<H’DHHşÜ¸^×®ãÅ‹8uòfÎ˜™³fÃ¬ysøúúB_ORÏÙÌÄ„q-HRÀU%­=Q[[‡ı””†/[V¥–ªª*ììì‘öõ+(ŠBB|\n\n\n\ZÕ-6¶˜˜˜@GG7®_ÌR~ı\no}_ÿr…K>\\aÅNNNÆ†uk½k«>ißÁ[¶l……E£·  €±Ø$IÂÆÖVÌğàÅ‹8x`?ÊÊÊ°wÏnØØÚá÷	ÑG„¼¶Æ‘Lñ‹¢“i…çğõ}ÈÈ(€¦Ñ§O±¿çóùàr¹073—û|¢:¬¡¡!Plq` _¡›>|8?~„Ë—.àÂùsì~áÂE´mÛ-[¶„––víüçÎ\0Œt…åË—Ë>šÕšF’››+óÃ³Ùl±N®ÏŸ?#))	ƒ\r’°ÆíÛ·ÇÃ÷%ÌÈÈø%ñn\\\\<fÏbğ\nš¦ÁÿE#m¤Å§\n+Jzz:x5µşÿ¤ÄDÆñcÇ°}ÇFÍdddˆÕ-Ô“’’ˆ%K—¡M›6066†¾¾~½œpş´P]?‘‘X¸`!ÜİİQTXˆ7o|¡©¥…Ş\"Ê]VVIÂXÎs×ÖYuuu°ÕÔÔÄbÏœÅF–èëëãäÉSFÚ×¯Ğ70@÷îİËf³1aÂ\Z4ùyyPSW¯—ÊÇØXüj­Ô/8€3fÀØØ•••Ø¿o/\"\"\"°nİ:±Í£M›6b}´			\r\"Ş¯K²³³±páÛaÿ\rIJJ›z!ÄÇÇøçï—¢(¼~ı\n»wïÂ†\ršë]ÿó@T333ìÙ³Wa7:½fLmC;==S§LÆºõ1zôhTUUaìØ1ˆ—XÓIÊ=Î:\'\'GKPSS©¢¢uušİÆ·oß.$ĞÒÒÂÀ1mút¸¹¹Iu›\r\r\rÑ¾C¹ø¹ŒŒŒÄ˜/âeûêÕ+DD„3¬:uÂƒ‡ğüù3¤Ô\ZLŞ¼ys†B—¦i„…†6ê\"-))Áºuk‘Ñ€wØhî8M#6&F¡ßğù||şüõïlD|>w}|pæÌ™F;ghh¨Ø\Z\rÑ¸\\.ÌŸáÃ‡áÄ‰\r\rKÕ%			bç¥bªO._¾MMm>œï¦OŸÏŸ?áıû÷Œb&%	*5åÉ\0ğù||û–.Bş)h^!UTTĞ¶]Ûš€^ò0#Š.¤<zô¨Ñ>Šk(^išFTd”Ìšñô´4¸»‹)ÕÕÕajÚÅµŠ[š4i‹öL¥İÛ·o$î\Z*\\.{÷îÁ‡÷ïÿ5¥f6¬ğ0…† #\"<ì_EËy<N?oï;_û½}Ãd%¬¬¬Ä¬_zz:¸\\.V®\\‰ÔÔTÌ˜>\rıúöÁª•+òAæy«ªªñcs3¹G•••ÂóêUôêİ[,ÖïÛ·/Z·nƒÙ³fâ÷ßÆcÌèÑXºd1¸\\®\\Sy*** â•¶…²²2H‹sóŒ¥§¥)´(ø|>¦Nş>}úS‹QT444ààĞ‘¹§èèÏÔ±¢àİÅ““ƒªª*äääàÊ•+øú5mÚˆS\Zq88÷êÅ¸çåååHNNn”…yöìYÜõñşÇcTiï27\'G!¬$77÷_\rD•{ó¦MR+…E$IÂÙ¹—X1PDD\r\Z„~ıúcÈ!˜0q\"î?xˆØØXÖ¹aÄ}ùÂ(vÇåÆÊË+@’Jke´´´pêôiœ¿p“§Lû¨Q°³·‡Ã‘‹ï¬´´Y™™Ì=™·0°²ã\rQZ–É¯ÆŒ‡ğ°Ğz«Ö(ŠÂ÷ïß‘œœŒ   \\¿~‡–ZÆjme%vO²âlŒÿm<èÇİ1p@Ü¼q/^’úb:vì(g7†;îí}\'÷ï*µPÈ\Z\0M^©Ãø7Üòysç0uÿ\r‘ñ5R«~ 88mÚ\n\0Wï;w0pà ˜››CMMµÎÓ·oß£@„BŒ6ÚÚÚĞÓÓÇË—/$\08ØÛÛcÈ¡˜4i:tè\0CC#¹æ»ˆİ“Y\r’Î3Œj@µQÄº¤Cûğ¹sªX^^ÂÂBäææ --			ˆˆGxXXMÍ0\0˜9k¶ÔB÷6mÛŠ]ññR<‚Àôé3Ğ¿ÿ\0äççCGG-Z´\0‹Å‚ìììÄzu-,,˜ÖTŠ¢ğèñcLœ4©Áùl???lŞ´©Q;˜~ÚjHII–»LRÓı\'î½¦zo‡®zzJ¬Íú¤²²=bÂ!Š¢$Èÿ­­¬±iÓ&¼ÿ¾¾¯á:b‚A¬:›BâããÄş¿.öZ>Ÿ§OŸ\"/7–VV077Ç¤ÿM†ŸŸ¢¢¢$\n¶DŸ?*2\n–V–r‰ÙµæsÓoliÈ¢;xû\0‚€··7H‚@dT=}RÃ-&¨&âóxpìé„ÙsĞºu+˜˜˜ÂĞĞP& ¹¹¹8Ğ†qãÇË¼‡-Z0å€<§NÂ±£GàísWÄ6L¢æ³“““ÚÈ„ùóæş«1µ¬Å\'÷ñ_¾Äşënxíû/,,Àª•+qôØ1èèèÈıÛ¤¤$$\'\'1ùk×½Ú¿ÿñttu‘Ÿ—‡7oaá‚ÈÊÊÄÙsçëlR	\rÎê‚pêÔ)¤¦$$Yàóù°°hÖmÚ 33)))hÒ¤‰DU]yy9bb¢Ñ]ÎM¹6J/Ü˜ØÂÅ.zÃ‰‰‰r£ÀÑÑÑxóæ\rx<Ø_cmÛaÂÄ‰°°h3³æ02j===¨««Ëİİ#ºbcc@QŞøú¢¨¨¨Ş\\XXˆõë×!8(/]–Ê¬Ñ·_?<}òBu|÷îÂŠY³f*ÔòO*FDD¤D5 ¬íÃû÷ÿ¹g (\nŸ>}ÄÛ±uë6¹=*Ñøœ$©i?.—‹2ç¼ãíÊÊÊ:Qè‚‚¼yãË\0rÖ6¶u¦£Úµk‡›7o\"??éééˆAÈ‡Ü¿w=Äş}{A$Fº‚ƒƒZ·n\rSSS„‡‡ƒÍf£wïŞr=ob-”^h(Ù€ ­‰±1„úøÕÕÕ2{A+++áãã§OŸÂÎÖ‰KÆÿ\rsçÎ”´É™,))Áë×¯áââ\"–s]qq_ÀçóQ^^ÔÔÔ:;99+V,ÇàÁC`ee…Ô”ØÙÙIËE]µ›7n(Ô>YTT„U+W¢Xd áM±âãPXXXo5//ùùùÿÉçàóùxúä	Lš™`á¢Eõ\Z…ÒÒR\\¿~ù¶|Š’˜Å~÷î]lX¿N0¢kWÌš5]»v­7MMMäœœzÖÙ\'+lêÜ¹3&Nœ„¢¢\"dff\"11áááğñ¾ï;·A\0¨æraÔ¤	ÔÔÔêœ&†ÒGE1À™‰©)ƒÒ“€ =äàà \n]TT„ùóç#99{÷îÃâ%K0tèPØ;tDvv6tuu*28}ú4¾|‰•úÑìíÅâì¨¨(™ç‰‹‹Ã(÷‘èØ±Æ‹®]»ÁËËeee®r“&Mà>j4Ã.š•™Qç¹k¿Ì­[·âÓ§Œµş/Zm’$‘Uïq™™™ÿin5>ŸóçÏÁËË«Ş\'\"\"ù¹¹Œ>vÜx±<ó»wï°aı:\\¸x	7nŞ‚³³3<fÏÂÿãîËãb^ß÷¯YÚWÙ“tìieÉ–TD¢ÅV(û.K–,•ì¢ìK­d‰¤RÖ\"QB¶„”¶iofßSo™¦™ç|~ßûõòzÃÌ{Şóç~û¾îû¾®;qqÍŞGú³g?€¾¾A‹¾ªª*´µµamm\r6à^r\n\"\"£à¿w/æÌuEÁ÷ï<ØL,D¼¨¨oß¼¦»±Š\'uDöî­Í‡B©är¹Ø±c;°víZ¾Ü¥_¿~ˆ¿\'ÑtXzz:N8…BW÷=ø€®¸¸¸&A*)))hiı…Œçé°µ±Æ‚ùóğòåK˜€-›7,Š±VV ÓyŸÉ%‘b;LaAu=&“	6›ÊÊJ”––¢¸¸EEE(..FII	ÊÊÊP^^^/PXM±Ô4Ğ4ÿÉ\ráÓ§OÍ¾æ×&?\rŠq8°ÙlÔÖÖ¢ºº\Z`±X(--EII	õüJJJ(f.—‹ØØX‘ÏŠ‚ˆˆ\n—¡Ói°üEßüø±c8vüŒÑ«W/8;»`ÿƒT§`SÆf³wç_$ĞœìÓÃ‡‘‘‘ÑìP•œœºté‚¡C‡ÁÅÅt:†F†b=Óoõ2@\rBïFmÄÔÑÚ­[7¾Óñƒ0öÓ§O¸‹€£Ò­[WHIIáë×/õãÆCÃTTT`Ætœ9{¾É±¼öíÛcÈ¡HJJ—ËEZêäåå	%Füë¯¿rájkk)Rººº:TVV¢¦¦†ï³@__êê\ZÈÍå\r…Ü¸q®nn­‡Â6»‰ñìÙScê´iprrFiI	JJKPZRŠ²²2””£¬Œ…Ò2ŞÿW”—ƒÅb¡ªª\nUUU”“×ÕÕQNÎÃ³iÔ<2N§¸µ%ß\0^g7 ½~İâÍ¥1|ƒÓ6lV¯Ù ~!%%EÉéÈËËCNNJJŠPTR‚²’TTT¡¤¬„Vª­ĞºukDDD 9ù”•”0yòd‘íŸoß¾Åí[±T¬©Ù…ƒœÃá ;;[`­éêêÖçİµMæñ¹¹¹Hö”Š†\r·™_ÇÅÅaåŠåiæ${{hŠ={¢cÇMâ999`ĞéèÕK<¼ç×jF·F3”ckjjò¡Ğ/_¾ ¸´ù u\ZMhFÃÍd¾Ì¤›‚ÂÂB¼ÿÏŸ§#=ı9TT”1gÎ\\ÄÄÄ`šÃt‰<-,,|/	Üz0$ıÙ³&Oô—Ä1yyy¸¸¸`»÷6j¢)**\nË–-kö½FFFÔ˜è»wï¨ÅÑœ50`VUUÅb¡²¢¥ee(«ÿSR\\«%¥¥(+-‹Uœœ·øñã‡Ä=Ô\\.AFF†P’\n¾íYz‹›ËåBZZ\ZÊÊÊ”­’’2”•• ¤¬UUU(++CUE***PTR‚ŠŠ\n ¨¨\099yÈÊÊŠÌSÏ;KET¿æÊ¿ZdäÏˆ‹A§ÃÙe&ßZ`0pvqÁzOOì?p€ZC±±7ae5ŠŠMKç>}út\ZZƒ\"Ó— 2*\Z999xüø1Îœ9…¨ÈH\0€ŠŠ*ì&N„±±1ºvíŠöíÛÁ`ÖW\'²Á%Dìşóõc©\r¾Ö¸m–úÅÛµkÇ %\'\'×ÏÿÜáê%VRSSj¤=zô€††î&$ k·nÈÌ|‰»ñw‘’’ƒ‡.—€†è¨((((Hñu\"ccj4K®ß¸k‰IÚ¿}ûUUUşv>lİº…ÚÑO<©S§6;Š§¡¡¦¦H¾w™õÓd]»vmÒA\ZAƒv™ŠŠŠØ$z—BC±dÉb±[‡¦ii©())i²¤XTT„·oß´È±ËËËáãëkkÈÊÊşãá_uÑ^½z…—/_B^^C†¹Ø?şŒ³gÎüL¤¤„¢Ê...(((À„ñ¶022SJ\n÷SRpCD×$‡ÃÁ×©” ùMFAQ\nŠŠĞÔÔÄğáÃááá¼¼ÏÈÊz…””\nÄi))p¹\\èèêbôè1ĞÕÕErr2ºvë.Vÿyee%î§ÜçÎ\Z¿ŞØi\ZLh¹Ÿ>	¿µ´´ ##ƒ À£xğàJKKñõëWÜ¹‡;w¢M›¶¸}ë&gLÇíÛQPX€…‹#èØ	\\¹\Z-­¿¨pfïŞ}bÍkjjÂĞĞˆÊµ’ïİCnn®ÄçØ±cˆø%nÛ¶-,p§B<\Z†0!ºÅ¿\Z½e,˜L&JKKñ¸¾_Ô¢mÉ\0011ªªj‹ZUét:¾ÿşÛ3‡UUU6œ7ûÛ˜ş|×ÆöàÁ°X,0Œ=FäF~ùòeê{0ÌuuãÛÌîŞ½‹ÔÕÕÁÓÓá‘°±µ…­­-î&$ğ±ì\nÃ)Şÿé@}ûšH¬Î\"//=zÂÖÖ;wîDBÒ=œ<u\Z+W­†œœüwûaö¬™HJLÀ¸qãÄÚ$¿}û†¯_ó¨û\Z<ØŒÙç{Zú?4\ZM †WTTÄ¡ÃhÛ®Ìwƒ¹Ù`¸¹¹âşı9r$œ]\\À`0±xÉ\\¹\ZƒààÌ=ÆÆÆèÜ¹3›™CJJ\n“§LÁ€Åz(L&“ï„¦ÑhxğàÄ‹ÑÙÙŞŞÛúàmÇ§‡ÃAPàQ±6### ~“J¹ŸòÇ@\'Í.]Ğ­[·‘L6œfÿ\\kªÜÙ£gO*êå -µû÷SÀd2Á%DdºöñãGœ<~œÚø!°µµX·BB0~¼-nŞ¼	\r\r\rØÙÙÁÚÚºYq†”””Fb’tXÛØücvUUUèëëÃÁÁGâfì-,[¾e¼^“Ÿóæú¿´ÂÒùóä^ jı«#,,C/!2*\Z!!àéé‰~ıúQúIÊÊ*ĞĞĞÈŸ\r\Z\r\r\r¸¹Í“èA0€oŞ444Tâ…Ş¹sg¸ºº!<œz¨S§Npu›ÇwjŸ9sZŒH¢3úö3¼¼<>}Ê§õ;‘d:##ã;¶¨vÑ·oZ†×ÖÔ _¿~!ôï°ÍŒôç——Ç`33‘\'êéÓ§Ñ0GÎ`00»@ØŞ¯_?DEGÃÅe&<×®±‘!bcc)},QØ¥ĞP>¾‚ß­KN§ÓÑ¾}{ÈHKƒË%Bªš,¿5zö=~©{ÓÍ•””¨°7áî]¡¬¥***èÑ£\'ºvíÊ×Ô¡¦¦}}„‡‡	­9šššâ|pˆÄ:Ò;wÆÈQ£¨ºsÎ›×xùò¥D×xşü9ÒŸ=ÃÁûJfööö|§vèÅ‹ÍÖµ&ÆZYAVV¹Ÿ>áEFÆ;µûĞ¤œ°è‹ÌÌL¡ÎÇf³‘‘‘Ñ\"Çd0™0`Àû¾ÏÓÓ‘÷5222=zt“aø³gÏ~ù_ItÒ¤I|¯)--ÅçÏŸ‘‘‘´´48tÇOœÄšÕ«˜˜(ò>^¾|‰ÚS--ÇJÜ».nj†¾ıLÄšÁ®ªªBüİxpëÃpû¢ÿê°Ã-FPyöû÷ï$ê§Óé°k‰—/2„®3™Ì&Ù~˜7oŞğ®Ñh4ØÚ§~`.!ˆ‰‰ë^¾|‰…ÂÉqÌ‡ÁÍØ[øşı;ßÆÓ¡C¬Z½ÌúS»³¼9mâö•šš\ZÜ¿ÿ-tCCC¨µn-qMOjVØÉTRR‚´´T‰»®®íÚµkqƒ†8–r?ìÚºú”Ç¸IDß÷nJ•Édbçz¾2T||<†\r«±–˜î0\r:¦¦¦èŞ½;&†4ÃùÅW·±±‘è{°Ùl$\'\'cË–-puuÅ¦MqùòeƒåÅ‹xûö5lllÄŠúrssñ97—Ê¯G\Z-àWtÁ°·?ßÅ%=uuõ@§Ñ‘-ö{ŠŠŠpçÎ,^¼“\'MlÒ‰Z©©QÑÄ¥Ğ‹\"óÇ²²2,]º3¦AWW7nÆÂÅÅUUUk9F\0?~<:tT§®ÿôi\Z®^½Ú,°§o`\0Y<|ø€ÿÖ©S\'ôèÙSbÎwBÊËÊ„n²-’­©©AïŞ½%ºÄ\rÃàáƒ•“Cÿşšª¢££ñüy:¸\\ŞâÖĞèÌçx\rXJè¥Ë¸wû!%%%ğööÆÚuëD‚·¹¹¹ˆŒ§êâmÛµÿ]5`ÁËËóç¹ÁÂÂÃ†\rCtT	l¦wîÜ›Í 5uX5¬2:ÁCö×¿ĞÖîÃ·0’%zïÒ¥êØuyâÕÔÔàÅ‹8tè†\r‚•+–#+3[½·ePRR‚““3ˆÛäõ¥¥¥aj:W¯]‡››:tè\0‹…ùóçaÑâÅ%%%%x®_OåÚl6^›6Š˜˜L&¬¬¬ //ÌÌÌ&UGG¨_¿~-Ë³i4Š£ı×…Û’-¨¶¶ıú™ü‘üºËÎÎ†¼¼,--…U>|ÀÖ-›©“Á``§\'_fJJ\n®]‹A=ê#}¼zõ\nÃ‡\rEiI	EOÔ”İ¼qƒ4stt«Í“ŠøöìÅÕ+Ñ¸q3fffppp@gMMhhhğ¡Ş•••¸zì&Š=Å–””HE\\B„Î…8¶††oºşäºv-Fl>(p¦‡éx••)ôÔÎËËCdDàä8AGáì2\'NBô•+\"ÃQ£FıÑêì¦zÚeee1eÊ\nxáp8ğööÆçÜ\\tì¨.´¤`ff«qÖ`4:É||v‰Ô331é“‰ÂÂBÿßiúhq­ø½¶Ñœ·o%¦.l‰ûİ\0Rc{òø1Š‹‹A§3`,„h²¶¶>»v5Â:°±/ĞWajjŠOŸrqúÔ)\nÿ		Á¹óÁØ·¿Èi±¢¢\"ò!íMÍO³W¯^!2\"«×¬åë‰033Ç›7¯ùBñœœÔÔÔ`Ô¨Qb]ûû÷ï¸ËGû$\\plXZ¥NF,	ÉñæÎ[_Ø¿€§úñğáCxym‚õ¸±Ø²e3Z·n¹s]Áårë9¿\rš°ÑĞĞÀßS§‚Á ƒ\0¨ª¬Dœ\rü\0pêäI!\"2\nAAA,\rQ€‡‡¯±³~c»—”ˆË—/‹ŒPttõ@£Ñœ|ï-x=}Ş˜ ¤„„¼zõJ\0ËÈÌÊ‘p¼®®êêêĞ“È¾EùuJ\nt:\r„†á¡¡¡HI¾G-l.—wwwHVV²22Ø·o/ÒÒÒ¨CGGG§Ù)¾[·n¡¦>ía0˜>ÃQ$2/Ô 0\nl:p ***púÔ)|ıúEEE¸yãØl¶P…Xa–™™I<t:£FÚ½G~\n™Pa\Z—$%%Jôã´nİ\ZÎÎ.¸x!GÁ!æX0ÂÃ.Ãİc!B.\\D@@\0æ/X€ğˆ=‚àà`±®=i’=\Zêw.Gš-[ÄÆÆâÀı˜={6*++!--g\'\'xxxàîİ»|¯UWW‡ßnÿF!9;wl§~¬_MJJŠ\nÇÓRSQWW÷Gòì6mÚ ·¶v‹òì§OÓødƒY,¦¥J|bWWW£ÎÑ	oĞK{šy¡\ZiiiğóÙEµ\03ìÙ»¯‹¯¶¶„œ={£FÆ©Óg0ÓÙIèF.ÌJKKqèĞA\nixb¢\0ßÌÌLÜ¿Ÿúmª««BT_ššbı†¸qãÆaC‡àìÙ3˜8i’Øšd‰‰?Ãğ_\ndûËîİ»£uÛ¶Ôx	W~ó\0\0 \0IDAT%:Zb6Ï1––`³Ù8t––c±oÿ$İKÁœ9sÑ«W/ÊqºwïÃğõÙ)ÖÃïİ»7QBPXğ·n‰nM}—“Bvlßuk×ÂÈÈ“§Lµµ5455ĞæQ£Faâ${ê¹\\.V,_Şd—‰‰	dd¤ñşı{‰˜K$Í³Mú™4‹Ô{oŞçÏ|ê¢………`±XçÈl6›ZH\"¿Î|ùŸ>~„´´4úÖ×ÉìÛ·oXºd1åp“§LÁÈ‘#©×cêÔ¿1eÊdØ¿²²²hİº5şæ\0/¯Mbi¢ß¼qe%%T‰kœµÈÙè?ÂÕu.z¸ÃÁa\Zâãã!%Å„¢²’€>œ””&L˜€/\"<2\ns]İÀ`ĞÅÍŠŠŠpõJ4­tì¨®]»\nÇ„ı¥¢¢\"lllqò¯£§ª²™™™MJò³={¢“Fg´VSÃÖmÛD\"°ı@ëÖm‘šú––c›½¶“³3nÜ¸NÚ{üwÃÂÂ¢É~j—™31~Â())ANNIJJÂ¡C‡°uëV* ÑhX¸p!Ü¿ÜÜO”Â–-[àçç\'0hò×_A[[÷î%ááƒT£ÎoÏ³€ŒŒUæ×èt:>|ø@Õ:ß¿\'1pFO.ÖÄäÏå×÷ğN=ÓAƒøh‡*++áµiŠ‹‹±qjÁİİƒïırrrØ¼yòòòğåËÜ‰‹ÃíŞ`0¨«­­×œ–é8{÷î¡6\ZGGG‘÷ü×_!&æ\ZRSŸàÔ©SX±|)êêØĞÕÓG]»IĞµk×®h×®¸\\ñ†ˆ^¾xÚFdÖ66M¦Mz›¹¹9_8.n.Ûxw\Z9r$?Oo–\n—É`ÂØØ_¿Š‡*ëèèÀjœ5uj³X,jz¦) ­cÇPTT¤œúÇØ¼y3-ôZÏmÕªüvïşY;çr‘”˜€ƒ4ßHKKÃjÜ8ÈÈÈ %%ù-ü>::èØ±£H0OXˆ«¢¢Êç(ÊÊ*â+	\Z®¡¡Ñ\"n8qË\\îß‡¬¬,¬¬ÆQy#—ËÅpÿ~\nõÜét:víòáC‘3ê„ôôô`ii‰Y³fáp@\0“îáÒå0„^k6Oˆˆ@EEuZÛØ‹‰TEE#pìØq‡İÄ‰xù\"Û½·Áßß¯^	rÊ±Ùl?v#Fˆ]:Œ½u‹/7<¸éÍ\\TÈÛ¶}{*½xAì<¥Á¬¬¬À Ó‘˜ rû^\"UjAp8øûï»™æÑ£G°>ŒÇfÑG…î|}úôÁ.*×ãp88wî,Î;\'uôïYYYddd ¸¸ø´—6€?âæÙ\rsİGğ9vÿşı±Ék³D({uu5ôõy\0çŸÃ\n\n™™	YYYª]\0Îœ>àóTºÄd2áë·›Ïáª««á¹n-œœˆ#Ğ¥K—f‰rss±oïêsh4\Z\\\\\\$úÒÒÒèÛ·/6oŞ‚°ğ¸Í›3§OÁaÚT,_¾> J–=Â…;ÖJ¬kçççóÕÕ;uÒ@/›l“­  €I“ìùĞñT	9¸{öì‰Afæ8tèP“ùMnn.ÂÛ7oÄ–\rx}íÓgüìñpòäÉf#00n®spìø	L›6\rÏÓai9µµµh\\±´‹î”°Ùløïö`\\éÚµ+zõîüüoMm¿ÃLú÷gĞé8rT(âjggw…`2Åhàp8è?àÏ…á©O   \0ººzT¿tXXöîİC}_&“‰…yÚÚ¿FdçƒC0tè0ØMO©Òüøñ;vl«şâÄq*Be0prvæ{”ÔºwïwwwÜ¸‹5k×âVìM,˜?3fLGTT6nØ\033sqê6¶\'Oğ¡á“&M©.²õ¨ñL+—DEEJDµK£Ñàää„²²J›¨1’èãã[k>Œ¥Ë–7I Ğ”9::şìñærq9ô\"UÚhê~påê5˜˜˜àÒ¥Kp÷X«sæÌÁµk1BOÚY³fñil6^^›øÚZedd`cc‡‹û)nÚË¤Ÿ	äääš=5™L&¶mß!™9s&ì\'ÿİì´—Ë…¢¢\"úöí÷Ç¾Wr}\n3ÁÎRRR¸zõ\n_\n“Á€ıä)pnâURR‚»»;aİšÕğõõÅ¶m[¡®Ş©IRÎŸNóáá?g®	Áôé3~Ë÷êĞ¡¦LùÉ)÷áãëEElÜ°……prvK€Ãa#22‚Ï÷ÌÌÍEã*Íí:ú†T8’œÌ§$@³‹N8’’<|øË–.…ãtŸ?W77„^º\'\'\'‰šºº:V¯YKõxs¸\\ìÚµS$ú9`À\0hhh ´´\'Ã×¯_0zÔHX[[ãøñB)o˜L&–/_áÃ-øœÛsİZ¾¶Ó@VVêé|ÿDÙ«·¶6:wî,g2™Xºt¬­­›uşeË–aÈĞa\"»¶¶ZZZÍ†³-Í¯Ùl6RŸ<AëÖ­ajjŠ;wâ°ŞÓ“¯³Ìbä(,[¶Œ/}xùò%nİŠå[“ıû÷ÇİÄ$\\¹r¬2EşØ±c\'_¨¿Îs½ØDâš²²2FŒƒ‡¡“†zõê-öˆæ›7oñèáCp	FCß¾ıš¥ğ¢7€M¶·çëÄ’D“––†««ÒÓŸaÒ¤‰X0Ï\r÷î%a­çzÜŒ½ùó4{“¢lÂ„	ĞêÚ•\Z\\É~•%YBBBh\0^½ÊFè¥Ë˜2e\nŞ¿oooÌ;|!¯‚‚¼6o†Iÿş|Î½ŞsÂÂx\r,=zô@=ñöí›ß¦	&™Ö××o2ÏfÖ7T8Š¹QÊËËcóæÍèÑ£g“•‹êêj@JJêä×oß¾Å»wï £«‡¸¸8,]²„Ï©4Å¦M›¨Ó‚€€Ã˜5Ó\'OÂdûI8zäõââbT”³š­Æ\0<†šœFLŸİº÷˜ç–ÔD\rëäää ÿÛWÌu+’ª±5.çÒétL²·oiv\n` ©)ßXÜùsg%®i<ŠŠŠøŸ?ÿ=ˆ¿›\0{{{¡r»’š‚‚Ö­óäk(ñóõivE]½#æ-pÇ‰\'Ğ»wo<~ü“&Úñhk\'OÆíÛ·±{÷n¾ğGUU»vù o¿~|Î½uËœ<yÒÒÒ˜1Ãeee|©Çï¶şı]<£FÁÂ…%\ZğPSSƒÿ=PVQzºBÄ&Æh‰=zôeeeÈÊ|É`1ô0;wîä›ˆ‹»ÄÄ$Ü»ƒàà`„†^ÂáÃ‡êg³yÎã·Û¿Yî°¬¬,ìÙãÏ×ğ²nİ:±Âã_ŸOff&.\\¸\0¯M›àááÕ«V	Ş8}ú4ètOé£¨¨çÎ¡	‡Ëkd¶Ù_¿]»v˜áèF}i©œÅ’xDQII	nóæSDè¢F7[¶Ğû×·šş»Ü¾İ[$zÜ¯Ÿ	æÌ™aîìYØ¸Ék×®ÅèÑ£±wï^\\‰\0ÂZ·n\r?¿İ04ˆÏ¹÷íİƒÃ‡¡K—.h¥¦F•½h4ÚoûÓ`}ûõ…’’ß¦C§Ó¡««ÏõëÅ&tllššš8zô(èt:ßgq¹\\¨ªªR#ªM…Óÿä;¥$\'ƒÉdPl²\rNffn]»v	teŸÆìÙ³©uÔ£gOœÁş}{QZZŠ‘#G\nU\0il•••ğöö¦\"†ÖQQßS”cgggcÇvoDD„#ù^®_¿&°Îß½{‡ø;qpus{ $99™¯½uæ¬Yb•ÇÄªwX[[#øü9jÇ8{ö,FŒÑ,(ÑØF=ş»3füö]ßÕÕ\r7®ß@QÑp¹\\¤?}ŠóçÎaöœ9Í¾733\Z51aÂ¾4ÄÈ¸¯P1@555ìÚåoooÄŞ¸v=Wö‘€\0hiiAA^É÷îaÑ¢…PVV†œ¬äää ¤¤i³§ŒŒ,äå!¯ @I¦JIIA^^ÒÒ2’’âé7:yA[»zõê…—/_BNN4\Z\rmÚ´¯ŸŸD:W¿š.ûüyÔ)VUU…~ıúá¯¿ºòİƒ¨E^[[Kı©¬¬D]]***PSSƒªª*”——£¶¶ee,T”³šš\nyyE¾tÂÒjÖ51Z©©©‰\'OğuijjRŸ-={ÏÓ©ò‘ZëÖ˜={v‹N‡F\Z…uëÖ!)1ë7lÀkBB‚Áår1~ü±®[SSƒ3§Oóµ·Š[Ë±{õê…şàáƒ<DûE?O§Æ÷Ä±öíÛÃÓs=†ŠÙ>\'©µnİ\ZŞÛ·ÃÃ}Øl6Øöïßô31iØhÜÕÄ,Şà^R\"Üİİ) ¦gÏT^¤¢¢///´iÓÁçÏÍfƒËåR¹5›ÍFÜí8”••\n8CÃiE§ÓÁ`0@§Ó!--\r:^OÉ+\riÈÉÉAJJ\nŠŠJ––†‚‚< /¯€ºº:0êZ‡4Ë®*nÚ´Õ{;6¬÷¤û¥ed†ŠŠJ”••¢¶¦,Vªª«yÊ*G]]-Xåå¨«¨®®›ÍFUU¸\\.jkkÁáp@¸\\Ô±Ùàr9àr	õü¥¤˜ „€ÉdÂÑÉ,à+ç¤¥¥!//666pvqÆ$;;hué‚ñ&€Éd\"$$VãÆ‰uš=|ø‡ò…üÛ·ïÙ¯ıáÃ\\¾|™§\"cg\'ôÄ­®®Fö«,´nİF`Z+\'\'á—/Ãcá\"‘œäíéÓ§xSÏûÎ“2KúGlÇf2™pp˜ÇñÈá	App0úöí\'ò;ÉŞÒÌÌÌàäìŒÓ§NQäõË—/Gè¥K\"óy6___ØÛÛ#7÷–,^Œ…‹£wïŞˆˆˆÀ–Í^¸q3–ï:òòòX¾|9ÔÕ;ÂÏ×—·pëC;&“É÷çÎ…ŠŠ\n~ü(¬wŒ2TTT ´´¬²2”––¢¨˜§|ñ%ïÅÃÇâYÿÌ	á‚Ëåı¢¢\"ï´p4èØoí³±±Aaa!öíİEEE¤¥¦6j2ú)j@£Ñ@§Ñ@«ßÏÊÓh4(++£³f´j¥\n5µÖPSkuõNÈÏÿ†¨ÈHê“ÉÄªÕk0uêT¡×¦PQQÁ!Cpòô8Î˜oïmèÜYš]4±sç®f×#ÕsÎùò»Ìœ%–äğ÷ïß|áğô\\/¶_¼x………Ø¸ÉK Ò8sæ8\\._TØ\\‰ñüùó\\è˜:mšØDŠ4\"&ÌYYY‰)“\'ããÇY~È…‹b›ı[Æb±0ÓÅ¯³_ñÊt:,,F`—ÈÜŠŠ\nÆ™Ó§¡¨¨ˆuëammk×®a½ç:œ9{N¤0Àİ»w±h¡õ£4,p[¸º¹Q¿ÂBW6›\r6›šš\ZÔÕÕ¡¦¦†:õ*++QUU	‹\'Ä*+«¼eee(-)ÁKK†ßa{÷îEDD8Ú´nƒ6mÚ@YEªª­ ¤¤%EE(++C^AŠŠ¼|º‡ddd(1\0iiiHIIQ‘Nvv6Bü;ÒàÄ +jE=yüsçÎÁÙsç¡««‹…×¯_ƒÉd¢OŸ>Í¢Ì555X±bîÆSÊ0Ú}úàøñbç¼)))Ø¸aŠ‹‹0c†#¦OGûöíñşı{L´›€öí;àrXßõ^¿~iS§`á¢%bw³edd`Ætp8Ğh4ôèÑÁ!!âã\'D‹ˆˆ úºD§6ÑÓÕ!7l ÿ¥ÕÖÖ\nıû¬¬,¢¯Ç»O>ÚÄ@O—ˆuÍòòrR]]M!äæÍ›ÄØÈ€<{öŒï5·nİ\"Ÿ?xï›7oˆ““ßgëéê}=]râÄ	R\\\\ü[¿?—Ëı£Ï—Íf“’’RQQAêêêşÑç•””\'N}=]¢«Ó‡z>úzºÄÅÙ™¼}ûVà=‡‡iäìÙ3äÅ‹$.î6ïyêêOŸ>I|‡$~}=]’İâïbdh@ôõtI||<yûö-Ù¶m+¹-ğúµk×}=]òãÇ±?cíÚµDOW‡·~õuI´ëŠ2‰»¸¸˜dJı0-}0¿ÃH```“ÿCôõ~:·¾¹~ıšØ×‰‰!F†äÉ“\'¿8u,162$YYYBßWVVÆ[@úzØÆÆšÜ½{·É\réÿ¢ÕÖÖ’ø;wÈ8++¾\rOW§1Ğ×#„Åbñ½\'77—äææ’W¯^‘‹/’õDOW‡ØÛO\"_¿~%!!!dôèQäË—/bßÇÕ«W…¬‡ëÿè»eff’ùóæ‘¾Æ†dóæÍB×DVV162$çÎûº&]>dØ°¡¤´´ôÏ96!„Ÿ§v==]âåµé_](,V9zô(é××˜ìÚµSäk÷øûó-&}=]’ššÚìgÔÔÔÕ«W“¤¤$¾¿OKK#ÆFäşıûÔ{÷n¼Ğk¤¤¤1cF]ÌK–,&OŸ>ıã\'îi\\.—¤¥¥‘Å‹	İäÆ³¢ã¯vàÀ2aüxÂáp¨Ír¬¥%)++£œÔÜl0ÉÉÉë^?z$°öíÛ÷[¾gMM\r¹rå\n1Ğ×#†ú$$$„Ú¨Øl6Y±b91ĞÓ•(Zó¬ßÈ\Z¢ÍĞĞP‰ïKbÇşñãéoÒïÔnêôúİöòåKâè8ƒ\ZC‡6û°*++É‚ó©‡¤«Ó‡èéê7oŞˆµ0kjjÈ©S\'Iyy9ùôé124 W®\\¡^s,(ˆ¸»/hò\Z………äàÁƒD_O—º‡Æáù†õëIzz:a³ÙÿgšÍf“gÏ‘õë=›üŞ‡ÂRŞ³>E233Imm-qp˜F¶mÛF=G}=]K‚‚‰ƒÃ4òíÛ7±î\';;›èéêğ­WRUUõ[¿w^^Ù¾};162$ãÇÛ’ÔÔTr,(ˆ\Zk×®I´ÆŸÖƒ™¶(…<ãk†ÏÎ`s8 Óé°\Z7;vìücêµµµˆÆÖ-›A@xÅì„úşı;œœñ%ï3¸\\^¯m‡ê8yêT³ó¹uuu8sæ4®_»6‡©S§aêÔ©Ô¿»¸¸@[[«W¯yôôtEò½{|ÈyC3ÈË±˜hg}1xßşW­²²’Gà†[·b)=ì‘×p2nnnS|Ÿ?ÆæÍ›ñæu6¤¥epåêU”——c„ÅplØ¸“&ÙãÎ;Ø±};ÆXÁ¼yóÅ»>şggäç£JFš]ºàÔ©Ó„>àiùøìBÎÛ· Óépw÷Àœ¹sÅFÂW®\\‰[±7ÁårÁd2°vİzüı÷ßßG‹»¤¤Öã¬PZZÊ«=28uúEh,‰F`Ù ÑèBK?~ÄŞ½{‘˜6›WÂZàî	ìÄ–}ûö\r&ÚÙQå£4ôàÁCbÍ€ß¸qëÖ¬ÆùÔpqq1¬ÆZ¢GÏ^èİ»7æÎ‹ôôg(--P£h@d“’’°ÿ>|úø—ÏÁé4\Z´ut`o?ıû÷—Xøí¿²ÜÜ\\<|ø—.…\"ûU¸\\A‡îÚ­Üİ=`ffÆW™àp8ˆ‹‹ÃŠåË°gï>˜››ÃkÓ&()+cíÚµÈÌÌÄŒé8‚Š”şÕòóóá¾`^¿Î¦šPh4\Z\"\"£şÑl‚8öíÛ7LoÕV­pùr˜Øˆ{jj*fÏšIõ´iÛQQÑ-ã˜kièFzº:dÎœÙ-…Î;GÂÃÃBá[·n}=b ¯GbbbHXXkiIŒ\rÈ°aÃ„\"ÓMÙ“\'OøY=]âääH\nÅzjj*Ğß„|üø‘ºŞ˜Ñ£	›Í&û÷ï\'F†DW§‰\'?~ü Bsè’’AÆŒMôùb]>TøºŞÓ“ÄÅİ;äü7íë×¯äöíÛÄsİ:*¼şõ{èë’±c-ITT¤HàçèÑ£\"^]]M¼½½I?c#O˜úzºGÄÑq_\n¦¯§KÒÒÒş•çFŒ\r\ršÄšÊÕ]œ‰n\nÜ‹ŠŒlñ=´èÄn¨ûN›6ïß½£:†vûï‘ˆ¹!üX´h!’ïİÃ•«1ĞĞĞ@AA‚‚‚vMaÅŠT¸¬¬×®]ƒÏÎfa__?±‹ö‰‰‰X´Ğ£Ñä}ûõ‡X¡Ù·oß ¢¢999?v¥e¥033‡·÷6XZÅÔ©SÑªU+=zGãÖí¸&¯[RR‚äädœ9s\ZÙ¯^ñ\Z~éı¦Óiàp¸gmSSSôîİ:uûø]V^^¼¼<deeáşı\\‹‰ƒN·Q¸ıóyÑ££, şğîİ;ãË—<L<…êéÎÊÊÂzOOØM´C=à:w.Â#\"Ñ­[7äææ¢S§Nb\r¶`ÅŠx––Jµb2™<\033³?ş¬²³³á0m*ÆO°ÃÆÅ~_ll,V­\\AÖ=zôÄùà`‘d\n¿=o°øøx,]²˜º™N4zé’Ä¡Cnn.l¬ÇÁr¬¬­­±|ÙRÔÕÕaÕê5°³³ÚXrñâEìÚ¹á‘M64÷\0Ëˆ¡q_øøøˆ=mÆår1ÓÅééÏ Ş©¼·ySò/>|À„ñ¶àp8ˆ½u;vÄË—/Ñ¡C¡’­xöìb®^ELÌ\0¼Ù÷Æ?KãÁŒN4`:húôé---´oßªªª——o‘dÏ¯ß«²²%%%ÈÏÏÇ‡ï‘™™…ä{÷ğõëªa¤±37tœB`cc‹qÖÖ044Š¤¥¥aÁ|7¬ß°	¹¹¹TËîÖ­[1|ø0˜›Á×¯_a5Ö+W­†ƒƒƒD!ğŠ+ğ<ıuL&~»wcäÈQÿÊ&´ÔT¸{xˆ=Ó]RRûI“(,€ÉdbÿƒÍj‹ı1Çf³ÙX°`ÔÍ1,^²³fÍ’øZ·oİÂÊ•+@&ıbÉ’%\"Ù>+**0lØPøøø6;Éó«]»v\rëÖ®¡œ›N§£gÏ^ğß³‡LÔ CJJ\n>|xñã\'ğ .D—.šxüè1<99917Ãùà‘]z<Ä÷HIIÁ•+ÑxU/Òğ«“ÿ:Eº:OÛ«sçÎhß®ÔZ·†’’êL¤¤¤øHºÛ*++Áb±Pôãò¿Gnn.Ş¼~/_òø®ÿ«öuãöÑ>::°±±…©©)´´´D¨ãÆYaŞ¼ù”ÚKyy95ìÒĞa‡5«Wa·ÿ¡¦˜€ìÇ±xñ\"¼ËÉásê»v‰Å|û_Z`àQ:Èë]§Óé2t(öîİ×bå—ìØ\rÃÓ§Mı9ÓJ§#2úŠØ:¿ÍÛÛa—/!èØq±ÆçÜÜÜğ÷”)°0üoÊ¹[·iƒÃ‡Äb¦lªİĞÍu.î&$b›öíß°°0”••ÁÓÓSìëTUUáíÛ·HM}‚øøx<MKF«ï˜ç9:¨nŞ¡YA€Æ¯á]“€4q}\Zu}ûöÃ°áÃÑ·o_tëÖMìpq÷n?<AƒáN\\^eeBÏÀ»víB§NpãÆuaÏŞ½bm°\r–™™‰ùóæ¡¸¸è§ö¥¥åÿ´Sçää`¢İ¾”C[¼›c€¯¯Î=Kí8#G†¯¯¯Ø¹oƒbäˆá6Ì~»wS;Öë×¯qøğ!´j¥†±cÇBWWµµµp˜6\rGE\"ÈuuuMöÇÅÅaù²%Bİ°€‰5ĞØÊÊÊ`n6GbĞ ApvrÂÈQ£à³k\'âï&´¸¼RSSƒ/_¾ ;;Ï=Ãƒû÷ñî]è4\ZH£õ§sşƒÅĞ°)4DàqİuïŞ„¡¡!zõêuuu‰FvŒÅbáÂ…¨¨(G_ã¾èÚ­<ˆÎšš˜?>ÊÊÊ %%%Q^™œœŒóÜ¨M¯!šØ³w,,,ş§šÃfcÉÒ¥TïzÃ@ÊÒ¥Kÿñµ‹cÀzœ*++©Á×o·ØBcü\'i6¬_¥Ë–ÃÁÁ‰		X²d1ŒŒŒñòå°ÙlhjvAIq1ÆŒµÄÚµëš¼Vxx8!BËOën®s©—F£A§ÃkóŒŸ0AìP°¬¬‰‰‰7n¸\\.æÏŸ\'ÁËk3lÇoöıµµµ`2™ÍæÉ•••(((@^^>~ü€wïŞ#çí[¼~²²²tb+++£gÏ^èÖ½;ºuí\nÍ.]Ğ©S\'´mÛVìúzcFÑ¦ìÃ‡<ÿº:ÌssÃ;%&8 „ <<[7{Óè·£Óé8r4Pâù¿°ë×¯cíšÕF¥¤¤„+Wc„b1ÿ‰c@LL<×­¥nR^^Wc®IÄŞ`şş»qæôiŒµ\Z‡×bà»Û#FŒ@ee%®_¿íÛ¶BQY‘‘QMÎĞFGEaë–Í˜6}:–-[.ğïÕÕÕğóóƒ««+~üøg\'jv¸aaº¸ÌÄœ¹s%F¡Ùl6F))Ñs®Ñ\0\0 \0IDATi\\¹zUäTÙ«W¯põêUdd<‡šZkŒ1£FùaQIee%Êë§¾X,ÊËËQYYêê\ZÔÕÕ‚Ã®õ˜HIICVVòò\nPTT„’’”••¡¨¨yyy±¹¸~®®^½ŠîƒNgÀÌÌÖÖÖBŸ³gÏÂÏ×zúX¼xq“úS¢Nş   œ9}Š/•RTTÄÑÀ ‰h¬oÌ÷îİÃı”p¸\\\Z4¬aèÛ·o°g…šš\Zê0Üåã‹1cÆü–ëÿ6Çf³ÙX²d1¨°b’ıd‰ ÿÆ§’‡‡;ÒŸ>ÅtG\',[¶ŒïßÓÓÓÑªU«&ó°àà`øûùÂjœ5V¬\\)¥çr¹djŠ›6ÁÊÊ\nïß¿Çš5kğ*+S€skİºuc÷ïß‡œœ\r\r›|ÍãÇ1wÎ,ª‰‚Á``ü„	X·Î³EáîaŸ?†‹‹3\n\nø]Ï½p8 @h\ZRVVyyy‰¢wïŞaûvo<~ôˆï³tuõ°}Ç‰)¬®¹|Ù²úPx&dddpùÒ%TVVbßşıbæImlØ°W¢#ÁáğÆG‡[Œ€¿ÿn0Ìßò///¯ßq!:Ş½µqñâ*ïËÎ~…^½{KìRRRèÛ·B/…BYI	C‡å;E:tè PxL\'NÇıû1eê4¬\\µªIm#\Z†’’ş(Ä AƒĞªU+Œ1?\n \'ç-šÉËÃ…ôÖÖ–è{tîÜYd¹£¼¼ÎÎN¨¬¬¤¢„†RÒ›7oĞ«Wï&×ş—Œ___<MKã#Xär¹(..ƒÉÚşû+í“8‡™.ÎÈËËã‹¬lÇÇ–­[›íDd±XFRRtúô´ŒÊÊÊà0m\ZZµj…³çÎA[[İºuƒ••?y‚[·naôèÑÿ¸”ÈWº}‡ FÃ¾ı~ëòÛàé]µjÅ#òkpŒ„„»°±±•8œUVV†£²²ªYÅ„ÚÚZ:x\'NÇì9sàááÑì‰WT\\Œ˜˜«˜2e\n\0¨Ûˆ# #+‹ÇõÜà\rMlìMTUW¡W¯^-n\ZhlÙÙÙ	>ß¤\0ƒ¬œ\\“àOmm-BCCÁb±Ğ¹sg¤¥¥án|<444¨{{÷î®_¿®]»BJJ\n‘‘‘HMMÅ£‡ñ<ã9¾}Ë§êß\0¯\\tíÚ5´k×ï·zøğ!¡¦¦&4ò)**ÂÚ5«…~B>}úˆ)SşnQxß`?~ü@@@\0|}vña!L&K—-‡»»‡Xë‹Á`àÓ§O8x`?>å~Æ!C€›±7Ñ½{w<}úªªªhÛ¶-ºuëŠİ~>n1â·õ–ùò3(mr&“‰7I$xù¯;6ÀãÖNOOÇ—¼<Ş	Äá  °\0#$Şõ444 ¤¤ŒcAGÑ¾CÇ&é*++áçç‡Ğ‹°pñÌ=G(\"_ZZŠ´´4´jÕŠrúcGñøñcäÿÊÊ\nÈÈÈÀÜÜÚ}úàúõk_9—ËÅóôtÜ½{İºu—H½©ğ5**R(’M£Ñ ÕE«If”êêjÌšéÕVª<x0nŞ¸ıû÷Ku:fdd`ÓÆ\r˜æ0\r22²ø{Êd¤$\'CQQ	9998sú¢¢£0jÔ((++#++^›6`ÌK\n©©©‹³ -##”ö–ÅbáÌ™ÓMFE„Ìpt”3hl>ÀÒ¥K‘”˜ğó„£ÓApğp\0lmmÅ®¾ĞéthkkC£sg?„¢âb¤>ylÙ²RL&?ÈÈªá\'*2ƒæ‹ÖÂÂÂp\'.]´´$:°\Zd\Zº5ét:ÌÌÍ±hñb‰+HÍ~×ßšÉÈÈ`íÚu”‡ËEìÍ›ˆ¡†)ÊşşûoŒ;[¼6áÆBs5///D†‡a­§\'œ›D²óòòàá¾\0¦àÌéÓPPPÀÉÓg0tØ0deeÁ}Á¬^µ\n\0OŞ(úÊU:ŒO”ïı»wp;ûöîmR/[ÜM«)xƒN§ÃÀÀ@dYŠÃá@Q·¨äååQWW‡S\'OàÅ‹ÔIÀ£Õ¡S§§«Û<ìÙ»AAÇsí:jª«qäÈêwc³9|ìÅ‹(**Bÿş|âcû5JÓÓ7ºiÓh4˜Ú¢Øïß¿cÏ¸¹ÎÅÇø”:†·ÀÕk×aŞŒÌMSfee…M›¼v	ÉÉ÷——:GÁâÅ‹qÿş}8;ñ$¤\Z§TÑÑÑØ±İßò¿5™æ5eaaaˆ¿s‡/ºYµjõÁR~»c<º­Û¼ù„ì¶löBff¦ä!ƒå+V SgM¬[»‰‰‰|!ÚªU+w+[½·cÒ$ûf£‰Ûqwrá\"Š‹‹áææJi ûûûãñ“Tìö÷§NKK¾¾¾X±rÅÚÀQvâÄqØÛOBll¬Äbô\0µuÕê5’’âÛˆÚ´iË±âwKq¸´iÓ½z÷†O}¸*l±4ŞH:uê\'\'gDGE¢®®N(ˆ¡Ã†cåªU¨ªª*‚ --%K–€ñyCßø¬Y³$ŠÔjjjpóæMLœh‡S\'O‚Íæ¹ÒëÅ•«Vc—X\r,>|À¦M›pòäIMÔvüxx®ß\0\Z†”ädJd‘Á`ÀĞĞsæğ¢>Ë±V3h\\\\6{m‚µ\r6nÜ$Ñ†•‘Á“Õm\\Ü¹Ë§E`ßæØ\0`mckkêàr¹X³fµÄ*\"\0O#((¦ƒaÉâEHO†‚‚,ôğÀ£‡á¿g/ÆŠáRRRPSSƒ®®./Y‚€€#Ø·o/ê8eddĞ¦M¾*\'\'‡3fàì¹ó004¢Ô)9Š‹Š°jå\n¬\\±ÏŸ?—ø{M›6\rë7 M}NG§Ó1ÎÚ\Z\'N”(§c³9èĞ¡Ö¯ß€ˆ\Zúşº¸Û¶k:êêjçûşı;®Å\\Åßÿ\r---Œ±´ÄéÓ§„*ôïßF]00˜˜ôÇñ\'E¶ÿjéééX¾|9V¯Z‰Ò’’F§4†ÆÆ8w>Ó§O›ĞO]]jjj8|ğ\0.^¼(ğï“&Ùcõšµ ÑhØ´i#¶mÛ†;wî 44Vc-1v¬Ö­[ƒ””¬ZÉÓo“ô”-**ÂÊ•+øÄ&L°kÍ¶Ô˜êÂt:K–.Åƒ¨æö>`ÏlÜ¸Iâœ¢}ûöØ¶ÍK–,ãŒhß¡JŠ‹qäh ú÷o™¼kçÎ±ÿ,X°\0=zôÉË­¯¯€€\0DDD`·Ÿ/•w³ÙlÄÇßÁİ»ñp˜>öööbÏû2ØÛÛcÔ¨QøñãdddĞ±cÇ!°ïß¿‡.Z„¥‹añ’¥Í*£VUUQŞ¯NÿàÁ\0¼„„»““ÃË/““#”ÛÚÌÌ}ûöE~~>h4\Z:tè v^ıöí[\\ºt	B‚ù†L\Z†_V®\\ñ&HÒKKKÃÃÃåååğõÙ…¶mÛ\nLN›6\ruuuğßí‡K¡‘ñü9ºuë†={÷ÂÜ|¤¤¤––÷ù01€4ÄÄŠ¦8øùùáë—/è×Q]‹/şcÄ$ôÄ@©S0têKFEF\"44´Å¨û={xax=ssNİ»wÃÏÏ÷îİĞ––——‡››®_¿Şìç+))ÁÉÉ	¡—.côè1`2™”)‡ÃAğù³°›0`e***èÚµ«Ø£‰ÂŒËå…¬S¦üÕ±ÿ^g•n„Ls¹\\$&&@[[²²²c—/]‚‚‚\"N<Y‘d€Ëå\"66¶É{““ƒ––ºté\"–S¿ÿû÷íÃ$»	¸P/nßPÏg2™°k…K—Ã0}ÆŒª2,]ºMM±rÅr¡2ËNNNX¸pOÕsÄlß±# %%…ÌÌLÌå‚={cûO.ãZÌ>àÏÇÇ÷·×Æ……gÜ.\\¸ÀÏ©§KRRRZt­øøx²|Ù22Ù~™<Ù|øğ¡É×?}=]2mÚ4b ¯G/^DòóóˆÖ¯_/Ñ}ÔÕÕ‘¸¸8bccÍG”×À«¥§«Cöøû“×€Åµ¢¢‚èëé’={öB9~ü8ÑÓÕ!555‘¢¡>Ñ×Ó!………„Íf>ÚÄÉÉ‘ÄÄÄÈÈH²bùrbdh@?~L!äáÃ‡¤¯±ùøñ#yıú5éklDHmm-©©©!555Ä×Ç‡\Zè‹MNÑ”½zõŠøûï¦H\Z(‚†úµ1~¼-‰¿s‡ÔÕÕı¶gVXXH&ŒOôuINÎ[¡wÄØÈœ<q‚p¹\\Š-ÔrÌòõëW‰?3))I€õòåËÿ\nÙÃo/w	3mmmäççãu6O®„\0¸zõ\nÆXZ¢U«V+W,Ç‰“§`ffû÷#>şF% €{Û¶lËÌYø«kW¸»»ÃÕÕ\r7oÜÄ¡C‡ §§‡víÚÁ` ::\ZjjjHtMMM“Qt:ıõÆµ‚ºz\'$%&‚Á`ğ9¦§§#44ùùùPTT‚ššÚ?\ZÅkŞ½~ı:::ĞÕÕEnn.\0`ô˜1`0èÜ¹3êêØPRâi2ËÊÊâ[~>ªªªqçN=}\nÎ\ZX½z\rÕ£]TT„ÂÂB˜››ãÙ³g¼2ÕŒ••¥òæ6mÛâÛ×oè¨®.1uSuu5>}Š£G`ÛÖ-xöìßH*ƒÁ€´ŒÖ¬óÄŠ+Ñ»wïßÚ\"//SSS„#)1	cÆŒáCµi4\ZŒŒŒPÇfãHÀ!äÿ-[¼\0‡„@CCC¢Ï{ûö\rœùòêÉSş†««ë\rÁ©ïó»ZJ›³ÒÒR¸ºÎEVf&¥ÂĞ½G«é½ºº\Zvvv8p`?ºwç	°¿|ù3¦; g¯ŞØ³g•#?yò®sç`È¡ğõóÃ©S§ ««SSS”——ÃİİÏÓŸB­uhjjBUUŞŞÛùr§W¯^!::\Z«êË_ÍÙ·oßpıúuìÙí\ZÎ25äŠ†FF˜8qLLLş±ÎVc¯Æ\\n¿¾¦ñvãE,lq5\\“ÃáPU\0a¯!\\.bnP_¾|Á£‡ôôgD\r\\.+V®„¥åX‰¤•+ÊËQT\\ŒÊÊJHKKCUUµÙƒâùóçpqv„‰É\0ìö÷\Zâ/Z´÷’a`hˆ7IÜ9YPP€™3]ğéÃJFßÀ¿]iö?wì†œj¼­\rµ†·À;›íæJHH@dDöìİË÷÷OŸ>ÅLgtì¨Ã Óéokƒî=z 00jjjD×®])uÆØØ›	³‹¤¥¥Ñ¯_?>”³ºº\Znnnxš–ŠANN\\G¬Åœ——‡ØØXøïöƒN§&\ZŠA§ƒC¸˜:ÕÃ†\rƒ¶¶öŸÏ·şe+**BVf&âïŞEèÅñës`JIaá¢E5j´D]~~>\"\"ÂqøĞ!B0ÎÚ\Z:tár!%-\r---2¤É|øîİ»X¾l)llm±~ı¾(*!!‹yÀ|È0lÙ²E¢ˆà5K­\\¹I‰‰ÔF)++‹°ğ‰fÌÿ¿rl\0xôè\\çÌæŸæ0+W®‰”oßîNêà,Dû(++Ó¦‚Ãá@µU+htÒ€¯/>×sGÙÙÙ\0®\\¹‚‹.àÜùóB?+00Gà»ÛÃ‡Ç·oßpø06yy‰~ÿş‰‰‰8uò$>Îm’ÓLNN\'ÙÃÔÔ={ö[‰ñÍòóóñúõkÜ¿áa¨ªªäc,m\\ÛÖìÒÎÎ.077—øûæääÀÑqª**°Ñk3†\rÆç|,¥¥¥hÛ¶­H\0/ìòeìØ±sæÌÅ¼ùóğØh=×­ÅĞaÃáåå%1PÆf³±cÇ\\¾Ê7 râä©énÿO–»š²şıûcË6olÜ°l6B‚Ñ¦uk‘üËUUÕÈÌŞàòèáCÌptÄ§O¹HJLÀ¡Cùr\"üøñƒ*ßìÜ±Ó§Oz­àè‘\0LŸáHQ.)++ãÑãG(**»¾Ü®];ØÛÛcôèÑxúô)®DGãÖ­X*œåıá\rƒœ=s\ZçÏ¡ˆ€Ş½{C]]]è°Ëÿ‚•––\"//¯^½Â£Gsõ\n:¥ÚøtnØGk·($­­­Å¦MQQ^¨è+B¹î”””Äºö${{|ÿşAAT´°y³ÆŒ±Ä:OÏ¡ğÇ‚‚vù_—Üö;ÿu§şO\0lmmQğı;ØO)M<x\0ÊÊÊ˜Ò9º¡¡!¶{oÅ]Ë±Öˆã,22QÑQ¸té2ª««±kçN=B5–0ÈËËãÛ·o(//ÇÒ¥KPQQ	õ§÷¯§ì’Å‹Ğ­[w¸ººò/ÚÚÚøøñ£ÄÃ\0ÊÊÊ:t(ÌÍÍñîİ|Ü»—„ğğp|¬/‡5vr\0¸s×¯ÅÔ—ÁT1dÈèêé¡[·nèØ±#Zµj%q+ã?µŠŠ\nãË—/x—“ƒ/^ 1)¥%ü’¿ìú™ï†ñS\0è¢¥…I“&ağ`3tíÚõbùùùÈ|ñË–¯pê’’”••Éd¢C‡b}Î¼ùóQÆbaãÆ\r ÓépttÂüÄW´ldçÏŸÇ‘#|eÃ¥K—ÁÊÊê?Ùx™ÿÕïââ‚‚ÂB„Ô×/Ùl6¶o÷†¼‚<¬­m^?lØ0ìöóÅÒ¥‹±jõZèèèàÁƒ\n<Šë7n‚Á`@AAë×£}‡8°òóó±téR¨««#::\Z;wìÀ»œ;v\\ §c³ÙğóóEmM\r¶y{ìØ::ºÈÊÊjñîK§ÓÑ½{wtïŞöö“‘””DGGá{~>Ÿ“7Xqq¢££påJ4å@ZZZè££---hhh mÛ¶PUU…’’%a+--İ$øõK©l6›\"7¬ªª‹ÅBII1¾/@ŞçÏøğñ#22#÷Ó\'±	;vT‡µ\r\r\Z„={ş6ºdiiiú*KƒâÄ‰8î,zöê…NêP[W‹yóæC___äõX,ªªªÀ Ó±hÉ8;»´è¾\"\"\"àë³«‘S3àèäG\'§ÿ,¢ú×sì_‘îM›6âÆõë|á‹¯ŸĞÉ¦Òºòr\0 }‡ZŠ¸tévîØ[·°ÀBÿ×Şu‡5‘}Ñ3I+ ØÖ‚‚º*»¨k+öUQT,Ø®\"M±°v±‚}U,kwUD*À‚¢‹(H•&-“ùı‘dÈĞQÊ\0s¾/_ÚLòfæy÷İwï¹K!àóáæáY¨JÅ™3gàáî\nGGçB¥Œ‚ƒƒqúô)lÙ²µ\\ÏAjj*\"##ñôéSÜòˆ&m~v~ÒŠD\"Ô­[Í›·€²²2\Z5nÅºŠP¨[rrràKHGJTJ³23ñ#ó¾\'GRR>BNNN‘*F@‘\'i‡ˆ¢Ğ£gOèëFÏ=Ñ®]»\nñşŠD\",Z´ÂìÙ³\r[Ûµ\rÅÂEf˜3g¶oßß£GpñÒå\"—å>şk„‡…a£«\0@AAºººÚ^œn^~QL>Ÿ±cÇÁÁÑñ§3Úª=±¥ÛjÍ\Z<|Ä ÷f¯-´[‰‰‰‡‚‚ºtéR¬7ıÎ;°´0I’¨SGö022*°]XXfÏÄèÑc°nıúBÍ¸÷ïßcÁ|S\\½vı§LµÒ ;;±±±ˆˆˆÀ«—/ñøñc„…….,ê’É’½´k¥²¿UÜïæ8ìÜ¹3z÷îƒ®ÚÚhß¾=š5kV)Š/?~„Ñ¸qod„sçÎ¢œş6nîî´wûÊ•+pt°ÇæÍ^Œi›¬WÜ|å\n\0|B¯^½••…“\'Oàè‘£004„¶vWÔU¨‹¯11¸wï,--„Ò^¿~ÖVk¤Ö<®®®•^ÔuÄ/$ÂÜÜÏCBÊ]èıùóç˜=Ë<£Gâ¦¦¦bÆŒéHOKÃÙsç¬©ÇÆÆb×®ˆˆˆ@Xh(®\\½Væ`…_±hğåK4>F~DÄû÷Ehhh¡#ki‰ZÜ 0K K—.ø½shjj¢mÛ6hÑ¢e‰^çŠDHHÌ-DvVÆÁÂÂ’öŒ‡„„`á‚ùÈÎÎÆ›·\n¨Øaù²¥èÓ·¬­­,A½{÷ŞŞŞxô\0\0HÎa5uœ=wJ’TÙk×®ÂÆÚšQUFW¯76oöB£FªÜ¹É\nbâE}ó•+ñêÕË<róùp÷ôüeÁ÷?ÂÚÊ\nï0ÒÀË—/§…ÜÜ\\ñ÷™ÓØïs=%Õ<dçİææ+(‰1gƒfvv6RSS‘œœŒÄÄDÄÇÇ#>>			HLL@B|’’’””ˆ¤¤¤\"GnŠ¢ ¬¬ee(++Cµ‰*TTT¡ªª\n555¨ªªBUE••Q¿~ı*5+‹rè¥§§CMM\rA \'\'çÏŸ‡‡»”UTàíı£@CZZ\ZÎıŞÛ·A]½öíß_¤™NQŞ¿ÿşû?~ü@£FhŸÇÃåË—ao·–vJ«ÉlÙ²¥\\Fk±¥^Oó•\r\reŒÜëÖoÀøRHø–tãpssÃİ;·A’\"8x)))°Z³\Z+VšÃÄÄ¤P“ÍÂ|%4ÚµCÄ»wàñxX¶ly©Ë¢Vrssé‡t9Q¶t¯ÔcÍçó! \'\'G?ª+¾}û†­[·âæë3v,–.]ÆXöìœñ%ú3æÌ‡™3gştPĞÙ³g±aı:†:j÷=àåµå§y+l«äøíÛ7jæÌ™”v×ÎŒày??¿B«W–ÙÙÙÔë×¯)SÓyTîİ(í®](+«5…n›ššJıñÇPêÏ?§Q©©©Ô£G¨iS§RîîîöàÇÔˆ#¨îİ´©óçÏSB¡ş.11‘Ú¹sÕ³GwÊĞĞ€zòäÉOÿI’ÔáC‡IÚ]»PsLL¨øøxÖ°ñbÅÅÅQ¦¦ó™?İ´»R;wî 3˜~5;ÊÇÇ‡êŞM›25GEFFØæèÑ£TÏİ©§OŸÒŸ¥§§—©œ+‡ÊÁ…¨=ºSèÏ‚‚‚¨¾}zS=»w£|||~éºeeeQÛ·m+@êÅ‹Í¨ÄÄDVV™â²HNNÆ:ggÜ¹ó/CIcÂÄÉ°´´,—å”GaÁ|SZ~iÌ˜±hÔ¨¾|ù‚1£GaÌØqØ°aÃOıöë×¯ñèÑ#¼{÷EACCzzzĞÖÖ®”ì6Cê¯(¯ì-’$ame…û÷àsà nİº…c¾GÑ¡c\'¬µµE—.]~ú·SRR°yó&\\¼p!¯òù>r$ìíXÈZbâpËM›<qÁßŸ±¤Ğ·_?899—¨#]\ZÄÆÆâèÑ£8uò89xxnÂÃ‡A¸zå\nŸ8YfxVV8€ı{÷ĞKT²KFÓşœ%K–°¶CTRRR„G‚ı9\ZõêÕƒv·n8p 455ù÷?}ú„ñcÇ€dÒY[Û`Üøñ¿TÉ#::\Zxúä	c)vò”©°°°¨ôÀ\ZCl©xï=8xğ\0ÃaÑ´i3lİ¶;w)—ÿyùò%vîØ\'Oş’$1}ÆX[Û”yäpwwÇ™Ó§\n(µH!0xğxxz²ÎÓ\\Qxıú5ììlé·b‰ Ğ\nªVÖ6˜>}úOàÑÑÑğõõÅé“\'0vüxÌ;ï§ª½æïË—-+PÁsá¢EX°`!ë•\"´ğ+ĞÕÓC£Æñ0(ˆîééé8wî,45µÊ¥b†ºº:F‰:\"44ƒ‚ğ#3­Zµ*u–O`` 6oò,’Ô€x]8**\n-[şV¤NzMBTT&N0BRRÃ;/-×KQ£aÃFe®¹•’’‚7n`Á|S„¾z…9óæAQQ	Ã†\rû%3ÿÚµkX²ØŒ.2)•j²µ³Çœ9sË]¼V[jÆvíÚí55é)i¹uó&rüş{ç_V\'áóùĞĞĞÀ¨Q£¡¢¢Š½{vãØ1?(«¨ U«VÅ°\"‘^^^øôñc‰!E!ê¿(L˜8±Ø6\'$$àãÇ\0Àj³¯¸sâââ‚ÈÈÅ\n+ŠD\"bäÈÒ)ê¤¥¥áöíÛ˜o:wşı#\r±eËVàû÷ï°]»Ã†/sÅ–?~ÀÇg?<ÜİhÓ[\Z¿}»7FSmÎ=ëMñÂL$ó•+ÀdòÇXµju¹F…}úô	~~~8î,TUU±{ÏŞ\"­ƒäädĞ¿Tåk¥Ó‰â¢Øîİ½‹•+W@$\"¡ªª[;;6			¸ví\ZcÔàñx…&eHŠ»a–´Maí–’‘ÿF\ZU¨UóéÓ\'Œ7¶PÉâÂnª+VšÃÔÔ´Øíâããa2{6ââb1pĞ`˜˜Ì†v¾‚¾¾¾¸àï£¾¾¥cGEEaÓ¦M¸w—!<(òm+“Œ2+,İê6\nhkkÃ×ï\\]7\"ğş}IB’Äí[·ğ(8^[¶–[eao„\0\0 \0IDATdX›6m`ooCCClöôDzzz‘ÛæääĞ2E¥EQ…ÒÓÓ±|ù2LŸ1+V¬@VVşüs\ZZ´hMMM?DP` „(\n4Éd­)y‹³JÚ¦¤}ø|>äää\n­A¢¿úêmúUUUxxz\"#=ºzz…šÅ³fÍÂ£G°{÷.¬ZµºÄÿ~ğà›-bÜä>\n›µÅWäFìrFFF:Ÿıûè9­4ªjÙòåøóÏéå\ZˆŸ™™	W¤9‘‘1£G#!!¡Tä&ÿŞ¹[h´R\\\\F†¿Ï¥õİÜÜ\\-[¶\"++iii Ş¿‡™Ù\"Ø;8B__Ÿ&†ŸŸğÁ™¿ÏBEE¥Ğì,ÿóç±c‡7|ı£Y³f¥j·â¾}Ã½{iRñx¼BC)oİº‰Õ––´ZN±–\0A oÿØ-‘·úU|ü‰I\'àô™³hß¾}‘&ı±c~Ø³{7=ÿ—ö!³ÅK`bbR.¹»PRRÂ²eË ©©‰5«WÑæ¡P(Ä_ŞŞ¦Õ.Ë%]`%¥z00…ãÇüJ4=¥õ‹Š+VRRI’ädœˆrxûöH’„‚‚a&%¸ªª\nC¢Q£FbqúfÍŠtş5VV¦·)­€„’’\"äååK5Š)+« Ô£AĞ±ØåzõêKş±Pb‡‡‡ÃÃÃÏC1Lo\0ğÚ²µ@aêª9F‰¿ÏC:ôB’$?z„iS§àôéÓÈÊÊª”¶L™2¥T¦-ÇÃÜ¹sŠìÄJJJ˜mb‚7o^çÍAy¼BÓ\"…¹¹âg!óf\"í¬¹’ï)±tŠÛ¦À>¤X‚,Æó/Eûöí¡¨¨X*SŸÇã¡9•’ÍÎÎÆ‰ãÇH™™‰\'N`úŸÓòì)C›L¯woœ÷¿PíI]#ˆ\r\0ZZZØ±c™™¨ÎáºÑ«W¯ÆÛ·o+¼\Z\Z\ZğğÜ$®ÃUHg&rlÖÚ¢{÷ÅşÖ‚ø HNNÆçèÏPRR¬òs-­êR\Z4hĞ\0k×ÚÒõÎŠ#u‡Ñ§|#wîÜÁ’Å‹Œ»v3Ö³ÃÃÃaanN{½e«,]¶Û¶m/uy&Î¯$Ô¯_K–,E÷î=`ccƒ”ïÉ´äRÀ½»¸pk¬¬1~üø\nÕv600€²²2vîÜ‰!Ï@{( ½¦–-_Áƒ—ø;\Z5‚…¥%.]ºˆ¸¸x¢W/İr&iá„ËÊÊÂ­[·è2Á”ŒtğÛ7oËäL\Z5z4][(³-ÛUxxxşR”˜ºººèÔ©TTTè ’””œ?[%•TeEüÕÕ›bƒËôîİ5	Ô0ôë×gÎœÁÁƒqêä	úÎ\0›<=péÒEXZZVè…”Æ„GFFâë×¯‰DhÖ´)Újh”É¡§¬¬LëpEGGãû÷äd”/£šKVV²³³ˆ½ï…ùËN8oïí€¤j-±zÊoeĞÇX±r%´:tÀŞ½{ğß§Obç=%ş-ãY³all\\.áÁâ¹u=úS…‡b‹—\"\"Ş1Ö¦ù|>ŒgÍ‚‰Év¥[rÄ.\Zêêê°±±Aß¾}áäè€ï’’¬$I\"<,‹,Àä©Ó`ll\\¨„my@AA¿ÿş;#Ù¿¬HMMÅ«W¯ÀãñƒôŒtĞss‚ Uê%¶ììlÌŸoŠÈ@<äææ@”oÍÉÉÁÅ‹A’$/^‚á#F@Yâd\0kkk¤¦”­2ŸÏÇèÑ£¡¯¯¨¨($\'\'C^^-Z´(7BçÇ‡àë{şçÏ3\"Ş¤£´ƒ£#ˆš\nAM=0‚ 0xğ`œùû,;†Ã‡ÒU9„$‰Ó§Nâô©“Xµz\rÆŒÃ\Zå‹üeK—Ğj¢\0°rù2†y/’Œ¤¥A:u0|ølõBn®8ÃJDQŒ©‰P(Ä»woÑ¯ÿ\0ZH_ŠŠu‘$Ñhÿ™ÑôWnt¥A||<.^¼ˆíÛÄ¢“y%y	.ÂŸşYfiÎyÆ2¨©©ÁÜÂFO^çZÔï¯Í˜<y._¾\\l\0JUYÛ½ÿ¢;fŸ>}qùÊU\\¹zW®^ÇÕë7°k÷R/Ù³gcş‚E İ­;:Ì vİºuÑ½Gtè Uèo¤ˆ•×955şşş?n,¼·o£¯¯Ô9¦×»=ŠeË–ÕxR×è;?ttt°k×.\\¿~Nàóy´y{;[hjiaÑ\"3ôë×¯\\9åAƒÁÁÑ	]6@H’´V›ìœeˆ#‹-B\\\\2ÒÓÔ\'FFX-®kFz:b÷î]øôñc³[NNNN>|Dµ\r6áFì ¤¤„‰\'âú›05O‹êKMİ7¯_cõ*K,\\¸·oßFFF+Ú=iÒ$¬ßà‚víÚˆëÎ-\",µ$‡–\r¾§¤`ïŞ½¾2dB=cÍñ†ôôtÜ¸qóLçÁÚj\r>¼¡PHWåóùXd¶—ÿ¹‚qãÆ×*R×ª[Í›7ÇŠ•+ahhˆ¿vìÀoË”©âÅó¬²|‰;ÂÄdúõëWå’²cÆŒÁèÑ£ËM}¥nİºğòòÂ¤I¡¦¦F,\0ÌgŠk×®\Z^•HJJBPP<€È#´´Ğá„‰“1}úô:à±k	4ó]xq¶ ‰	Ûµ6h¢¦ùóçcàÀ¿\\×úWP©…$)©¿ÏDÍÈ(²¶\r6Äñã\'0ì¡PUUex‰§L™‚Å‹£_¿~ÏuBB‚8R­’å¢££€ıû÷!9)$Y°,ï°á#0ÓØİ»w¯õòS¼Ú|ğgÎœAÀ½»tğ«Ö­¡?x(|>\n)\nó®]`0b8¶mİŠ°°°bÅ*Íš5Ãà!CñãÇæÜ|à@4oÑ¢ÄpQ555\\şç\n–.YŒ¨¨(Æˆnccƒƒ0bß!\'\'WªTÌ_Enn.^¾|	///Œ24€‡»âã!2å”uõôpèÈQ¸{x GµÔ@5Îî*`”¡Cöfï¾}ĞÑé…§OŸâÌéÓ¸yó#RIê€bìØqĞÑÑ©ò\0‡œœ¤¦¦ğö&%%AAA¡TÀ¸¸8Ô«W¯À¶qqqPUUexŞãââ ¬¬üËÂEáÛ·oxúô).^¸€‡ƒ\0Š™¯Î¶têDz÷éƒ={öVX{8bWP{{\\ºx¤H>£	á¼n}·\'Iaaa¸páş>}\nÄŸÓó9‚\0ÏIŠ0gî<èëë£cÇU^³©º\"--\r¯_¿Æİ»wá{ôˆdÕBT Î6EQ˜>c^¾xĞĞPPŸsKÌ™;—;‘µ™Ø<À²¥KâˆW¯]/°”$Edd$nß¾ƒ|™™ÉpØH÷\'­Û´ÁØ±ã §§‡víÚq$/™ß¿G‚áŞ11_XH<˜Ğ\r\Z6Âœ9s1dÈ´mÛÏŸ?ÇœÙ³è\\o>ŸsçıkLGìŸèLÓ¦NÅçÏâPL@\0G§Ryñøñc\\ğ÷›ˆ\0c—­İºM@WWLòŸ-)SÓ˜˜ˆ÷ï#ğøñÿğÏåËˆ‰ùZìy8HãÆC¯^½\nœÃM›<áçëRâ@Ô<Û¶m«bƒ±ËûöíÅÎ;èÎĞ½{ì÷ñ)“pnn.\"\"\"€S§N\"9)\"s¤‘íœòòò5j4tõôĞ¡C4oŞœ50Œôt|ùúoŞ¼Áÿ?†¿ÿy†nZ~Ë‡Gh¢®©S§aÀ€ĞÔÔ,rîœ€qcÇ --¾I»{xÂÀÀ€#vm\"ö»wï0eò$Fr½ß±ãe–½•Å÷ïß\ZŠ»÷îáä‰ãàóùt8£,¤æ:(\nm5Ú¡ÿ€èÚµ+Úih@½iÓRK³İw‘’’‚ØØXDFFâåË—xpÿ>>¢¿Ïóß\0	r˜2u\Zô\rÂï;—ú|Ü¸qVkVC(‚ Ô¯_/]®a£±!NnX¾|9Ü‡H$ŸÏÇœ¹ó`aaQnÿğğpâìßg@\n…Œ´ÇZRĞ^YY½ûôE§N ¡¡æÍ›CYY\r\ZÔŸÏNOonn.ÒÒÒ˜€/_¿\"22¯ÃÃñğaÒÒÒh\"¦*]w¯[WF&¢ÿşèØ±ãO‘‘\naai‰»wş¥¯ëŒ™Æ°¶¶æˆ]ôêÕ«XkcMßÙ++ÃßÿB…Í}¥sÉ§OŸâÎ;x\'Qp)ª³ÓÉ6ò\n\nèÑSZZZø­eK¨7m\nUUU4lØJJJPTTD:u*lÍV$!\'\'?~ü@zz:RRR˜€ØØXü…ˆwïüP–ĞåŒŠ:6A@DQèÒUúúúĞÑÑA»víJ¥#^\"##1Áh<£ÆÛÁCG\nÔ;çˆ]Ã1£GÑ•6oöÂ°áÃ+åÿ333ñåË¼}ûÏ=Ãİ»wOä\'ƒ”ÒËGAAmÛŠGvÕ&MĞ¸Q#4hØõêÕƒ’’äåå!_§rryÓ\0sX(\"77999ÈÊÊBFF22Ò‘’’Š¤¤$ÄÇÇ#&æ+\"?|@nnn6Öæ¼™\0±5Ò¢EK4=zô€––š7oN1–\'>Œ­[¼ $I:áÈ‘£µÆ—Q+‰íéé‰c~yŞÓ!CÿÀ–-[ªÌ{šššŠ˜˜DFF\"<<!!!xñü9Mô/šéeŸFªvé:@!ÛŠ»%QW¡\nUY‘†ßŠÿ› Gy]==tëÖ:uBÛ¶mÑ¬Y³JYöËÈÈÀ¬YÆˆT7ğùXme\rcccØ5!!!˜k2›±ŞyŞÿB¹Ôû*/dgg‹«QÂÑÑv00Ñ™ÚWÌçrï27ü£³¢¢\"š7oßZµ‚––Úµk‡–-[¢iÓ¦hÜ¸q•¬{ò¿ÿaş|Ó¼ø>/^ª0•6£FÇàeffÂİİGğù°°\\Å*Râå0555„¿§?ãñx?Ş¦óç#99ñññøöíbccó1_¿\"êóg¤¦¤Hö(m™¡Â¶•’¸qãÆhÕº5Z¶l‰ääïxH(+«`×îİhÚ´i¹é€—zéêbê´i8uò¤x¾MQğöŞM›6×ºµí\ZMl¼}ó†)n£¡Éío¶áÚµ«8}êT^M,\0K–.E³fÍ\nŒ8EÑsã¬¬,dff2RÁÂÜÜ\\…¹ …$mâó|êÔ©ù:u P·.S^·n]Ô•¼———‡¼¼<RSSal<##AQbb¾âßÛ·a<këÎãüùpîìYzÉñßÛ·q÷îİ\Z¡Î™â×\Z3zT¾$ıèİ»7ëÚ\ZƒÃ‡Ñ¤Øèê†Ñ£G³¦OŸ>…é¼¹´™Ëçóqâä©\n×0ûüóÏ?°³]K¯€4lØ/]®UÑ52m“¢(ìÚµ“~Ïçó1qÒdV’š¢(ìÜ¹“Np†F9’UíÔÑÑÁl“9´IKQÜİÜ*­ÊJY0räHôë×Ÿ>§iii8|øp­\Z±k$±píêUzNH‰(,X°€•m½{÷.._ºÈÈo¶´´de\nâÜ¹s¡®Ş”®´òòåœ;w}óK\0æŒL½£GáÅ‹±«+RRR°ÑÅ…6ºŞÅ¥Âô«‰‰‰pp°—	¬ÀÉÉ­[·få¹mÜ¸1œœéQ[(ÂÃİ\r>|`][µ´´°bÅJº­\"VZ±KãÇáÛ·XÚ¬í©£ƒQ£F±²­ûöíEZj*İV]==Œ7Õç·ÿş˜2u*Ã$ßäéY¦Â~•…©Ó¦á·ßZÑFxØ+øûûsÄ®nxóæ\röìÙÍ(å²zõšB«TV5‚ƒƒó–e$mµ²²fe[ócáÂEPRR¢	ü—/_f];ë×¯;{{C\\¤ñóçÏ±«rssáåµ™¡)=ÁBVzmSRRàììÄˆm^µz\r455«Å¹nÒ¤	6¸ld˜äN¬$Lß¾}1aâDÆ:ö¿ş*}Ç›¥¸~ı\Zş÷ø1í0kÒDµá„GAÌ×¯´	Ş¹sWº¶vuÁ!C`8j4ø2*Û¶m«‘ÃŸ±0(J$™k‹pıú5ÜàˆÍv|ûö\rÎNN‡™½}¹d•7BBBpĞg?Ã_kk[ííy<–/_Jr\"‘·oİÄÍ›7X×ÖfÍšaƒ‹+½Ò@’$œ×9#99™#6›áã³¹¹¹ô8|ø\Z4ˆuíÌÈÈ€‹‹âÊçó±dé2téÒ¥Z÷æÍ›ÃÕÍ6sI’„½bccY×VCCCèêéÑkÛI‰‰ğóóãˆÍV<yògNŸÎ,]¶Œ•±Á\'Ç‡ˆwtˆkë6m0sæÌj}ş\r0H0M˜ÜÜìÜ¹lh¬S§,-W1Ö¶}öïCXX(Gl¶áÇpssc¬¯±²fe6Ïë×¯ñ×_ŞyYf<œœœª½’©@ ÀªU«è÷$)Â¥‹pïëÚÚ©S\'˜-^ÂXªóôôDvv6Gl6áÜ¹sŒ°]{MLdY­)@\\ÓÍÕ•á±Ÿ=g.ttzÕˆNÔºukØ;82æ°vövHüÉ:Ú‰3f0¢ç^<ÎÊ¥ºZKìOŸ>a“§#ÏzíÚµ¬TÌ8wî^¾|A{ìÕÕ›bn\r·722B¯^ºyñÙ©©ğñña];6lG\'\'ÆRİ:g\'|ùò…#vUC$açŒpê´ièÕ‹}#à‡àáîÊÈŠrrvf¥ÇşWç°VÖÖŒ9ì‰ãÇğ(8˜umíß¿?ÆŒK/Õ\0vïŞš”èX-‰}ïŞ=Ü¼yC2rrr05Ïºvæææb“§\'--Äçó1yÊTôïß¿F:l´´´°jõ\Zd¼äëÖ­Cjj*«ÚI/YBL\"._ºˆÀÀ@ØU…ääd¬_¿NfÍZ\0gçuPWWg][/_¾Œàà‡´	®¤¤„E‹¡&còäÉèÔ¹³XZ™¢ğåK49Âºv¶hÑNNÎ¿€‹ËÖİ„j\r±ıüü”˜ÈHœÉÂÊŸ?†“£„d	¾Áec•Wæ¬h(**ÂÖÖ„ÄÌ•.+=şœum3v,ºuïNûb¾~Å±cÇ8bW6ÂÃÃá³#jkÕªÕU&WH’„÷öíâ7”8JËpÔh2µ]»vÅb™e%‘H„\r6 ##ƒUí”——‡•Ó/°g÷.¼yó†#ve!\'\'›7mb8ÌÌÌ£cÇ¬këÍ›7ó|\0’Ï–/_Î*á¿ŠÆLcc´nÓ†V9ıñ\'Od];;wîÓùkÛ^^›‘““Ã»2påÊ<{ö”±d4ƒ…Q[±±±°·³ÍópusGóæÍQ›P¿~}8:8æ-+‘$¼·oÃë×¯Y×ÖY³fAYE…^ÛşßãÇ¸ví\ZGìÊ ‹£ƒ=cÉÈŞÁ\r6dU;¥úe²qëƒô×Úê½tu1ÛÄ„©“æîÆºH¯ÆÃÑÑ‰‘·mogËÊ˜÷\ZEì}ûöÑó ÃQ0`\0ëÚpï.]¼Àˆ[g«~YeaîÜyhÒDéuîÜYÖµS__#\r$Ó%q$ã¾}û8bW?~Œsgÿfäù.]º”uóÕÄÄD8::2âÖíkeŠü£¡óºuŒH/w77DFF²‹<–.]F¿\'IçÎş`ØT{bg¤§ÃÅeƒ,kmíğÛo¿±®­>>>øş=™6Á{õÒ…‘‘8\0À¤ÉS\n8¨Ø¦“ÖªU+ØÚÙ3×¶7l@zz:GìòÄ™¿ÿÆŸ>ÑI~ÿ•dyôèN?ÆX†[ceU-ôË*fffPPP MòÀpåÊÖµÓÈÈ~ÿöæş…S§NqÄ./DFFbë/†*Š••5ë”FRSS±nsUÁçÃrÕjtèĞc³š4i‚®®“ÜÁŞÑÑÑ¬j§‚‚lllè8rRâÍˆˆàˆı« IıåÍX³1Ó=zô`][9‚/ÑÑ´	Ş©sçj§_VY:ô\Z2tÒ¼½·³N\'­[·î˜=‡YõdÛÖ­ôªGìŸÄÿÅÿ¥×¬X™æøâÅsÈ	gkkWk‹­—ØÙx<,_¾‚¡“vãúuÜºu‹um51™ƒú\r\ZäMàÆë±IIIØ°a=Ãw^·u1Ö…é—™™-F×®]9ƒ-Z`£«C\'ÍÑÁß¾}cU;UTTàì¼ÑÎuÎÎˆ‹‹ãˆı³¦í÷ïßiÓ¶o¿ş>|8ëNÜ©S§ñö-C¿ŒeeÙCCC8N¾ÈÊÊÄî]»X—=dÈ:T¦YğñÙÏ»¬xõê:È0m-,,Xàñúõklß¶UF½…GGÔ¯_Ÿcm) ÖI[-ãSÁßÿ<îß¿Ïªvòù|¬X±’÷\'I§OÂ“\'O8b—ÙÙÙØ¼y-ìÎçó±lùrhii±ê„eggÃİİáØ›5Û½tu9Æ–mÛ¶…½cÍØÉÉIII¬kçj+k†x„«ëFÖeª±–Ø—/]Â‹çÏ!‰MÛ-ZbÚ´?YwÂÎ;‹!!´cOYEóæ™rLı	¡§Cë›:i“&M‚f‡ôÚväû÷8{ö,«Ï-A±`bóõëWŒA×SØ¹k7ë$„\"##1Áh<#nÇÎ]¬Œ[¯.xûö-¦N™Ì¨c¶oÿèéé±ªOŸ>…é¼¹ŒD¤óş ¡¡ÁØEaÏîİŒ$1cÆ¢_¿~¬:Q¹¹¹ğÚÌ,ú7qÒdÔ¿ˆ:ÀÒr•Œ©+‚³“ë$Šttt0}ÆLæÚ6Kk•±‚Ø>ÄE™Œ(\0X¼d	Mt¶àÊ•+|ÀX[733ã˜Y˜2u*:têD›º_¾DÃ××—uíœ7o#,6àŞ]Ü¾}›#v~¤¥¥aÃúõ3ÌŞÁ-Z´`ÕIŠ†ƒ½cm}£«+ÔÔÔ8V–aggÏãÜ·w^¼xÁªv6iÒëÖ¯g¬m;;9²²0B•ûôéÓøú%/³KWmŒ7U\'ˆ$Ix{o§Í/i>øĞ¡pŒ,Ghkkcá\"³<SW$‚‹ûtÒ†\rÎXƒÏÈÈÀ¡ƒ9bKñş}¼·o£×‚y5k¬   ÀªtûömÜ¸~Q(½¶é—UŒgÍÂo¿µ›º…ˆ·oqúôiVµQ ÀÜÜ‚!€èç{!!!±…B!¶mÛÆ¬ee2İºucÕÉùöíl×Ú0¼à]İX7U¨)hĞ œœ:iÛ¶najhûöíana™çğ‰àîî†ÌÌÌÚMì[·náÁıû!}“9sX×ÑvïÚÅĞ/0p \r\r9V tuual<‹á}öpwgNÚ”)SĞFCƒvø½}óçÏŸ¯½ÄNHHÀz™üei’‡ŠŠ\n«.\\@@\0üıÏ3ôËV­Z]«õË*óLMª¡!!ÏXE\Z\0¨W¯lmíòI>¹â¿ÿş«Ä>|è222èQpà }:”U-))	NNLı2[{´mÛ–c]%@YYëÖ­gÆÍu#>~üÈªvêéé1$Ÿ\0`Ç_1ü1µ‚ØÏŸ?‡ŸïQF’‡¹¹9ëFAŸıŒ2B=ut8ı²JÆ Aƒ0aâÄ:il;X¸p!ääähëâæÍ¸{÷ní!vVV<==!’q˜­4·@»víXu¡?~ŒãÇ˜úeÖÖ6——çØVÉ03[Ìypÿ>®üó«Ú¨®®§|yÛÎÎNUÌRiÄ¾páÂÃ^Ñ³ÖmÚ`*Ë$„RSSáìäÄĞ/³°°äôËª4\\62Lr{{;Ö©700@Ÿ>}éµí”ïßqôèÑšOìèèhltÙ\0¡0Ïafgk‡z,Ë_öõõÅ™€™:aê´iÃªüñFŒÉˆğöŞÎŠy¬rrr°°´d¬m:x\0/_¾¬¹Ä¦(\n»víÊûCÆÆ³Ğ»OVu /^`ÿŞ=ÜÎÎÓ/«bHÅ¤×D$áúµk¬‹ÑîĞ¡ÖXY3\"ç<==ªl™®Â½V¸òÏeúKQââã°cÇ>ŸŸ¾@\0@÷ÏÏ§?ËÿàñxÌÏx<ğd¾“~/}]Ü#++®72ôË-2ƒ¶¶6Ç, eË–pqÙGG…B$	{»µĞĞĞ@ãÆ!‰Jx É¼÷$IBD’ ¥¯e>’$ı™P(„HDB(F\n… Eâ×Â\\q;„$)ÙN„Ä„ºŸ‹(\n¡¯^áÂ…˜:uj¥Ÿ³\nÍÇNMMÅäI“ó•¡gEx<@Ù3¸d÷(±áU`æáR (Ğ&­_Öº\rŸ8\r\Zp¬b	„B!ÌÍÍpï.í§‘½²Ù€…e–”-X¦~UD\"Qİ6‡+W¯¡eË–5Ç?æç‡¸¸o–¢(¤ø.YÖ‡PæQâö…Ü½)Š’yäµG6¼ÕÉÙ™#5Ë ÖI[)?¥×Œ\0ó=EQ…ÚåÚ¯Šx6y}U\0\0ğIDATFQ%yÛ6b¿}ûS&O‚œœ²³³Ü1¾G©GğŸº»2zËÚRRÏ46Æš5V“XŠ“\'OÂİÍUÆRx¿!ò¾¬˜ş$Óo\n·Åïååå!\n±cç.8°ú;33“1BJ_ö,}-ÛĞŸËŒºÒïØ–(ÂÁ\nÍ38”#©	‚à’Š9p¨àˆÍGl8pÄæÀGì²€¢¨OA ßcSi÷\'âX¾}3Jñ?ßªû\'bAW‚øBD6A1AÜ$b^9üv@¾sjXÂö…\\Ã¢ØpŒÕ5Mdf¶P›îà¹¹¹GêÔ©Ó\nÀñ|_5“<†ñÀDŠ¢¾ü©Ø]“‘±+Ò°æA”¢Î ˜oß\Z:uê´0¤„Íz¸ò¤n	ÀCò6©&#GìªA8€hÉëÙ¥Ø^ºM€ôš~‘	‚° ­EDğĞQÂ `£Ì\r®AËø»4\0pÀÍŸhb3Ô·ĞG»*>Æj7W­–‰D%ğ€»äuFqûh\r@$Ùv€ï’×é¥øŸØêx®\0ÄËƒuÛ˜Êl“Q†ß&Ù\'Ào\0NÊüA	û>(îÜ³å«áõ®Q^ñ#’gÅœ$³!Î‰D6µ`´6 *yû¢(÷\"nğ>\0ş\'sKúíÌÌÌõ’‘\0¬(ŠŠªiÇÈ™âUoy„xR\ns|–äù\"AmjÁôZÖçPR¥»ÃEìW(ÛPp¢¨İ5ñ9b³kÔÖ/Œ´Aô ™oÛš.2¯JØönû6J\ZHn’™\0æ×ÄcäˆÍüøñ£	€\\‰©]˜™e\"y£(êr-!¶–Ìëw%X=aÿCşı\nÃ^É³#EQ¿ØF9‚ |	‚ˆ\"\"‡ ˆd‚ ^±‡ ˆ~UxŒ±Ù€ºuë:ø§s\\ªQsµd:ut)¶—.W)3Z{Cì„üEQ›Ê¡u$£+ÉëÆ\0´˜\"âÂ÷ïßM+ó9b³RİW-‚ úÊtÆi2àh-\"¶’ä¹´ªz?¤/H’¼W©ûX&±ŒL+éÆ7nÜxee#Gl‚¢¨s\0µ¥føKŠ¢BÀ¡È¹„ïHú+EQ¿ª¯\r`+€±\0~—‘¨j+™JËl«MÄîJ:FØ,ÅIÉó4É(ÓÀˆZ8Z€4¾´¥LêJ_ğù|ı|£õz\0¿¥(Ê©nÂÓ(Š² (ê’dUCúùGŠ¢ü(Šê@ÖÔ_@QÔ§Š<FØì†Ôã­LÄ$ˆcÈG±r~M„G	I³~ò§¿ËüGi¤2•ó›«’}»\0°‘œÃÊ2ÁAQÔ\Z\0a’·g^QÇÈ›ıæøc\0¯eÌq©~ƒ¢¨˜Z6bËz‰µJ¸¹t–éù½ËÆ;¶ø\0u’ZI\\•ùnñ/Ã\r™×¿Uà1rÄ®šÜc!ö°Êäl¼Y—+íû“?*ózP	Û.b?¶ÏKËë9bWøA¼^)=ÆŠ¢N¢öáºÌë’Ìù9EìWÕ!ó:º†#GìR€Ÿü+óÑ™ZHjPuy«í‚°)ÂD@Wò6S$m(£E!õhŸ’ÙÍPæ»ŸòhKÄ3:KŞ’B¡Ğ¼¢‘#võéÔÃd:Ö|Ô^¸É¾&Â› ˆ’Î®A„ò\"É\0`[EÇÑq˜ ˆ¿	‚XH„Ame¾kCÄL‚ X#³ÛÁb¼Ø¬;Æªîü5\"móRÜÊ’¶Y–Çf–¥ò–²İ/ñJ•¶	À¿Œç34\'\'ç0‘KÛäÀ\Z$\'\'\0PR”Õ\0£XØüóÿı÷Ÿ¹œœœI\r>Ær…€ëòµ\Z5: ©&jñÒU7\0*ÇM‡8!ÉWş\\I–âx‚ ÆA,e¤±&™:ÄKj)\0>\0xÀ—¢¨g(…FÛ±*Á•øáÀ¡¦‘š+ñÃCÍGlj şGı7¸Å:Ä+\0\0\0\0IEND®B`‚',''),
('nabl_symbol_low_resolution','','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0d\0\0\0†\0\0\0+n/İ\0\08¨zTXtRaw profile type exif\0\0xÚ­œk’å6“dÿsß€x-Òlv0ËŸsUjI-™µÙ´J•U•y//‰ˆğpDàzÿïÿù®ÿüç?!Öø\\O®­ôRnş{úÓãà/íşùoœ¯á~Î×ó_y~ı,üõûW+¿~ùVâÏôóÏßß¿¿ş¸ÀÏƒ¿å?_hıúÁüëú¯OíoúõAÉ;ŠüeÿºPÿu¡~~]`Œ_Ò[ıó#Ì÷çÏ_ïÿY~_~Yï¹ö~}ÚßÿıTVog¾™b|ßækLñç’¿Ó•©|\r©óBù÷ÆWşûu\',È?­Óı§»ºşn•ùı³UşøÛßŒ’ÊÏ÷/¾ñ×Å,üùßùŸÿ:Kü§ONëOşË÷ëïûÛ\"ûûûv»¾ïıyºñ–´üz¨ßrşÆ\'KÎÛ\n¿*¿3¯çWçW»ğŞ…É÷½îÉ¯zˆ|ø°Ã_xÏŸ+,nñ‰/ápÇWLç{-ÕØãJ÷………/ÖÔÓÆ^1-Ì›ønüã^ÂùÜ~>n…ÆïÀ+càbAW¸üò¿ñë_/ô}º|wûY\'Ü‚ûŠ:!·¡åüÊ«0Hø~ûQ>üû×ßÿÓ®	æ³Ì\\÷\\bæğË·®ãÌ\Z:ñÂÌŸ?±êşu–ˆÏÎÜLHXà.!åPÂ]c¬!°\rû.ÔbzâÄ!ç¸¹Ëø¤T0N‹~6ï©á¼6æøóm0CäT­†¶ØğŸú4|hä”ŸœsÉ5·Üó(©<%—RjüFMõ©¹–Zk«½–ÚÓr+­¶vµŞF=¹—^{ë½Á‡®<x÷àcÌ8Ó|feÖÙfŸcá>ëYy•UW»V_cÇ68±Ë®»í¾Ç^\\é}Şü–·¾ííïøpµ/}Ï—¿òÕ¯}ıX-\\\'ìÂûõ?·Zømµx,åëVã­µş¾DN²6Ãbñ	X¼j:j³»…ç‰—¦ÓfwæRÜeÖ8;h1,ø¼!æ/üa»ÿ²Ü_ìv=Ïÿ—İâoË]šîÃr—¦ûËıw»ıƒÕ¶Ùfİé:2]Ô;~¼hÄÆÿä¤?ı¹ú.|z<%€Rfï-Ô°ªk­zñıwîEj,“¬z¯Î›òyS)=„^ç˜ma{Ö3¾ÜÒ»Rz{^£î1WÆéÖUV1±0åŞ÷ƒ¹XŠØÃ÷¾3¾w­ƒgsİy<™…$_˜¥®ûY°×ó…k¦/·O òÏı0ÚÏ¾çSXÑûyá‰5NßH‘KöaHÔŒ1ŞòÌ/oŒôaµ]b¯áÃp>/79VI,wä–A¯>³…2ô¹TxÍL¸e5Çãİ<zñİ‹ş>eÍví£u}„ïo-ù›X“U\Zo\Z>µãXé[qïTJÂCŞĞ×7úÓwõ”yéü&NÓ7^‚ÿ‘iêì{¯9CŞß|*†¬¼p<»Œw¤ù†2q²\Z’YŞ+ê[±4ÍŸŞ€“²\Z,zx¿Ês„w=Oíß[p²\nê½3áW8~mÜ5Ë¹ñÕÃ…ux]ûk“+ã~xì|\Z^â¼YH›äYZ9>“§%\nç›±}Ùcã™í%úkOïxÉ“ä*^ĞŞĞ`ÕwxñÅôÍ·¤6ÓGKák¤´İçİ¾¼X¸Œ…¯7=áuåş•¾„õÊ~s\"M†5Bu†ĞFyXeÜ±·˜S˜ı}[ı[£İq¾ıúÆ&v Ñã.oÈ-à¹÷‡)\'I¡}û©oøJŸ8«ÃåêóN>-æ9€í=7iú¹Æ\"üòpZ~É<ÅÕÜu–Úïôî-­§!õs‚ñ!øxĞg²Z¸f›5÷‹°¯¹€\0ï^8{\Z5‡í‚¶,¡ÌüÿO+0>ÜP%ª{¼@Ô3ß;?<’‰ î°Œ½…ã÷I³ÉƒŞZnÜ4!€¿ã€ØçªPœPúÒ÷S¾éG)äÔÃ¾\",¿@·ˆm7!P4Úşp¤/ì¼t\\xA„S[õÍ½AÑ¸>V:ß3Œòáğ ¦NY	“ú~%¥½tĞ:ÆC¨¯~oÖh-³8È3İ„X^€f÷<7\0ÛÓ¼{kŞd†ÕøY±ˆ–—ßa­¨â¼4ñ%\0vOw´X<ğt½`é“Çºwä„Ò—XBèûd©¼àˆËy?¸Ã›Ah0\ZWy\n¤ì…Ëñ,3?wÄI;‘´¾ùãù1óº\\æ0Éì‘	=à*>Q¨£»ÑK^Âí|J¢?,éï7h…Aì.Àğ~Â€èW‰ÄÆ‹ïdLOèß‘tñpék\0÷ä¿}§\'wí	­™{_o^d$0Œ«nëÖ\n8„Ç\0[y\0Æ,g\"´p6²\"Ğ›YŠü6.Yş[:·M¢¼;I+½/¸v¼æ½\'`ÉWÁ2ıH9.öaêùuq}cxp¯—œ‘ªÖ!ìŸª¿­ŒN*ë½\ZA…=„2ÒõHyªgmèÓ‡o¡X€áü¦köDüù±r\\\0!]/ğá¡™çm¸ê†¢ï5µ1Wğ#>Xa‰xwãgà ÿzyöùèa³Uâ­^Ü|> ’ğâ·Ş› !®ı®µñà‰QÚ=‡¬–·=@7†Êcêem4ÀfNĞ\n„üfÓUÉKß‚ùc³E²ËG\\.2ôÀÜÜªéŒÁãL±1äW\0ú+mèIïí}„¬oàoxÆ\'Ş<F’i@~Á+ 4ó¤)Cbw`ö¸b+¨Úq½&¸ìÍ…fgÎ2,Kb\'¥”ïò\r@ßÍú:,©£ø¯äÆÍï†\Zğ·\r]À$æ—d’M ß\rÚ»´Ä#K¨Vˆñ¥™#¬vãÉdf\0™Ôs?[DŠãÆ·Á¾DH(\\?O‚6~oüâZó“Ö›{xxáı]yuĞ\0b’¿{¬06ˆÇ’‡·%dx¾I´‹x*ÿ\'^ài_Ã:/Ì‹\'\"|$ƒ\r#æ€b‡ÈE°~¼:Ç_9WûB$I„·õ‘¨Ñzkâ6A>½_\"Í‘&³ş(9›­àEXØÌ§Úæıüš„d•ß]&o®aªqÅ\'Åğ1øÒóä|ñÉÛJ\0ˆ9¾/õƒ¨¸:Ï»_®\rzãHÌ ¡€8ü”ñn˜w%öiåİÜ?”e}WùTïj/\0!•bMYÆûĞ^_’?İĞ¤·C&y´-»şà¢\"†Ôò“Í]âd®şå\\˜dò½`ë^\\>s³UáœY¾ƒ7ÄE€¸QÚÁœ\n™XÍN…¥\n×c\rH¤~pJ4óö1q“A+T÷¡ü5P7wÊ\Z½‚E’¯t‰Ğr„DMc¬uóºHTœO¸ŸÁ\rŠ¬(‘¯ºt«1Ğ\Zõš`¦Å(÷@Õ“oL•Jr÷·‘\"KŞ¾€¸xÍ:0¯\0ŒèM\0Õ$õ]Y‚\nğõİ <ˆEâØøÚÇÇ@O4;ñ(5cSTš©Ü”p?¹Õe—.vÇPILK.=ÉÆxváQ?pBÌ-o¬„ëlĞa#dĞÚ	\0ö|±z[¶¬=$D ZjûÜ&¨ù’à‰  ¥óı×ğb,\ZñüB«Ip\"RZı|.¨Ü˜ÇE-–~!ù‰³ìëdş\rÛÒcÉD\\’>cbşê\", RALbÇÏÔ:äB(¡™ €ÙÀßûB½Iéã•;B„¦¸j‡úÍòŒN˜‡‡­Ã3sÇÉoıŞC’HÀ8äoáÆ1@îû}–QíZ×hI= \ZĞqàÀ\r5’n\n.ñòr#X	€C8EĞ \Z…¸\ZaxoÜ|×ìø´`[äãvw	ÃØÈT÷ÊÍ6Ô·FÂ‡8ul	şğ°Ó¤½áXÙs§…W4\0¼B`ÇG¢˜tÑ§Ü‡Š}ë&\r‘DKD¤°sÁÇIrª?Ê·ëm¾Šr\Z†ÚËøXìC³Ìò\rw/hÛñÆ;Z€K¹Åc“ÕíÓó‹4:‰ñœ^À´”…†ÅEA£Eâ|ú@¦„¾İï¼H¾TôS5	5Á!^ËO?od\"«`zdEb³Á?\"\Z(ƒU¸&Ù<_¿\Z¦ğ=-Œû°^èH²’ªc2 ²ÂE>	Hè§jPo¤½‚	v°pSÊ…\nØÅ¢\0jşâ~NjÀ3;.ûAK/7zLª?ØYß/@\ns½áv b­•}Ÿ”Cf ÎÁ^2¿<ªõUÄ>È¾²Ïö‚Ñe°\Z\0–ßá–mh€w\\@2«$—›<!lZViqíeÑ|‹ñD½€V¼.!ïYÕKÌ€cI˜¬9“k7,ƒìÎ›ç(¬üp°ÄÀ]aVT@ısŸ0Ó°!E€|2Ÿw­õ€Ò¬L0Í.‰ÄÚDH¿aNĞíøÁ¡àHD\Zaøğã:ob^rA	7èşŠH-=wÂıÇ¡ƒ¼°LÂá~àÕ©è¶ßhŸœEÂJ\n28ôÓÇ¡Ğ…¨E#3oÂ9õÜ*µ}R¬óŒ]r ïC…N4ÁyÃİˆœÈ#PI·o<÷ğ~„a2İ“µÈ4±êÑL±8¬E¯¾M\"‡Ä9.ˆ¾Øx@ì`àŒ(!ˆoT©yˆß¬k¦’½ò‚~â†bæA” W€™áK-ÿ†©Àb“¤_¬\0—ı@ìÌqğ6ØylTÛKÌ<¤p÷2åcù\"ùh-|ôé¼mh%\r<ğÒ‘H	ùÿ)Š¹€³Y–	¼Âæ¦M¨x¬ôZâÉ@Ùä~<G¿aIygEyIŞáØø2€¨A®°®¿vËSĞHP©éğ1ÈNíùˆ)l¿$ü°>­Ïs‘İ¼ÕnT€é1ÈÕ@šúñ9 «ØyP:Í¸©,Rfn¨ê*yB:†Ûõ„ás_Ğ¼\"£ó‰´zé¸y‰¥íÜ\r‰Qº—ÄËÁ{\"	ìEÃOØQ^ˆ\ZÄ\rW\'û€9 :ñGŞÜáÛğ—¥e	\00Š˜Ã£:tˆQ×Õlº½G¿Èæ²O‹ĞeÒÁú,‘;ñÎ¾áÚ•+ cq\"î3I<ˆ£X|Ò{Ÿ×©OF9!@I¡âZcÜE?°ƒë¯ZáÛßC\"\'£JvxÍÅ§—+Ã7Ë†)b.ˆd¼ÛwT*QÎ‰Ü“0Pê]HH•¢Ü›;€÷C BWHpÅQ2½’Şy,%³>\'Ì1°XI›\'é$*DYü¾µ,«3Šp·Œ’%cßˆyüÃ’Û÷±PR²ºÜQ‚˜+¢ ‹pĞÏ\r·\\H\'üƒ€™ù*•g#:*y‚e…í£cAV÷‹Ÿ³¤®ÎˆDFÉšdÙĞnOïØé½&i\n…vê£ïØµ\\0d:Ÿå<\\~ÈC$–	Gƒñ¢\0€šÔS¯W©ƒ1j/ŒC¼Ø†È›Ñxã ŸªJb‡ü’[ºÆ5U=™È];\\¯zæLŞŠòÜB˜¿Û½–‰ÃÂfXrãşğò¡5`Ç¸yFÑ ók»s< tCÆ„D„-pEô{Ssm\Z’üJ B\nÜô„)áôñ¥\n²&€ÍV\Z‹\rUCõÅ(å„spÏHû×bÛk©È×U,Àá††X6ÀD$X¾p¹Äª&w.pÔ\rü‘\r‚U,øP\Z7\"°åYĞ!7?ƒ|úu¼Qk~è;z¬mD.›‡tÖÖ¡”D,\rÍôAu!7hBdğ®E¸€O0…&áİğşÄ\Zï«?\"gOØHbìzd 9¥Æ¨Šûè[Ü¨KtÍ\r–ìK0æşˆ~õ>á¶Hv#÷û \nÄ¢Á·^¤Ì\n|‡HOÔ=¹&†Y\0­€ŒD÷+\r7‰\0‡±Ä¿AĞ	œ8×\Z²Ì\'-‰Àvµ)…Z$+«½=^_[øA\'ö¹İh©¯¸[{\nAó!›–6`Ï0„Ñ¬`è·¸™õ\\Çz-(#|ßrİRƒ–ELÉ\rá ñu4\0dkñúüIv:[WXÂNá.¬`ŞƒÅŞg·Á¢hÑ§ñ_@.úŒñ4™nnĞ\"È¾ ÷`îİ ÈXâjÖæ‚†x„õ¢ßï/!`*êˆ€šV­p˜S{,xi’!»]’ÂUç\nŠöA·{=š\nlTàü®@@¸Á—x¡—Ì#UBKzÜ®}áËwÃë³3Ÿ…2}D¼Ø29¶ƒ;À¬,aòî<Í\'Ã„§$`0óê©\r0‡fêÌ¸Á¾JÏÚÆZÀ‡5O´m…ç—¬W¨±ƒ”€+z	C8fHÆ·Œ+Q|zò:#ƒÃ¥\ZÎĞ=¶;pyh!¼iLä±CJ#Ş×MCø9n\ZvÕA@ò[½]h\'‰Éä_+ÛĞg¬»›¡ë×Ä\Z\nrù¨pŠW–ÜX¸©Jë–û!Ün‘àDp¾€¾í»_kM@×‡Êı\\á‰„–nĞG©;œÖ[PØWYÉÒ¦\07û„r	=B•ò _ğFúµŸš`‹‘L q?–öìlhÜ‰Ÿ0àYñ;,öLû	4Ná‚ÕOEfÁÊ´•gG€ê[Eõ[Nña?•±üåqï_ÖlWEk–P\\$ü¦JÇxbóG;¥WNÅ„^Ø!#‰_´ÜÅ29t<8œ°¾™ÆŠ×æØ‘×¿ÖÒukƒs7œà\ZSÈğ\0n¨ÜáÑ1&Ì*X”²óö(ææ*Zû{Xb¹aÓ,\r\Zs.%Ò°¤ß?˜á2áIÜÌ=p·-^ \0,Z é/H7ÜÈÚÖX¬³eg…\Zp\"«•ü=…(ÆwÈÜİÕ ‘¤ûâjó”ïL>p¡hYØšŸ;8(`ÉBi ù0a¸4Á}O8&€Ã÷8Ø:u1Ü\"÷ñÜ1¨…hr{0jàC\n]·:`şZ£AÂ½x²ŒãCÚ÷ë)®}¸3ÚàÃ¶dg _¨\ró££ô‰¥€pƒnğ£È³h_~-B™úã¶Şç²U%hÇ¯¨Û  ^±îhâ-‰TÑówM˜j‡å©X\'´\ZÒº‡4XÜ\Z¨·­M\0ù§ŞŞüm¤12˜\Zc¹^âÑ‹ŸˆÆpÀÂGıàí/”°=ù@ŠÑ	zhÓiDë$Bè´.kÓ Ê§ämÆ\r‰Dk±‘c¹![&OƒÜ	Øí,R<Xë?·›­õ›”ü…£ùµ}ºŸ^ss;¢Íç\'ï\ZÀ_‡‚\"×`Ê(„ËQ,à€ÿ%AÜê7‚ş3íòìÏşæÙ¬v3K%Lè0z¨:ëıÉıØn·@ûË×°ÂQ)v¾ä×z¼©ÇÍİ\r[Ò×Şï&}²¶ı@	b{Ét½_2o¾P\"Q¸X·üñå± Ó˜‚¨$Éã¸?­q,y\"B²ÅwèÇ¥’ugìu›‚Ä…½ ¤€nÉ¡\0šÀkÉ‚Ğ·ĞP•]ÒÖ”“\"í´]ä‹pDÄWm5±Øt‡¼„„¤D#,Q‰ÄW(xtÑ£,Å\r%ò@\"2^[/òå‹Ü‹‘L[êúˆ›ú€(ÀU_w	ÂÍâ]ñ¶H£•—ûÆÚîÑúa`@ZvŠ|Ø§nHFè„º;nÉ0ºİ‘¨3*Òê\nŞĞ@cÖÜö37QaÍpŞ=âæş–»IŠ\"Â2G.z…2Ü¡¾º\'¼h­õÉ8EaşÛ>hİÉV[†Mt¼ìXØR}]ëÃ\0¨\'Ô-[‰NÅ\ríi{$ûÔÕA[`$c¬·íÉ‡ˆ4Ô#W!äög6e9¬­xÖ£âQÊ,`ÌWĞ0a¾i3	8N˜ºUnæÖtü|Â/X´Ûš&dSv£\ZÓÙˆÓÕô¯TI.÷\\§	o=¿5\ZKjåØ“ÌhÃ·LÔyıxÂ:à³ûÄïuãmh’¢²¥€ÆÁ’P\'Eyû’©áD˜Áİ@›#ÜKvw­	A»JYK¨|µÄ=¢ñï·×PL’ÁŞÆÓÙóBÈ’îŞAÊ\'#Û2ş|V4ÜS×c!È#]OTó]ì¾Ú0’hh•ÇNîåg²ªºÍó cD²},ğ÷³Aƒ˜}Ü-Hô¡2D5GèEéÑr«à+Š~4jòÍÜ¯$!Òã2&ÅñtÇ?<ö9,ı´-ìäY°~×òwJQò+ çÅ’Ûy$Ğ~ÅÇİ›:\Z?°_ã…‡d¡AvĞú’[×Éíì\0uh?M/¼aãty]Ó¢-k¸¿É\0Ÿ5í7`¬Økn|§á®…u6C`Ë\\kºİGˆf[˜Úç#ë%a—`…Û»!‹$± Ë-VLÖ_nÍÕ¹•ò.yÿ½¿Ù-i¾æ‚‹çÄº¯¾@Ôcq|ĞİàÔÃ&·7”är()×ã-Ú!-H§TtØën‹\"ÆïñbšU°œÓÉ/úõ–Da0ÛtŒà\\ª}ßRëf(Y\Zƒ˜w 0{²¦i~CnZ“ÏªlÃQê¶kOb	}GDšÚğÒ.8m|Év&Ã\n¶¬|(Kœ],I9}NşNª©ökw~KÜ†?Ë	€\ZV@ÙOî<³UH+À,˜x[D>qPwJlÄ—²ôï•4‚ë…‚.šHmV¤`!¥¦Zfäòãì±°\\R@l‘~ª]HËRÍ—RíãzWËÄ5^-Øwgk×\n9í\r¥è&t’“¡OIïpR°y³*–øL ;Â3›E@S>^>v$U$¤[©•¼ÕÓ©f?gqÏ¦Ø8{šj ĞV› .#µ¥rš^û:]\r`@\rÄ=Êês/|-x(ŠÇ\r…JÛóÆ]u5<(ñDôë}á‚A©O:€’3™uá.-:Î~•e›ÍÀcÜF\\™(uá>›2ÕÑæõ#¹ÀÙ„Tûä¥î]‘áğï£å,o£\\+Sù8HYnä›ÇÜt\"ı6dò>I¤òöa]á¬îG\n…ŠUYk›Jğ>FéÜö.Ü¼f¥Š­Ñ—{I6\ZYªa]\0ïn»‚¬\r®nI¤Ù^íSÁE¸=%qrg¶”={A×wZû ‡&Û²›-nWi!×+Z*>âü!³JU{†¶b­2HM2¸rùêƒÄÚàÍ‹B@£®y,(o8…¿\\Û+W‡!¶mvÓ*#æ/W¤w¶,É /îç;¹É4ŠE5D<hbñ„(Ø%ë8)qZàcõBpw³VKıÁÅ0|ˆîÿ£¨q‚	Ş&ÄLê>é³‘\'yŸä~ÂBpúîµeVƒ˜Lé±…;Â=Ë]ÀŒê†°‘©¶&¿İ£ù ô£]ál/“3ÊÒKè>â0ƒ»¶[‘àOXäó•ïÙX2Î†?—A}‘ áÈØñ*2Ëh3ïévCI¹‘ÛJÕ¬„ÔGMr¡v¶f:x•[¸·\\Q‰‡í€Í1öEÎ<†şaí.nş€à=¹=ËŞÜÓæéây#\"íÀœw‡0½³%Vb¬Û~`ezÙìX°a\08	GY_m˜xqˆËÛ¸Ê)hBælV\'ŞÜË~x?n¾D’I‚] ›øpÑÒø®pŞŠ½“J¹AƒÈrnê »pÂ}qM²€[h­¡j€-wî¬Š=a¿ó~ÌÓ2ø†3ò@¶v‚+/ûrï~\"†H²³T‡2l²åWw|¤‡ˆ‚ºS“ÍB„fvyÜ~•ä=İØÃ‡îóQ™4Â¯cxt¦’/Z…óßÕ±¬»e»³°ç¾ì6Æ;·…Á³?«í®,V²ıX2×|zˆ/Vûìw²A;XkŸ…¤SrÚ6z#@ìÛ^†×äßx__wÎPh|¦Õ~4ê×ÜˆGµDâ°Æ8eğÇ–ÈçòzÜGA&âY+‡înXå ÑE¢õô[]íï¯-?İ®²r÷x÷şÓa¯“úù>î¼Áÿ»ÍB=\0šˆ^¢wÖm+!°»»\rºÕg£²[ºÉôA(˜ŸO;}V—à­ÀGˆ4}v_øá!xö½2Ñè•@ärAıîeéïdiø‘,&E7fÆ:¯S.ÊiYw°\nJLæqÛ9YëÂ\\Ù–-n	õÅÓùôtER€!ÿœîóôİòrÎ¢œˆ\070J½¡ˆ¬=:N•t6¿´ÚŞQGÀÍ¤8nÖ5Ey@Ò•Ãä8bjS¨ŠÉ#C€ºBÁ•PUØb~×‹$`DcIŞ×ÙÙíè\Z<¤ÉÂ§õk°ÊœÏ†Cà˜Ü‹\"¶Óœ¨@Ëß×)=ñŞšŸà¼·¥a8{,õC¨-H:i}¢Ş\n°ÿPë,Ö½N¿ğlûŞnF­ü¢˜@dÏíşØû</wGÔ·µ®	aºİÚ#R•èpñhÖÂƒõù ”Ğ\'›é‹Ãb%|_xe\'rN·£Åİ™¸1,X¡­oF?ˆ<aAÿ“Âãçö³˜¥6áN;ô\ZúämNıòO±—ĞßízOS™Ø&”?ğ¨Äh:rÜDœÕÆêã³Ó>™ÇXV[5\0vwÚÃ{A•¤Æê cV;s!?	`|Vşà3v¢ú[sş0<nÇûyÏş$ËxÙŠ÷©|`üœæJóå$°‹5,\r¾«QĞÆöF¤“Å†k­t)êí¡Ä¯±lW„Ò´rv N<®WIj—%yäEeŒÖYyÒÑw±.ôB±ŸÄÎZ!ÒnLÈ\Z÷)m­õ†¼FAŞjCÒÇRj×ä~N+ÔóÁü¡Ü*t–•s&\r÷7,‘®3ÆBw\'‚l]ŠŸ‡Ï®_ÏË!;¿6¹ß†v˜C#“¿U™iâ³9Œ\\GÜÜV!? ÍvdS?\\ŞTÖ™çÁãÁ1øñ‡úå\n×úªıãğøèè—“Ÿ\r>ùlË8A ñË;Ø›m6º	ĞjËb˜ô4×}Àh®(®u\np6õVHRV»c°^ŠInD(:d ;¿Â{/»Ê£>J`2RQ\\ØZ6^Axï×\"¦¨\n¬YˆÓİrM$Ì¶ÏB-$¥áfªÚZ<pîp$×ŞÕ;÷™ÖmGá¬Ç§3–sùm(­M¤ ïk½!2OP8<qpŞBù…\r€6‚‰à˜íã\ZÍƒÙ\\A¶‡\\R“íwwÛn:ñü´Æ…ˆ¦%4çik.Ü¯İ³v(ƒg1÷6ÏX8ïûÍ\n¥‚ø ÿ‚<4—G\'×Å›S÷£ú˜nr<Ğ\'›-ÇÄy©œ+Ÿ”l®±W¿=;ø‹D\'Á_Û4HkØ!œvÊÚŠ{!…›yâ¨vƒ]dŸ8íqÏ-ÛÔ°Ï¬±-Ï$}Ç•ª]!<pY–³ğ&TQ$Ë’bşúœšDm£wDàvúh­ûÔØÀ\\\"bà„GÍX¾t6åÁ$|‹‹»-jŸöh:¢CmÓy·‚VÿœrÕÆX¾¾_I‘PòÎŠØµ„ªs³3Jı€…\nÏºåùéVˆ‡EG†•öQ¤+®[ŸM¼>dYWÉ	’p`tÇ	?˜¼¶›o…Ùı\Zİğm\rov/1xsÛH9·¦ãáèƒÀä~Bãˆ—É©<$‘õàû¨ˆÇÆØgEÄ·_Í«ì‚˜-7¿n(òkW’œÑ7–dwi!îHªÇß˜Ì–\n·‚)û6m»Ÿ¾lŠ\rÉ;âĞ™úû%lÈÓíÅñìU³bzÛg:jş}ğbÒszí#~À)-¾kšNGËÆoäÇ;\\ymA6º)Ú¡ù–Ÿ¤›ÖäˆšÔ2) ¯»ZÁ\ZâƒSdT¶ÅE²tßÓ\nOM(\0Ş”^ò›£	¶]€%ø ‰ÍJğ·MËÑŞNçèâ%!F%ÄJ2v—)%P^ÓNS$„°”Srâ½§á[:ïô·˜}Xô\n½ì ‹HÄhŞh~;ôİ^€âèÍ\\xA¿ 9ü4İ hÔu@ÄÊîqä¥÷rŒ:$y:\rCDú‡û9°ˆj»°l?Ícy©³~‹-ûvwÚÃ’_P+ \n¯(f˜¨ÛV1Ç{E€|>n¸mŠ©s´şe²ü¡@\"_-bm >T[—ˆ_R€\\Q…á¢êEÅš0á¦ô|öÔ“ñvl|<Ÿ˜®ÛÖÕio\ršnÚé¡q²QÑë$\0AÉÓá]\rÂèÔAÚğx b8ÿgopwò2)èù+¹ÛFƒ ŞõôİXı_pë6j×ÇŞ÷ÄªàCÏæ¡QEH, ÿµúRíİv¦»1;j\\|2Ißœj7N³6[Î–#iî;[øù´*BáİÛ‰øØuŞ„g<êtÛQ¢5–³>ãd¬<—îÓ `½ÇîXÓ\nY0cBGdj¾\n7LŒÔN*18Y,ÏÒâ\n~“Ş0*\\	´!-?Y?ø×åàsÛæêÕn…µ%Özh:î>‚Áf‹ŸWİ„PGYs<µ[È)‹p¸SÅ\\™Õ„é_R°@Ä¶ˆn¼H·Œx¤­# b²/U±k°ş€[şXï½øvQŒ–ÖbAíÙe‘o;Î4› úœÄäYH$ïœÜu´Á6v¡ÍÆN!áwŞ‘G;]®Ÿ^ï9;kµ<nã#cÜ$´³Å/.•Ğe„3C2½ È„ĞÄjû´Qd‚‚Ô=âíÌ†•\Zäùm˜ğ\0Ğs«;ìü!¥k¶©¬HSŸ+Ù\ZªÔo©\nKuª†ÿÂ‹í^Ò6;Fˆ§³Îy{úÛÍJ;¼Kö@ÑÃ¤ÉßÎÖº¸D——Œdå-vÒS®m²‚p)KÙsY„ÍÅvåz‘Pòvë9»†øÄÂédxöÔBĞSwóS,·ÔáÂ$óçèÇ?ºêuší¦;\"ä\"Xd(Š´Ï_BlŸmk¢@ô©ç:së¦£:yWGì¬’ıÈ4d%Â?Ò¯\0ŞÛm•a&ˆíX´±±¹%ähb³ã¨XHÃ¯ÜÃ¾•¢éŒtMç\nŠÍæ¹ÚA´*ÄÂÛ%:ı_¡õ¥»<r|<–Òáå¾^›ÙC‚ŸÔqëœ`\"™n»§ö&2ôiØhúÖ:ƒ:a:dãrÈj¯«:\0Ø‰û}€¬:’ 7	3V`}¦ä†?şxçEB1–Uvx£HfSt²«LûÃÒ/ÄJN}à\0Ë¾B \r\n¹Óı[0ºÒ0\"2¼KÔºıÄÑ‚ÿ­÷²€2‘.ã—šclˆiSùMºgu¥–š³{`Ñ€ÃÑmúÓÕOğÿp©YÌ÷v\n\"*ıÀ?„¼ˆû3,A…eHâ´P1\Zë¡ƒDÌ÷`¬o@ñmõºz‹ÛáæC#fVúÛŞM‹„r¨¨Ş¸m6¿H>ˆQî\r‡x=	áÏR1INœÉ¹TÜğ±5ÆİhÍMò|P¼#]3gV÷!ŸEcÃYgæsº_ùd˜¬€…ÅËçnx”ãÌ&±i^A·÷Ê)ÒlòØ\"^~„RùU¨Ù¾0ë ›	ˆ$±YIÏÓqé3bîŒá5¿ ôr²Á^Ìş¸‘IÎ°ÊWZ9S„Û/ÑÖOP €Ü¿Fl „oì×=F³Îdu˜eGÁkSöf›’U˜÷¶ùˆUûxrÉEùìà#G¦[8y.rÃ©Õ\"½n¬7œİ*!ùÇŸP³…KİCÒIjVòw9çJ8>ĞÜ%ƒd]êÕÇÍKH©»Ã›Ø©¹¸}8mì¬øÂ‡n›3“µ\Z¢|Al›íZ(Î^Q×÷ÜĞ‹Tì+yÜó<Ã±_aû™ƒp Öy<|š<ƒØû‰FôE‹€ô¯yèÌ¢p(Õôõ6MÓ3 ºt¦ÄÜœi²-J	@T:¶k5ûL~f÷_¸9‰ÈúéÏpğ$%0Pª|“LË™&+>R´¥åÛßå°cïî¢/jñ9‡Üïjé4Í&ø»soønb¸€¼\0K…dÙ•÷Ü0@Ò9\n÷¼%F±ıé–”š\0\"˜†´Š­²êv÷!ò‘üáÜJr“ùjg\n¢RPWÚötßY½\\nD2Ùoú57‡$HiÅ£+¾³3VÈ\Z¥Ù7Ú/â4ßü”·k]b^şv†½AJyWÉõ•Æ”ÑE)É9	t²Ç¬±Ç)Z®#bálÙÒ|¤¢\n¼Õt¦êórŒ|4Gm‡s ¡º£A\"s\Z¦BH‡íÄg/ïÀÈ÷Øğ…yš²­*ï‰LÎf%4ñå¶ñD(”³­ÿXÎ#U[~è0tó\"oE-¨Î\"ğÔ®üù÷u.ÅÙÈ(\nËù¬§w¬ìJ‚^ä&ûR*…Ã.{ÕEu,±sÆ„½5/bÿÀ–;BV¸ï¼İËÈöÂ¿ö}ÙÂæ¾ƒB’ÀN;[šëcMêJÖßàŒ_|0ö­2_z\\Ş&cÎ 5Cşl\ZõÔ(›í 6ØÇü©T	h›+6±Ñ\0LÍD{6õRl²›¶R¸ÂÁv{ÃÎ4pT?ZŠ6•{LˆÜ¸\'œ–û;¿z‘ß¹Uo³\Zœ°œ†„ ­;É3LYñˆğb~gàsĞoï ËµĞÛ‘¬ğé!\ZñÅ±};Üçqƒh’_à=€­U*Ş¸áG\nş»>6@ï04}F |g‡GU	bC\\\rç=­±|Ğ^X‡ÁõIGN÷ÂŠS\"¸àÎï[°w4ãŠ0ÏK iÂmÚ*vK=P75—­+ıË™´û…çu»r¿ƒ»\0!tcÛxNÛ{rò634ª¶=Ò$zÈF˜Ç†{ƒßA•,aÏ[÷¶²1ö-d\"BÕ^<LY‚ûe7íßÛ³yÚÅ\"HİŞF·Å0I:\nı³2©õÀ G)qr8¦\'kÛ…×Ö(Eô\\¼=¨‰,©Í\rä\"Á}+“Ã¯ùºá!ËŠÁº/¡Üko+7¸/Bfı>Û®“œ{°b“ªcò÷£âqœ\"çÁV}çö&€ï‡S°ÉŞ×‹”[‘Ë,€àm›Ù@ö+G0)§F_œ1}d0\n\'û³ı&Âq%e#EíğÇªˆVÙE±ü‡åÅú™âhXŞÛ—ÏB¦3Z²ßĞ€À§”Üb½/	Õ6Ò—/ö\'¥Ó5…ı_‡¯Ä\\Ïåû—?Çğ¬Ö« Òîbßu\"›Ø[ºsnÒq­Èİ9\\Cx4Èfá`¤înË|p4òª¿?X}:Ï;\\ynR^6Üº„ÓgÇÎ1Yü°\0²Bvğy<\n¢ô:b›=Lşıy¶<p®Ö?ëfÏ}’°;Ï]0^Š[Ûˆ‚ç«*Ãùµ[^Àu\'uˆ\nÖ!ÑëôœL²Q>}Í„¯E~¨EZ¶Ø–¹cÃæ¹nX\09êi\\s 3Àé¾¨ú,ns’/Z\ZÆüØuyN!rlÎ¶ˆ>»¶ÇF¡Ig\\®§¥Gnic8Ûíø9\"cÃ§á´NŞUûy±ƒBTèöwÍ3ŸTN•ÜïşuléÀDáTqİğàŞ9rVµ¢+w¨H’ßwÙ3º7h­Ê™[¸¾§X²Ì{h?ğŸñõ¼Ù†’nş3Û”ĞàáùÙ—‡‹TD8Ş‡q1OdúH{6CÚw\r¡‚çXZÏ§âÁ~|ì¢¾İŞ½ğ¹yš€œœw€6¢/À¾ó©Î^VÏñ©ÖñÜò¬P^§ÖœÑùpŞZğlĞäõÌ€hïÔŞ$Ä³¤İ±†Lr(Ÿ¼OÇlw^°Ş5³=ı§<[¯®¦²î#sZ\0ì63xÂÀ9XâÁ\njS°_=¤ü<€”fŸ´!n]¯ÅP\r©j=bûO´‹öÌ~z3÷J ,	\rĞöÑ³\r‚zg‘XÃ³¸QûùrÃæ±Ÿ…vıÉ?M=Y$›·[ä¼k6ÍÆcFC6;ÒÄ£Û*”‡²¼Î\nÂ¶¸ÓíÆú²{wgR’ğ{¼ÇcµÌ	’s°•Ä\Zıíè¿ÿy[ß±\r‰â¡/S’=T	.Ç5<ízŸÓAà>}8\"³|i¢r2\Zn;¸[\nÍ)Í¤\næ&ÈÑ<=ˆ‰àvª<”.\n¿u;^3ÏY¯›õDÇˆl¶òƒ]¶‡F©V.Çm@G†¿ÚÓ<Õ¹pú·€C[ŠuOTäwö%*y\rRx4&| îI{;!hq)c‹òéSC;}³]&n+Œ{ºò!X‚£\"ïv&N´!y—zo “.û!şÀq4ìÊÎ˜‡—‘Ÿ7N,ôâø#4Ä­<\Zë`2ÃûBƒî)m^x;y6=ÊÂC\Z†s<ÎÔ˜GŒqÉ@²Ãáïs¸bâœyÒ®Ÿ“(^›Ã°áä1räíQú\'b‘iòÙrÿÇ;Äİ>HRË	^‹†ÜCé´ßF+¢€Ğÿ\\h“w@÷‹O<Í…eØ÷‰õ]g~;{Üøù]Ñy+\0ÏÀoƒìBfHd†ŸVÜÎª8$yÃªH­‰½¾31é™P X½Ö¢C™·Çrİn]¸\'.­ÏÿvĞX>µ\rÔÈ‘” w#-][_oöhpùø8ô£\nô•éátd7O8š†\ZÕ›JÉ~f›§ìFõ€º:Ó¥ÇÁöRÕ}\\®9«•Ë€Ùİ’%¾İZuÓY!~ïÈO‚nïÏøú3O6Ñ$H,ò·Cõ\rÖ\0æÉNòdŸÆ*ÜK`†3-Äê¼ÌQ#s	ŸÔ ¼XìÃJïlÙİî1(ÂZˆ™÷æNŸéá\Z¬ÊiÊşöeG‚OÌØñ{–ãÖÉCø\n:ÿÄµÇÔ¿¸ƒmƒ¥ä.øõÖÀñ·pœOØ,–4Ò·ïrÎ5ò0¿nóÉtveØ:×µ¤AJO‰—l>ìÙFåƒÚ”‚¿Íe¡Îà†ÕÓŞúwÆ@¬MãÛï.Óšs¡Ğ{¬şy’%¬E•nUäq>i{\nğƒ&É–¼êÙêm§IÎcË²ãº<…Å§¶—Öc	‹çÏsvâ0Æ†óƒÚ9Y$¯év•ğ3Å…>ûÂË™i…QyÄ‰G’Á?÷A‡éu@.÷·¢g‰à¢p–fn[6ì\n\0ú5Çø†‰§Ğonp{U÷î Ú”7Ù¤\nõ$ä{m—Ç2[&€\rä‚‚*:½†AP-ÙsjaØHëåa¤Ò;²q7¾‹=V`¬ÛôNâ†¡Ô|—GÂ€Ğkvİ¯CPµŞ—=ü¥Ù³@ú!él ¸áRàR,”p}Õ÷ŞÎb‘mğóä	˜è-beÏ´Læ ²êmr}§_·ƒÖ¶ \"´ÛX#¯ÅBzè8øëp}õ¥æñXŸãÄU`,ÃI=&û„ãsªJñ¾Œ ‚b\';A…²ªºXï9)Ö£Ú9ÙäÏ”{»¹Æİn(®q«»á°zÈ˜¥g‹9¶–ÏË³	§‹<owç÷vÔÑ[ğ$ç—•%nŠÿ)Ë{2)Âúç“œü’W>a‰³gé¡ÓÀcv<RŠo£ß‚jòå0fymÛõ„&©é{#tU¥ÎWÙ`bWö%=Í›“ÎÛ!Ôr9‰ùÕÍbQæ^ˆ£ŞáêP‰nZF•æfio#ÿœiÚ6±Î™\0¦òêOç\0Òë§YÒc K±4Ú=gäë¹QZ´Ûé­Ç‚Ï´šêİ>\rªÏÏ¬f¢÷¾\\qO¡ä¬~»ùv[£p³ÅëyBùø|˜7¼Ë¬z”@u~oÙÊ|_vì¦ÍËÇf÷÷çD0©tœ¹0h0gä&<YQTË¶¿»[frâË£/Ã9‡ÌcpáGïB\r,‘V^^<æÏF¼åƒå~d|ö´³æ ˜öIİ/9@4tvy¢I¼©\0|{äu‚ÿÜ„ó§?§ô¾$BL9ÂÏô	8èÛNZ|)“Z\n¬|$0íÓÙë7·sy,ÍğL!…5IíwåQ¾¿|ŒòğW•ï·=‰¡ü‹<vƒ¡ŠÙ(¨×c6ö$\ZƒB]¾NÑ²ÚÜn÷øáâ¶Š•ïÛ:êtàª<È±€¥eõ:Ò”²ËFiÏy;óıjÜîtüé±fXh£s½P9·\Zİœt¢éõ´ŸpeÏTu_o=bº]\ZQir_i4¸Áçw÷ñM‡tÀ@ëñ\nAÈñ´a;^ÏS{O¿¨{ëÁBññ—\'Œ>#~ãÎôGªO°}°ß~Ê¿îWŒ2Bä™@Kr~9û`²cBNÕ<ÈSxdËÊ®ŠöØz+h§’EĞˆ‚¥H%pd”şã}_±{ø‘M²d§á¥v·:êÖµEBÀ İst‡ŞSôfÑ¹B.*æ—p(Ïé %@5X!Ü=6Æ	ZÓWö8¡²ZX”×DQ3SÀqÎÁ$HÛ$ì,Æ½â‘ëÀßš22ãx¼¬4uŒµ]m{rCˆéD;Bñs$èl·6›Ç;Ú‘íÏnC­ÁY”l¯(o;¦\r(6+EOú\n9Hy1~piÊçù1PéÙ#7±ª=˜ç¨VĞËÍÿä ñeao½xy6½uM˜	<¯,V^M\rÛ¦™¸?wì>h0T¤GÛ8¼\07µÀ…æÁ(nb5˜i¬»º<‚ƒâ©ïgîş»­ƒÄü¾ğ\Z·…º,É$1mÈìáw\ZQµ«EvåÎ%\\¶N„Hr¦ep±ÔèªhÏşíù§à1àëç´Öæa…vY	´}#o›ö>Éı½=‹*»5_÷9›HE305VB¨N³6ÏEtÚûvÜÁlÅYöX1—ì¨î}®ìtÉó™^8‚£‰Õì:ôÀ!{ëpi³ºÄ	Vozhß@»]ñŸù%Oï %øÕ rNù:;ğ„òy¶Bn%ÄìÑ+’7İê=²Gú]nÀ;ë°ã^î4ØbñY¹w±»AÊ@·”\\ƒ¼¸!nQpeÛÒŠM›G–ıİşƒv;’pß×ÿ[Jwç´J\0\0…iCCPICC profile\0\0xœ}‘=HÃ@†ß¦JE*í â¡:YqÔ*¡B¨Zu0¹ôGhÒ¤¸8\n®«.Îº:¸\n‚àˆ«‹“¢‹”ø]RhãÇ=¼÷½/wßB½Ì4«cĞtÛL\'b6·\"†^B/ÍQDdf³’”‚ïøºG€ïwqå_÷çèQó\"ñ3L›xxjÓ68ïGYIV‰Ï‰GLº ñ#×ß8]xfÔÌ¤çˆ£Äb±•6f%S#$©šNùBÖc•óg­\\eÍ{ò†óúò×i\r\"‰,B‚Ul qÚuR,¤é<áãpı¹rm€‘ch]?øüî­U˜÷’Â	 óÅq>†€Ğ.Ğ¨9Î÷±ã4N€à3p¥·ü•:0ıIz­¥Å€È6pqİÒ”=àrè2dSv¥ -¡P\0ŞÏè›r@ß-Ğ½êõ­yÓ C½Jİ\0‡Àp‘²×|ŞİÕŞ·kšıûuÄr¨âªu_\0\0[iTXtXML:com.adobe.xmp\0\0\0\0\0<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\"XMP Core 4.4.0-Exiv2\">\n <rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n  <rdf:Description rdf:about=\"\"\n    xmlns:iptcExt=\"http://iptc.org/std/Iptc4xmpExt/2008-02-29/\"\n    xmlns:xmpMM=\"http://ns.adobe.com/xap/1.0/mm/\"\n    xmlns:stEvt=\"http://ns.adobe.com/xap/1.0/sType/ResourceEvent#\"\n    xmlns:plus=\"http://ns.useplus.org/ldf/xmp/1.0/\"\n    xmlns:GIMP=\"http://www.gimp.org/xmp/\"\n    xmlns:dc=\"http://purl.org/dc/elements/1.1/\"\n    xmlns:tiff=\"http://ns.adobe.com/tiff/1.0/\"\n    xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\"\n   xmpMM:DocumentID=\"gimp:docid:gimp:62b9c2c5-63b0-4042-ae44-38deb0c4db21\"\n   xmpMM:InstanceID=\"xmp.iid:a81b885b-4b23-458f-9f24-bf37e00a3e02\"\n   xmpMM:OriginalDocumentID=\"xmp.did:44c3c0f6-69eb-4ed3-901f-baf1f93b67e8\"\n   GIMP:API=\"2.0\"\n   GIMP:Platform=\"Linux\"\n   GIMP:TimeStamp=\"1689706116538972\"\n   GIMP:Version=\"2.10.22\"\n   dc:Format=\"image/png\"\n   tiff:Orientation=\"1\"\n   xmp:CreatorTool=\"GIMP 2.10\">\n   <iptcExt:LocationCreated>\n    <rdf:Bag/>\n   </iptcExt:LocationCreated>\n   <iptcExt:LocationShown>\n    <rdf:Bag/>\n   </iptcExt:LocationShown>\n   <iptcExt:ArtworkOrObject>\n    <rdf:Bag/>\n   </iptcExt:ArtworkOrObject>\n   <iptcExt:RegistryId>\n    <rdf:Bag/>\n   </iptcExt:RegistryId>\n   <xmpMM:History>\n    <rdf:Seq>\n     <rdf:li\n      stEvt:action=\"saved\"\n      stEvt:changed=\"/\"\n      stEvt:instanceID=\"xmp.iid:8ef5fa44-aaa4-4d83-ac73-d9ebc2762956\"\n      stEvt:softwareAgent=\"Gimp 2.10 (Linux)\"\n      stEvt:when=\"+05:30\"/>\n     <rdf:li\n      stEvt:action=\"saved\"\n      stEvt:changed=\"/\"\n      stEvt:instanceID=\"xmp.iid:107cfc49-61f4-48e9-bb73-7583430ee6be\"\n      stEvt:softwareAgent=\"Gimp 2.10 (Linux)\"\n      stEvt:when=\"+05:30\"/>\n    </rdf:Seq>\n   </xmpMM:History>\n   <plus:ImageSupplier>\n    <rdf:Seq/>\n   </plus:ImageSupplier>\n   <plus:ImageCreator>\n    <rdf:Seq/>\n   </plus:ImageCreator>\n   <plus:CopyrightOwner>\n    <rdf:Seq/>\n   </plus:CopyrightOwner>\n   <plus:Licensor>\n    <rdf:Seq/>\n   </plus:Licensor>\n  </rdf:Description>\n </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end=\"w\"?>¯ ¦¬\0\0\0bKGD\0ÿ\0ÿ\0ÿ ½§“\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0\0tIMEç0$sBg¢\0\0 \0IDATxÚì½wTT×ú7ş™:(]‘.©¢‚\r»¹±&11åjbÚÍMbÊ5Åh{4ŞÄ^b+@Š¨Té½×™¡L©çùıœ8–äŞïû~×»~{­Y7ÏÙçœı<ûéÏgsˆˆğ¿t¨Õ*ôõõ£··|>\0>]İİ\nàèêêBŸT\n\0026†……¬­­aii	ssXY[ÃÊÊ\nÖÖÖ055…‘‘x<ŞÿÖOçAˆ===¨««Cyy9Š‹‹PYQ‰ŠŠò72‚««aieèëëCWG@¥RA.—C\"‘@( ±±UÕUèïë\0xxxÂİÃ>>¾ğôôÄ˜1c`ff‡óÿä] †P(Dqq1RRR–\n©T\n77wxy{ÃÛÛN£`=b,,,```\0‡£±ˆƒÿıè§ˆ²ş~t÷ô ££õõõ(--EiI	ªªª`ll„¨É“1yòøøøÀÒÒòÿúîù¿F©TŠ¢¢\"ÜJNÆÕ„«èë“bÎì¹˜8i<<Ü1b„\rLLLØëààà\0__ßÿøÙ‰¨(¯ÀíŒ\\K¸\ncccÌ™;S§NƒŸŸŒŒŒşß\'¡»»ééé8uê$š\Z\Z\Z†Ùsæ ((è©ÚÕÕ…„„DEEÁÁÁá¿¾Cóòr‘p\r9ÙYp=\Z¯.{“\"#annşT¤ı#ˆ@ @RRù\rb±¯-S§N…³³3tuuŸk¥R‰\n\"Ã0¨®®†­­-x<\n¸\\.ôôôXÑög†R©DMM\rRRRpòÄq>o¾ù¢££aiiùÿAúúúœœ„½{÷B&“aùò×1gÎX[[ƒËå>sGÉårˆE\"´wt µµ\r\rèïïÃÈ‘¶033ƒ»»;\Z`o?\nÇƒ—×Xíí044„…¥%†\r{{{Œ=\Z¦¦¦Ï|g†aÀçóqõêUœ<q†††xï½÷0uÚ´ÿqQö?F†aPXXˆ½{öàşı<¬Zõ.æÍ›[;»gr)ŸÏGMM\r\ZÁ0jBxzzÂ××‰‰‰X¶lôõõqáÂÁÎÎ>>¾8wîæÌ™Ãê¥R‰şş~ÄÄÄÀËËæææğôôüƒà<f <>Z[[qåÊØ¿AAÁxïı÷àççÿLfú«CçbÒœ<y\'CTÔdœ9{ÎÎÎOü\"B[[’““LV¡³gÏÆüùó1lØ0Ô××£½½öööĞÕÕe­©lÛ¶ÑÑ3àãã¥RÉ.nVVŒŒŒ`jj\n.—‹qãÆA___S¹K¥8qâBBBàãã3¤˜³³³ÃÊ•+1uêTìß·«Şy¯¿ñ&^}õU˜™™ıï&¡¨¨[·nŸÏÇ÷?üˆ)S¦@OOoÈëU*ªªªp\'#<Ó££abb‚˜˜”••!99	¯¾ú\Z,--‘››‡}==(•J ¼¼ß~»–––‹Å¨©©a´´´úzzĞÕÓCOOÏzjØ°apqqAOw7bbb`bb‚ñãÇcäÈ‘\Z„ár¹puuÅ†qëÖ-ìØ±™÷îá‹/¿„ÏUéÿ×¢P(pùòeìØş\"&LÀæÍ[0jÔ¨\'Z6HOKÃ¸  ‡„ ¿¿èééÁ’%K`nnúúz¤§§cáÂ…Ëå`–VV‹Å6lÂÂÂ––@\0¥R•RÉîÂ%K–°Š?))iÈİ©P(ĞÔÔ„·Şz\\.™÷îáôéÓ>|8fÎœ‰Q£Fi,¶¦N\n777ìİ»ï®Z…ÕŸ}†ùóç?·aò<\\ı‘HDÛ¶m£\0?:yò$õ÷÷³ÿ&—ËéæÍ›¤R©H¥RQyymŞ´‰H Ã0$—Ëi÷îİ¤V«Ù{:;;)33“ÒÓÓ‰a:räÉårÊÏÏ§ââbvşÁû‰ˆ9B2™Lãİ***(33sÈ÷®¯¯§´´4v}ûö‘T*%‘HD±±±K@ã;wîĞ;w¨¯¯Nœ8Aşş~ôÓO?‘H$úo,%ñÖ­[·î?!hGG~øádÜNÇö;0{öl\rnô˜•\n~ûí7Öâ),,D]]\Zêëáíãƒ®®.èëëÃÔÔ<À7ß|\rµJ…BGGİİİ°²²‚……\0°Ö‡Ãa}777èëëkpu__LMM1|øpíªR¡¡¡hll„Z­ÂØ±^Ğ××‡§§\'ki‰Åb8::‚ÇãÁÈĞe¥¥ğõõ…üüü±oß^”——#  PÃ™ı?¾C\Z\Z\Zèµ×^¥%KSEEÅ×¨T*ÊÈ¸M¿Ÿ:E¤P(èÒ¥K$—Ë‰aúå—Sgg\'ñù|:wîË­\n…‚êëë)##ƒ†aÿÍ¡T*éŞ½{ôÑGÑ›o¾A===DD”MçÎ¥S§N’J¥¢sçÎÑöŸ~¢ÚÚZ\nTTT¤1Oyy9-Y¼˜–/\Zÿ£wúË©­­¥Å‹Ñë¯/§¦¦¦\'ãÌ™3ôİwkÙ}TÔˆÅ\"Ú¹s\'‰D\"b†N:I‰Dã:±X¬5ï ÁÄb1	…Bêèè \n…$‹I¡P<ñº»»(33“ª««)&æ{O\\\\uuu‘\\.§îîn:|ø‰D\"JII¡\'k½#Qcc#-_ş\Z-^¼ˆjkkÿ2Aş’ÒØØˆO?ıf¦føqÃŒ9Rë\Z±X¥R	}}}Èd2ÄÇÇã7Ş`ÅYjj*:ˆ)S¦bÙ²e044„J¥—ËÕPÀJ¥b±­­­¨¯¯Gmm\rª*«PS[‘HF­Ã0¬5Äåñ0|øp¸¸¸ÂÍÍ\r...p\Z=\Z¶vv6lØÊ·§§r¹666\0€ììl(\n8;;#%%Ó§O‡\ròóó‘•™	===,Z¼XËÉlooÃ×_\r‘H„;~şK!?Mööv|¶z5ttu°yó–!‰‘››‹²²2xzz¢¿¿‘‘QHNJ‚´¯óçÏ‡ÃA?\nˆùùùˆŒŒduZ­FSS\n‘™™‰{wï¢£½\rÖ#l‚1Îc0Òf$†›šÂĞĞ]äAG°··ííí¨««CnN6ø°±µEÄø„…‡ÃßßOŒ›1ƒüü|ÄÆÆ\"2rfÍš¶¶6$%%aÙ²e8>.‚­­­Öú|ùÅ`ˆÁO?mg‰ü?B‘H„o¿ıíííØ¾}Çf-áŞ½»ğ÷@ww7:„9sæ ¹¹ÆÆÆ°±±A@@€Ö=b±÷ïßG||<îŞ½+++„……#,,îîî9r$ôõõÁårŸiûš¼2™¨¬¬Dff&²³² \n1a^|qÆ‡aÃ†iİ/—Ëqøğ!¬\\ù6T*ù\ro¼ñ&«´[ZZ°uë¼ÿşpww×xŸææf|úé§°³³Å?ü8äüÿ±R—Ëå´eËfš2y2UVV>óz©TJ;wşLUUUT\\\\LÉÉÉ¤R©èÆÔ××÷˜,ï¦âiÉ’%äí5–¾ûî;ÊÈÈ ¡PğD]ĞÙÙIÔØØHù”••Ib±˜ÊËËI P__)•J-İ#èöíÛôİwß‘×XOZºd	]¸pº»»µ¾·½½”J%?~œÕ“b±˜\Z\Z\ZhïŞ=ÔÑÑAqqqTPP õ~49*Š¶nÙÂšåÿ5¥Î0={–ÆĞ½{÷kb™LFR©”T*effÒõë×µ®éïï§ÄÄ›´pÁŠŠŠ¤_ı•êêêH¥Riø8R©”ÊËÊèêÕ«tãÆ\rb†úûûéØ±c$“ÉèÈ‘#”››K\r\r\rtîÜY–P»wï¦ÒÒRª­­¥®®.-ƒ£®®~ıõŠŠŠ¤ERbb¢†EDÔÓÓ£±àííí´dÉbjnn&\"\"@@}ô*//×ú¾»wïR`€?;wî¹-Äç\"H~~>…‡‡Ñï¿ÿÎ:oÏ³CJJJ(%%….]º¤õ¡´zõjòõö¢;wRCCƒw677SCCİºu‹âãã)33“.\\¸@/^d?îÜ¹³¤R©èøñãTPP@µµ5”Mqqq$•J)11‘:::(;;‹Ö¬YC\r\r\rÔÜÜLJ¥RcêëëéçŸ&o/Z½zõS%@__»ø>ŸvîÜI­­­tâøqª¯¯×¸V­VÓ©S§h|xØ»è/YYİİİXµê¸8»`İúõZºîînèèè<·œT(¸rå\n~ù÷N¸¹»ãã?§§\'«`†Á±£G1)22™†††ËåÉdèïï‡©©)ìííannvŒaƒÈårXYY¡ºº\Z#FŒ€±±1ÚÛÚ –H P( •JQYYiÓ¦£´´<OÃ‰U«Õ(++ÃÎ;Q]U…~ü1æÎûÄ8œ€ÏÇï§Ocùòå077‡L&Ã±cÇğÒK/iår9Ö®]‹úúzìÛ·æææ]‡¨T*Ú±cÍ=‹ZZZ´ş],Ó¡C‡†ô†\Z€6lØ@ştìèQÖ—ËåTXXH555DD”˜˜H$—Ë)%%…îŞ½KJ¥’\nÅŸ¶ëûúúˆÏç“T*¥óçcèæÍ›$(óŞ=6Ì\"‹Ù#‹éèÑ£àïG7n$¡P¨5g[[íŞµ‹õ­d2]¼x‘.^¼HÛúIKg´´´Ğ¬Y3içÎŸ5ÄñŸYÙÙÙ4‡ôr÷îİK;wî¤ŞŞŞg.Lss­\\±‚fÎ˜A999¬èS©T”Mååå”˜˜H]]]ÔÕÕ5¤L2™Œ:::¨ªªŠ\n)\'\'‡rrr¨°°ªªª¨££ƒd2™–xU«ÕÔÙÙIñññt-!†¡.¡öíÛKeee\Z×eggÓÌÑ´rå\nV_‚‚‹Eì:0C===ôË¿ÿMEEEtöìY­gß¼y“‚ƒƒ(\'\'ç¯‰,‰D‚?ø\0vövX¿ş{\r‡Ša\\»v\rcÆŒ¥¥%.\\¸€yóæÁŞŞ~È]XSSƒÏ?ÿff¦øöÛµ3f†AAA*+*†‚ÂBØŒ7wwX[[k½KSSÊJK‘_P€ì¬L´´´@­RAça~„€û0Ëãñ`o?\naaaÄØ±cáàà g’J¥¸zõ*ÚÚÚ°bÅ\n­¯««Å÷ß‘H„­[·ÁÅÅE+}ğÕš5øäÓOakk‹«W¯ÂÏÏMMMĞÑÑAhh¨†ƒ»ví·hooÇ®]»all<äZ=1¸xùòe\\¼Í›·ÀÂÂ\"‘2™zzz¨¯¯Ÿß‰	&ÂÄÄHHH€¯¯/$	ôôôXPSSƒÏ>[\r‡Qøá‡aooÏ³³³ÁápĞŞŞ777Œíkë¬ÑØØ€.à—_ş½{ö ´¬.Î.˜=g–¿ş:Ş|ë-øùù!22_|ù%Ôj«Ş}‹—,»‡„]]ˆ=ƒã\'#;;b±æææ055‡Ã®®.tuuÑÚÒ‚àà`Èd2Ü¼yb±vvv077Ç„	pÿş}ÄEHh¨†àr¹K$(**‚HÔ‹¬¬,L›6\rNNNHHH€‡‡«ƒx<\\\\\\°{÷nØÚÚaìØ±Ï¯C:::(zútúí·Ã¤V«éîİ»tàÀŠ=OIII´mÛ6Ö—`†îŞ½C™÷îQaa!•••±²¹©©‰¼ø\"}ôÑ?4ÌÎ.Pff&µ´´°¦æ lU«ÕTSSC[·l¡À\0Z¸`8p€ŠŠŠH\"‘°²^$ÑÍ7¨²²’\r<Êårºyã¥¦¦’L&#†aH\"‘ĞƒèÀ´`Á\nğ§­[·RMM\r+Vÿ7!!Äb1åææjX…B¡şñá‡´pá¸Ã0tñâEª¯¯§üü|‰D¬Ş;xğ\0şıw\rkN­VÓáÃ‡):z:utt<Ÿa†?NÓ¦M¥öövVN?òòò(..ìßO×´r¡P@+V¬ 7ß|“:;;Ùy”J%İ½{—N<I7nÜĞ:\nÊóğğ0zuÙ+”””¤å°UVVRzz:I¥RHğà¯¡¡N8¡ôìîî¦ÄÄDZöÊ+4><ŒöíÛ§¡´\n\nèÚµk$“É¨³³“²³³5Ñ7ŞxƒV®\\ÁŞ#“É¨´´T#ú½wï*..&µZMÉÉÉZ&t{{;M›:•Nœ81¤o‚¡<àÉQ‘tòÄ	-\'®½½.^¼HjµšÊËËiÏİT[[«5±\\.§üfÍœAuuu¬_rùòeŠ‰‰¡ÂÂBÊÎÎÒàœÜÜ\\Z¼hÍš5“.\\¸0dDµ¿¿ŸîŞ½KuŸù´ŸB¡ „«W)99IËê‘H$táB<Íš5“/^Dyyyì.éïï§+W®ĞñcÇ(>>^#ì_[[K3gÌ \r6hÌ©V«éÆëtöìYv·´´ĞáC‡hÛ¶­ZÖá‰\'hÊä(âóùÏ&È™3g(rÒ$­‹†¡sçÎQzz:+^¤R)]¹r™bcÏ“T*e¯=ş<økXmmm”››Kb±˜’““ÙR(tîÜ9\n\ZGk×®Õ²hş°Òš)\'\'‡ú°+†ú\r.â±cÇ†ÌS477ÓÚµßRpĞ8:wî»pjµš._¾LMMM”’’¢±‹³³³)ÀßbccÙ¿\ræn†¡ŞŞ^Š¥¸¸8êîî¦üü|JKMÕbúI\'ĞÙ³gŸN‘HDóçÍ£C‡iq½D\"¡ãÇÓİ»wiÏİ”ŸŸÏÊé¶¶VV§TTTPä¤‰tìØ1R«ÕÄ0İ¹s‡îİ½;àuÇÅ±(•JiûöŸ(4$˜Î=ûDxÿş}º?ï¹	ñø¯¯¯víÚEwîdâ9sæ…†Ó;XÆêìì¤óçÏ³bo0.¦V«éèÑ£9i’†8b†òòòhßŞ½ÔÜÜÌ®ŸZ­¦}ûöiè$†aèàÁƒôÂüùZ©_\r‚¤¥¥Ñøğ0ª®®Òï¼Y(Ò;èÈo¿Qzz:ËYıııôñ?ÿIo¿½’9\r\r\rtõêUºté%&ŞÔ­lÜ¸‘‚ƒ‚(55õ©±3gÎĞüùó(55•M>=ïO,ÓéÓ¿ShHıòË/OômRSR(8hmÚ´‘e®¼¼<jnj¢ÊÊJJKMeÅšD\"¡+VĞ\'Ÿ|Â2Ã0ÔØØÈJÊÊJÚ¿?SQQ‘†>\"\"ªªª¢ğ°PJOO×ø;÷Q›:11ã#\"àää¤å\\¹r·nİBVVÊÊÊ‰×–/‡««+kâ¦¥¥áÖ­[øøãOX;ÛÁÁ666J¥pr\ZÃ†OöíÛ‡âñë®]ˆŒŒ|j8]­V£¶¦~ğ>6nÜ€öööç*I*--Å‡|€¾ÿR©ı}}Êíâr¹ˆŒŠÂ/¿îB|\\<öíÛ¥R‰ÀÀ@»º \n¡R«påòe0ccc|òÉ\'HNJDzz:›ÛÌ±455¡­­,@RR\\]]QXX•JÅ>sÌ˜1?>I‰‰\Zg	ÒÙÙ‰„„«˜;g®Vâ&ãömxzzbÒ¤Iˆ‹‹Å¨Q£pïŞ=H¥ØÚÚ‚Ëå¢»»ûöíÃŠ•+ááá\0(*z\0‰D‚   Ì™3®®®`/^Ä™Ó§±uëV„……=GnƒaùÜÙ³xù¥—pãúu(Š\'æm~ûí7,]º¹¹9ìü}ııxRèÃá <<[¶nÅéßOáâÅ‹ \"øùù¡¡¡D€L.‡P(\0xzzâï+VbïŞ=èééÑ`„††L˜0‘­ıâñxğööFyyù ‡¹óæ!!á*ø|¾6A\n¡Ãã! 0Pëeİ=<ààà€††,X°£G†µµ5Äb	{MZj*ºº„X°`x<Äb1tuõpüøq±UØ¼i#Vö\"#£4ˆñ¤ÅbÒX8¡P€Õ«?ÅW_­Acc£F!//o¯\\‰ŸwlœÇ›r6İû$¢DEEáÓÕŸaÓÆ\r(,,\0„‡‡£££ŞŞŞ‰DËåàñxX°`„ÒRS5¾ÁÅÅ<íííèííÅÕ«W„»wîh<o0Q7øÖSgû÷íƒŸ\0fÌ˜¡Å±æææĞÓÓƒ\rPYY	¥RÀÀ@6Ó÷ıúõ˜7>¦OŸÎÖÄ^½zaaapvv†ºººğå_`ÂÄIxûí·¡£££^¹té\"T*5ôõõahhÈ¾G~~>îŞ½£µx5ÕÕ¸xá¬¬­abb‚cGâ›¯¿‚@ r×99Á´iÓX	0XíxëÖ-H$bØÙÙƒËåÂÍÍ\ríí¸éÑÑ9r$,-­““‘H…B‘#GÂÔÔRi.]ºˆÙ³ç°%Hƒ‘o„‡‡£¦¦jµ\ZIÉÉˆŒŒdÃPúúúèèì@YY¢£Ö]\0„B!23ïaı÷?<µˆ˜ˆ ««OOO°——‹ªª\nü¼s\'›WÎÎÎFppÌÌÌ`jj\n†apşüyˆÅb¼óöÛlPwİ¼yØºeœœÆ ((&À××r¹ü©?_µ¦¦¦èíí}êû÷÷÷ƒÏç£®®™™™ÈÌ¼‡ÊŠ\n>\'E¢°ğ^{í5ãwVaÅŠ¿#öüyü}Å\nXZZbÜ¸qÈÈÈ€••;çüùó±ß@AyTÔd4Cmm-rrr R©`gg‡_|µµµğööfÅÖøñX·î;X[[¤¦¦*•\nîînO•å<O«ÀX­V#66‹/eƒ‹÷îİÃ’%K‘‘#F€Ãá ¾¾‡Äš¯¾‚ıÃ\\¼P(Ä‘#G`mm…Ü€7®#ÿ~\ZĞØØ€øø8p9\\DNŒ1ÎÎ¨«­ò½¸\\.ÄbñS‰1fÌ„„„ào/Ì‡\\.×áã#ğÃ÷? ıv:Ö¯[‡Uï¾¼ûî»Ø²y3¦GGÃÉÉ	B¡/¼ğ¸\\.úûûahh{{{,Z¼qqq˜8qx<†Á•+W0räHÌŸ?Ÿ]³ÖÖV¤¤¤ÀËË‹efwww(•JÔÖÖ´h\0@YY<<<ÙÀŞŸ-	ÊÎÎÂôéÓÙ—ñõõELLº»»1|øpbbbàìâ‚èè \"<xğ\07n@tt4^{m9ŒŒŒ¨µ¨1 b°}û„„†ı¥bÀĞ°püºk7¸<úSìÃ`ú´iĞÕÓÅÔ©SñÑ?ÿ‰#Gàúõë˜:u\ZœÆŒÁù˜¼¼¼œœŒë×¯#33s 8ZGÓ§G#+3MM,ƒ,X°\0aaaÉdHMMÅ=»qûöm´µµA©T²Ï·¶¶†‡»ÊÊÊîU*•(..†¯/\r\rÿôÇÂÂÜcö]´µµ¡¤¤ˆÇCcc#Î=‹¿ÿ}x<bcc‘””„o¾ù~~~,lmm>^ëwïŞ…J¥Â;°pÑâ?Õ£òò+Ë°}ûvXZZâÔÉ“Zº…ÇãÁÏß%’½½=¾ıö[ˆÅ\"=zóæÍÇ¹sgÑÔÔSSSŒ7\r\r…D2`ÔŒ;ffæ(,| Q—vèĞ!äææÂÑÑ+W¾—^z	&LĞÁFFFğöñAqq1”J%¸}}}(++…———ÖåççC*•<µ¹&++aáãaai	†aP^^9sæÀÃÃƒ]èôô4899ÁÎÎÛ·o‡µµ5şñh‰?CCCLŠŒÔ~B´´4˜ššbÍš5øtõgÏl˜ÑÕÕÅ—ÿú>ûì3˜››#//­­-Z×M266šµezzzX´h1fÍš…Ûééöõ±ş†……&Mš„œœ±CVVëScåÊ•˜7oœÙ0|xx¸VºÛÛÛåeeèëë·»»uµµ=ÚQ‹»\n\n\nĞ××•JùÄnÖÛéé?~€«e2$	®^¹‚šš\Z@*•\")1	r¹11çğÖ[o!22RÃÂzÔhÒü=sú4z{{ahhˆ7ß|[¶n{b{š¥¥%~Ú¾Ë—¿¨T*\\ºtqH‡sæÌYC—ÃáÀİİ?mßwß}I‰‰èëëƒ¡¡!ª«ªàííÍŠc‡ƒñã#pûv:Äb1»ó†*ÄÊústtDMM5zzz ÓÙÙ	-ı¡R© ğ‘––öpkGÃŞŞ022BKKø|>ÜÜÜXÙØØÀÙÙ™­RoiiA~ş}¬şìsXZZjUú=>\\\\\\àìâ¢¥À…Br²³1cæLp¹\\Ìš5vvvøö›oP[[£á3}ÿığññaÿÖĞĞ€;Ú»HO~~~O}DGGcÏ®]hii››¬¬­‘““SSS– îîîèìè@kkë³#FŒ€øà\nø|˜›[hq›X,†··/^Œ×_/¿ô2ÜÜÜĞİİ\rµZ\r\0¨¯¯ÇÈ‘#ÙrR333XXX ªª\nİİİ0Jaaa‰3f ÿşı§:fƒ¢fñâÅCî’Ø¸XV!r8øûûcÏŞ½˜0qˆÓ£g`Ï½\ZÄ \"ddÜ†ô!üÆ£câÄIÏ,õäp8ÈC¬½\0\0 \0IDATËË‡ËAYY)ë—av-lll0ÂÆõõõÏÕí;xßàº™ššÏçC‡/Àı‘Tã£}YYYP«Õ055…‰‰	<zìƒ£¶¦ÁÁ!ì½ééé011ŸÏÇøñãAD(((DÔäÉyrÎ@¿ù£vüP#8(\n…B«ä(/7ÕÕÕ\ZéÏQ£FaË–-HNNFtt´VˆD\"AÌ¹sCŠÇÈÈHèëëãi•P\n…ùùù1………˜?ÿ444ÀİÍJ•ğññ¾¾>‚ƒƒ5vë“|¹ôôtøøø°Ì §§wwğp…B!FÙÛkÉ6±XŒ9sæ`Ò¤Ipuu…B¡@jJŠÆÄUUUí4š••mmmĞÑá±ÔW*•ÈÊÌ„·7tttàçç²ÒÒgr¾ÌÌ´·½L&CZZšÖš™™aáÂ…C6åäçç£¾¾nÈ…±°0æíìì„…¹9fÍš…¬Ì,(•JØÛÛ#+;YYÙ°{ØUÌåráää„êªê!{)¯^½ŠïÜ‰Ÿwì@rR’†¥Åáp0Ê~ºººÀíìì„………A$b1¤R)úûûadd+++˜?Ôƒ©««c$†Á”)S`nnwwwp¹\\ˆD\"´µµ²£‡‡Òo§?1˜È0îŞ½ƒwW½ƒşş¾!¯‰=£Ì{š²T«Õ¸xñ\0ÎÎäŸ˜˜Èd²\'¤¤¤°µµEKK3Äb1,--áää60Èårac3µuµ¬X¬¢¯««ƒ““şñÑGøtõj¼ôòK¬ò|wKKtvv‚ÛÑÑ£!JRzE\"ô÷÷£¬¬wîd ­­M£¬E.—C*•`øpS–{ëêêĞÖÖÆš—\"‘J¥f•Ü¨Q£P^^Îê—ÇEäÁƒñşûï?5¼ŞÚÚŠÜÜÜçR–uuuÈB™?ÊTë×}‡µß~‹!ävz:Üİİann•J‘H.—‹áÃ‡£¦¦†5^Ûì$b	Ëı\\.FFF8sú4ŒYkÎØØ„…”\ZÆÆÆèìì„ŸÏ²?[­R!((hÈşAÙªR«a``ÀRY,£¿¯6ï‘ÉdP«T¬ÃibbWW7444hø õõõØ²e3ÒÓÒé_¼ğ·µê£4,,,ğÆoâÀ¾}P©UO»$$\\Eqq1Ö­_àà`öD\"ªª«0räHğù|¨Tı\')))°µµESS[Gf``\0µZÅî\"bË_:„ÀÀ@¨Õj´´´`BD„ÆÑ××‡P €X$†î>R¥ÂÁƒaff\n]A__ÎÎÎ\r\r…Z­1{¯ttt0ÖË’‡Ûq°#êQŸ#,,÷ïß‡¿¿?†Á­[·°aÃğùO%Æ¨QøtõjDEEi)û§dÕªU˜0avîü9ÙÙO´¤šš\Z±jÕ;øğÃñê«¯ÁÀÀ\0eeeğ÷€‘‘ttx\08P«Õàr¹xë­·´`¢tuuÁ0¤aAÙÛÛcÙ«¯²~	ÇCss3›WaûÓut –ˆ¡ÃårAO°Ş{ï=˜ššâÆ		a‰¢T*&‡8ì½‰úÈÍÍÅ‹/¾øÇ<ÍëááöcŞ¼yøı÷ßq`ÿ¾gF˜ÿş÷Xöê«Ïôaõ÷÷Ç¯¿îÂåË—±k×¯èB€J©ÄíÛñ ğ>ûüs¤§¥!  \0\\.Däk”J%îß¿}}}Œ1‚Uì>ÉúŒÃáhUa€ÁcÂ2†©™é™7Ã‡bLWWhkkÃ¨Q£ ‰PRR777ğx\\v{xÄjØÙÙ¡µµÃ‡ga0\r¦ÙØØ€ÇåaÕªwPQ^şTbxûøà³Ï>C`à¸!=û?3LLLğòË/#,,{÷ìÁ×‡´°¸\\.’““P^^…RE‹³D\\‰DµZ{{g\ro\\©T‚ÃåjüM¡P ¤¤¥¥¥3f\"\"\"Ğ/“±¢~J¥¦¦¦Ğ1Â2™Œõ8GdTZZZ““.—‹#Fà÷ßO¡¸¸»wï€BâñXø<}}}XYYÁÙÙlàLGGGÃ)344ÄÊ·ßFÂÕ«hjjBŸTªE##c¬z÷],Z´è¿Š\'ÂápàììŒ7lÀÔ©Sñë®_ÑØĞ µ#A;;;LŠœÄú]R©ºº¢›aX[Ğâş¾¾>ğx<Ö/S©T(//‡‹‹\\]]±iÓ&„„„°!˜ÇMzk+kèØØØ°QËGG[[ÚÛÛÃ‡ÃÃÃ«V½‹k×®ËåB__æfæ\ZSMM\r<<<ÀçóÁ0ÌÃ]¢‡®®.\rœ5k¦L™€²²rÜNOGbb\"Äb¢&OÁûï¿Ï\'ŸÕ9ÔÖÖ=zzz˜5{6üpæôi?~<ŒiÓ§Ã××vvv\ZPL]]]ĞÕÕÅğáÃallŒ«W¯B(\"8(:3€=İİ°°°duÜ€ïå§cdĞÇÃ+‰#ll 3b„5ÚÚÚµvˆD\"AGG,,,0ÚÑ‡ÂìÙ³5Pß\\\\]ĞÖŞ†aÀår†ÔÔTøúú‚ËåbØ°apuuEÃc\\8¸£ìíGÁŞ~¦M›†>ü6ü¡Pˆİ»w=sQ zz4,\\¨eÊ8qMMMÏŞ1¯ãÍ·ğÒK/\rˆÓ!‚ƒ…®nî011@ €X,F]]`oo†aĞÖŞÎæÓ·HËÊÊXì”¾¾>ÈA àÃŞ~t,,,‘••¥µ\0cÇ…R©„\\.Çß^|“\"#ÑÓÓƒ1cÆ°×¸ºº¡ ?Ÿ%ˆ<<< ‹QUUWWW„†…¡  ¯½öÚSõEVV’“’ş”266Ñ\"ˆL&Ã…øxÔÔT?÷<£1şü\'¶I¶n‡††²e>3fÌ€³³³FçWuu5‚‚‚´î,rhnn†R©„H$Òh} \"464Â××\\kkkTUVjy«Ñ^üııÁãñ`mm\rWWW¨ÕjVI»¸¸ \'\'}õˆX,f1KÄb8üüüqû6z{{Ÿ¸ ÙÙÙØğãZ\'ä³Ï~´Å®¼¼ìOf=ğÍ7_?Ñ!íééÁŒøùùA.—£§§©©©ˆ‰‰aM\\©TŠÜœl-I¡P ²²øÛßş†ø¸8¤§§iˆÃşş~TUUäÔ­­­!•JÑİİ­ÑDÂårÑÜÜŒúúzttt ¥¹=½=000À”)SakkGGGˆE\"´¶¶`øğápttda”mvOOO(•J”——³y“GGyy9¾Z³fH=öÌ¾ùŞ^8::jè>Ş_@{+.*Â?ü€7lĞ2$ÊËË¡V«Øz³Ş‡ëğ(ø@kk+RóÃ ««2™]]]puu…««+ZZ[4\Z º»»Ñ××÷A€ŒÂA €®®®‡Ø¶•°··‡“ÓhxxxÀØØ<ujlmmáìêŠÒÒ2xz‡Ã££#a``\0Lœ8	©©)×ĞS---Xó¯¡££ı/YM}}}hkkÓX„ÚÚZpÿ\"önjj\nöìÙÕ«WC_ß€\')))l¨ÏçÃÒÒ\n\ZVVii)Ü‚<*ö;::Àãñ…B	KKK¸¸¸j<·£½õY¸¦¦¦ğë…º‡q|‰D‚ŒŒŒˆÀøñ\n\n‚»»ÌÌÌ ««‹ÎÎN44Ô³fíÄ‰qûömÖ¦o¨äËmôõõ=c’µDÂíÛ·!‹0oş		ÅèÑ£abbÂ‚_Êd2Èår(•Ê!}†e«™(}B4™ˆXqûèÜD“aÃàää„ à`œ=sÅÅ%ì}íííHNJDôŒĞÓÓC^^‚‚‚•™ÉúFÃàöíÛ˜0a\"+Šd2òòòÀår+VbåÊ•°°°`z,ÕÕaìX¯?ÄÈÈ(**Â¢E‹ĞÕÕ==]p8Œíˆüü|6eeehhh€··7>T¤<a¡aØ°áGtt´ÃÖÖNNN=z4»¨jµ\ZøiÛ6¤§§céÒ¥ì.ñ÷÷‡¥…%Ö®]vÑÛ˜%	¤R)dıı¸}û6=¢eæVVV±¢\\.G^^îAÄÕŸ}wwwèëëÁÀÀ&ÆÆ0f##cÖâéêêÂÒ%‹Y=@DHKKƒša0~üx6lR\\\\C##ö]ÚÛÛQß®ıa:::°³³Cii	.ÄÇÃÂÒhjjBhhˆ£ÁÃÓ†††ĞáñxğõñAll,›‚ÍÈÈ@Ê­[Ğ70@zz\Z–-{,À¦M›09*JÃZòñõ…Z­FaáØÚÚ±¾Á yWRR‚àà`¬X±ìÇ´iÓØ•“Óhèéé¡­­\rÎÎÎ\Z&ñã…\0¦ff8vüğ˜5X[SÃ¦„B!º‹À°áÃ±téÒ!ó%\ZsÕÖbŞ¼ùì³…B!Ø+VÀÊÊ\nEEE000Àˆ#¦QyÃ±pƒqrr‚““fÌ˜‰ŞŞ^ÔÕÕ¡»«ÆÆ&\Zy§²²2,Yº<o .ËsìXTWW£½½úúúxùå—1eêTLœ866#áêê\nSSS¬]»VÖÖ \"H¥R¨T*ØØØ`ÚôéHH¸ª‚‘Ëå¨¨¨@GGT*fÏ™]]Ä?ÏšØ††F˜2uês%­ììì†»).)f\r‚ö¶¶!SµÑÓ£Ÿ‰·Ëápp÷î]DL˜\0\"Âù˜èéécÖ¬ÙèììDSS†AII	Ë”\n…	W¯búôh­t°L&Cqq1ª««ajj\n;;;¸¹»k˜×ííí¨©©fák¹œêSSSVş>ŠYåééšš\Z6šYSSƒøøxÄÆÆ²¢bşüpıÚ5TUU±ªªªbíôîînŒ1ï½ÿ>;†’’?dôøñãQPPğÌÌ©©)´Á{{zĞÙÙ9`¾65jÍCDğx&He?ŠŠ°õe%%%8~üŞ{ÿ}X[[£²²¡¡¡èîêbkšDf%nÜ¸ÎÂN=\Z×:sæLMMÃî¤ÀÇŠÙKKKaffÎ¶€p`øğá˜6}:ÒÓÒ4z\0 44ÉÉÉHNJÂÁP__îîn,]º”ıH///L6\rçÎeÄÇÇÍÍÍ‰D(((€T*ÅÌ™3‚;¶³~‰³³3ªª«†äìÇ6**JkÁuttĞÔÔÄ¦”‡â|ŸgzşMMMã4VÖÖèííÅöí?!$43fÌ€J¥ŸÏG}}=–,]ÊZuÃàìÙ³˜>=šÍó„B!ššš`nnøùúâÚµk(,,ÔˆX«T*¤¥¥bzt4+&¹–áß¸qå¶G£¤FFFacƒUï¾‹iÓ¦aæÌ™léã`¤÷•W–áúõë\ZâÇÄÄppp@AAôõõ±zõj456aÿşıl!CTÔdÔÕÕ=Sl\rÖÁ>¾àuuuËå¨«ÕÃÎŞ\r?M\\aÊÔ©P*•Ø·w/Zš›±zõjğx<dff‚adffj<¿´´7o\\ÇË¯¼ÂFo\n23ï!..-;o\\\\\\àå5VC\\uttàæ\Z\rK¬vöòò‚õˆÈÊÊÒzÙğğpH%V¶T3Òc;)şş8uê«K<==aii‰ŠŠ\n´··¡··X·~=bcÏ#&&Ã 44<x.=âîîşXµ3fÏ\r}}},\\´H«zÆßßÿ™c•J………ğööÆ¹sç‡uë¿‡ƒƒÊÊÊ`hhˆY³fâ7ŞĞXø“\'O\" 0P#µ­¯¯¹sçáı÷ßÇ¸qãpèĞ!ddÜÆı¼<Ó\ni«Q5ÊÄÜÜóç¿€+W.k•ÿ»¸¸ ??¥¥¥8zô(ªªªáåå­UºjÕ»¸tñ[ˆ<X2räHˆDbÔ××C\"‘ \"\"kÖ|…­[6#..£F9àAaá3õÈ€O3“?VVVØ¸iÆŒ‡ƒiÓ¦áË­ÑÈ‰O<ù™„‹Åàp9HI¹…m[·`ÍW_#44•••eoSSS?~\\#SyïŞ=\\¹|	«V½«‘Ûx´f744o¿ı6tuõ WÈ5œF™L†+—/cŞ#Õñƒ2O£Û58h	ÆuâÄ‰§\"ÿ¨T*úé§m4Ş<\r¤‚ŠŠ\njll¤øøxJII¡††~u\\`\08q‚~şy544<³‰3ñæMòôp§\0?ÊÈĞîªU(´k×¯äí5–\\]œ5ôËÎÎ¦I“&R``\0ÅÄÄJ¥¢¬¬,ª®®¦Ë—.Qcc£F›x{{;Í›;—¶oß>$ºOuu5íŞ½›\nXt£Á~ıG1È‚ƒÆQ~~¾Æß5Òp^^^ğöñÁõë×áíí­!ïÆ==½§óx<¼öÚrÜ¾}¿>ŒOW¯(swGuu5|}}¡««‹¶¶66.„¡6nÜ\0‡Üœ\\¸»»CGW†042‚‰‰1LŒM`ø0Ù%ìê‚Ö­[?dlLWWÿû\n\\¹r|>E*ët–8	ø|”””@!Wà‡~ÀìÙsB÷DÉd°´²‚‘‘{~ˆB¡ÀáÃ‡¡£«ƒWæÊ+\\ôõõaggtvvÂÁÁR©µµ5˜:uªFyÒõë×áëë§…y¢>£££cìØ±sæÎÕØJƒç³,!Œí„¿_\'\'\'x<4#‡ªªJˆD\"6Yãååÿ€\0Ü½7ĞrğÒË/cîÜ¹ğõóƒ««+F@ÕÕÕe=å¹óæ±­O*G7n,,,Ğ××†a §§‡áÃ†ÁÊÚ\ZpssƒD\"ÆéÓ¿\0¶nÛ†I“\"ÑØØ>¿İİ=033ƒ•••†¨¹rå\n~Ş±Û¶ı¤qô‡ÃAZj*êêëAD024„Ÿ¿?n%\'#4,L£\\¨±±ß|ı>ûü­0\n†Âq_¼xíØ±ã¹q1¯1§Ôj58q‚BCC(++KãÚÒÒRÓ*))‘Enhmm¥¯¿şšB‚ƒióæÍÔÔÔôÜp‚f¨Õjjll¤Í›6QHp0}óÍ7ÔÖÖF\n…‚îÜ¹CeeeôÛo¿ÑåË—µ\0b²23)4$„N<9ä»1CUUUôË/¿Pii)	…B:~ü¸ÆµÃĞöíÛiéÒ%CŠÿ!Ñ€®\\¹BãÃÃ‡x|ôôôĞşıûéäÉ\Z( ııı´~ı:š>mš8Ø€ü¼O\'Nœ …BAÛ·o§®®.’H$,’ÎÒ%K(<,”vïŞMååZè¢V¼¼¼œvíÚEáa¡´téRJMM!¹\\NtêÔ)*,,¤äädJMM¥ªªJ-Fš6m*}ÿı÷Zø‘C¡CÜ¸qƒ¾şúk-ˆ’ªª*\ZF			ÏÆokk‹ŒÛ·!\n®•éËËËƒZ­F[[._¾„I\'¢´¬lœJGGãPZZŠÓ§GØ#ÛÖÆf$tu˜==İÈÉÉ…¡¡!\nüıı1kÖ,888âò¥K8zìè€\'¯f ¯¯?PBóúõPC­VC.—£¥¥éééøõ—_°wÏôööàƒ?Ä?şñ¬­­Q__###Ö±tuu…¯¯/FŒ°Ñˆ:|úÉÇğööÆ¿şõ¯\'‚=*Ş{{{1fÌ6‡2h^<p\0J•|ğáxOD”»}û6V½½§NŸÑr÷Åb1vîÜÉ.är9.]º„%K–<Ö×!Ä÷ßÚÚ\ZlŞ¼E#\0×ÓÓƒòòr\"..¶¶¶¬¹8˜\n(..FZZ\Zn\\¿†Ö–xùø`\\à8Œvr‚µµ5†\rÆ~˜B!‡X,ŸÏGC}=îçßGIq1ìíGaÖ¬YˆŒŠ‚â,Şpww‡@ \0ŸÏGDD„ÆB•””àË/¿€««+Ö®]‹ç;ŒÏçÃÂÂBCÏİ¿¯.{ÆÄ‰‡vRŸD…Buë¾CkK+víŞ­e]•––¢±±ÎÎÎ¸qı:ÜÜ\n\0ÔÖÖ+++èêêB `Ó¦ÈËÍÅÆM›1~üx­D•J¥Â¡ƒñÑ?ÿÉ&~T*†a\Z\Z\ZP^V†’Ò”•–¡§·\n¹ê‡e¢<ôôõ`fj†±^cáííOOO899ÁÄÄ\\.\n…ºººàr¹¨®®ŸÏGGGfÎœÉ¢f\Z(÷îİÃWkş…à|ıõ7Z•\"jµ\ZDô\\5c±ïğ>±nİº\'ÇÖ&«««iÒÄ	tòäÉ!ü¥K—èØ±c¤P((//b)//§“uQQQ•••Ñ–-›)8h9sFK«T*ÊËËcÿ?ŸÏ§Õ«WÓ²e¯h1¨z{{©³³“Z[[¨µµ•:;;©··wH£V«)&&†æÎ™C¿>L\n…‚”J%•––j½K?>}š‚ƒÆÑÖ­[4{D\")ärjjj¢.Ğµk×¨ªªê™†ÄñãÇiÒÄ‰TSSı×QI­ ‹JJJ†tÂ9Â*.†a¨  €bbbXbôôôPkKÅÆˆ<}üıhÍš5ÔÔÔôDKîÆõëäí5–¼½ÆÒúõë50®ÊËËèÊ•+ÔßßO÷îİ£ŠŠ\núí·ß(..–Äb1İ¹sg\0á\'5•ÅÉ‰D4n\\ y{%?_jkkò{iÍ¿şEş~tş|ŒøY]]:u’~ùåºyã•””Ğï¿ÿNJ¥’ÚZ[µ`Ô‰ˆŠ‹‹)8hÅ<Â5÷YA·ùó_À¤I‘Ø´q£V®®.,X€S§N¢««ÙÙÙ¨¯¯Ç‚Ø-ÙÚÚŠ`ôh\'tuuaáÂ…8rôš\Zñúòå¸råÊ‘^W7W888BOOááá\Zõbİİ=¸wïrrrĞÚÚ\n¡Pˆ	&ÀÃÃ÷ïßGKKúúúP[[Ë¶#\Z\Zbñ¢ÅP*•˜9k¶VŸT*Å•+WğÆëËÑÔÜ„#GaáÂ?bc===())““‚ƒ‚QUY	oŸú\"455!1)QË7êêêÂÆ0eÊTÌ{,Dÿ§tˆf™L#V½ó¦LŠ?şXË:èêêÂ¯¿şŠqãÆaîÜ¹¬¬nhh`+\0ïß¿///¶„²»»±±±8x`?Çá7Ş@pp°ÆÜ€Å”íèîêB]}=ôôôĞÒÒ‚XZZ‚Ëå ¹¹€=û£¥¥k×®…™™{R‚••k))\näääàø±c((ÈÇ;«†.aU«Õ¸téÜİİàííƒòòrüúë¯xóÍ7`ii…[·naùòå\Zñ.…BŸwì@ZZ\Zö8ğ\\ç‰<×T¦¦¦3f¶lŞ›‘#áéé©AéŞŞ^˜£®®…8ş<ÊÊJÑÒÜÎÃ’ĞA¨¢AÌ©ÀÀ@DFE¡¶¶?ïØ¢E053ƒ™™`dd„aÃ†i<k°?\0¢¢¢ĞÑÑGGGdeeB bâÄ‰èïëƒD\"Á‚àëë¡PÈvºš™™AOO½½½ÈÉÉÁ–-›qğÀcíwë0}út–i†J¥\ZH­>¥¹v-áaåˆF‚‚|TT”cùòå\ZõºÃ >>{÷îÁÖmÛ4¬Ëg…;ÛÃ=}ú4øû±\'›=ªÜ†¡ææfÚ³g8q‚JKKY¼Â£G°²üÒ¥KÔÔÔ¨«P(èÁƒôİÚµäïçK‹-¤C‡QQQÑ2ù¯¾¾>***¢C‡Ò¢…ÉßÏ—¾ûî;**z TÉ0åææR\\\\RyYk(H¥RÚ¿?	…Bª­­¥ıû÷kàMÔÔTò÷óåú¿vä‘B¡Àİ»qáÂüû—_àïï\08tğ -^‘H„úúzÜÏËÃ+Ë–±©Z[Û˜II	\Zêë1{Î$\'\'³PNŠ…ÆÆF¤¦¦\"1ñ&ÊJKa?j¦OF@@ÀÀÁö–ÅÌƒ¦ëã2yğ —Ár¡PˆÆ†\"))-ÍÍëåèèhL<™=}M#-ÜÛ‹ññxõµ×Ğİİ\r\"‚••+6{{{ñïï„‡»,\\¨%Â\n\nğÏ>ÂÂE‹ğŞ{ï=Ğÿ/ëÇ‹Ó¶lŞŒ{™÷ğóÏ;áííææf\\KH€¯/ÂÃÃÑ××‡øøx466\"8(Ñ3f §§qqqxıõ×¡««‹„„Ì™3çÉv»D‚úúz<xğ\0÷îŞÅŒôõIaïà\0WWWX[€…¹ùÀ¹Rz<R(!‹Ñİİ\r>¿ÕUÕhnn‚±‘&LŠÄøñãáïïÏÖ=iÈd2\\½z<*•\n£FÙƒaP«ÕHKM…X,†ı¨Q9r$K0CCCã“?ÆÄIñùç_üéÃŒÿÒ¡`\"Q/~üñG<xğ\0Û·ï€··7[pıèn:wîÜÃÊÅ‰8}ú4æÏŸ+++Ü¼y¿ÿ~\Z»‡p8ŸTà&‹ĞÖÚ†¦æf´¶¶¢­­\r>½½½l€LMMaem\r[[[Ø?¬T<ŒÇã=÷1©­­­¨««ƒ‡‡ÎŸAtôØÙÙáÆë°²²FDD\n²²²PW[‹	\'B.—ã³ÕŸ\" 0_}õõ3Ëş#¢}ä\\7}ùå4}rbĞ\0\0ãIDATÚ4\r‡îq½sÿş}Ú°aİºu‹Åï=yò$]»vMëÍ?;†!¥RIr¹œär¹ÖA-ÿ€äæÍ›¨µµ•ÊÊÊhÿşıTSS3ä3rsrhÚÔ©´fÍš!Ñ¸ÿGÍÓˆiıü3ñİºu˜<yò9\n‘H„¸¸8Œ=\Zµ55X´x±–YÙÒÒ‚³gÏ‚ÏçcÎœ9ˆˆˆxb¾ã¿1d2ÊËË!—Ë1vìØ\'rsjj\n\n\n\n0v¬&O¬ÕpªV«‘’rë×¯Ç¬™³ğÿµw¥QQ][ú»·&AóW‹@•H1ƒà\0\Z‡¢Ø\"é$\ZH¢í‹âíhŞJ·yQƒ‚F1m\ZMûL48 ¸Œ@	øl2T5Ş{Oÿª€€BQD²ÖûÖb±€âÜUuÎŞgŸ}¾½¿õ		C3—…ôŒ\\RSRˆØÍ•¤§9`jšã8R^^NvïŞMJJJzEr¹œ¬\\¹Òx2—zLë£³ñ¸>óC…F£!|°ƒL•ˆÉT‰˜Ä®ZÕ\'M®ÕjIaa!ùüĞ!òÃß÷)t°Ü\\]ú4K~*Ò“–••…ÄÄ]˜;÷E¬_¿öööFjÅÅÅP«T˜ûâ‹F²Ù’ÈÅ½ö õ	ğæ›o‚¢(Ü¸qõõuøÓŸ¡T*QQQ†a \n Õê`a!@cY° wu’N§ƒ\r¢££<å¨¥K@Ó<ãk?ExD„ñç‚‚X…pŸ6\rííí¨(/GHÂDss3öíÛ‡KÆÖÿ|áááæQŒ6×ªã8Ü(.&K—şY²$’\\¿~ı±ò>=W\\SS™;wÑB$b7’İ«ã¶J¥\" Ã†úzræÌwD­V“””¢V«‰F£!ÕÕÕäÜ¹sD«ÕFC4\Z\r‘ËåäÈ‘#D«Õ\ZŸ)“Éˆ«Ëãó¦JÄ$33ó±ïÍe†äçç“ÈÅ‹É²¨(òË/¿˜uß¢Íå“)Š‚·RSÂËËëŞ~û÷ïïS ß³ È\0{{{¼ÿşÁiÒ$Ø=÷bãâ\Z\Zbü»··7d2ÚÚ€ÇãA ‚Ïã?¡i…BXXX@(€Ïø{…â!íèîİ» )\nB¡ĞøÌÉ“\'#:ú7¾»û4øûûøŞªªª •J¡T*‘œœŒõëÖÁ×Ï)©©½º³š|so–öööØ¾};‚ƒƒ±wïäüô6nÜˆéAAöt40\'}}}¡Ñh`gg×kÂÆŒ[[[´µµ£¨¨èaó™G>™L†/\\€{7m4q×.Ì_° _Î”••¶¿÷ş5,\Z^^^måèèˆk×®aë–-\0€?ù!!!æµÉ	1dçÏŸ©TŠãÇcÃ†„„†\"&f%¼¼¼¼Ğ3fL¿çŠ¢ Ë¡êê‚ƒƒ\Zêë)ÜtBGg‡‘í&cŞ¼yĞjµ¨ê‡ók(6zÒŞxóæ/8vìò®\\A\\\\<şı•W†¬oûTöÇíeee$<,ŒH=¦‘Í›7“¢¢\"“rTéˆææf’õP\n\"5Õ¸7Ü¿Ÿäææ–eIii)ioo\'\Z†MKräXXXH6nÜøğîæİw‰LV6\",˜GÁÇÃĞd £³qño ¶¶«VÆ`æ¬ÙˆŒŒ4¦ÎC}ˆH$‚“Ó$P¿¾Ü¸qps£¥¥‰uuu‰Dğ|Dy Œ€áNçÌ™3¸rùvíJDèœ9CÊG\rk/6GØû8”.ÛÚ`Ï½°´´Dyy923ÏâÂùà8QË¢ŠÉ“\'C$=‘Qb.pgìÿ~ñâE|û÷ÓàñùX°`!fÏ}{÷\"  \07m\Zv¯•Q3!999Ø¸!_¦ÕK¶›ã8466¢°°™gÏ\"?ÿ\Z\\\\\\1sÖLøxûÀ¹›µØß¦<¨Õj477ãÎ;øåÆ\r\\É»‚êª*Ì˜1/-Z???£Ç¥K±~İ:I;úØ(ì3!---X±b9\"Â#ğöºu®|½^{÷î¡¨¨Wóòp«ür9ÆÃÏß‰“œ&áùqÏÃÖö¡¨½áÒ¨Okr3vU«Tè”ËÒ‚jkQQQâ¢BÜ¿¶cÇÂİİ3gÎ‚¯¯/&NœØ\'jbşõ¯¨¬¬Äç‡›–,-Â²,öïßœŸ~Â‘´´OîıÕj*ª««péâ%\\¾|©›Ä‚Ï`âD\'ØÛÛcì3caiiet\'Ã@£V£³³ÍÍÍ¨¯¿–å`ii‰)..ğôô‚X,†³³3&Nœ;;»\'º¢ÚÚZÄÅ®BÌÊUˆ‰‰1ë™ãw{\rç‚ô/á£?ôdRèppp€T*Å?şqîÓ¦áoÛ	½^ööv´=x\0¹B¥BµZ\r}wçm@\0++kã¹eìØ±øì³}pp?üÖÖÖCNXNš4	kÖüöìIBppp_rô!ìíêê\"o¼O6oÚÔ‡F3äææW—)}ÛCÁ7ˆDìFÎŸ??Ì÷óÙ´i“Y“œ&Ü§N$şO$=MMMdÁüùdïŞ½O”¼~3?%%…Ì›÷b¿äƒEii)ññö\Z$=êrYFÊPm-R¦bíÚ?º{hûÈ±cÇ`ccƒ×^{mX÷\"</¿ü2yæ|ñÅ}ŠFwwwÄÅÇcrò TâF…ËÒëõdÇÿ&/GG÷RÇ*®]»úİòˆBæppõêUâ)õèÃ˜\nZZZHxxùôÓO‡eµ¿›Ëºrå\n™*“ë×¯›<Fkk+‰\\¼˜|ôÑGf}ÓÃÄÄDfK6/şL¦JÄOªê.«½½ûöíÅë1+ûíª6ØP9#ã+è=bccÍz…Ëãñğúë¯ƒÇç!==½Oƒ„Á\"((QË–á³ÏöA.—N—eĞ	Ÿ;wN¿\"ÀƒEQQññö\"?üğÃˆmš999ÄÃİ}X‘[uu5™LÏ0ëå”Ù\\ÖíÛ·‰¯¯ùöÛoM£££ƒ¼úÊ+ä½÷Şë#wmNèt:òÁ;HÔÒ¥½Ø“CÅÉ“_“À\0R]]=º\\–F£Arr2±páB““|\'¿ş\ZÍ÷›±zõê¹øéyWe—\'Nb³‚iR¤¦¤(ûT\\Vvv6	 ¥¥¥&QRRBüÉ™3gÌîÂ¹sçˆ¿ŸoŸÂı¡ ¸¸˜øû‘/\\.«©©‰,\\°€$\'\'›üA*•JG6lØ0â§àGi>[·n!+V,ï£i>”½3)i÷°#7³¸,ãşå—Zñê«¯š”t#„àï§O£²²ëÖ­´ê9 \n±víŸQ_W‡o¾95¨ÆÍı]¾­Xñ:(šÂWéé&»?³¸¬ÂÂBâëãM~şùg“WCEE™LN\r¢Ôk¤púôi2=0Èd2“ÇøñÇ‰¿Ÿï€”Ú·…BÔ”,X°Á=„I†zQ”’r\0ˆˆˆñ´ö@ƒ€?’““û4e,fÍš…9sç\"%å€Iı‡‡e!AO?__RSScòJøßo¾!Ş^¤²²’<mÜ¹s‡ø“ŒŒ“Ç¨©©1VÇÚaÊƒüıÈ‰\'L~puu5	\"ééé¿“c0‹ìÄñãdæŒ`rûömÓÇ8q‚øk¡Éeét:=š‰d*ÂÃÃMr3Z­‡„‹‹\"##7BÃ“X—‹/†›XŒÔÔÔÇª¶=nŒğğpˆÅ¤¥¥™~6Êì]ºt‰LsŸJ\n\n\nL^YYYDê1­ß&iO·nİ\">>^ÃÊ8‰ØÍä`gĞòàÁ²hÑ\"’¸k—ÉYØ{÷î‘¹sBÉáÏ?®ª¿sÅÑ£GIhH¹k¢Ûa†ìIJ\"áaa}JÌæ²íPÛÛÚ…BÎÎN(ärc;p•JµZmì©®Óé ×ëÁ0X–…F£ÁÑ´48Œ¨eËF…«êï\\±téR8::âHZ\ZÔj5X–Ã0F!4CßxµZ\r•Jel‰®P( —wB©P`ÁÂ…èRuáÄ‰½ÛÌÆ:¹%“!6.zã\'L€€Ï/\0ŸÇŸÏÏŸÇï%\rGóxàÑ4h\ršæA«Õ\"ïÊe>’Ö«‹çhÄÍ›7±üµW\Z:––à8Ë5|gYãÃ2`ÃwÃBÏèÑÔØš¦qô‹ÿ1V+›eB!(//G[[›‘ódà=õTK³D @*•JëxÔ#Èd²>İYMH$‚››Û` ¶g.şCÂsò²ˆ\\.§\00\"‘ˆ¦(Êh*•J¯Óé†Òd½^Ï©ÕjÊÖÖÖlÇs†aºT*•MÓz>EQ‚~n$9¥RIYXX¨---­»ÿíêêâõ\\—VVVœ……İÃbÔ]]]<\0°±±aiš¶\Z©Üœwê]aaa\0ekkëİ‘‹2>>¾\0[__ÏtSjäK–,é2×ƒÛÛÛW­ZU@ ıã?¾Ê²ì£„0ıwß}—@—”””Õ#ŸÖ€ÅÃVİ\0ÉÍÍ5244\ZMç_şò—Û\0”\0ºÊT*UÃzÌêÌ…B!àNaa¡Ñòêêê*KKK[hzJ’šñŠİ½{·Z$¡µµµR&“¤§§»4ö|ÑƒjvìØÁwuu½Ùó®¢(ÄÇÇë\r”V«ÅìÙ³\r$^’™™ÙRPP0¦®®NÖĞĞp³¢¢B”™™É\0WoNY¼x±6###ÏÃÃ£œeÙB›––VvöìÙò)S¦¨\Z\ZB)++“GGG›ÅB:;;\04VWWoš:t566öV+m_¿~}iyyyÑæÍ›«öíÛg´ÊÊÊæ·ŞzK3À™BàÖåË—oüFQº– Šaı¨·\0ğõõ}A\"‘XÕÔÔ(X–Õ¯Y³†ôüHesÕjõ8š¦íy¿1C‚<µZ­«ÁtŠÅbH$iALVVÕÕ™”””¯V«ÿ¯{±ò8O<Ù8¶«««\0\'ãF$T4;ÙšÏçÛÅÅÅ5eggëfÎœY°zõêñvvv–#–pÇwppàø|¾GğšÖh4\0µB¡ĞîÜ¹S‘‘a\r Ÿ´µµ¥wîÜYàáá!©ªª*=~ü¸·R©Ô½ÿşû\\÷Á™oee%íA\'\0à!í\0õ€±Û¶m³9xğ`Ç\Z)ŠréŞp‡J èÜ¾}»Šã¸	\0°iÓ¦kNNNÁ,\0ucc#§T*¯ØÚÚ†@kkk­µµµ#\0Ñ;®;;;ÿKaa¡s·ÖÈ³SŠ‹‹|}}\'L˜0áù+V„\0€§§ç<Ÿ©Tj“PbccãIQ”òşıûyvvv\0ĞÕÕuÀ$š¦íşÒ}šâîî^ôı÷ß{Î˜1Cmê8–––c“’’z6GîçYÓ§O§ËËË§OŸB“››±X|€‡T*ôë¯¿NÉÏÏEQhhh°îèèWXXØàãã3áQWªÕjY‘HDÓ4Í£iš]¾|yCII‰‹¡Ï{~~¾.::º¦éÉıYÜ¨œŠ¢„‡Ğëõœ………mgÏææfÁµk×ŒwÙEqR©´}Ì˜1Ï\rqÒ&lİºµ*>>~Ü¶mÛJJKK;½\Z\Z\ZT\0ÓK¦¥¥¥ÁÉÉéöš5k\"\0àÔ©S²’’’Ú9sæø]¿~½äÜ¹sÓ×®][+‰¦ ßyç//¯g›šš\n(Šb¦+hšŒv¡CCC)KKK~÷ÅïYC\n\0¬­­y¡¡¡‚óçÏ÷œDâììÜ9Ô	€ÈÈÈ1B¡ğ×¢¢¢)¶¶¶Š²²²Û/¼ğ‚w¯õôô´°··7¶\"’H$‚êêjI^^Ş³<ÏoË–-·^zé¥ñè»ñôô|öêÕ«wsrr\\!ÔåË—k¼½½\'b„ğÏÔÉèBÊÿ2ĞØã²Ì8\0\0\0\0IEND®B`‚',''),
('prerequisite_examination_for_print','10008,10010',NULL,''),
('qr_code_width','100',NULL,''),
('qr_link_prefix','https://gmcsurat.edu.in:12349/cl_general/',NULL,''),
('report_bottom_margin','15',NULL,''),
('report_header','  <table border=\"0.3\" style=\"padding:2px;\">     <tr>       <td style=\"text-align: center;\">10011|r</td>       <td colspan=\"4\" style=\"text-align: center;font-size:2em;\">       10012|r</td>       <td style=\"text-align: center;\">report_qr_code</td>     </tr>     <tr>       <td style=\"font-weight: bold;\">sample_id</td>       <td>sample_id_value</td>       <td>1001|n</td>       <td>1001|r</td>       <td>1002|n</td>       <td>1002|r</td>     </tr>     <tr>       <td>1004|n</td>       <td>1004|r</td>       <td>1005|n</td>       <td>1005|r</td>       <td>1006|n</td>       <td>1006|r</td>     </tr>     <tr>       <td>10002|n</td>       <td>10002|r</td>       <td>10010|n</td>       <td>10010|r</td>       <td>10008|n</td>       <td>10008|r</td>     </tr>       </table>',NULL,''),
('report_left_margin','20',NULL,''),
('report_right_margin','10',NULL,''),
('report_top_margin','80',NULL,''),
('restrictive_examination_for_edit_delete','10008',NULL,''),
('status_button_info','1001,1002',NULL,''),
('status_column_size','20',NULL,''),
('status_lot_size','200',NULL,'');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_bin_text`
--

DROP TABLE IF EXISTS `copy_bin_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_bin_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `text` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_bin_text`
--

LOCK TABLES `copy_bin_text` WRITE;
/*!40000 ALTER TABLE `copy_bin_text` DISABLE KEYS */;
INSERT INTO `copy_bin_text` VALUES
(1,'Absurd K+ EDTA','Absurd K+ may be due to EDTA contamination of Plain Blood. '),
(3,'Absurd K+ Hemolysis','Sample Grossly Hemolysed. Absurd K+ may be due to Excess hemolysis'),
(4,'High DBIL','Majority of bilirubin is of conjugated bilirubin(Direct), disregard total bilirubin.'),
(5,'QNS','Test is not done as sample is inadequate'),
(6,'Missing sample','Test is not done as sample is not received'),
(7,'Bilirubin interfence','Very High bilirubin has negative interferance in creatinine estimation  '),
(8,'Lipemic sample','Test is not done as sample is lipemic'),
(9,'Viscous sample','Test is not done as sample is highly viscous'),
(10,'email for COVID-19','suratcv19@gmail.com'),
(11,'Not done','Test is not done as lab resources are inadequate');
/*!40000 ALTER TABLE `copy_bin_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copy_sample`
--

DROP TABLE IF EXISTS `copy_sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `copy_sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `keep_ex_list` varchar(500) NOT NULL,
  `add_ex_list` varchar(500) NOT NULL,
  `add_ex_with_result` varchar(500) NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copy_sample`
--

LOCK TABLES `copy_sample` WRITE;
/*!40000 ALTER TABLE `copy_sample` DISABLE KEYS */;
INSERT INTO `copy_sample` VALUES
(2,'creatinine Urea','1001,1002,1046,1045','5031,5032','{}','');
/*!40000 ALTER TABLE `copy_sample` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `equipment` (`equipment`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES
(1,'11_REFRIGERATOR_HE_78_SAMSUNG',NULL,NULL),
(2,'12_REFRIGERATOR_HE_78_SAMSUNG',NULL,NULL),
(3,'13_REFRIGERATOR_HE_78_SAMSUNG',NULL,NULL),
(5,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4172_not working',NULL,NULL),
(6,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4173',NULL,NULL),
(7,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4174',NULL,NULL),
(8,'Centrfuge Remi PR-23 HOSP-EQ-P-138-VCDB-4175_not in Use but working',NULL,NULL),
(9,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25664',NULL,NULL),
(10,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25665',NULL,NULL),
(11,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25666',NULL,NULL),
(12,'Centrfuge Remi PR-23 HOSP-EQ-P-52-ZEHN 25667',NULL,NULL),
(13,'Centrfuge Remi PR-24 HOSP-EQ-P-51-ZCBN 4721',NULL,NULL),
(14,'D.I.Water Plant COLL EQ Pg 03',NULL,NULL),
(15,'Deep freezer(-40) HOSP-EQ-P-136_not in use but working',NULL,NULL),
(16,'Digital display thermometer',NULL,NULL),
(17,'Digital Tachometer- indi6121','2020-09-01 12:49:36','8866829055'),
(18,'Elinco Digital Precision Thermometer (Model No. TTX-483)','2020-09-01 12:47:36','8866829055'),
(19,'Erba Chem 5 Plus semiauto(0703120) 1 HOSP-EQ-P-3-1',NULL,NULL),
(20,'Erba Chem 5 Plus semiauto(060379) 2 HOSP-EQ-P-3-2',NULL,NULL),
(21,'Erba Chem 5 Plus semiauto(0703123) 3 HOSP-EQ-P-3-3',NULL,NULL),
(22,'Erba XL-640 HOSP-EQ-P-10',NULL,NULL),
(23,'Haier chest freezer: HOSP-EQ-P-136',NULL,NULL),
(24,'HP Server COLL-EQ-P-133',NULL,NULL),
(25,'Laboratory Fume hood COLL-EQ-P-15',NULL,NULL),
(26,'Laminar air flow COLL-EQ-P-15',NULL,NULL),
(27,'Maruti Calibrated weights (1kg & 2Kg) COLL EQ Pg-05',NULL,NULL),
(28,'Neer R.O.Water Plant COLL-EQ-Pg-02',NULL,NULL),
(29,'Pipettes','2021-08-17 14:12:48','7'),
(30,'Prolyte Electrolyte Analyzer HOSP-EQ-P-40-81001755_Not working',NULL,NULL),
(31,'Remi Centrifuge R-8C BL HOSP-EQ-P-50-BCLC-682_Not working',NULL,NULL),
(32,'Remi Centrifuge R-8C BL HOSP-EQ-P-50-HCLC-3959_Not working',NULL,NULL),
(33,'Remi Centrifuge R-8C DX HOSP-EQ-P-50-DBLC-3586_Not working',NULL,NULL),
(34,'Remi Centrifuge R-8C DX HOSP-EQ-P-50-EBLC-5162_Not working',NULL,NULL),
(35,'Remi Cooling Incubator CI-35 HOSP-EQ-P-71-IHC-3182',NULL,NULL),
(36,'remi quick freezer(-20) Biochemistry: HOSP-EQ-P-138',NULL,NULL),
(37,'Reptech weighing machine COLL-EQ-P-05',NULL,NULL),
(38,'Ricoh Printer MP 2000 L2 COLL EQ P-123-17126750553',NULL,NULL),
(39,'Ricoh printer MP 2001 L COLL EQ-P-123-E343MB50051',NULL,NULL),
(40,'Sartorius  Weight',NULL,NULL),
(41,'Shimadzu Analytic Balance HOSP-EQ-P-21Shimadzu Sci',NULL,NULL),
(42,'Shimadzu Analytic Balance HOSP-EQ-P-21Shimadzu Sci_D450028778',NULL,NULL),
(43,'SYSTRONICS Digital Electrophoresis power supply HOSP-EQ-P-139-850',NULL,NULL),
(44,'Thermo_Hygrometers',NULL,NULL),
(45,'volumetric flask',NULL,NULL),
(46,'Water Treatment Plant - Clinical Laboratory',NULL,NULL),
(47,'Water Treatment Plant - Research Lab',NULL,NULL),
(48,'Yorco Hot air oven YSI431D HOSP-EQ-P-69-14B5312',NULL,NULL),
(49,'Zebra Technologies ZTC _GC420t_Barcode Printer',NULL,NULL),
(50,'Zebra tip 2844 Barcode Printer',NULL,NULL),
(51,'Ricoh printer AFICIO MP 2501 SP HOSP-EQ-P-79-E338M920808',NULL,NULL),
(52,'Ricoh printer IM 2702 HOSP-EQ-P-79-3299M420817',NULL,NULL),
(53,'ERBA XL-1000',NULL,NULL),
(55,'Mettler Toledo Weight Machine Sr.No-2741281030(in Use) ','2021-08-08 16:06:06','8866580625'),
(56,'Mettler Toledo Weight Machine-Sr.No-2741281029(Not in Use But Working)','2020-09-02 15:05:34','8447530645'),
(57,'Agarose gel electrophoresis appratus with power supply pack(installed but not in use)','2020-09-15 12:44:40','8866829055'),
(58,'VITROS3600','2021-02-24 11:03:02','9099514805'),
(61,'Refrigerator-LG','2020-12-22 12:14:21','9099514805'),
(63,'MICRO WEIGHING BALANCE-HOSP-EQ-PG NO-6 Serial no-2741511036','2021-04-16 10:56:43','8866580625'),
(64,'RAPIDPOINT 500 SIEMENS _SR NO-53726_MODEL NO-11416755_HOSP-EQ-PG-80','2021-02-24 10:19:18','9099514805'),
(65,'RAPIDPOINT 500 SIEMENS _SR NO-45064_MODEL NO-10697306_HOSP-EQ-PG-80','2021-02-24 10:20:05','9099514805'),
(66,'MICRO WEIGHING BALANCE-HOSP-EQ-PG NO-6  Serial no-2741511038','2021-04-16 10:55:26','8866580625'),
(68,'TOSOH automated glycohemoglobin analyzer_SR NO-1182094_MODEL NO-HLC- 723 GX_HOSP-EQ-PG-04 ','2021-06-07 16:12:51','8866580625'),
(71,'(RAPIDPOINT 500e SIEMENS_SR NO-53726_MODEL NO-11416755_HOSP-EQ-PG-80)','2021-07-24 12:44:36','8866580625'),
(72,'(RAPIDPOINT 500 SIEMENS_SR NO-45064_MODEL NO-10697306_HOSP-EQ-PG-80) ','2021-07-28 10:29:35','8866580625'),
(74,'UPT Immunoassay Analyser','2021-09-22 11:27:27','8447530645');
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_record_type`
--

DROP TABLE IF EXISTS `equipment_record_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_record_type` (
  `equipment_record_type` varchar(100) NOT NULL,
  PRIMARY KEY (`equipment_record_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_record_type`
--

LOCK TABLES `equipment_record_type` WRITE;
/*!40000 ALTER TABLE `equipment_record_type` DISABLE KEYS */;
INSERT INTO `equipment_record_type` VALUES
('i. conformation of initial acceptability for use (initial calibration/verification)'),
('j. conformation of ongoing acceptability for use (ongoing calibration/verification)'),
('k. maintenance aggrement'),
('l. maintenance carried out'),
('m. damage, malfunction, modification, repair');
/*!40000 ALTER TABLE `equipment_record_type` ENABLE KEYS */;
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
  `edit_specification` varchar(5000) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `request_route` varchar(300) DEFAULT NULL,
  `display_route` varchar(300) DEFAULT NULL,
  `print_route` varchar(300) DEFAULT NULL,
  `display_format` varchar(300) DEFAULT NULL,
  `request_route_priority` varchar(10) DEFAULT NULL,
  `display_route_priority` varchar(10) DEFAULT NULL,
  `print_route_priority` varchar(1000) DEFAULT NULL,
  `insert_minimum_authorization_level` int(11) DEFAULT NULL,
  `update_minimum_authorization_level` int(11) DEFAULT NULL,
  `select_minimum_authorization_level` int(11) DEFAULT NULL,
  `delete_minimum_authorization_level` int(11) DEFAULT NULL,
  `append_user` int(11) DEFAULT NULL,
  `default_value` varchar(100) DEFAULT NULL,
  `equipment` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`examination_id`),
  KEY `sample_requirement` (`sample_requirement`)
) ENGINE=InnoDB AUTO_INCREMENT=100024 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examination`
--

LOCK TABLES `examination` WRITE;
/*!40000 ALTER TABLE `examination` DISABLE KEYS */;
INSERT INTO `examination` VALUES
(1,'WBC (Leucocyte Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\" /cmm  4000-10000 (Impedance)\",\"step\":\"1\", \"interval_l\":\"4000\",\"interval_h\":\"10000\",\"cinterval_l\":\"2000\",\"cinterval_h\":\"30000\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(2,'RBC (Erythrocyte Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"M/cmm, M:4.5-5.5 F:3.8-4.8 (Impedance)\",\"interval_l\":\"3.8\",\"interval_h\":\"5.5\",\"step\":\"0.01\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(3,'Hemoglobin','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"gm/dL M: 13-17 F:12-15 (Non-CyanomethHb)\",\"interval_l\":\"12\",\"interval_h\":\"17\",\"cinterval_l\":\"7\",\"cinterval_h\":\"20\",\"step\":\"0.1\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(4,'PCV (Packed Cell Volume)','EDTA-Blood-HI','{\"type\":\"number\",\"step\":\"0.1\",\"help\":\"% M:40-50 F:36-46 (Impedance)\",\"interval_l\":\"36\",\"interval_h\":\"50\",\"cinterval_l\":\"20\",\"cinterval_h\":\"60\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(5,'MCV (Mean Corp Vol)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"fL 80-96 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"80\",\"interval_h\":\"96\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(6,'MCH (Mean Corp Hb)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"pg 27-31 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"27\",\"interval_h\":\"31\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(7,'MCHC (Mean Corp Hb Conc)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"gm/dL 32-36 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"32\",\"interval_h\":\"36\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(8,'RDW (Red Cell Dist Width)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 11.5-14 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"11.5\",\"interval_h\":\"14\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(9,'Platelet','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 150000-400000 (Impedance)\",\"step\":\"1\",\"interval_l\":\"150000\",\"interval_h\":\"400000\",\"cinterval_l\":\"20000\",\"cinterval_h\":\"1000000\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(13,'Lymphocyte%','EDTA-Blood-HI','{\"type\":\"text\",\"help\":\"Describe\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(14,'Monocyte%','EDTA-Blood-HI','{\"type\":\"text\",\"help\":\"Describe\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(15,'Granulocyte%','EDTA-Blood-HI','{\"type\":\"text\",\"help\":\"Describe\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(19,'RBC Graph','EDTA-Blood-HI','{\"type\":\"blob\",\"readonly\":\"readonly\",\"img\":\"dw\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(20,'WBC Graph','EDTA-Blood-HI','{\"type\":\"blob\",\"readonly\":\"readonly\",\"img\":\"dw\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(21,'Platelet Graph','EDTA-Blood-HI','{\"type\":\"blob\",\"readonly\":\"readonly\",\"img\":\"dw\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(26,'Sample_Report_Time','None','{\"type\":\"datetime-local\", \"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\",\"default\":\"date(\'Y-m-d\')\" }','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(39,'Neutrophils','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 40-80\",\"step\":\"1\",\"interval_l\":\"40\",\"interval_h\":\"80\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(40,'Lymphocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 20-40\",\"step\":\"1\",\"interval_l\":\"20\",\"interval_h\":\"40\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(41,'Eosinophils','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 01-06\",\"step\":\"1\",\"interval_h\":\"6\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(42,'Monocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 02-10\",\"step\":\"1\",\"interval_h\":\"10\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(43,'Basophils','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 00-02\",\"step\":\"1\",\"interval_h\":\"2\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(44,'NRBCs','EDTA-Blood-HI','','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(45,'Platelets on smear','EDTA-Blood-HI','{\"type\":\"select\",\"help\":\"\",\"option\":\",Adequate,Reduced,Increased,Mildly Reduced, Markedly Reduced,\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(46,'Plasmodium Vivax Malarial Antigen','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Negative, Positive\"}','For P. Vivax','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(47,'Plasmodium Falciparum Malarial Antigen','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Negative, Positive\"}','For P. Vivax','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(48,'ANC (Absolute Neutrophil Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 1600-8000 (Calculation)\",\"step\":\"1\",\"interval_l\":\"1600\",\"interval_h\":\"8000\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(49,'ALC (Absolute Lymphocyte Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 800-4000 (Calculation)\",\"step\":\"1\",\"interval_l\":\"800\",\"interval_h\":\"4000\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(50,'AEC (Absolute Eosinophil Count)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 20-500 (Calculation)\",\"step\":\"1\",\"interval_l\":\"20\",\"interval_h\":\"500\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(51,'Blasts','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(52,'Promyelocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(53,'Myelocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(54,'Metamyelocytes','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(55,'Neutrophils + Band Cells','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(56,'Remark','EDTA-Blood-HI','{\"type\":\"text\"}','For Differential Count','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(57,'Morphology','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Normocytic,Normochromic,Normocytic Normochromic,Hypochromic Microcytic,Predominantly Normocytic Normochromic\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(58,'Anisocytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(59,'Poikilocytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(60,'Microcytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(61,'Macrocytosis','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(62,'Hypochromia','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++,Mild,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(63,'Target Cells','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(64,'Elliptocytes','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(65,'Tear Drop Cells','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,Occasional,Few\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(66,'Others','EDTA-Blood-HI','{\"type\":\"text\"}','For RBC Morphology','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(67,'Platelet Morphology','EDTA-Blood-HI','	{\"type\":\"select\",\"option\":\",Giant Platelet seen,Platelet aggregates seen\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(68,'Species','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Not Detected, Plasmodium Vivax Ring Forms and Trophozoites,Plasmodium Falciparum Ring Forms, Plasmodium Falciparum Ring Forms with Gametocytes, Plasmodium Falciparum Gametocytes Detected,Plasmodium Vivax Ring and Trophozoites with Schizonts, Plasmodium Vivax Ring and Trophozoites with Gametocytes, Mixed Infection, Others\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(69,'Grade','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",+,++,+++,++++\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(70,'Others','EDTA-Blood-HI','{\"type\":\"text\"}','For other parasites and mixed','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(71,'MPV (Mean Platelet Volume)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"fL 6.5-10 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"6.5\",\"interval_h\":\"10\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(72,'PDW (Platelet Distribution Width)','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 10-18 (Calculated)\",\"step\":\"0.1\",\"interval_l\":\"10\",\"interval_h\":\"18\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(73,'Reticulocyte Count ','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% 0.5-2.5 (Microscopy)\",\"step\":\"0.1\",\"interval_l\":\"0.5\",\"interval_h\":\"2.5\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(74,'Corrected Reticulocyte Count ','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"% (Calculated)\",\"step\":\"0.1\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(75,'Erythrocyte Sedimentation Rate','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"mm/hr 0-12 (Westergren Method)\",\"interval_l\":\"0\",\"interval_h\":\"12\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(76,'Prothrombin Time (PT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs 11-16 (Clot Based)\",\"interval_l\":\"11\",\"interval_h\":\"16\",\"cinterval_h\":\"60\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(77,'Control (MNPT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(78,'Ratio','Citrate-Blood-HI','{\"type\":\"number\",\"calculate\":\"max(E/e,1)\",\"ex_list\":\"76,77\",\"step\":\"0.01\",\"decimal\":\"2\",\"help\":\"PT/MNPT (Calculated)\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(79,'Index','Citrate-Blood-HI','{\"type\":\"number\",\"calculate\":\"100/e\",\"ex_list\":\"78\",\"step\":\"1\",\"decimal\":\"0\",\"help\":\"% 100/Ratio (Calculated)\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(80,'PT (INR) Value','Citrate-Blood-HI','{\"type\":\"number\",\"calculate\":\"e^1.08\",\"ex_list\":\"78\",\"step\":\"0.01\",\"decimal\":\"2\",\"help\":\"Normal Population: 0.8-1.2\\nStandard Therapy: 2.0-3.0\\nHigh Dose Therapy: 3.0-4.5\\n(Calculated, ISI=1.0)\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(81,'aPTT - Test','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs 27-34 (Clot Based)\",\"interval_l\":\"27\",\"interval_h\":\"34\",\"cinterval_h\":\"100\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(82,'aPTT - Control ','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"secs\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(83,'Fibrinogen','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"mg% 150-400 (Clot Based)\",\"interval_l\":\"150\",\"interval_h\":\"400\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(84,'Fibrinogen Degradation Product (FDP)','Citrate-Blood-HI','{\"type\":\"select\",\"help\":\"(Agglutination)\",\"option\":\",Negative, Positive\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(85,'Factor VIII Assay','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"% 50-150 (Clot Based)\",\"interval_l\":\"50\",\"interval_h\":\"150\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(86,'Factor IX Assay','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"% 50-150 (Clot Based)\",\"interval_l\":\"50\",\"interval_h\":\"150\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(87,'Bleeding Time (BT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"mins 02-05 (Duke Method)\",\"interval_l\":\"2\",\"interval_h\":\"5\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(88,'Clotting Time (BT)','Citrate-Blood-HI','{\"type\":\"number\",\"help\":\"mins 08-15 (Capillary Tube Method)\",\"interval_l\":\"8\",\"interval_h\":\"15\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(89,'Physical Examination','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Physical Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(90,'Quantity','Plain-Urine-CP','{\"type\":\"number\",\"help\":\"ml\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(91,'Colour','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Pale Yellow\",\"option\":\",Pale Yellow, Yellow, Reddish, Dark Yellow,Slightly Reddish,Amber,Colourless,Pink\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(92,'Appearance','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Clear\",\"option\":\",Clear, Slightly Turbid, Turbid, Cloudy\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(93,'Odour','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Non-Specific\",\"option\":\",Non-Specific, Fruity, Mousy/Musty, Fishy, Ammoniacal, Foul, Rancid, Maple Syrup/Burnt Sugar\"}','For Urine Odour','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(94,'Chemical Examination','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Chemical Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(95,'pH','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"4.5 - 8\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(96,'Specific Gravity','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"1.003 - 1.030\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(97,'Protein (Albumin)','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(98,'Glucose','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None','Urine/Urine.osm','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(99,'Ketones','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(100,'Bile Salts','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(101,'Bile Pigments','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(102,'Blood','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent,Trace,+,++,+++,++++\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(103,'Microscopic Examination','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Microscopic Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(104,'Pus Cells','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"Absent\",\"option\":\",Nil,1-2,2-4\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(105,'RBC (Red Blood Cells)','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"Absent\",\"option\":\",Nil,1-2,2-4\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(106,'Epithelial Cells Number','Plain-Urine-CP','{\"type\":\"text\",\"help\":\"/hpf 0 - 5\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(107,'Crystals','Plain-Urine-CP','	{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Nil\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(108,'Casts','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Nil\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(109,'Others','Plain-Urine-CP','{\"type\":\"text\"}','For Urine Microscopic Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(110,'Special Tests','Plain-Urine-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Urine Special Tests','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(111,'Test  Name','Plain-Urine-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\"NA, Bence Jones Proteins, Porphobilinogen, Chyluria, Cylindroids\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(113,'Result','Plain-Urine-CP','{\"type\":\"text\"}','For Urine Special Test Result','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(114,'Physical Examination','Plain-Stool-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Stool Physical Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(115,'Colour','Plain-Stool-CP','{\"type\":\"select\",\"option\":\",Brown, Yellow, Green,  Black, Greenish Yellow, Dark Yellow, Dark Brown, Whitish, Rice-water \"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(116,'Consistency','Plain-Stool-CP','{\"type\":\"select\",\"option\":\", Solid, Semi-solid, Loose, Watery\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(117,'Chemical Examination','Plain-Stool-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Stool Chemical Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(118,'Occult Blood','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent (Benzidine Test)\",\"option\":\",Absent, Present\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(119,'Microscopic Examination','Plain-Stool-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Stool Microscopic Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(120,'Trophozoites','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(121,'Ova','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(122,'Cysts','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Nil\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(123,'Pus Cells','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, 1-2, 3-5, 6-8, 10-12, 15-20, Plenty\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(124,'RBC (Red Blood Cells)','Plain-Stool-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, 1-2, 3-5, 6-8, 10-12, 15-20, Plenty\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(125,'Others','Plain-Stool-CP','{\"type\":\"text\"}','For Stool Microscopic Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(126,'Specimen','EDTA-BodyFluid-CP','{\"type\":\"select\",\"option\":\",Cerebrospinal Fluid (CSF), Ascitic Fluid, Pleural Fluid, Peritoneal Fluid, Synovial Fluid, Pus, Pericardial Fluid, Cystic Fluid, Drain Fluid, Colposcopy Fluid, Abscess Material\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(127,'Physical Examination','EDTA-BodyFluid-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Body Fluidl Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(128,'Quantity','EDTA-BodyFluid-CP','{\"type\":\"select\",\"help\":\"ml\",\"option\":\",0.5, 1, 1.5, 2, 2.5, 3, 3.5\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(129,'Colour','EDTA-BodyFluid-CP','{\"type\":\"select\",\"option\":\",Colourless, Pale Yellow, Yellow, Reddish, Dark Yellow,Slightly Reddish, Amber, Brownish, Greenish, Greyish, Milky-white, Black\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(130,'Appearance','EDTA-BodyFluid-CP','{\"type\":\"select\",\"help\":\"Clear\",\"option\":\",Clear, Slightly Turbid, Turbid, Cloudy\"}','None','','Chemistry',NULL,'','',NULL,'',1,1,1,1,NULL,NULL,NULL),
(131,'Clot Formation','EDTA-BodyFluid-CP','{\"type\":\"select\",\"help\":\"Absent\",\"option\":\",Absent, Present\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(132,'Microscopic Examination','EDTA-BodyFluid-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Microscopic Body Fluid Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(133,'Total RBC (Red Blood Cells) Count','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"cells/cmm\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(134,'Total WBC (White Blood Cell) Count','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"cells/cmm\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(135,'Polymorphs','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"%\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(136,'Lymphocytes','EDTA-BodyFluid-CP','{\"type\":\"text\",\"help\":\"%\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(137,'Remarks','EDTA-BodyFluid-CP','{\"type\":\"text\"}','For Body Fluid Microscopy','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(138,'Physical Examination','Plain-Semen-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Semen Physical Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(139,'Quantity','Plain-Semen-CP','{\"type\":\"select\",\"help\":\"ml 2 - 5\",\"option\":\",0.5, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(140,'Colour','Plain-Semen-CP','{\"type\":\"select\",\"help\":\"Greyish White\",\"option\":\",Greyish White, Whitish, Pale Yellow, Reddish, Slightly Reddish\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(141,'Microscopic Examination','Plain-Semen-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Semen Examination','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(142,'Total Sperm Count','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"mil/mL 30 - 300\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(143,'Sperm motility','Plain-Semen-CP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Sperm Motility ','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(144,'Actively Motile','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"% 60 - 70\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(145,'Sluggishly Motile','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"%\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(146,'Non - Motile','Plain-Semen-CP','{\"type\":\"text\",\"help\":\"%\"}','None','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(147,'Bone Marrow Aspiration/Biopsy Number:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration and biopsy','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(148,'Nature of Specimen:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration and biopsy','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(149,'Brief Clinical History:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration and biopsy','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(150,'Bone Marrow Aspiration Report','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(151,'Site:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Left Posterior Superior Iliac Spine, Right Posterior Superior Iliac Spine, Left Anterior Superior Iliac Spine, Right Anterior Superior Iliac Spine, Left Tibial Tuberosity, Right Tibial Tuberosity\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(152,'Particles:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Grossly appreciated, Grossly not appreciated, Heavily diluted with blood\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(153,'Cellularity:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Normocellular for age of patient, Hypocellular for age of patient, Hypercellular for age of patient\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(154,'M:E ratio','EDTA-Blood-HI','{\"type\":\"text\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(155,'Erythropoiesis','EDTA-Blood-HI','{\"type\":\"text\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(156,'Myelopoiesis','EDTA-Blood-HI','{\"type\":\"text\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(157,'Megakaryopoiesis','EDTA-Blood-HI','{\"type\":\"text\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(158,'Iron store:','EDTA-Blood-HI','{\"type\":\"text\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(159,'Differential count','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(160,'Blasts:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(161,'Promyelocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(162,'Myelocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(163,'Metamyelocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(164,'Neutrophils/Band cells','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(165,'Lymphocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(166,'Eosinophils and precursors','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(167,'Monocytes:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(168,'Basophils:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(169,'Plasma cells:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(170,'others:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(171,'Findings:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(172,'Conclusion:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow aspiration','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(173,'Bone Marrow Biopsy Report','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','','','Chemistry',NULL,NULL,NULL,NULL,NULL,1,1,1,1,NULL,NULL,NULL),
(174,'Site:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Left Posterior Superior Iliac Spine, Right Posterior Superior Iliac Spine, Left Anterior Superior Iliac Spine, Right Anterior Superior Iliac Spine, Left Tibial Tuberosity, Right Tibial Tuberosity\"}','for BMB','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(175,'Cellularity:','EDTA-Blood-HI','{\"type\":\"select\",\"option\":\",Normocellular for age of patient, Hypocellular for age of patient, Hypercellular for age of patient\"}','for BMB','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(176,'Erythropoesis:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(177,'Myelopoesis:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(178,'Megakaryopoesis:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(179,'Findings:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(180,'Conclusion:','EDTA-Blood-HI','{\"type\":\"text\"}','For Bone marrow biopsy','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(181,'Epithelial Cells Type','Plain-Urine-CP','{\"type\":\"select\",\"option\":\",Squamous Epithelial Cells, Transitional Epithelial Cells\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(400,'Lymphocyte','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(401,'Eosinophil','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(402,'Monocyte','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(403,'Basophil','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"%\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(404,'Others','EDTA-Blood-HI','{\"type\":\"text\"}','For premature dc','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(501,'Parasite','EDTA-Blood-HI','{\"type\":\"json\",\"json\":{\"Parasite Name\":{\"select\":\",PF,PV,F\"},\"Number\":{\"select\":\",+,++,+++\"},\"Stages\":\"Text\"}}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(502,'Basic','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Basic PS','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(503,'Advanced','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Advanced PS','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(510,'Manual Platelet Count','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"/cmm 150000-400000 (Impedance)\",\"step\":\"1\",\"interval_l\":\"150000\",\"interval_h\":\"400000\",\"cinterval_l\":\"20000\",\"cinterval_h\":\"1000000\"}','None','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(511,'Platelets on Peripheral Smear','EDTA-Blood-HI','{\"type\":\"select\",\"help\":\"\",\"option\":\",Adequate,Reduced,Increased,Mildly Reduced, Markedly Reduced,\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(555,'Hemoglobin','EDTA-Blood-HI','{\"type\":\"number\",\"help\":\"gm/dL M: 13-17 F:12-15 (Non-CyanomethHb)\",\"interval_l\":\"12\",\"interval_h\":\"17\",\"cinterval_l\":\"7\",\"cinterval_h\":\"20\",\"step\":\"0.1\"}','None','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(600,'Hemogram and Blood Indices','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For CBC','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(601,'Differential Count (Microscopy)','EDTA-Blood-HI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For CBC','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(602,'Remark','Citrate-Blood-HI','{\"type\":\"text\"}','For PT','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(603,'Remark','Citrate-Blood-HI','{\"type\":\"text\"}','For aPTT','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(1000,'Sample_requirement','None','{\"type\":\"text\",\"help\":\"Describe\",\"readonly\":\"readonly\"}','None','','Sample Details','','compact_report','20','','',1,1,1,1,NULL,'',NULL),
(1001,'PID','None','','None','','Header','','compact_report','','','',1,0,1,1,NULL,'SELECT  concat( \'SUR/\', DATE_FORMAT(CURDATE(),\'%y\',\'/\')) as default_value',NULL),
(1002,'Name','None','{\"type\":\"text\"}','None','','Header','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(1003,'Request_id','None','{\"type\":\"text\",\"help\":\"Describe\"}','None','','Chemistry','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(1004,'Department','None','{\"type\":\"select\",\"option\":\",ART,Dentistry,IHBT,EmergencyMedicine,ENT,Medicine,OG,Opthalmology,Orthopaedics,Kidney Hospital,Paediatrics,PlasticSurgery,Psychiatry,Skin,Surgery,TBChest,Samaras,Unspecified\"}','None','','Header','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(1005,'Unit','None','{\"type\":\"select\",\"option\":\",-,1,2,3,4,5,6,7,8,A,B\"}','None','','Header','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(1006,'Location','None','{\"type\":\"select\",\"option\":\",C2(684),Radio_camp,old building 1st floor,old building 2nd floor,old building 3rd floor,old building ground floor,IHBT,C3(685),PICU,Casualty(446),E0(506),E1(507),E2(508),E3(509),E4(510),EMW(485),EOT(591),F0(511),F1(512),F2(513),F3(514),F3N(503),F4(515),FOW,G0(516),G0MICU(500),G1(517),G2(518),G3(519),G4(520),GOT(551),H0(497),H1(522),H2(523),H3(524),H4(525),HemodialysisUNIT(741),Isolation Ward,J0(521),J1(531),J2(527),J3(529),J4(530),LeptoWard(506),MICU(500-2),MOT(567),MOW(310),NEWORTHO(311),NOT(551),NOW(311),O2(539),OB(546),OBICU,OLDORTHO(310),OPD,PrisonerWard(310),RI(548),RII(564),RIII(580),SICU(478),SpecialWard(570-71),SwineFluWard(529),StemGround,StemF1,StemF2,StemF3,StemF4,StemF5,StemF6,StemF7,StemF8,StemF9,StemF10,StemHosp,KidneyOPD,StemOPD,TBICU,TRAUMA1(476),TRAUMA2(485),TraumaCenter(472-87),KidneyF5ICU,KidneyF5,kidneyF6,StemTriageSemiCritical,StemTriageICU,Stem Triage,Kidney 6th ICU- B,Kidney 6th ICU-A,Kidney F7,NICU,SAMRAS,Unspecified\"}','None','','Header','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(1007,'Age(Y)','None','{\"type\":\"number\",\"help\":\"Full Years\"}','','','Patient Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1008,'Sex','None','{\"type\":\"select\",\"option\":\",M,F,O\"}','','','Patient Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1009,'Sample_Collection_Time','None','{\"type\":\"datetime-local\", \"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\" }','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1010,'Sample_Receipt_Time','None','{\"type\":\"datetime-local\", \"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\" }','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1011,'Request_Entry_time','None','{\"type\":\"datetime-local\",\"pattern\":\"[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-9]{2}\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1012,'DOB','None','{\"type\":\"date\"}','','','Patient Details','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(1013,'Laboratory Name','None','{\"type\":\"select\",\"option\":\",Haematology and Clinical Pathology OPD-10 New Civil Hospital Surat Ph: 216-2244456 Ext: 424 425 426,Biochemistry Near Blood Bank New Civil Hospital Surat Ph: 0216-2244456 Ext: 317\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(1014,'released_by','None','{\"type\":\"text\",\"readonly\":\"readonly\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(1015,'Collection_Date','None','{\"type\":\"date\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1016,'Collection_Time','None','{\"type\":\"time\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1017,'Received_on','None','{\"type\":\"date\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1018,'Receipt_time','None','{\"type\":\"time\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1019,'(Interim) Released by ','None','{\"type\":\"text\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1020,'Age(M)','None','{\"type\":\"number\",\"help\":\"Full Months\"}','','','Patient Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1021,'Age(D)','None','{\"type\":\"number\",\"help\":\"Days\"}','','','Patient Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1022,'Sample Remark','None','','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1023,'Sample Collection Condition','None','{\"type\":\"select\",\"option\":\"Random,Fasting,Postprendial-2HR,PostGlucose-75GM-1HR,PostGlucose-75GM-2HR,PostGlucose-75GM-3HR,PostGlucose-50GM-1HR\"}','','','Sample Details','','compact_report','10','','compact_report',1,1,1,1,NULL,'',NULL),
(1024,'email','None','{\"type\":\"select\",\"option\":\",suratcv19@gmail.com\"}','suratcv19@gmail.com','','Patient Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1025,'mobile','None','{\"type\":\"realtext\"}','','','Patient Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1026,'sample_volume','None','{\"type\":\"select\",\"option\":\"-,0.5,1.0,1.5,2.0,2.5,3.0,3.5,4.0,4.5\"}','','','Sample Details','','compact_report','','','compact_report',1,1,1,1,NULL,'',NULL),
(1027,'request_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1028,'request_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1029,'sample_preparation_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1030,'sample_preparation_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1031,'analysis_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1032,'analysis_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1033,'verification_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1034,'verification_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1035,'release_date','None','{\"type\":\"date\",\"readonly\":\"readonly\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1036,'release_time','None','{\"type\":\"time\",\"readonly\":\"readonly\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1037,'interim_release_date','None','{\"type\":\"date\",\"readonly\":\"readonly\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1038,'interim_release_time','None','{\"type\":\"time\",\"readonly\":\"readonly\"}','','','Chemistry','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1039,'wing','None','{\"type\":\"select\",\"option\":\"-,A,B,C,D\"}','','','Sample Details','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1040,'Transporter','None','{\"type\":\"select\",\"option\":\"-,Manish,Jignesh,Jayaben,Suraj\"}','','','Sample Details','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1041,'ThyroxinRx','None','{\"type\":\"select\",\"option\":\",Yes,No\"}','','','Sample Details','','','','','compact_report',1,1,1,1,NULL,'',NULL),
(1043,'sms_date','None','{\"type\":\"date\",\"hide\":\"yes\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(1044,'sms_time','None','{\"type\":\"time\",\"hide\":\"yes\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(1045,'request_id','None','{\"type\":\"id_multi_sample\",\"table\":\"request_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"R-\",\"minimum\":\"1000\"}','inserted, never edited, as group of samples','','Sample Details/ID','','compact_report','10','','compact_report',1,1,1,1,NULL,'',NULL),
(1046,'opd_id','None','{\"type\":\"id_single_sample\",\"table\":\"opd_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"P\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','','Sample Details/ID','','compact_report','20','','compact_report',1,1,1,1,NULL,'',NULL),
(1047,'ward_id','None','{\"type\":\"id_single_sample\",\"table\":\"ward_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"W-\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','','Sample Details/ID','','compact_report','30','','compact_report',1,1,1,1,NULL,'',NULL),
(1048,'qc1_id','None','{\"type\":\"id_single_sample\",\"table\":\"qc1_id\",\"readonly\":\"readonly\",\"unique_prefix\":\"Q1-\",\"minimum\":\"1000\"}','inserted, never edited, one for each sample','','Sample Details/ID','','compact_report','30','','compact_report',1,1,1,1,NULL,'',NULL),
(1099,'LDL Cholesterol(alt)','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL &lt;130 (Calculated)\",\"calculate\":\"(E/0.948) - (E/0.971) -  (E/8.56 + ( (E-E)/2140 ) - ( (E^2)/16100 )) - 9.44\",\"ex_list\":\" 5015,5016,5018,5015,5016,5018\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(2001,'Clinical History','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2002,'Nature of specimen','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2003,'Macroscopic examination done by','Formalin-Tissue-HP','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2004,'Total Number of Blocks','Formalin-Tissue-HP','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2005,'Macroscopic Examination','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2006,'Microscopic Examination','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2007,'Conclusion','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','For Formalin HP specimen','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2008,'Notes','Formalin-Tissue-HP','{\"zoom\":\"zoom\"}','For Formalin HP specimen','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2009,'Stains','Formalin-Tissue-HP','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2010,'General','Formalin-Tissue-HP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Histopathology','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2011,'.                                              .','Formalin-Tissue-HP','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','For Histopathology','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2012,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2013,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2014,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(2015,'Dr.','None','{\"type\":\"select\",\"option\":\",Komal Patel (M.D Pathology),V M Bhagat (M.D Pathology),Sejal Gamit (M.D Pathology)\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5001,'Creatinine','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL (&lt;h5&gt;Jaffe two point)&lt;/h5&gt;\\n Male: 0.9-1.3\\n Female: 0.6-1.1\\n&lt;b&gt;(Not in NABL Scope)&lt;/b&gt;\",\"step\":\"0.1\",\"interval_h\":\"1.3\",\"cinterval_h\":\"4.0\",\"ainterval_h\":\"40.0\",\"ainterval_l\":\"0.1\",\"equipment\":\"C\",\"accr_status\":\"no\",\"cost\":\"150\"}','Biochemistry/OPD/RFT,Biochemistry/OPD/Basic,Biochemistry/Basic/RFT','LREG,LRE,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5002,'Urea','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL 13-43 (Urease  GLDH)\",\"interval_h\":\"43\",\"interval_l\":\"13\",\"cinterval_h\":\"100\",\"ainterval_h\":\"400\",\"equipment\":\"C\",\"cost\":\"200\"}','Biochemistry/OPD/RFT,Biochemistry/OPD/Basic,Biochemistry/Basic/RFT','LREG/U,BIG1,Misc/Osmolarity-Serum','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5006,'Alanine Transaminase','Plain-Blood-BI','{\"type\":\"text\",\"help\":\"U/L &lt;45 (L-Alanine LDH UV Kinetic)\",\"interval_h\":\"45\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\",\"cost\":\"100\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LREG,LRE,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5007,'Alkaline Phosphatase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 42-128 (pNPP with AMP buffer)\",\"interval_h\":\"128\",\"cinterval_h\":\"1000\",\"ainterval_h\":\"3000\",\"equipment\":\"C\",\"cost\":\"70\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','AMY-LIP-ALP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5008,'Amylase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 28-100 (CNPG)\",\"interval_h\":\"100\",\"cinterval_h\":\"400\",\"ainterval_h\":\"5000\",\"equipment\":\"C\",\"cost\":\"350\"}','','AMY-LIP-ALP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5009,'Total Billirubin','Plain-Blood-BI','{\"type\":\"text\",\"help\":\"mg/dL &lt;1.3 (Diazo Reaction)\",\"step\":\"0.1\",\"cinterval_h\":\"15\",\"interval_h\":\"1.3\",\"ainterval_h\":\"50\",\"equipment\":\"C\",\"cost\":\"50\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/OPD/LFT,/Biochemistryochemistry/Basic/LFT','LREG,LRE,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5010,'Direct Billirubin','Plain-Blood-BI','{\"type\":\"text\",\"help\":\"mg/dL &lt;0.4 (Diazo Reaction)\",\"step\":\"0.1\",\"interval_h\":\"0.4\",\"ainterval_h\":\"50\",\"equipment\":\"C\",\"cost\":\"50\"}','Biochemistry/OPD/LFT,Biochemistry/OPD/Basic,Biochemistry/Basic/LFT','LREG,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5011,'Albumin','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" g/dL &lt;3.5-5.2 (BCG)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"interval_h\":\"5.2\",\"interval_l\":\"3.5\",\"ainterval_h\":\"10\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\",\"cost\":\"130\"}','Ca-PO-Alb-TP','LREG/ALBTP,LRE-ALBTP-CRPLDH,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5012,'Total Protein','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" g/dL &lt;6.4-8.3 (Biuret)\",\"step\":\"0.1\",\"cinterval_l\":\"3\",\"interval_h\":\"8.3\",\"interval_l\":\"6.4\",\"ainterval_h\":\"15\",\"ainterval_l\":\"1\",\"equipment\":\"C\",\"cost\":\"100\"}','Ca-PO-Alb-TP','LREG/ALBTP,LRE-ALBTP-CRPLDH,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5013,'Aspartate transaminase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L &lt;35 ( UV Kinetic)\",\"interval_h\":\"35\",\"cinterval_h\":\"450\",\"ainterval_h\":\"4500\",\"equipment\":\"C\"}','Biochemistry/OPD/LFT/Advanced,Biochemistry/OPD/Advanced,Biochemistry/Basic/LFT/Advanced','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5014,'Calcium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL 8.6-10.2 (Arsenazo III)\",\"step\":\"0.1\",\"cinterval_l\":\"6.5\",\"cinterval_h\":\"13\",\"interval_l\":\"8.6\",\"interval_h\":\"10.2\",\"ainterval_h\":\"15\",\"ainterval_l\":\"3\",\"equipment\":\"C\"}','Ca-PO-Alb-TP','LRE-CALCRP,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5015,'Total Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL &lt;200 (CHOD-POD)\",\"interval_h\":\"200\",\"ainterval_h\":\"1000\",\"ainterval_l\":\"30\",\"equipment\":\"C\"}','Others','GLU-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5016,'HDL Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL &gt;40 (Dextransulphate-Mg2+precipitat)\",\"interval_l\":\"40\",\"equipment\":\"C\"}','Others','Misc/HDL','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5017,'LDL Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL &lt;130 (Calculated)\",\"interval_h\":\"130\",\"calculate\":\"E-E-E\",\"ex_list\":\"5015,5016,5028\",\"equipment\":\"C\"}','Others','Misc/HDL','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5018,'Triglyceride','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL &lt;150 (LipaseGPOPOD)\",\"interval_h\":\"150\",\"cinterval_h\":\"1000\",\"ainterval_h\":\"1500\",\"equipment\":\"C\"}','Others','GLU-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5019,'Sodium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mmol/L 136-145 (Direct ISE)\",\"cinterval_l\":\"129\",\"cinterval_h\":\"160\",\"interval_h\":\"145\",\"interval_l\":\"136\",\"ainterval_h\":\"175\",\"ainterval_l\":\"110\",\"equipment\":\"C\",\"accr_status\":\"yes\"}','Others','LREG,LRE,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1,Misc/Osmolarity-Serum','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5020,'Potassium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mmol/L 3.5-5.1 (Direct ISE)\",\"step\":\"0.1\",\"cinterval_l\":\"3\",\"cinterval_h\":\"7.1\",\"interval_h\":\"5.1\",\"interval_l\":\"3.5\",\"ainterval_h\":\"7.5\",\"ainterval_l\":\"1\",\"equipment\":\"C\"}','','LREG,LRE,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1,Misc/Osmolarity-Serum','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5021,'Iron','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgm/dL 41-141 (Ferrozine)\",\"interval_h\":\"141\",\"interval_l\":\"41\",\"ainterval_h\":\"750\",\"equipment\":\"C\"}','','Anemia ','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5022,'TIBC','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgm/dL 251-406(calculated)\",\"interval_h\":\"406\",\"interval_l\":\"251\",\"ainterval_h\":\"750\",\"equipment\":\"C\"}','','Anemia ','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5023,'UIBC','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgm/dL 120-470((Ferrozine Alkaline PH)\",\"interval_h\":\"470\",\"interval_l\":\"120\",\"ainterval_h\":\"600\",\"equipment\":\"C\"}','','Anemia ','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5024,'Indirect Billirubin','Plain-Blood-BI','{\"type\":\"text\",\"calculate\":\"E-E\",\"ex_list\":\"5009,5010\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)&lt;1.3\",\"cinterval_h\":\"15\",\"interval_h\":\"1.3\",\"ainterval_h\":\"50\",\"equipment\":\"C\"}','','LREG,LRE,LRE-ALBTP-CRPLDH,LRE-CALCRP,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5025,'Lactate Dehydrogenase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L &lt;360 (L to P UV Kinetic)\",\"interval_h\":\"360\",\"equipment\":\"C\"}','','LREG/ALBTP/LDH,LRE-ALBTP-CRPLDH,BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5026,'Lipase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" U/L 0-5 (Turbidimetry )\",\"interval_h\":\"5\",\"equipment\":\"C\"}','','AMY-LIP-ALP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5027,'Uric Acid','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dL 2.6-7.2 (Uricase POD)\",\"step\":\"0.1\",\"interval_h\":\"7.2\",\"cinterval_h\":\"10\",\"ainterval_h\":\"20\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5028,'VLDL Cholesterol','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL &lt;30 (Calculated)\",\"interval_h\":\"30\",\"calculate\":\"E/5\",\"ex_list\":\"5018\",\"equipment\":\"C\"}','','Misc/HDL','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5029,'Glucose','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"mg/dl 40-70 (GOD-POD)\",\"interval_l\":\"40\",\"interval_h\":\"70\",\"cinterval_l\":\"30\",\"ainterval_h\":\"1500\",\"equipment\":\"C\"}','','Fluid/csf','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5030,'Total Protein','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"mg/dL 15-40 (Pyrogallol red)\",\"interval_l\":\"15\",\"interval_h\":\"40\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Fluid/csf','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5031,'Glucose','Fluoride-Blood-BI','{\"type\":\"number\",\"help\":\"Unit: <b>mg/dl</b><br>Method: GOD-POD endpoint<br><a href=\\\"https://www.diabetes.org.uk/professionals/position-statements-reports/diagnosis-ongoing-management-monitoring/new_diagnostic_criteria_for_diabetes\\\">Criteria</a>\",\"interval_l\":\"70\",\"interval_h\":\"140\",\"cinterval_l\":\"55\",\"cinterval_h\":\"300\",\"ainterval_h\":\"1500\",\"ainterval_l\":\"5\",\"equipment\":\"C\"}','','LREG,GLU-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5032,'Adenosine Deaminase','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"U/mL &lt;15 (Berthelot)\",\"interval_h\":\"15\"}','','Fluid/csf','Semi Auto Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5033,'Adenosine Deaminase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Semi Auto Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5034,'Adenosine Deaminase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Semi Auto Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5035,'Glucose','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5036,'Glucose','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5037,'Total Protein','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"g/dL NA(Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5038,'Total Protein','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"g/dL NA(Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5039,'Lipase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"equipment\":\"C\"}','','Fluid/peritonealAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5040,'Amylase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','','Fluid/peritonealAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5041,'Lactate Dehydrogenase','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5042,'Cholesterol','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(CHOD-POD)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5043,'Triglyceride','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(Lipase  GPO - POD)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5044,'Amylase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','','Fluid/pleuralAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5045,'Lipase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Fluid/pleuralAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5046,'Lactate Dehydrogenase','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/pleural,Fluid/pleuralAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5047,'Lactate Dehydrogenase','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/csf','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5048,'Sodium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','Urine/Urine.osm','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5049,'Potassium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Urine/Urine.osm','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5050,'Calcium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Arsenazo III)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5051,'Phosphorus','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Ammonium Molybdate)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5052,'Creatinine','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','Urine/PCR','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5053,'Total Protein','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"g/dL N/A (Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Urine/PCR','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5054,'Ketone body','Plain-Urine-BI','{\"type\":\"select\",\"option\":\", Positive , Negative\",\"help\":\" (Nitropruside)\",\"equipment\":\"K\"}','','Urine/Ketone','Chemistry','','','','','',1,1,1,1,NULL,'','K'),
(5055,'Uric Acid','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mg/dL N/A (Uricase POD)\",\"step\":\"0.1\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5056,'Protein:creatinine Ratio','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"E/e\",\"ex_list\":\"5085,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Urine/PCR','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5057,'Calcium:creatinine Ratio','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"E/e\",\"ex_list\":\"5050,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5058,'24 hours Urine Volume','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mL (24 hours urine volume)\",\"equipment\":\"C\"}','','Urine/PCR','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5059,'24 hours Urine  Protein','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"E*E/100\",\"ex_list\":\"5058,5085,\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"mg(Calculated)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Urine/PCR','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5060,'eGFR','Plain-Blood-BI','{\"type\":\"number\",\"calculate\":\"175*E^-1.154*E^-.203*E*E\",\"ex_list\":\"5001,5088,5087,5089\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"mL/min/1.73 mÃ‚Â²(Calculated)(MDRD)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5061,'Serum Osmolality','Plain-Blood-BI','{\"type\":\"number\",\"calculate\":\"2*E+(E*0.17)+(E*0.06)+9\",\"ex_list\":\"5019,5002,5031\",\"step\":\"0.1\", \"decimal\":\"1\",\"help\":\"(Calculated)\",\"equipment\":\"C\"}','','Misc/Osmolarity-Serum','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5062,'Protein Electrophoresis','Plain-Blood-BI','{\"zoom\":\"zoom\"}','','','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5063,'Electrophoresis Observation','EDTA-Blood-BI','{\"type\":\"subsection\",\"readonly\":\"readonly\",\"equipment\":\"E\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'','E'),
(5064,'Dithonite Test Observation','EDTA-Blood-BI','{\"type\":\"subsection\",\"readonly\":\"readonl\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5065,'Band at HbA position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5066,'Band at HbF position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5067,'Band at HbS position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5068,'Band at HbA2 position','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5069,'Other Bands','EDTA-Blood-BI','{\"zoom\":\"zoom\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5070,'Dithonite test without Urea','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Done,Turbid,Clear\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5071,'Dithonite test with Urea','EDTA-Blood-BI','{\"type\":\"select\",\"option\":\",Not Done,Turbid,Clear\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5072,'Clinical Laboratory Interpretation','EDTA-Blood-BI','{\"zoom\":\"zoom\"}','For HB Electrophoresis','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5073,'Electrophoresis Image','EDTA-Blood-BI','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','Reference/hb electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5074,'Remarks','EDTA-Blood-BI','{\"help\":\"HbA1c is your average blood glucose (sugar) levels for the last two to three months. If you have diabetes, an ideal HbA1c level is 48mmol/mol (6.5%) or below. If you\'re at risk of developing type 2 diabetes, your target HbA1c level should be below 42mmol/mol (6%).\"}','','Reference/hb electro','Electrophoresis','','','40','','horizontal1',1,1,1,1,NULL,'',NULL),
(5075,'Remarks','Plain-Blood-BI','','','Reference/protein electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5076,'Electrophoresis Image','Plain-Blood-BI','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"300\",\"height\":\"200\"}','','Reference/protein electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5077,'Clinical Laboratory Interpretation','Plain-Blood-BI','{\"zoom\":\"zoom\",\"equipment\":\"PR\"}','For HB Electrophoresis','Reference/protein electro','Electrophoresis','','','','','',1,1,1,1,NULL,'','PR'),
(5078,'Electrophoresis Observation','Plain-Blood-BI','{\"type\":\"subsection\",\"readonly\":\"readonly\"}','','Reference/protein electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5079,'Band at M position','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",Not Seen,Light,Dark\"}','','Reference/protein electro','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(5080,'Total Protein','Plain-CSF-BI','{\"type\":\"number\",\"help\":\"g/dL 0.015-0.040 (Biuret)\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5081,'Total Protein','Plain-Pleural Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','Fluid/pleural','Fluid/pleural,Fluid/pleuralAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5082,'Total Protein','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Fluid/peritoneal,Fluid/peritonealAMY-LIP','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5083,'Sodium','Plain-CSF-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5084,'Calcium','HCL-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Arsenazo III)(Preservative:30 mL 6 M HCL)\",\"step\":\"0.1\",\"method\":\"24Hr Urine\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5085,'Total Protein','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5086,'Protein:creatinine Ratio','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"(E*1000)/e\", \"ex_list\":\"5053,5052\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/mg)\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5087,'Sex for eGFR','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",1,0.742\",\"help\":\" (male:1) (female:0.742)\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5088,'Age for GFR','Plain-Blood-BI','{\"type\":\"number\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5089,'race for eGFR','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",1,1.210\",\"help\":\" (Non african:1) (African:1.210)\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5092,'CK','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 25-125 (phosphocreatine HK G6PD)\",\"interval_h\":\"125\",\"equipment\":\"C\"}','Cardiac profile','Misc/Cardiac profile','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5093,'CK-MB','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"U/L 0-24 (Immunoinhibition, HK, G6PD)\",\"interval_h\":\"24\",\"equipment\":\"C\"}','','Misc/Cardiac profile','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5094,'Creatinine','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5095,'Sample_Rejection','None','{\"type\":\"select\",\"option\":\",not done as sample inadequate\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5096,'Examination_Rejection','None','{\"type\":\"select\",\"option\":\",not done because instrument is breakdown, some examinations are not done because sample is inadequate,Creatinine is  not done because sample is highly icteric and high bilirubin has negative interference on creatinine level,not done because sample not received, not  done because sample was highly hemolyzed, not done as lab resources are inadequate ,not  done because sample was highly viscous ,examinations are not done because sample is clotted,not done because sample is overfilled\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5097,'Critical_Alert','None','{\"zoom\":\"zoom\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5098,'Remark','None','{\"zoom\":\"zoom\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5099,'Withdrawn_Report','None','{\"zoom\":\"zoom\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5100,'Phosphorus','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL &lt;2.5-4.5 (Ammonium Molybdate)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"cinterval_h\":\"8.9\",\"interval_h\":\"4.5\",\"interval_l\":\"2.5\",\"ainterval_h\":\"12.0\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\"}','','BIG1','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5101,'Corrected Calcium','Plain-Blood-BI','{\"type\":\"number\",\"calculate\":\"0.8*(4-E)+E\",\"ex_list\":\"5011,5014\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/dL)8.6 - 10.2\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5102,'Ketone body','Plain-Blood-BI','{\"type\":\"select\",\"option\":\",Positive,Negative,Not Done(See Remark)\",\"help\":\" (Nitropruside)\",\"equipment\":\"K\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','K'),
(5103,'OPD_Sequence','None','','For Biochemistry OPD Sequence','','Sample  Details','','','','','',1,1,1,1,NULL,'',NULL),
(5105,'Lactate Dehydrogenase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/L NA(L to P UV Kinetic)\",\"equipment\":\"C\"}','','Fluid/otherfluid','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5106,'Amylase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/L NA(CNPG)\",\"equipment\":\"C\"}','AMY+LIP','Fluid/otherfluid/otherfluidAmy+Lip','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5107,'Lipase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/L NA (Turbidimetry)\",\"equipment\":\"C\"}','','Fluid/otherfluid/otherfluidAmy+Lip','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5108,'Glucose','Plain-Other-BI','{\"type\":\"number\",\"help\":\"mg/dl NA(GOD-POD)\",\"equipment\":\"C\"}','','Fluid/otherfluid','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5109,'Cholesterol','Plain-Other-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(CHOD-POD)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5110,'Triglyceride','Plain-Other-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A(Lipase  GPO - POD)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5111,'Micro Protein','Plain-Other-BI','{\"type\":\"number\",\"help\":\"mg/dL NA(Pyrogallol Red)\",\"method\":\"Pyrogallol Red\",\"equipment\":\"C\"}','','Fluid/otherfluid','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5112,'Total Protein','Plain-Other-BI','{\"type\":\"number\",\"help\":\" g/dL N/A (Biuret)\",\"step\":\"0.1\",\"method\":\"Biuret\",\"equipment\":\"C\"}','','Fluid/otherfluid','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5113,'Cholinesterase','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" U/L &lt;3000-13000 (Butyrylthiocholine)\",\"cinterval_l\":\"3000\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5114,'HCL wash','Plain-Blood-BI','{\"hide\":\"yes\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5115,'Total T4','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"nmol/L , 71.2-141 , (ECIA)\",\"equipment\":\"I\"}','','Reference','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5116,'Total T3','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"nmol/L , 1.49-2.60 , (ECIA)\",\"equipment\":\"I\"}','','Reference','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5117,'TSH','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"mIU/L (CLIA)\\n, 0.465-4.68 \\nNormal ranges for thyroid function tests in infants and children\\n Age             Free T4*(ng/dL)              T4(mcg/dL)        Free T3(pg/mL)     T3(ng/dL)      TSH(mU/L)              TBG(mg/dL)\\n Cord blood      0.9 to 2.2                   7.8 to 13.1       0.2 to 2.4         15 to 75       2.2 to 10.7            1.4 to 9.4\\n 1 to 4 days     2.2 to 5.3                   9.3 to 20.9       1.8 to 7.6         100 to 740     2.7 to 26.5\\n 4 to 30 days    0.9 to 3.4                   8.0 to 21.8       2.93 to 5.08       105 to 387     1.2 to 13.1            1.9 to 4.5\\n 1 to 12 months  0.9 to 2.3                   7.2 to 15.7       2.67 to 5.21       105 to 245     0.6 to 7.3             1.9 to 4.4\\n 1 to 5 years    0.8 to 1.8                   6.4 to 13.5       2.73 to 4.95       105 to 269     0.7 to 6.6             1.6 to 4.2\\n 6 to 10 years   1.0 to 2.1                   6.0 to 12.8       2.73 to 4.69       94 to 241      0.8 to 6.0             1.4 to 3.7\\n 11 to 18 years  0.8 to 1.9                   4.7 to 12.4       2.67 to 4.62       80 to 210      0.6 to 5.8             1.2 to 2.9\\n &gt;18 years       0.9 to 2.5                   5.3 to 10.5       2.10 to 4.40       70 to 204      0.4 to 4.2             1.5 to 3.4\\n T4: thyroxine; T3: triiodothyronine; TSH: thyroid-stimulating hormone; TBG: thyroxine-binding globulin.\\n * Because the normal free T4 reference range varies according to the assay method, clinicians need to determine the range for their specific laboratory, which may differ from the data presented in the table.\\n Data adapted from the following sources:\\n      Nelson JC, Clark SJ, Bonut DL, et al. Age-related changes in serum free thyroxine during childhood and adolescence. J Pediatr 1993; 123:899.\\n     Elmlinger MW, KÃƒÂ¼hnel W, Lambrecht HG, et al. Reference intervals from birth to adulthood for serum thyroxine (T4), triiodothyronine (T3), free T3, free T4, thyroxine binding globulin (TBG) and thyrotropin (TSH). Clin Chem Lab Med 2001; 39:973.\\n     Mutlu M, KaragÃƒÂ¼zel G, AlÃ„Â±yazicioÃ„ÂŸlu Y, et al. Reference intervals for thyrotropin and thyroid hormones and ultrasonographic thyroid volume during the neonatal period. J Matern Fetal Neonatal Med 2012; 25:120.\\n     Strich D, Edri S, Gillis D. Current normal values for TSH and FT3 in children are too low: evidence from over 11,000 samples. J Pediatr Endocrinol Metab 2012; 25:245.\\n     Lem AJ, de Rijke YB, van Toor H, et al. Serum thyroid hormone levels in healthy children from birth to adulthood and in short children born small for gestational age. J Clin Endocrinol Metab 2012; 97:3170.\\n     Esoterix (Endocrine Sciences). \",\"interval_l\":\"0.465\",\"interval_h\":\"4.68\",\"equipment\":\"I\"}','','TSH','Immunochemistry','','','','','horizontal1',1,1,1,1,NULL,'','I'),
(5118,'Ferritin','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"microgram/L\\n Male(Adult): 20-250\\n Female(Adult): 10-120\\n Newborn: 25-200 \\n 1 month: 200-600  \\n 2-5 month:50-200  \\n 6 month-15 years:7-140  \\n(ECLIA) \",\"interval_l\":\"6.24\",\"interval_h\":\"464\",\"equipment\":\"I\"}','','Anemia ','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5120,'Procalcitonin (PCT)','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"microgram/L \\n # less than 0.5 =&gt; systemic bacterial infection is unlikely \\n # 0.5-2.0 =&gt; systemic bacterial infection is possible \\n # 2.0-10.0 =&gt; systemic bacterial infection is likely \\n # more than 10.0 =&gt; almost exclusively due to systemic bacterial infection\\n(ECIA)\", \"interval_h\":\"0.5\",\"cinterval_h\":\"2\",\"equipment\":\"I\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5121,'CRP','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"mg/L \\n less than 10 \\n This is not hsCRP. Donot use this result for interpretation when result is less than 10\\n(Immunoturbidimetry)\",\"interval_h\":\"10\",\"equipment\":\"D\"}','','LREG/ALBTP/CRP,LRE-ALBTP-CRPLDH,LRE-CALCRP,Misc/CRP','Chemistry','','','','','compact_report',1,1,1,1,NULL,'','D'),
(5122,'D-dimer','Citrate-Blood-BI','{\"type\":\"number\",\"help\":\"microgram/L , &lt;500 , (ECIA)\",\"interval_h\":\"500\",\"equipment\":\"D\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','D'),
(5123,'Cardiac Troponin I (cTnI)','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"ng/L\\n Male: 8.8-23.7\\n Female: 4.4-21.4\\n (high sensitivity, ECIA)\",\"interval_h\":\"23.7\",\"equipment\":\"I\"}','','Misc/Cardiac profile','Chemistry','','','','','',1,1,1,1,NULL,'','I'),
(5124,'Interleukin-6','EDTA-Blood-BI','{\"help\":\"pg/mL\\n  &lt;7.0 \\n (upconverting phosphor immunoassay)\",\"interval_h\":\"7\",\"equipment\":\"6\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'','6'),
(5125,'NT-ProBNP','Plain-Blood-BI','{\"help\":\"pg/ml (ECIA)\\n===Heart Failure Unlikely===\\n # Any age, &lt;300\\n====Heart Failure Likely====\\n # 20-50 Y, &gt;450 \\n # 50-75 Y, &gt;900\\n # &gt;75Y, &gt;1800\",\"interval_h\":\"300\",\"equipment\":\"I\"}','','Reference','IL6','','','','','',1,1,1,1,NULL,'','I'),
(5126,'Request Form','None','{\"type\":\"blob\"}','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5127,'Free T4','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"pmol/L \\n 10.0-28.2 \\n(ECIA)\",\"interval_l\":\"10.0\",\"interval_h\":\"28.2\",\"equipment\":\"I\"}','','Reference','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5128,'Free T3','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"pmol/L \\n 4.26-8.10 \\n(ECIA)\",\"interval_l\":\"4.26\",\"interval_h\":\"8.10\",\"equipment\":\"I\"}','','Reference','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5129,'prolactin','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"ng/mL \\n Normal Nonpregnant Female: 3.0-18.6 \\n Male:3.7-17.9 \\n(ECIA)\",\"interval_h\":\"18.6\",\"equipment\":\"I\"}','','Misc/Fertility','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5130,'FSH','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"IU/L \\n # normal female follicular phase =&gt; 1.98-11.6 \\n # norma female midcycle peak=&gt;5.14-23.4 \\n # normal female lueal phase =&gt; 1.38-9.58 \\n # post menopausal female =&gt; 21.5- 131 \\n Normal male=&gt; 1.555-9.74 \\n(ECIA)\", \"equipment\":\"I\"}','','Misc/Fertility','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5131,'LH','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"IU/L \\n # normal female follicular phase =&gt; 2.58-12.1 \\n # norma female midcycle peak=&gt;27.3-96.9 \\n # normal female lueal phase =&gt; 0.833-15.5 \\n # post menopausal female =&gt; 13.1- 86.5 \\n(ECIA)\", \"equipment\":\"I\"}','','Misc/Fertility','Immunochemistry','','','','','horizontal2',1,1,1,1,NULL,'','I'),
(5132,'Magnesium','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" mg/dL 1.7-2.7 (Xylidyl blue)\",\"step\":\"0.1\",\"interval_h\":\"2.7\",\"interval_l\":\"1.7\",\"equipment\":\"C\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'','C'),
(5133,'B-hCG','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"IU/L,\\n&lt;=25, \\n(ECIA)\",\"interval_h\":\"25\",\"equipment\":\"I\"}','','Misc/bHCG','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5134,'Urine osmolality','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L&lt;1200 (Calculated)\",\"calculate\":\"E/6+E/18+2*E+2*E+E/11.312\",\"ex_list\":\"5135,5136,5048,5049,5052\",\"equipment\":\"C\"}','','Urine/Urine.osm','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5135,'Urea','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dl(urease GLDH)\",\"equipment\":\"C\"}','','Urine/Urine.osm','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5136,'Glucose','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dl(GOD-POD endpoint)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5137,'Creatinine','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mg/dL N/A (Jaffe two point)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5138,'HCL wash','Plain-Blood-BI','{\"hide\":\"yes\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5139,'Adenosine Deaminase','Plain-Other-BI','{\"type\":\"number\",\"help\":\"U/mL N/A (Berthelot)\"}','','Fluid/otherfluid','Semi Auto Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5140,'Testosterone','Plain-Blood-BI','{\"type\":\"number\",\"help\": \"nmol/L \\n #  Normal male(20-49 years) : 4.56-28.2 \\n # Normal males(&gt;50 years): 2.49-21.6 \\n #  Females with normal  menstrual  cycles : 0.198-2.67  \\n(ECIA)\", \"equipment\":\"I\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5141,'Total 25-OH Vit-D','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"nmol/L\\n Deficient: &lt;50\\n Insufficient: 50-&lt;75\\n Sufficient: 75-250 \\n potential toxicity: &gt;250\\n(ECIA) \\n Multiply The Value with 0.4 to Covert it from nmol/L into ng/ml \",\"interval_l\":\"75\",\"interval_h\":\"250\",\"equipment\":\"I\"}','','Reference','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5142,'Vitamin B12','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"pmol/L 176-687  \\n(ECIA)\",\"interval_h\":\"687\",\"interval_l\":\"176\",\"equipment\":\"I\"}','','Reference','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5143,'pH','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"7.35-7.45 (Direct ISE)\",\"interval_l\":\"7.35\",\"interval_h\":\"7.45\",\"cinterval_l\":\"7.20\",\"cinterval_h\":\"7.60\",\"ainterval_h\":\"7.8\",\"ainterval_l\":\"6.9\",\"equipment\":\"A\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'','A'),
(5144,'PCO2','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 32-48 (Direct ISE)\",\"interval_l\":\"32\",\"interval_h\":\"48\",\"cinterval_l\":\"20\",\"cinterval_h\":\"70\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5145,'PO2','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 83-108 (Direct ISE)\",\"interval_l\":\"83\",\"interval_h\":\"108\",\"cinterval_l\":\"40\",\"cinterval_h\":\"250\",\"ainterval_h\":\"500\",\"ainterval_l\":\"20\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5146,'Hematocrit','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"% (Calculated)\\n Male 20-60\\n Female 30-60\",\"interval_l\":\"20\",\"interval_h\":\"60\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5147,'ct Hct','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5148,'Na+','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 136-145 (Direct ISE)\",\"interval_l\":\"136\",\"interval_h\":\"145\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5149,'K+','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 3.5-5.1 (Direct ISE)\",\"interval_l\":\"3.5\",\"interval_h\":\"5.1\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5150,'Ionized Calcium(Ca2+)','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 1.15-1.30 (Direct ISE)\",\"interval_l\":\"1.15\",\"interval_h\":\"1.30\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5151,'Cl-','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 101-110 (Direct ISE)\",\"interval_l\":\"101\",\"interval_h\":\"110\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5152,' Base(B)','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L -3.0-3.0 (Calculated)\",\"interval_l\":\"-3.0\",\"interval_h\":\"3.0\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5153,'Anion Gap','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5154,'HCO3 ','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 22.0-28.0 (Calculated)\",\"interval_l\":\"22.0\",\"interval_h\":\"28.0\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5155,'cHCO3-(P,st)c','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5156,'sO2','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 95.0-99.0 (Calculated)\",\"interval_l\":\"95.0\",\"interval_h\":\"99.0\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5157,'Bilirubin Reference range','Plain-Blood-BI','{\"zoom\":\"zoom\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5158,'Glucose','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5159,'Lactate','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L\\n &lt;1.39 at Bed Rest\\n (Direct ISE)\",\"interval_h\":\"1.3\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5160,'tHb','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5161,'FO2Hb','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5162,'FCOHb','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5163,'FMetHb','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5164,'FHHb','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5165,'HCO3-std','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5166,'ctCO2','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5167,'mOSm','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5168,'BO2','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5169,'ct O2(a)','Heparinised Arterial-Blood-BI','','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5170,'Albumin','Plain-Blood-BI','{\"type\":\"number\",\"help\":\" g/dL &lt;3.5-5.2 (BCG)\",\"step\":\"0.1\",\"cinterval_l\":\"1\",\"interval_h\":\"5.2\",\"interval_l\":\"3.5\",\"ainterval_h\":\"10\",\"ainterval_l\":\"0.5\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5171,'Anti-SARS-CoV-2 IgG','Plain-Blood-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'','I'),
(5172,'Sodium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5173,'Potassium','Plain-Urine-BI','{\"type\":\"number\",\"help\":\" mmol/L N/A(Direct ISE)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5174,'HbA1c','EDTA-Blood-BI','{\"type\":\"number\",\"help\":\" % \\n &lt; 5.7 =normal \\n 5.7-6.4 =prediabetes \\n &gt;6.4 =diabetes \\n (HPLC)\",\"step\":\"0.1\",\"interval_h\":\"6.5\",\"equipment\":\"H\",\"accreditation\":\"yes\"}','','Reference/HbA1c','Chromatography','','','10','','',1,1,1,1,NULL,'','H'),
(5175,'SARS-CoV-2 Ag','Plain-Swab-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','I'),
(5176,'SARS-CoV-2 RT-PCR-E','Plain-Swab-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','I'),
(5177,'SARS-CoV-2 RT-PCR-N','Plain-Swab-BI','{\"type\":\"number\",\"help\":\"Test/Cutoff Ratio \\n &lt;1   = Non reactive\\n &gt;1   = Reactive \\n(ECIA)\",\"equipment\":\"I\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','I'),
(5178,'HbA1c Chromatogram','EDTA-Blood-BI','{\"type\":\"blob\",\"img\":\"png\"}','','Reference/HbA1c','Chromatography','','','30','','',1,1,1,1,NULL,'',NULL),
(5179,'HbF','EDTA-Blood-BI','{\"equipment\":\"H\"}','','Reference/HbA1c','Electrophoresis','','','20','','',1,1,1,1,NULL,'','H'),
(5180,'Rapid SARS-CoV-2 Ag card test','Plain-Swab-BI','{\"type\":\"select\",\"option\":\", Positive , Negative\"}','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(5181,'Albumin','Plain-Peritoneal Fluid-BI','{\"type\":\"number\",\"help\":\" g/dL N/A (BCG)\",\"step\":\"0.1\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5182,'Micro albumin','Plain-Urine-BI','{\"type\":\"number\",\"help\":\"mg/L (Turbilatex)\",\"method\":\"Turbilatex\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5183,'ACR (Albumin-creatinine ratio)','Plain-Urine-BI','{\"type\":\"number\",\"calculate\":\"(E*100)/e\", \"ex_list\":\"5182,5137\", \"step\":\"0.1\",\"decimal\":\"1\",\"help\":\"(Calculated)(mg/gm) \\n Normal&lt;30 \\n Microalbuminuria 30-300 \\n Macroalbuminuria &gt;300\",\"method\":\"Turbilatex\",\"interval_h\":\"30\",\"equipment\":\"C\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','C'),
(5184,'pH','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"7.30-7.43 (Direct ISE)\",\"interval_l\":\"7.30\",\"interval_h\":\"7.43\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5185,'PCO2','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 38-58 (Direct ISE)\",\"interval_l\":\"38\",\"interval_h\":\"58\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5186,'PO2','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmHg 19-65 (Direct ISE)\",\"interval_l\":\"19\",\"interval_h\":\"65\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5187,'HCO3 ','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 22.0-30.0 (Calculated)\",\"interval_l\":\"22.0\",\"interval_h\":\"30.0\",\"equipment\":\"A\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','A'),
(5188,'Na+','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 136-145 (Direct ISE)\",\"interval_l\":\"136\",\"interval_h\":\"145\",\"equipment\":\"V\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','V'),
(5189,'K+','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L 3.5-5.1 (Direct ISE)\",\"interval_l\":\"3.5\",\"interval_h\":\"5.1\",\"equipment\":\"V\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'','V'),
(5190,'Lactate','Heparinised Venous-Blood-BI','{\"type\":\"number\",\"help\":\"mmol/L\\n &lt;2.2 at Bed Rest\\n (Direct ISE)\",\"interval_h\":\"2.2\"}','','','Blood Gas Analysis','','','','','',1,1,1,1,NULL,'',NULL),
(5191,'TAT_remark','None','','','','Sample Details','','','','','',1,1,1,1,NULL,'',NULL),
(5195,'Total bilirubin','Heparinised Arterial-Blood-BI','{\"type\":\"number\",\"help\":\"mg/dl &lt;1.3 (photometry)\",\"equipment\":\"A\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'','A'),
(5205,'Glucose','Plain-Blood-BI','','','Misc/Osmolarity-Serum','Chemistry','','','','','',NULL,NULL,NULL,NULL,NULL,'',NULL),
(7001,'Cyto No','Plain-FNA-CY','','','','Chemistry','','50','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7002,'Brief Clinical History / Diagnosis','Plain-FNA-CY','','','','Chemistry','','','','','horizontal1',1,1,1,1,NULL,'',NULL),
(7003,'Site of Aspiration','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7004,'On Examination','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7005,'Aspiration Done By','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7006,'Gross Nature of Aspirate','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7007,'Radiological Findings','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7008,'Stain','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7009,'Cellularity','Plain-FNA-CY','','','','Chemistry','','10','','','horizontal2',1,1,1,1,NULL,'',NULL),
(7010,'Findings','Plain-FNA-CY','','','','Chemistry','','','','','horizontal1',1,1,1,1,NULL,'',NULL),
(7011,'Conclusion','Plain-FNA-CY','','','','Chemistry','','','','','horizontal1',1,1,1,1,NULL,'',NULL),
(7012,'Reported by','Plain-FNA-CY','','','','Chemistry','','','','','horizontal2',1,1,1,1,NULL,'',NULL),
(9000,'QC Equipment','None','{\"type\":\"select\",\"option\":\",XL_640,XL_1000,VITROS3600,HPLC_723GX,Erba Chem 5 Plus semiauto(060379) 2 \"}','','','QC Details','','','','','',1,1,1,1,NULL,'',NULL),
(9001,'Creatinine','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9002,'Urea','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9006,'ALT','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9007,'Alkaline Phosphatase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9008,'Amylase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9009,'Total Billirubin','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9010,'Direct Billirubin','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9011,'Albumin','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9012,'Total Protein','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9013,'Aspartate transaminase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9014,'Calcium','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9015,'Total Cholesterol','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9016,'HDL Cholesterol','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9018,'Triglyceride','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9019,'Sodium','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9020,'Potassium','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9021,'Iron','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9023,'UIBC','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9025,'Lactate Dehydrogenase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9026,'Lipase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9027,'Uric Acid','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9031,'Glucose','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9051,'Phosphorus','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9081,'Micro Protein','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9092,'CK','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9093,'CK-MB','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9113,'Cholinesterase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9114,'HCL wash','QC-QC-BI','{\"hide\":\"yes\"}','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9201,'Ferritin','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9202,'CRP','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9203,'TSH','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9204,'D-dimer','QC-QC-BI','','','','ChemistryImmunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9205,'PCT','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9206,'Total T4','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9207,'Cardiac Troponin I(cTnI)','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9208,'Interlukin-6','QC-QC-BI','','','','IL6','','','','','',1,1,1,1,NULL,'',NULL),
(9209,'NT-ProBNP','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9210,'Magnesium','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9211,'FSH','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9212,'LH','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9213,'Free T3','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9214,'Free T4','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9215,'prolactin','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9216,'B-hCG','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9217,'Lipase','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9218,'ADA','QC-QC-BI','','','','Semi Auto Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9219,'VitaminB12','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9220,'Total-25-OH-Vitamin-D','QC-QC-BI','','','','Immunochemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9221,'DDIMER','QC-QC-BI','','','Misc/DDMR','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(9222,'HbA1c','QC-QC-BI','','','','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(9223,'HbA1c Chromatogram','QC-QC-BI','{\"type\":\"blob\",\"img\":\"png\"}','','','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(9224,'HbF','QC-QC-BI','','','','Electrophoresis','','','','','',1,1,1,1,NULL,'',NULL),
(9225,'Micro albumin','QC-QC-BI','','','','Chemistry','','','','','',1,1,1,1,NULL,'',NULL),
(10001,'sample_request','None','{\"type\":\"datetime-local\"}','','Sample Details','Sample Details','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(10002,'sample_collection','None','{\"type\":\"datetime-local\"}','','Sample Details','Header','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(10003,'sample_receipt','None','{\"type\":\"datetime-local\"}','','Sample Details','Sample Details','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(10004,'sample_processing','None','{\"type\":\"datetime-local\"}','','Sample Details','Sample Details','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(10005,'sample_receipt_kidney','None','{\"type\":\"datetime-local\"}','','Sample Details','Sample Details','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(10006,'sample_analysis','None','{\"type\":\"datetime-local\"}','','Sample Details','Sample Details','','compact_report','','','',1,1,1,1,NULL,'',NULL),
(10007,'sample_verification','None','{\"type\":\"datetime-local\"}','','Sample Status','Sample Details','','compact_report','','','',1,1,1,1,1,'',NULL),
(10008,'sample_release','None','{\"type\":\"datetime-local\"}','','Sample Details','Header','','compact_report','','','',3,3,3,3,1,'',NULL),
(10010,'sample_interim_release','None','{\"type\":\"datetime-local\"}','','Sample Details','Header','','compact_report','','','',3,3,3,3,1,'',NULL),
(10011,'Accreditation Symbol','None','{\"type\":\"blob\",\"img\":\"png\",\"width\":\"100\",\"height\":\"130\"}','','Header','Header','Header','compact_report','','','',3,3,3,3,NULL,'',NULL),
(10012,'Laboratory','None','{\"type\":\"examination_field_specification\"}','','Header','Header','Header','compact_report','','','',3,3,3,3,NULL,'',NULL),
(10013,'Laboratory Symbol','None','{\"type\":\"blob\"}','','Header','Header','Header','compact_report','','','',3,3,3,3,NULL,'',NULL);
/*!40000 ALTER TABLE `examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_code`
--

DROP TABLE IF EXISTS `host_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `host_code` (
  `examination_id` int(11) NOT NULL,
  `equipment` enum('XL_640','XL_1000','VITROS3600','RP500','TOSOH') NOT NULL,
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
(5001,'XL_640','CR'),
(5002,'XL_640','UREA'),
(5006,'XL_640','ALT'),
(5007,'XL_640','ALP'),
(5008,'XL_640','AMY'),
(5009,'XL_640','TBIL'),
(5010,'XL_640','DBIL'),
(5011,'XL_640','ALB'),
(5012,'XL_640','TP'),
(5013,'XL_640','AST'),
(5014,'XL_640','CAL'),
(5015,'XL_640','CHO'),
(5016,'XL_640','CHOH'),
(5017,'XL_640','CHOL'),
(5018,'XL_640','TG'),
(5019,'XL_640','Na'),
(5020,'XL_640','K'),
(5021,'XL_640','IRON'),
(5022,'XL_640','TIBC'),
(5023,'XL_640','UIBC'),
(5024,'XL_640','IBIL'),
(5025,'XL_640','LDH'),
(5026,'XL_640','LIP'),
(5027,'XL_640','UA'),
(5028,'XL_640','CHOV'),
(5029,'XL_640','GLC'),
(5030,'XL_640','MPR'),
(5031,'XL_640','GLC'),
(5032,'XL_640','ADA'),
(5033,'XL_640','ADA'),
(5034,'XL_640','ADA'),
(5035,'XL_640','GLC'),
(5036,'XL_640','GLC'),
(5037,'XL_640','TP'),
(5038,'XL_640','TP'),
(5039,'XL_640','LIP'),
(5040,'XL_640','AMY'),
(5041,'XL_640','LDH'),
(5042,'XL_640','CHO'),
(5043,'XL_640','TG'),
(5044,'XL_640','AMY'),
(5045,'XL_640','LIP'),
(5046,'XL_640','LDH'),
(5047,'XL_640','LDH'),
(5048,'XL_640','Na'),
(5049,'XL_640','K'),
(5050,'XL_640','CAL'),
(5051,'XL_640','PHO'),
(5052,'XL_640','CR'),
(5053,'XL_640','TP'),
(5054,'XL_640','KTO'),
(5055,'XL_640','UA'),
(5080,'XL_640','TP'),
(5081,'XL_640','MPR'),
(5082,'XL_640','MPR'),
(5083,'XL_640','Na'),
(5084,'XL_640','CAL'),
(5085,'XL_640','MPR'),
(5092,'XL_640','CK'),
(5093,'XL_640','CKMB'),
(5100,'XL_640','PHO'),
(5105,'XL_640','LDH'),
(5106,'XL_640','AMY'),
(5107,'XL_640','LIP'),
(5108,'XL_640','GLC'),
(5109,'XL_640','CHO'),
(5110,'XL_640','TG'),
(5111,'XL_640','MPR'),
(5112,'XL_640','TP'),
(5113,'XL_640','CHE'),
(5121,'XL_640','CRPPP'),
(5122,'XL_640','DIMER'),
(5132,'XL_640','MGGG'),
(5135,'XL_640','UREA'),
(5136,'XL_640','GLC'),
(5137,'XL_640','CR'),
(5138,'XL_640','HCL'),
(9001,'XL_640','CR'),
(9002,'XL_640','UREA'),
(9006,'XL_640','ALT'),
(9007,'XL_640','ALP'),
(9008,'XL_640','AMY'),
(9009,'XL_640','TBIL'),
(9010,'XL_640','DBIL'),
(9011,'XL_640','ALB'),
(9012,'XL_640','TP'),
(9013,'XL_640','AST'),
(9014,'XL_640','CAL'),
(9015,'XL_640','CHO'),
(9016,'XL_640','CHOH'),
(9018,'XL_640','TG'),
(9019,'XL_640','Na'),
(9020,'XL_640','K'),
(9021,'XL_640','IRON'),
(9023,'XL_640','UIBC'),
(9025,'XL_640','LDH'),
(9027,'XL_640','UA'),
(9031,'XL_640','GLC'),
(9051,'XL_640','PHO'),
(9081,'XL_640','MPR'),
(9092,'XL_640','CK'),
(9093,'XL_640','CKMB'),
(9113,'XL_640','CHE'),
(9114,'XL_640','HCL'),
(9202,'XL_640','CRPPP'),
(9204,'XL_640','DIMER'),
(9210,'XL_640','MGGG'),
(9217,'XL_640','LIP'),
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
(5016,'XL_1000',''),
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
(5137,'XL_1000','CRR'),
(5138,'XL_1000','HCLL'),
(5182,'XL_1000','UALBB'),
(9001,'XL_1000','CRR'),
(9002,'XL_1000','UREE'),
(9006,'XL_1000','ALTT'),
(9007,'XL_1000','ALPP'),
(9008,'XL_1000','AMYY'),
(9009,'XL_1000','TBILL'),
(9010,'XL_1000','DBILL'),
(9011,'XL_1000','ALBB'),
(9012,'XL_1000','TPP'),
(9013,'XL_1000','ASTT'),
(9014,'XL_1000','CALL'),
(9015,'XL_1000','CHOO'),
(9016,'XL_1000',''),
(9018,'XL_1000','TGG'),
(9019,'XL_1000','Naa'),
(9020,'XL_1000','Kk'),
(9021,'XL_1000','IRONN'),
(9023,'XL_1000',''),
(9025,'XL_1000','LDHH'),
(9027,'XL_1000','UAA'),
(9031,'XL_1000','GLCC'),
(9051,'XL_1000','PHOO'),
(9081,'XL_1000','MPRR'),
(9092,'XL_1000','CKK'),
(9093,'XL_1000','CKMBB'),
(9113,'XL_1000','CHEE'),
(9114,'XL_1000','HCLL'),
(9202,'XL_1000','CRPP'),
(9204,'XL_1000','DDMR'),
(9210,'XL_1000','MGG'),
(9217,'XL_1000','LIPP'),
(9221,'XL_1000','DDMR'),
(5115,'VITROS3600','002'),
(5117,'VITROS3600','001'),
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
(9201,'VITROS3600','031'),
(9203,'VITROS3600','001'),
(9205,'VITROS3600','086'),
(9206,'VITROS3600','002'),
(9207,'VITROS3600','082'),
(9209,'VITROS3600','052'),
(9211,'VITROS3600','010'),
(9212,'VITROS3600','009'),
(9213,'VITROS3600','005'),
(9214,'VITROS3600','004'),
(9215,'VITROS3600','011'),
(9216,'VITROS3600','013'),
(9219,'VITROS3600','032'),
(9220,'VITROS3600','074'),
(5143,'RP500','mpH'),
(5144,'RP500','mPCO2'),
(5145,'RP500','mPO2'),
(5148,'RP500','mNa+'),
(5149,'RP500','mK+'),
(5154,'RP500','cHCO3act'),
(5159,'RP500','mLactate'),
(5174,'TOSOH','SA1C'),
(5178,'TOSOH','chrom'),
(5179,'TOSOH','F'),
(9222,'TOSOH','SA1C'),
(9223,'TOSOH','chrom'),
(9224,'TOSOH','F');
/*!40000 ALTER TABLE `host_code` ENABLE KEYS */;
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
  `data` varchar(5000) NOT NULL,
  `other_data` varchar(5000) NOT NULL,
  `border` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` VALUES
(1,'1045','B1','C128','{\"1\":\"1045,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1045,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"1045,v,t,40,21,9,03\",\"8\":\"sample_id,v,t,43.5,21,9,03\",\"9\":\"1000,v,t,40,12,7.5,03\",\"10\":\"1002,v,t,43.5,12,7.5,03\"}','',0),
(2,'1046','B1','C128','{\"1\":\"1046,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1046,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"1046,v,t,40,21,9,03\",\"8\":\"sample_id,v,t,43.5,21,9,03\",\"9\":\"1000,v,t,40,12,7.5,03\",\"10\":\"1002,v,t,43.5,12,7.5,03\"}','',0),
(7,'1045','B2','C128','{\"1\":\"1045,h,b,05,05,40,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1045,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\"}','',0),
(8,'1047','B1','C128','{\"1\":\"1047,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1047,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"sample_id,v,t,40,21,7.5,03\",\"8\":\"1047,v,t,40,13,7.5,03\"}','',0),
(9,'sample_id','B1','C128','{\"1\":\"sample_id,h,b,05,05,30,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1001,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\",\"7\":\"sample_id,v,t,40,21,9,03\",\"8\":\"sample_id,v,t,43.5,21,9,03\",\"9\":\"1000,v,t,40,12,7.5,03\",\"10\":\"1002,v,t,43.5,12,7.5,03\"}','',0),
(10,'sample_id','B2','C128','{\"1\":\"sample_id,h,b,05,05,40,10\",\"2\":\"1000,h,t,25,15,20,03\",\"3\":\"1001,h,t,10,15,15,03\",\"4\":\"sample_id,h,t,10,18,15,03\",\"5\":\"1002,h,t,25,18,20,03\",\"6\":\"other_data,h,t,5,15,5,6\"}','select group_concat(distinct equipment SEPARATOR \'\') other_data from result,examination where sample_id={sample_id} and examination.examination_id=result.examination_id;',0),
(11,'1047','B2','C128','{\"1\":\"1047,h,b,05,05,40,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1047,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\"}','',0),
(12,'sample_id','B3','C39','{\"1\":\"sample_id,h,b,05,05,40,10\",\"2\":\"1000,h,t,20,15,15,03\",\"3\":\"1001,h,t,05,15,15,03\",\"4\":\"sample_id,h,t,05,18,15,03\",\"5\":\"1002,h,t,20,18,15,03\"}','',0);
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
/*!40000 ALTER TABLE `lis_to_vitros_sample_type` ENABLE KEYS */;
UNLOCK TABLES;

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
('NCHS Biochemistry Section'),
('NCHS Pathology Section');
/*!40000 ALTER TABLE `Laboratory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_new`
--

DROP TABLE IF EXISTS `menu_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_new` (
  `id` int(11) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `ex_list` varchar(100) NOT NULL,
  `route` varchar(200) NOT NULL,
  `default_value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_new`
--

LOCK TABLES `menu_new` WRITE;
/*!40000 ALTER TABLE `menu_new` DISABLE KEYS */;
INSERT INTO `menu_new` VALUES
(1,'OPD','1001,1002,1008,1004,1005,1006,1007,1041,1023,1045,1046,10003,10011,10012','','10012^NCHS Biochemistry Section'),
(2,'Ward','1001,1002,1045,1047,1004,1005,1006,10003,1023,10011,10012','','10012^NCHS Biochemistry Section'),
(3,'ABG','1001,1002,1008,1004,1005,1006,1007,5143,5144,5145,5148,5159,5150,5158,5195,10011,10012','','10012^NCHS Biochemistry Section'),
(4,'NIRAMAYA ','1001,1002,1003,1007,1008,1025,1014,1009,5018,5031,5015,5001,10011,10012','','10012^NCHS Biochemistry Section'),
(11,'MRD','1001','','10012^NCHS Biochemistry Section'),
(12,'Basic','','','10012^NCHS Biochemistry Section');
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
(1,'Request','1045','1002,1004,1005,1006,1017','1045'),
(2,'OPD','1046','1000,1001,1002,1004,1005,1006,10012','1046'),
(3,'Ward','1047','1002,1004,1005,1006,1017','10003,1047'),
(4,'Sample ID','sample_id','1002,1004,1005,1006,1017','sample_id'),
(5,'Ward-location','1047','1006,1017','1046'),
(6,'QC1','1048','1001','1048');
/*!40000 ALTER TABLE `menu_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `examination_id_list` varchar(500) NOT NULL,
  `extra` varchar(300) DEFAULT NULL,
  `edit_specification` varchar(500) NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES
(1,'Patient_Identification','1001,1002,1008,1004,1005,1006,1007','1020,1021,1012,1024,1025,1039,1041','{\"header\":\"no\",\"print_style\":\"horizontal\",\"compact\":\"no\"}'),
(2,'Sample Details','1000,1015,1016,1017,1018,1014,1026,1045','1019,1022,1023,5103,9000,5126,1027,1028,1029,1030,1031,1032,1033,1034,1035,1036,1037,1038,1040,1043,1044','{\"header\":\"no\",\"print_style\":\"horizontal\",\"compact\":\"no\"}'),
(20,'Bone Marrow Examination Details','147,148','',''),
(21,'Hemogram - Blood Counts and Indices','3,2,4,5,6,7,8,1,9','',''),
(22,'Differential Leucocyte Count  with Premature Cells (Microscopy)','51,52,53,54,55,400,401,402,403,404','',''),
(23,'Differential Leucocyte Count (Microscopy)','39,40,41,42,43,56','',''),
(24,'Absolute Counts','48,49,50','',''),
(25,'Peripheral Smear (Red Blood Cells)','57,58,59,60,61,62,63,64,65,66','',''),
(26,'Peripheral Smear (Platelets)','45,67','',''),
(27,'Peripheral Smear (Parasites)','68,69,70','',''),
(28,'Rapid Malarial Antigen Test','46,47','',''),
(29,'Platelet Indices','510,511,71,72','',''),
(30,'Reticulocyte Count (RC)','73,74','',''),
(31,'Erythrocyte Sedimentation Rate','75','',''),
(32,'Prothrombin Time ','76,77,78,79,80,602','',''),
(33,'Activated Partial Thromboplastin Time (aPTT)','81,82,603','',''),
(34,'Plasma Fibrinogen','83,84','',''),
(35,'Factor Assay','85,86','',''),
(36,'Bleeding Time (BT) and Clotting Time (CT)','87,88','',''),
(37,'Urine Routine and Microscopy','89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,181,107,108,109,110,111,113','',''),
(38,'Stool Examination','114,115,116,117,118,119,120,121,122,123,124,125','',''),
(39,'Body Fluid Examination','126,127,128,129,130,131,132,133,134,135,136,137','',''),
(40,'Semen Examination','138,139,140,141,142,143,144,145,146','',''),
(41,'Bone Marrow Examination Report','150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180','',''),
(101,'Histopathology','2010,2001,2002,2003,2004,2011,2005,2009,2006,2007,2008','','{\"header\":\"no\",\"print_style\":\"vertical\"}'),
(231,'Dw Graphs','19,20,21','','{\"display_name\":\"no\",\"header\":\"no\",\"print_hide\":\"no\"}'),
(300,'Reported by','2012,2013,2014','2015','{\"header\":\"no\",\"print_style\":\"horizontal\"}'),
(501,'Diabetes Mellitus Profile','5031','5102,5174,5178,5179','{\"group\":\"BI\"}'),
(502,'Immuno-assay','5118,5121,5122','5117,5120,5123,5124,5127,5128,5129,5130,5131,5133,5125,5140,5141,5142,5171','{\"group\":\"BI\"}'),
(503,'LFT','5006,5009,5010,5024','5013','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),
(504,'ALB+TP(ALP)','5012,5011','5007','{\"display_name\":\"no\",\"group\":\"BI\"}'),
(505,'Pancreatic profile','5008,5026','','{\"group\":\"BI\"}'),
(506,'Electrolyte','5019,5020','','{\"group\":\"BI\"}'),
(507,'RFT','5001','','{\"group\":\"BI\"}'),
(508,'Adavanced RFT','5002,5027','','{\"group\":\"BI\",\"display_name\":\"no\",\"header\":\"no\"}'),
(509,'Cal+PO4','5014,5100,5114,5101','','{\"display_name\":\"no\",\"group\":\"BI\"}'),
(510,'Cardiac profile','5092,5093','','{\"group\":\"BI\"}'),
(511,'Misc','5025','5113','{\"display_name\":\"no\",\"group\":\"BI\"}'),
(512,'Urine','5054,5050,5057,5052,5056,5086,5085,5053,5058,5059,5172,5173,5136,5182,5051,5183','','{\"group\":\"BI\"}'),
(514,'eGFR','5088,5089,5087,5060','','{\"group\":\"BI\"}'),
(515,'Lipid profile','5015,5018','5016,5017,5028,1099','{\"group\":\"BI\"}'),
(516,'Mg 2+','5132,5138','','{\"group\":\"BI\"}'),
(517,'urine osmolality','5134,5135,5136,5048,5049,5137','','{\"group\":\"BI\"}'),
(519,'Other Fluid','5105,5139','5106,5107,5108,5109,5110,5111,5112','{\"display_name\":\"no\",\"group\":\"BI\"}'),
(520,'Peritoneal profile','5033,5035,5038,5039,5040,5041,5042,5043,5082,5094,5181','','{\"group\":\"BI\"}'),
(521,'Pleural profile','5034,5036,5037,5044,5045,5046,5081','','{\"group\":\"BI\"}'),
(522,'Anemia profile','5021,5022,5023','','{\"group\":\"BI\"}'),
(529,'ABG ','5143,5144,5145,5154,5148,5149,5159','5146,5147,5152,5153,5155,5160,5161,5162,5163,5164,5165,5166,5167,5168,5169,5150,5151,5156,5158','{\"group\":\"BI\"}'),
(530,'Protein Electrophoresis','5076,5078,5079,5077,5075','','{\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),
(531,'Hemoglobin Electrophoresis','5063,5065,5066,5067,5068,5069,5064,5070,5071,5072,5073,5074','','{\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),
(532,'CSF profile','5029,5030,5080,5032','5047','{\"group\":\"BI\"}'),
(533,'venous blood gas analysis','5184,5185,5186,5187,5188,5189,5190','','{\"group\":\"BI\"}'),
(534,'Serum osmolality','5061','','{\"group\":\"BI\"}'),
(535,'QC others','9016,9021,9023,9092,9093,9113,9081,9210,9217,9218,9222,9223,9224,9225','','{\"group\":\"BI\"}'),
(536,'Morning QC','9001,9002,9006,9007,9008,9009,9010,9011,9012,9014,9015,9031,9018,9019,9020,9025,9027,9051,9114',NULL,'{\"group\":\"BI\"}'),
(537,'QC Immuno-assay','9201,9202,9203,9205,9206,9207,9208,9209,9211,9212,9213,9214,9215,9216,9219,9220,9221','','{\"group\":\"BI\"}'),
(538,'Bilirubin Reference range (Paediatric)','5157','','{\"display_name\":\"no\",\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),
(539,'COVID research','5175,5176,5177,5180','','{\"group\":\"BI\"}'),
(1001,'Remark','','5095,5096,5097,5098,5099,5191','{\"header\":\"no\",\"print_style\":\"vertical\",\"group\":\"BI\"}'),
(2001,'COVID19','10003,10001,10002','','{\"group\":\"MI\"}');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prototype`
--

DROP TABLE IF EXISTS `prototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prototype` (
  `prototype_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`prototype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prototype`
--

LOCK TABLES `prototype` WRITE;
/*!40000 ALTER TABLE `prototype` DISABLE KEYS */;
INSERT INTO `prototype` VALUES
(1,'Breast CAP'),
(2,'Lymphoma'),
(3,'Sickle Cell disease'),
(4,'Sickle Cell trait'),
(5,'Multiple Myeloma'),
(6,'Only HbA'),
(7,'Bilirubin Reference range (Paediatric)');
/*!40000 ALTER TABLE `prototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prototype_data`
--

DROP TABLE IF EXISTS `prototype_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prototype_data` (
  `prototype_id` int(11) NOT NULL,
  `examination_id` int(11) NOT NULL,
  `result` varchar(5000) NOT NULL,
  PRIMARY KEY (`prototype_id`,`examination_id`),
  KEY `examination_id` (`examination_id`),
  CONSTRAINT `prototype_data_ibfk_2` FOREIGN KEY (`prototype_id`) REFERENCES `prototype` (`prototype_id`),
  CONSTRAINT `prototype_data_ibfk_3` FOREIGN KEY (`examination_id`) REFERENCES `examination` (`examination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prototype_data`
--

LOCK TABLES `prototype_data` WRITE;
/*!40000 ALTER TABLE `prototype_data` DISABLE KEYS */;
INSERT INTO `prototype_data` VALUES
(1,2001,'Lump in Right Breast'),
(1,2002,'MRM specimen'),
(1,2005,'Received specimen of left/right modified radical mastectomy consists of resected breast and attached /separately lying axillary fat tissue. Resected breast measures ________           cm3. Overlying skin measures _______       cm2 . Attached /separately lying axillary tissue measures ________          cm3. Overlying skin, nipple and areola appears to be unremarkable.  A ulceration/suture /scar is identified measuring      cm .it is   cm away from nipple at        quadrant. (If surface is bosselated due to tumour than mention it). On serial cutting of specimen a single/multiple tumour is identified measuring         cm3 is seen at _____________quadrant. Tumour is ______        consistency. Areas of haemorrhage, necrosis is seen /not seen. Tumour is    __cm away from overlying skin and ______cm away from deep resected margin. Tumour lies (mention other margins) ____________________________________________________________ . On dissecting axillary tissue total __    lymph nodes are identified. Largest measures ___cm. Macroscopic tumour involvement is seen/not seen in _____lymph nodes. Soft tissue deposit of tumour is seen/not seen. (If seen than mention measurement).  '),
(1,2006,'Sections from tumour show features of â€˜invasive mammary carcinoma with no special type â€˜.if other type than_________________________. Overall Histologic grade (Nottingham histologic score) is 1/2/3.[Glandular(Acinar /Tubular differentiation score 1/2/3, nuclear  pleomorphism 1,2,3, mitotic rate 1,2,3, Total score ____].Specimen has single/multiple  focus of invasive carcinoma .(if multiple than refer CAP). There is presence/absence of extensive lympho-vascular invasion. Overlying skin, nipple, and areola are uninvolved by invasive carcinoma. (If skin is involved than show CAP for exact wording)  Deep resected margin is uninvolved by invasive carcinoma.  Superior, inferior, medial, lateral resected margin are uninvolved by invasive carcinoma. Rest of breast shows ________________(if DCIS then refer  C AP) . Out of ________lymph nodes dissected from axillary tissue,____ are involved by invasive carcinoma . Extra nodal extension is present /absent.  Pathological staging (pTNM) -   '),
(1,2007,'Overall histopathological features are that of Invasive Ductal Carcinoma- Not Otherwise Specified with Ductal Carcinoma In Situ Component- Comedo Type. Modified Bloom Richardson Grade- II (2+2+3). Pathological stage- pT2N0. Base is 1 mm away from tumour. Lymphovascular invasion and perinuclear invasion is not seen. Overlying skin, nipple, areola and all four margins are free from tumour. Total 15 lymphnodes are identified, all are free from tumour. '),
(1,2009,'H&E'),
(2,2001,'neck lymphadanopathy'),
(3,5072,'As Dithionite test is positive, Band at HbS is likely to be of Hemoglobin S.\r\nPatient is (((Sickle cell disease))).\r\nCorrelate with clinical history.\r\n\r\n==========================================================================\r\nCommon Beta-variants that Migrate same as HbS position with Negative dithionite test\r\n--------------------------------------------------------------------------------\r\n	-HbD\r\n	-HbLepore\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test\r\n-----------------------------------------------------------------------------------\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test\r\n-------------------------------------------------------------------------------------\r\n	-HbC(Herlem/Georgetown)\r\n\r\n'),
(4,5072,'As Dithionite test is positive, Band at HbS is likely to be of Hemoglobin S.\r\nPatient is (((Sickle cell trait))).\r\nCorrelate with clinical history and history of blood Transfusion\r\nIf There is recent history of Blood transfusion, after three month of BT-free period or\r\nrepeat the examinations before next blood transfusion.	\r\n	\r\n\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test	\r\n-----------------------------------------------------------------------------------	\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test	\r\n-------------------------------------------------------------------------------------	\r\n	-HbC(Herlem/Georgetown)\r\n'),
(5,5078,'No M Band Seen.'),
(6,5072,'Majority of Hemoglobin is HbA.Correlate Clinically\r\n==========================================================================\r\nCommon Beta-variants that Migrate same as HbS position with Negative dithionite test\r\n--------------------------------------------------------------------------------\r\n	-HbD\r\n	-HbLepore\r\nCommon Beta-variants that Migrate same as HbA2 position with Negative dithionite test\r\n-----------------------------------------------------------------------------------\r\n	-HbO-Arab\r\n	-HbC\r\n	-HbE\r\nCommon Beta-variants that Migrate same as HbA2 position with Positive dithionite test\r\n-------------------------------------------------------------------------------------\r\n	-HbC(Herlem/Georgetown)\r\n\r\n'),
(7,5157,'=========mg/dL, Serum/Plasma========\r\nNeonate, Full Term, Total Bilirubin (NICE 2016)\r\nAge(Hours)      Phototherapy    Exchange Transfusion\r\n0               >5.8            >5.8\r\n6		>7.3		>8.8\r\n12		>8.8		>11.7\r\n18		>10.2		>14.8\r\n24		>11.7		>17.5\r\n30		>12.4		>20.5\r\n36		>13.2		>23.4\r\n42		>13.9		>26.3\r\n48              >14.6           >26.3\r\n54              >15.3           >26.3\r\n60              >16.1           >26.3\r\n66              >16.8           >26.3\r\n72              >17.5           >26.3\r\n78              >18.2           >26.3\r\n84              >19.0           >26.3\r\n90              >19.7           >26.3\r\n96+             >20.5           >26.3');
/*!40000 ALTER TABLE `prototype_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quality_manual_section`
--

DROP TABLE IF EXISTS `Quality_manual_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Quality_manual_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recording_time` datetime DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  `clause` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quality_manual_section`
--

LOCK TABLES `Quality_manual_section` WRITE;
/*!40000 ALTER TABLE `Quality_manual_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `Quality_manual_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_tables`
--

DROP TABLE IF EXISTS `record_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_tables`
--

LOCK TABLES `record_tables` WRITE;
/*!40000 ALTER TABLE `record_tables` DISABLE KEYS */;
INSERT INTO `record_tables` VALUES
(62,'reagent_name',0,NULL,NULL);
/*!40000 ALTER TABLE `record_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(100) NOT NULL,
  `examination_id` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` VALUES
(1,'ABG','5143,5144,5145,5148,5149,5154,5159'),
(2,'Chinka','1000,1001,1003,1004,1006,1009,1010,1011,1012,1026,1015,1016,1017,1018');
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_id`
--

DROP TABLE IF EXISTS `request_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_id` (
  `id` bigint(20) NOT NULL,
  `sample_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sample_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_id`
--

LOCK TABLES `request_id` WRITE;
/*!40000 ALTER TABLE `request_id` DISABLE KEYS */;
INSERT INTO `request_id` VALUES
(1,5000000),
(2,5000001),
(3,1000002),
(3020202,1000003),
(3020203,1000004),
(3020204,1000005),
(3020205,1000006),
(3020205,1000007),
(3020206,1000008),
(3020206,1000009),
(3020207,1000022),
(3020207,1000023),
(3020208,1000024),
(3020208,1000025),
(3020209,1000026),
(3020210,1000027),
(3020210,1000028),
(3020211,1000030),
(3020212,1000031),
(3020213,1000032),
(3020213,1000033),
(3020214,1000034),
(3020214,1000035),
(3020215,1000036),
(3020215,1000037),
(3020216,1000040),
(3020216,1000041),
(3020216,5000002),
(3020217,1000042),
(3020218,1000043),
(3020218,1000044),
(3020219,1000045),
(3020219,1000046),
(3020220,1000047),
(3020220,1000048),
(3020221,1000049),
(3020221,1000050),
(3020222,1000051),
(3020222,1000052),
(3020222,1000053),
(3020222,1000054),
(3020223,1000055),
(3020223,1000056),
(3020223,1000057),
(3020223,1000058),
(3020224,1000091),
(3020225,1000093),
(3020225,1000094),
(3020226,1000095),
(3020226,1000096),
(3020227,1000097),
(3020227,1000098),
(3020228,1000099),
(3020228,1000100),
(3020229,1000101),
(3020229,1000102),
(3020230,1000103),
(3020230,1000104),
(3020231,1000105),
(3020231,1000106),
(3020232,1000107),
(3020233,1000108),
(3020234,1000109),
(3020235,1000110),
(3020236,1000111),
(3020237,5000003),
(3020238,5000004),
(3020239,5000005),
(3020240,1000112),
(3020241,1000113),
(3020242,1000115),
(3020243,1000117),
(3020244,1000118),
(3020244,1000119),
(3020245,1000124),
(3020245,1000125),
(3020246,1000126),
(3020247,1000127),
(3020247,1000128),
(3020248,1000129),
(3020248,1000130),
(3020249,1000131),
(3020249,1000132),
(3020250,1000133),
(3020250,1000134),
(3020251,1000135),
(3020251,1000136),
(3020252,1000137),
(3020252,1000138),
(3020253,1000139),
(3020253,1000140),
(3020254,1000141),
(3020254,1000142),
(3020255,1000143),
(3020255,1000144),
(3020256,1000145),
(3020257,1000146),
(3020258,1000147),
(3020258,1000148),
(3020260,1000151),
(3020260,1000152),
(3020261,1000153),
(3020261,1000154),
(3020262,1000155),
(3020262,1000156),
(3020263,1000157),
(3020263,1000158),
(3020264,1000159),
(3020264,1000160),
(3020265,1000161),
(3020265,1000162),
(3020266,1000163),
(3020266,1000164),
(3020267,1000012),
(3020268,1000165),
(3020269,1000166),
(3020270,1000167),
(3020270,1000168),
(3020271,1000169),
(3020271,1000170),
(3020272,1000171),
(3020272,1000172),
(3020273,1000173),
(3020273,1000174),
(3020274,1000175),
(3020274,1000176),
(3020275,1000177),
(3020275,1000178),
(3020276,1000179),
(3020276,1000180),
(3020277,1000181),
(3020277,1000182),
(3020278,1000183),
(3020278,1000184),
(3020278,1000185),
(3020278,1000186),
(3020279,1000187),
(3020279,1000188),
(3020279,1000189),
(3020279,1000190),
(3020280,1000191),
(3020280,1000192),
(3020280,1000193),
(3020280,1000194),
(3020281,1000195),
(3020281,1000196),
(3020281,1000197),
(3020281,1000198),
(3020282,1000199),
(3020282,1000200),
(3020282,1000201),
(3020282,1000202),
(3020283,1000203),
(3020283,1000204),
(3020283,1000205),
(3020283,1000206),
(3020284,1000207),
(3020284,1000208),
(3020285,1000209),
(3020285,1000210),
(3020286,1000211),
(3020286,1000212),
(3020286,1000213),
(3020286,1000214),
(3020287,1000215),
(3020287,1000216),
(3020287,1000217),
(3020287,1000218),
(3020288,1000219),
(3020288,1000220),
(3020288,1000221),
(3020288,1000222),
(3020289,1000223),
(3020289,1000224),
(3020289,1000225),
(3020289,1000226),
(3020290,1000227),
(3020290,1000228),
(3020290,1000229),
(3020290,1000230),
(3020291,1000231),
(3020291,1000232),
(3020291,1000233),
(3020291,1000234),
(3020292,1000235),
(3020292,1000236),
(3020292,1000237),
(3020292,1000238),
(3020293,1000239),
(3020293,1000240),
(3020293,1000241),
(3020293,1000242),
(3020294,1000243),
(3020294,1000244),
(3020294,1000245),
(3020294,1000246),
(3020295,1000247),
(3020295,1000248),
(3020295,1000249),
(3020295,1000250),
(3020296,1000251),
(3020296,1000252),
(3020296,1000253),
(3020296,1000254),
(3020297,1000255),
(3020297,1000256),
(3020297,1000257),
(3020297,1000258),
(3020298,1000259),
(3020298,1000260),
(3020298,1000261),
(3020298,1000262),
(3020299,1000263),
(3020299,1000264),
(3020299,1000265),
(3020299,1000266),
(3020300,1000267),
(3020300,1000268),
(3020300,1000269),
(3020300,1000270),
(3020301,1000271),
(3020301,1000272),
(3020301,1000273),
(3020301,1000274),
(3020302,1000283),
(3020303,2000000),
(3020304,1000289),
(3020305,1000291),
(3020305,1000292),
(3020305,2000001),
(3020306,1000293),
(3020307,1000294),
(3020308,1000295),
(3020309,1000296),
(3020309,1000297),
(3020310,1000298),
(3020310,1000299),
(3020310,1000300),
(3020312,1000304),
(3020312,1000305),
(3020312,1000306),
(3020313,1000307),
(3020313,1000308),
(3020313,1000309),
(3020314,1000310),
(3020315,1000311),
(3020316,1000312),
(3020317,1000313),
(3020318,1000315),
(3020319,1000316),
(3020320,1000325),
(3020320,1000326),
(3020321,1000329),
(3020322,1000330),
(3020323,1000331),
(3020324,1000332),
(3020325,1000333),
(3020326,1000341),
(3020327,1000342),
(3020328,1000343),
(3020328,1000344),
(3020328,1000345),
(3020329,1000346),
(3020329,1000347),
(3020329,1000348),
(3020329,5000008),
(3020330,1000349),
(3020330,1000350),
(3020330,1000351),
(3020330,5000009),
(3020331,1000352),
(3020331,1000353),
(3020331,1000354),
(3020331,5000010),
(3020332,1000355),
(3020332,1000356),
(3020332,1000357),
(3020332,5000011),
(3020333,1000358),
(3020333,1000359),
(3020333,1000360),
(3020333,5000012),
(3020334,1000361),
(3020334,1000362),
(3020334,1000363),
(3020334,5000013),
(3020335,1000364),
(3020335,1000365),
(3020335,1000366),
(3020335,5000014),
(3020336,1000367),
(3020336,1000368),
(3020336,1000369),
(3020336,5000015),
(3020337,1000370),
(3020337,1000371),
(3020337,1000372),
(3020337,5000016),
(3020338,1000373),
(3020338,1000374),
(3020338,1000375),
(3020338,5000017),
(3020339,1000376),
(3020339,1000377),
(3020339,1000378),
(3020339,5000018),
(3020340,1000379),
(3020340,1000380),
(3020340,1000381),
(3020340,5000019),
(3020341,1000390),
(3020342,1000391),
(3020343,1000392),
(3020344,1000393),
(3020344,1000394),
(3020344,1000395),
(3020345,1000396),
(3020345,1000397),
(3020345,1000398),
(3020346,1000399),
(3020346,1000400),
(3020346,1000401),
(3020347,1000402),
(3020347,1000403),
(3020347,1000404),
(3020348,1000405),
(3020348,1000406),
(3020348,1000407),
(3020349,1000411),
(3020349,1000412),
(3020350,1000413),
(3020351,1000414),
(3020352,1000417),
(3020353,1000418),
(3020353,1000419),
(3020354,1000420),
(3020354,1000421),
(3020355,1000423),
(3020356,1000424),
(3020357,1000425),
(3020358,1000426),
(3020359,9000002),
(3020360,1000427),
(3020361,1000428),
(3020362,1000429),
(3020363,1000434),
(3020363,1000435),
(3020364,1000436),
(3020364,1000437);
/*!40000 ALTER TABLE `request_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reagent_name`
--

DROP TABLE IF EXISTS `reagent_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reagent_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reagent_name` varchar(100) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  `reorder_value` decimal(10,0) DEFAULT NULL,
  `recorded_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reagent_name`
--

LOCK TABLES `reagent_name` WRITE;
/*!40000 ALTER TABLE `reagent_name` DISABLE KEYS */;
INSERT INTO `reagent_name` VALUES
(2,'ADA_HOCL','2020-08-17 14:59:08',NULL,'9099514805'),
(3,'ADA_PHENOL','2020-08-17 14:59:32',NULL,'9099514805'),
(4,'ADA_S60','2020-08-17 14:59:44',NULL,'9099514805'),
(5,'ADENOSINE BUFFER','2020-08-17 14:59:54',NULL,'9099514805'),
(6,'ALB_BCG','2020-08-17 15:01:18',NULL,'9099514805'),
(7,'ALP-R1','2020-08-17 15:02:42',NULL,'9099514805'),
(8,'ALP-R2','2020-08-17 15:02:51',NULL,'9099514805'),
(9,'ALT_UV','2020-09-15 13:00:00',2500,'1'),
(10,'AMY_CNPG3','2020-08-17 15:03:28',100,'9099514805'),
(12,'DIAZO-A','2020-08-17 15:04:01',NULL,'9099514805'),
(13,'CALIBRATOR-2','2020-08-17 15:04:23',NULL,'9099514805'),
(14,'CALIBRATOR-3','2020-08-17 15:04:32',NULL,'9099514805'),
(15,'CALCIUM_ARSENAZO','2020-08-17 15:04:43',NULL,'9099514805'),
(16,'CHE-CHOLINESTERASE','2020-08-17 15:05:06',NULL,'9099514805'),
(17,'CHOLESTEROL','2020-08-17 15:05:24',200,'9099514805'),
(18,'CKMB-UV','2020-08-17 15:05:40',200,'9099514805'),
(19,'CK-TOTAL','2020-08-17 15:05:48',NULL,'9099514805'),
(20,'CR-R1 NAOH','2020-08-17 15:06:08',NULL,'9099514805'),
(21,'CR-R2 PICRATE','2020-08-17 15:06:20',NULL,'9099514805'),
(22,'DBIL-R1_HCL','2020-08-17 15:06:40',NULL,'9099514805'),
(23,'DITHONITE BUFFER','2020-08-17 15:06:55',NULL,'9099514805'),
(24,'GLC_GODPOD','2020-08-17 15:07:11',NULL,'9099514805'),
(25,'HBS CONTROL LOT','2020-08-17 15:08:10',NULL,'9099514805'),
(26,'HBF CONTROL LOT','2020-08-17 15:08:20',NULL,'9099514805'),
(27,'HDL-PPT','2020-08-17 15:08:34',NULL,'9099514805'),
(28,'IRON STOCKK SOLUTION','2020-08-17 15:08:53',NULL,'9099514805'),
(29,'IRON-R1 THIOSEMICARBAZIDE','2020-08-17 15:09:13',NULL,'9099514805'),
(30,'IRON-R2 FERROZINE','2020-08-17 15:09:25',NULL,'9099514805'),
(31,'KETONE BODY CONTROL LOT','2020-08-17 15:09:50',NULL,'9099514805'),
(32,'LDH-DEA-R1','2020-08-17 15:10:13',NULL,'9099514805'),
(33,'LDH-R2-NAD','2020-08-17 15:10:24',NULL,'9099514805'),
(34,'LIP-TURBIDOMETRY','2020-08-17 15:10:48',NULL,'9099514805'),
(35,'MPR QC LOT','2020-08-17 15:11:06',NULL,'9099514805'),
(36,'MPR','2020-08-17 15:11:26',NULL,'9099514805'),
(37,'STD-A -NA + K','2020-08-17 15:12:11',NULL,'9099514805'),
(38,'STD-B NA+K','2020-08-17 15:12:26',NULL,'9099514805'),
(39,'PEPSIN','2020-08-17 15:12:46',NULL,'9099514805'),
(40,'PH CALIBRATOR-4.01,6.08,9.13','2020-08-17 15:13:30',NULL,'9099514805'),
(41,'PHOSPHATE BUFFER','2020-08-17 15:13:44',NULL,'9099514805'),
(42,'PHOSPHATE MOLYBDATE','2020-08-17 15:14:03',NULL,'9099514805'),
(43,'QC-5','2020-08-17 15:14:15',NULL,'9099514805'),
(44,'QC-8','2020-08-17 15:14:21',NULL,'9099514805'),
(45,'TBIL-R1_CAFFINE','2020-08-17 15:14:42',NULL,'9099514805'),
(46,'TG-GPO','2020-08-17 15:14:54',NULL,'9099514805'),
(47,'TP-BIURET','2020-08-17 15:15:06',NULL,'9099514805'),
(48,'UA-URICASE','2020-08-17 15:15:20',100,'9099514805'),
(49,'UIBC-R1_HYDROXYLAMINE','2020-08-17 15:15:41',NULL,'9099514805'),
(50,'UIBC-R2_FERROZINE','2020-08-17 15:15:55',NULL,'9099514805'),
(51,'UREA-UREASE','2020-08-27 17:36:21',200,'3'),
(52,'URINE DILUENT_MOPS','2020-08-17 15:16:32',NULL,'9099514805'),
(53,'URINE ACID CONTROL LOT','2020-08-17 15:17:02',NULL,'9099514805'),
(54,'URINE NEUTRAL CONTROL LOT','2020-08-17 15:17:15',NULL,'9099514805'),
(55,'URINE BASIC CONTROL LOT','2020-08-17 15:17:27',NULL,'9099514805'),
(57,'DIAZO-B','2020-09-01 18:42:25',NULL,'9099514805'),
(59,'TIBC STANDARD SOLUTION','2020-09-24 17:17:20',NULL,'8866829055'),
(60,'signal reagent','2020-12-01 12:16:11',8,'9099514805'),
(61,'versa tips','2020-12-01 12:16:03',2000,'9099514805'),
(62,'wash buffer reagent','2020-12-01 14:58:19',10000,'9099514805'),
(63,'Control-TSH','2020-11-18 16:10:15',NULL,'9099514805'),
(64,'Microsensor check fluid-1 and 2','2020-11-18 16:11:00',NULL,'9099514805'),
(65,'calibrator-25-OH Vit-D Total','2020-12-01 12:15:36',1,'9099514805'),
(66,'calibrator-Total beta hcg -2','2020-12-01 12:15:45',1,'9099514805'),
(67,'calibrator-ferritin','2020-12-01 12:15:28',1,'9099514805'),
(68,'calibrator- Total T4','2020-12-01 12:15:21',1,'9099514805'),
(69,'calibrator- Free T4','2020-12-01 12:15:14',1,'9099514805'),
(70,'calibrator- TSH','2020-12-01 12:15:05',1,'9099514805'),
(71,'calibrator- Free T3','2020-12-01 12:14:55',1,'9099514805'),
(72,'calibrator- Vit B12','2020-12-01 12:14:48',1,'9099514805'),
(73,'calibrator- FSH','2020-12-01 12:14:37',1,'9099514805'),
(74,'calibrator- LH','2020-12-01 12:14:26',1,'9099514805'),
(75,'Reagent-PCT','2020-12-01 12:14:15',100,'9099514805'),
(76,'Reagent-FSH','2020-12-01 12:14:08',100,'9099514805'),
(77,'Reagent-Total beta hcg-2','2020-12-01 12:14:01',100,'9099514805'),
(78,'Reagent-LH','2020-12-01 12:13:54',100,'9099514805'),
(79,'Reagent-Ferritin','2020-12-01 12:13:47',200,'9099514805'),
(80,'Reagent-Free T3','2020-12-01 12:13:40',100,'9099514805'),
(81,'Reagent-Free T4','2020-12-01 12:13:33',100,'9099514805'),
(82,'Reagent-vit B12','2020-12-01 12:13:26',100,'9099514805'),
(83,'Reagent-prolactin','2020-12-01 12:13:18',100,'9099514805'),
(84,'Reagent-25 OH Vit-D Total','2020-12-01 12:13:03',100,'9099514805'),
(85,'Reagent-TSH','2020-12-01 12:12:56',200,'9099514805'),
(86,'Reagent-B12+folate pack-3','2020-12-01 12:12:49',100,'9099514805'),
(87,'maintenance pack vitros','2020-12-01 12:12:42',1,'9099514805'),
(89,'calibrator-Prolactin','2020-12-01 12:12:34',1,'9099514805'),
(90,'sample cap','2020-12-01 14:54:33',1000,'9099514805'),
(91,'calibrator-PCT','2020-12-01 12:12:18',1,'9099514805'),
(93,'CRP','2020-12-01 14:55:52',220,'9099514805'),
(94,' D-Dimer','2020-12-01 14:57:16',90,'9099514805'),
(95,'REAGENT -PROGESTERONE','2020-12-01 12:11:53',100,'9099514805'),
(96,'REAGENT-HSTROP ','2020-12-01 12:11:32',100,'9099514805'),
(97,'REAGENT-NT-PROBNP 2','2020-12-01 13:04:05',100,'9099514805'),
(98,'CALIBRATOR PROGESTERONE','2020-12-01 12:11:10',1,'9099514805'),
(99,'CALIBRATOR HSTROP','2020-12-01 12:11:03',1,'9099514805'),
(100,'CALIBRATOR NT-PROBNP 2','2020-12-01 12:10:52',1,'9099514805'),
(101,'vitrous eppendropp cup','2020-12-01 14:44:55',1000,'9099514805'),
(102,'IL-6 REAGENT KIT ','2020-12-02 15:59:40',80,'8866580625'),
(103,'High sample diluent A','2020-12-05 13:28:55',NULL,'9099514805'),
(104,'High sample diluent B ','2020-12-05 13:30:11',NULL,'9099514805'),
(105,'MAGANESIUM','2020-12-24 13:21:08',NULL,'8866580625'),
(106,'Anti-SARS-CoV-2IgG','2021-03-31 10:55:54',NULL,'8866580625'),
(107,'SGOT','2021-04-08 13:33:46',NULL,'8866580625'),
(109,'IMMUNO QC  TRI LEVEL','2021-04-09 18:19:11',NULL,'8866580625'),
(110,'CALIBRATOR-COV 2IgG','2021-04-13 21:30:05',NULL,'8866580625'),
(111,'PH CALIBRATOR 6.08','2021-07-19 15:57:20',NULL,'8866580625'),
(112,'PH CALIBRATOR 9.13','2021-07-19 15:57:36',NULL,'8866580625'),
(113,'PH CALIBRATOR 4.01','2021-07-19 15:58:24',NULL,'8866580625'),
(115,'MICROALBUMIN KIT','2021-07-27 13:00:18',NULL,'8866580625'),
(116,'ADA KIT','2021-07-27 13:06:35',NULL,'8866580625'),
(117,'IMMUNO QC POOL','2021-08-11 13:27:32',NULL,'8866580625'),
(118,'QC/L1_BNP/3600','2021-08-19 11:27:18',NULL,'8866580625'),
(119,'QC/L2_BNP/3600','2021-08-19 11:27:29',NULL,'8866580625');
/*!40000 ALTER TABLE `reagent_name` ENABLE KEYS */;
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
  `request_route_priority` varchar(10) DEFAULT NULL,
  `display_route_priority` varchar(10) DEFAULT NULL,
  `print_route_priority` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`route`,`node`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route_priority`
--

LOCK TABLES `route_priority` WRITE;
/*!40000 ALTER TABLE `route_priority` DISABLE KEYS */;
INSERT INTO `route_priority` VALUES
('','AMY-LIP-ALP','080','',''),
('','Anemia','090','',''),
('','BIG1','060','',''),
('','Fluid','100','',''),
('','GLU-LIP','020','',''),
('','Header','140','050',''),
('','LRE','010','',''),
('','LRE-ALBTP-CRPLDH','050','',''),
('','LRE-CALCRP','040','',''),
('','LREG','030','',''),
('','Misc','095','',''),
('','Others','130','',''),
('','Patient Details','','100','100'),
('','Reference','120','',''),
('','Sample Details','','200','200'),
('','TSH','070','',''),
('','Urine','110','','');
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
('Citrate-Blood-BI',1000000,1999999,'Biochemistry'),
('Citrate-Blood-HI',2000000,2999999,'Haematology'),
('EDTA-Blood-BI',1000000,1999999,'Biochemistry'),
('EDTA-Blood-HI',2000000,2999999,'Haematology'),
('EDTA-BodyFluid-CP',3000000,3999999,'Clinical Pathology - Body Fluid'),
('EDTA-CSF-CP',3000000,3999999,'Clinical Pathology - CSF'),
('Fluoride-Blood-BI',1000000,1999999,'Biochemistry'),
('Formalin-Tissue-HP',4000000,4999999,''),
('Frozen-Tissue-HP',4000000,4999999,''),
('HCL-Urine-BI',1000000,1999999,'Biochemistry'),
('Heparinised Arterial-Blood-BI',1000000,1999999,'Biochemistry'),
('Heparinised Venous-Blood-BI',1000000,1999999,'Biochemistry'),
('None',NULL,NULL,''),
('Plain-Blood-BI',1000000,1999999,'Biochemistry'),
('Plain-Blood-DM',1,1000,'Dummy plain sample'),
('Plain-Blood-XX',1,500,'Dummy plain sample'),
('Plain-BodyFluid-CY',5000000,5999999,''),
('Plain-BodyFluid-MI',6000000,6999999,'Microbiology'),
('Plain-CSF-BI',1000000,1999999,'Biochemistry'),
('Plain-FNA-CY',5000000,5999999,''),
('Plain-Nasopharyngeal-MI',6000000,6999999,'Microbiology'),
('Plain-Other-BI',1000000,1999999,'Biochemistry'),
('Plain-PAP-CY',5000000,5999999,''),
('Plain-Peritoneal Fluid-BI',1000000,1999999,'Biochemistry'),
('Plain-Pleural Fluid-BI',1000000,1999999,'Biochemistry'),
('Plain-Semen-CP',3000000,3999999,'Clinical Pathology - Semen'),
('Plain-Smear-CY',5000000,5999999,''),
('Plain-Stool-CP',3000000,3999999,'Clinical Pathology - Stool'),
('Plain-Swab-BI',1000000,1999999,'Biochemistry'),
('Plain-Urine-BI',1000000,1999999,'Biochemistry'),
('Plain-Urine-CP',3000000,3999999,'Clinical Pathology - Urine'),
('QC-QC-BI',9000000,9999999,'For Biochemistry QC');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample_status`
--

LOCK TABLES `sample_status` WRITE;
/*!40000 ALTER TABLE `sample_status` DISABLE KEYS */;
INSERT INTO `sample_status` VALUES
(1,100.000,'sample_request',10001,'#FFFE00',1,'0'),
(2,200.000,'sample_collection',10002,'#FF9600',1,'0'),
(3,350.000,'sample_receipt',10003,'#FF0005',1,'0'),
(6,400.000,'sample_processing',10004,'#9700FF',1,'0'),
(7,300.000,'sample_receipt_kidney',10005,'#FF0005',1,'0'),
(8,500.000,'sample_analysis',10006,'#0000FF',1,'0'),
(9,600.000,'sample_verification',10007,'#40C1FF',0,'0'),
(10,700.000,'sample_release',10008,'#17F7C6',0,'10007'),
(12,650.000,'sample_interim_release',10010,'#9700FF',0,'10007');
/*!40000 ALTER TABLE `sample_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min` varchar(5) NOT NULL,
  `hour` varchar(5) NOT NULL,
  `day` varchar(5) NOT NULL,
  `month` varchar(5) NOT NULL,
  `week` varchar(5) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_profile`
--

DROP TABLE IF EXISTS `super_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `super_profile` (
  `super_profile_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `profile_id_list` varchar(500) NOT NULL,
  `extra` varchar(300) DEFAULT NULL,
  `edit_specification` varchar(500) NOT NULL,
  PRIMARY KEY (`super_profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_profile`
--

LOCK TABLES `super_profile` WRITE;
/*!40000 ALTER TABLE `super_profile` DISABLE KEYS */;
INSERT INTO `super_profile` VALUES
(1,'Blood Counts - Hb, TC, Platelet','21','',''),
(2,'CBC (Routine)','21,23','',''),
(3,'CBC MP (Routine)','21,23,26,27','',''),
(4,'PSCM','21,23,25,26,27','',''),
(5,'RC','30','',''),
(6,'ESR','31','',''),
(7,'PT','32','',''),
(8,'Urine Routine','37','',''),
(9,'Stool Routine','38','',''),
(10,'CBC (Emergency)','21','',''),
(11,'CBC MP (Emergency)','21,26,27','',''),
(12,'PSCM Leukemia Panel','21,22,25,26,27','',''),
(13,'Bone Marrow Examination Report','20,21,23,25,26,27,30,41','',''),
(14,'Expert Level PSCM','21,23,25,26,27','',''),
(15,'Fine Needle Aspiration Cytology Report','201,202','',''),
(16,'RFT+Electrolyte','507,506','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),
(17,'creatinine + eGFR','507,514','','{\"group\":\"BI\"}'),
(18,'LRE','503,507,506','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),
(19,'LRE+GLC','501,503,507,506','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),
(20,'LL-RR-E','503,507,508,504','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),
(22,'Glc + Lipid','501,515','','{\"group\":\"BI\",\"readonly_availability\":\"yes\"}'),
(23,'CAL+PHO+ALb+TP','509,504','','{\"group\":\"BI\"}'),
(24,'COVID profile','502,503,506,507,511','','{\"group\":\"BI\"}'),
(25,'Radio camp','501,503,507,515','','{\"group\":\"BI\"}');
/*!40000 ALTER TABLE `super_profile` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname_fname` (`tname`,`fname`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_field_specification`
--

LOCK TABLES `table_field_specification` WRITE;
/*!40000 ALTER TABLE `table_field_specification` DISABLE KEYS */;
INSERT INTO `table_field_specification` VALUES
(1,'equipment_record','equipment','table','equipment','equipment'),
(2,'equipment_record','equipment_record_type','table','equipment_record_type','equipment_record_type'),
(3,'equipment_record','date','date','',''),
(4,'equipment_record','description','textarea','',''),
(5,'calibration','date','date','',''),
(6,'calibration','cal_equipment','table','cal_equipment','cal_equipment'),
(7,'calibration','remarks','textarea','',''),
(8,'calibration','correlation','textarea','',''),
(9,'calibration','cal_examination','table','host_code','code'),
(10,'reagent','name','table','reagent_name','reagent_name'),
(11,'reagent','date_of_preparation','date','',''),
(12,'reagent','date_of_expiry','date','',''),
(13,'reagent','date_of_receipt','date','',''),
(14,'reagent_use','date_of_opening','date','',''),
(15,'reagent','unit','table','unit_name','unit_name'),
(16,'Nonconformity','Process_affected','table','Process_affected','Process_affected'),
(17,'Nonconformity','Extent','table','Extent','Extent'),
(18,'Nonconformity','source','table','nc_source','source'),
(19,'Nonconformity','Quality_manual_section','table','Quality_manual_section','clause'),
(20,'Nonconformity','Immediate_control','textarea','',''),
(21,'Performance_characteristics','Performance_characteristics','table','Performance_characteristics_list','Performance_specification'),
(22,'Nonconformity','NC_Name','textarea','',''),
(23,'Nonconformity','RCA','textarea','',''),
(24,'Nonconformity','Corrective_and_preventive_actions','textarea','',''),
(25,'scope','nabl_accreditation_status','table','nabl_accreditation_status','nabl_accreditation_status'),
(26,'scope','instruction_for_preparation_of_the_patient','textarea','',''),
(27,'scope','instructions_for_patient_collected_samples','textarea','',''),
(28,'scope','unit_of_measurement','table','unit_of_measurement','unit_of_measurement'),
(29,'scope','container_additives','table','container_additives','container_additives'),
(30,'scope','sample_type','table','sample_type','sample_type'),
(31,'scope','examination_is_currently_available','table','examination_is_currently_available','examination_is_currently_available'),
(32,'NABL_Records','doc_type','table','Quality_manual_section','clause'),
(33,'reagent_date_of_completion','date_of_completion','date','',''),
(34,'reagent_use','date_of_closing','date','',''),
(35,'HIB_Vaccination','Name','table','Name','Name'),
(36,'HIB_Vaccination','First_Dose','date','',''),
(37,'HIB_Vaccination','Second_Dose','date','',''),
(38,'HIB_Vaccination','Third_Dose','date','',''),
(40,'IQC','Description','table','Description','Description'),
(41,'IQC','parameter','table','parameter','parameter'),
(42,'Refrigerator_Temp','date_of_reading','date','',''),
(43,'Refrigerator_Temp','time_of_reading','time','',''),
(44,'Sample_Transporter','name','table','Sample_Transporter_name','name'),
(45,'Sample_Transporter','date','date','',''),
(46,'Sample_Transporter','time','time','',''),
(47,'documents','Personal_Records','table','Personal_Records','Personal_Records'),
(48,'remarks','Personal_Records','table','Personal_Records','Personal_Records'),
(49,'Name','varchar','varchar','varchar','varchar'),
(50,'Personal_Records','Name','table','Name','Name');
/*!40000 ALTER TABLE `table_field_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `expirydate` date NOT NULL,
  `authorization` varchar(300) NOT NULL,
  `insert_authorization_level` int(11) NOT NULL,
  `update_authorization_level` int(11) NOT NULL,
  `select_authorization_level` int(11) NOT NULL,
  `delete_authorization_level` int(11) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(1,'shailesh','cxG8EDaP1e8jQ','2024-04-21','lock,unlock,interimlock',3,3,3,3),
(2,'technician','cxG8EDaP1e8jQ','2024-04-21','lock,unlock,interimlock',2,2,2,2),
(3,'Nobody','cxG8EDaP1e8jQ','2024-04-21','lock,unlock,interimlock',0,0,0,0),
(4,'request reception','cxG8EDaP1e8jQ','2024-04-21','lock,unlock,interimlock',1,0,1,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
  `sql` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `view_info_data`
--

LOCK TABLES `view_info_data` WRITE;
/*!40000 ALTER TABLE `view_info_data` DISABLE KEYS */;
INSERT INTO `view_info_data` VALUES
(0,'Scope','','select * from scope'),
(1,'Total Sample On a Day','<input type=date name=__p1 title=\'Give Date\'>','select count(examination_id) as Total_Sample from result where examination_id=1017 and result=\"__p1\"'),
(2,'Test count on a date','<input type=date name=__p1 title=\'Give Date\'>','select  	r1.examination_id A ,e1.name B ,  	r2.examination_id C ,e2.name D, 	r2.result E, 	count(r2.result) F from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  group by r1.examination_id order by r1.examination_id'),
(3,'Max ID (series 2,3,1)','','select 2 as series, max(sample_id) from result where sample_id between 2000000 and 2999999 union select 3 as series, max(sample_id) from result where sample_id between 3000000 and 3999999 union select 1 as series, max(sample_id) from result where sample_id between 1000000 and 1999999'),
(4,'Test count on a date (a bit better)','<input type=date name=__p1 title=\'Give Date\'>','select  	r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id'),
(5,'Test count on between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select r1.examination_id examination_id ,e1.name Test,  	count(r2.result) Test_Count   from  	examination e1,examination e2,  	result r1,result r2   where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	 r2.result between str_to_date(\'__p1\',\'%Y-%m-%d\') and str_to_date(\'__p2\',\'%Y-%m-%d\') and 	 e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id   and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id'),
(6,'(Worklist) Sample_ID,Test name and result of a date','Date:<input type=date name=__p1 title=\'Give From  Date\'>Ex_ID:<input type=number name=__p2 title=\'Give Examination_id\'>','select  	 r1.sample_id sample_id, r1.examination_id examination_id ,e1.name Test, r1.result , r2.result Date  from  	 examination e1,examination e2,  	 result r1,result r2    where  	 r1.sample_id=r2.sample_id and  	 r2.examination_id=1017 and  	 r2.result=\"__p1\" and 	 e1.examination_id=r1.examination_id and  	 e2.examination_id=r2.examination_id  and  e1.examination_id=\"__p2\" and e1.sample_requirement!=\'None\'   order by r1.examination_id'),
(7,'Test ID and their Name','','select examination_id,name,sample_requirement from examination order by name'),
(8,'Profile count between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select  p.profile_id, p.name,  	count(r2.result) Test_Count   from  	 examination e1,examination e2, result r1,result r2, profile p  where  	 r1.sample_id=r2.sample_id and  	 r2.examination_id=1017 and  	  r2.result between str_to_date(\'__p1\',\'%Y-%m-%d\') and str_to_date(\'__p2\',\'%Y-%m-%d\') and e1.examination_id=r1.examination_id and  	 e2.examination_id=r2.examination_id   and  e1.sample_requirement!=\'None\' and substring_index(p.examination_id_list,\',\',1)=e1.examination_id  group by  r1.examination_id   order by  p.profile_id'),
(9,'sample count: age more than 60 years','From:<input type=date name=__p1 title=\'Give From Date\'>To<input type=date name=__p2 title=\'Give To Date\'>','select count(sample_id) from result where examination_id=1007  and (recording_time between \"__p1\" and \"__p2\" )and result>=60'),
(10,'Sample Location with  Specific Date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,s2.result as location  from result s1, result s2  where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id'),
(11,'Sample Location with  Specific Date(color)','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location  from result s1, result s2  where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id'),
(12,'Sample Release Status(between two sample_id)','<input type=number name=__p1><input type=number name=__p2>','select sample_id,if(examination_id=1017,\"Received on\",\"Released_by\"),result from result where examination_id in (1017,1014) and sample_id between \"__p1\" and \"__p2\" order by sample_id'),
(13,'Test count of a date with total','<input type=date name=__p1 title=\'Give Date\'>','(select  r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\' group by r1.examination_id order by r1.examination_id) UNION (select  \'Grand \' ,\'Total \',  \' \', 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result=\"__p1\" and 	e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\')'),
(14,'Test count between two dates with total','From:<input type=date name=__p1 title=\'Give Date\'>To:<input type=date name=__p2 title=\'Give Date\'>','(select  r1.examination_id examination_id ,e1.name Test,  r2.result Date, 	count(r2.result) Test_Count    from  	examination e1,examination e2,  	result r1,result r2  where  	 r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	r2.result between \"__p1\" and \"__p2\"	and  e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\'  group by r1.examination_id order by r1.examination_id) UNION   (select  \'Grand \' ,\'Total \',  \' \', 	count(r2.result) Test_Count  from  	examination e1,examination e2,  	 result r1,result r2  where  	r1.sample_id=r2.sample_id and  	r2.examination_id=1017 and  	 (r2.result between \"__p1\" and \"__p2\")	and e1.examination_id=r1.examination_id and  	e2.examination_id=r2.examination_id  and e1.sample_requirement!=\'None\')'),
(15,'Samples Types count between two dates','From:<input type=date name=__p1 title=\'Give Date\'>To:<input type=date name=__p2 title=\'Give Date\'>','select r1.result,count(r1.sample_id)  from result  r1, result r2   where  r2.examination_id=1017  and (r2.result between \"__p1\" and \"__p2\")  and r1.examination_id=1000 and r1.sample_id=r2.sample_id  group by result '),
(16,'Samples Types count between two dates (only OPD)','From:<input type=date name=__p1 title=\'Give Date\'>To:<input type=date name=__p2 title=\'Give Date\'>','select r1.result,count(r1.sample_id)  from result  r1, result r2 ,result r3  where  r2.examination_id=1017  and (r2.result between \"__p1\" and \"__p2\")  and r1.examination_id=1000 and r1.sample_id=r2.sample_id and r1.sample_id=r3.sample_id and r3.examination_id=1006  and (r3.result =\'OPD\')   group by result  '),
(17,'Worklist between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give From  Date\'>Ex_ID:<input type=number name=__p3 title=\'Give Examination_id\'>','select  	  r1.sample_id sample_id, r1.examination_id examination_id ,e1.name Test, r1.result , r2.result Date    from  	  examination e1,examination e2,  	 result r1,result r2      where  	   r1.sample_id=r2.sample_id and  	 r2.examination_id=1017 and  	  (r2.result between \"__p1\" and \"__p2\") and 	 e1.examination_id=r1.examination_id and  	  e2.examination_id=r2.examination_id  and  e1.examination_id=\"__p3\"  and e1.sample_requirement!=\'None\'     order by r1.examination_id'),
(18,'OPD Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location   from result s1, result s2   where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id and s2.result=\'OPD\''),
(19,'non-OPD Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select s1.sample_id as sample_id ,s1.result as date ,if(s2.result!=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location   from result s1, result s2   where    s1.examination_id=1017 and s1. result like \"__p1\" and  s2.examination_id=1006    and  s1.sample_id=s2.sample_id and s2.result!=\'OPD\''),
(20,'QC Statistics on between two dates','From:<input type=date name=__p1 title=\'Give From  Date\'>To:<input type=date name=__p2 title=\'Give To Date\'>','select  	r1.examination_id examination_id , 	e1.name Test,  	 	r3.result MRD, 	count(r2.result) Test_Count  ,  	avg(r1.result) mean,    	STDDEV(r1.result) SD    	 from  	 	examination e1,examination e2, 	result r1,result r2,result r3     where  	 	r1.sample_id=r2.sample_id  		and  	 	r1.sample_id=r3.sample_id  		and 		 	r2.examination_id=1015  		and 	r3.examination_id=1001  		and		 	r2.result between str_to_date(\'__p1\',\'%Y-%m-%d\') and str_to_date(\'__p2\',\'%Y-%m-%d\')  		and 	  		 	e1.examination_id=r1.examination_id  		and  	 	e2.examination_id=r2.examination_id    		and  		 	e1.sample_requirement!=\'None\' 		and 	r1.sample_id between 9000000 and 9999999 		 group by  	r1.examination_id, r3.result  order by  	r1.examination_id'),
(21,'Current QC Target and Mean','','SELECT mrd,examination.examination_id,examination.name,equipment,mean,sd,start_date,start_time FROM `lab_reference_value`,examination WHERE `end_date`>sysdate() and `lab_reference_value`.examination_id=examination.examination_id order by examination.examination_id,mrd, equipment'),
(101,'Sample Release Status(between two sample_id)','<input type=number name=__p1><input type=number name=__p2>','select sample_id,result from result where examination_id =1014  and sample_id between \"__p1\" and \"__p2\" order by sample_id'),
(102,'OPD Release Status of Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select \r\n	s1.sample_id as sample_id ,\r\n	s1.result as date ,\r\n	if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location,   \r\n	s3.result as release_status\r\nfrom \r\n	result s1, result s2, result s3\r\n	\r\nwhere\r\n    s1.examination_id=1017 \r\n    and \r\n    s1. result like \"__p1\" and  s2.examination_id=1006    \r\n    and  \r\n	s3.examination_id=1014    \r\n    and      \r\n    \r\n    s1.sample_id=s2.sample_id \r\n    and\r\n    s1.sample_id=s3.sample_id \r\n    \r\n    and\r\n    s2.result=\'OPD\''),
(103,'OPD Release Status of Samples on a date','<input type=date name=__p1 title=\'Give Date\'>','select \r\n	s1.sample_id as sample_id ,\r\n\r\nconcat(\'<div class=\"d-inline-block\" ><form target=_blank method=post action=edit_general.php class=print_hide>\r\n	<button class=\"btn btn-outline-primary btn-sm\" name=sample_id value=\\\'\',s1.sample_id,\'\\\' >\',s1.sample_id,\'</button>\r\n	<input type=hidden name=session_name value=\\\'\\\'.$_POST[\\\'session_name\\\'].\\\'\\\'>\r\n	<input type=hidden name=action value=edit_general>\r\n	</form></div>\')\r\n\r\nas sample_id,\r\n\r\n	s1.result as date ,\r\n	if(s2.result=\"OPD\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location,   \r\n	s3.result as release_status\r\nfrom \r\n	result s1, result s2, result s3\r\n	\r\nwhere\r\n    s1.examination_id=1017 \r\n    and \r\n    s1. result like \"__p1\" and  s2.examination_id=1006    \r\n    and  \r\n	s3.examination_id=1014    \r\n    and      \r\n    \r\n    s1.sample_id=s2.sample_id \r\n    and\r\n    s1.sample_id=s3.sample_id \r\n    \r\n    and\r\n    s2.result=\'OPD\''),
(104,'Location + Date Specific Release Status','<input type=date name=__p1 title=\'Give Date\'><input type=text name=__p2 title=\'Give Location\' placeholder=OPDWard>','select \r\n	s1.sample_id as sample_id ,\r\n	s1.result as date ,\r\n	if(s2.result=\"__p2\",concat(\'<span class=bg-danger>\',s2.result,\'</span>\'),s2.result) as location,   \r\n	s3.result as release_status\r\nfrom \r\n	result s1, result s2, result s3\r\n	\r\nwhere\r\n    s1.examination_id=1017 \r\n    and \r\n    s1. result like \"__p1\" and  s2.examination_id=1006    \r\n    and  \r\n	s3.examination_id=1014    \r\n    and      \r\n    \r\n    s1.sample_id=s2.sample_id \r\n    and\r\n    s1.sample_id=s3.sample_id \r\n    \r\n    and\r\n    s2.result=\'__p2\''),
(105,'NMC (date + department sample numbers)','<input type=date name=__p1 title=\'Give Date\'><input type=text name=__p2 title=\'Give Department\' placeholder=Department>','select r.result as date,o.result as department ,count(r.sample_id) as Total_Samples\r\n\r\nfrom \r\nresult r, result o \r\n\r\nwhere \r\nr.examination_id=1017 and r.result like \"%__p1%\" \r\nand \r\no.examination_id=1004 and o.result like \"%__p2%\"\r\n\r\nand o.sample_id=r.sample_id'),
(106,'(problem)','','select * from result where result like \"%(problem)%\"');
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

-- Dump completed on 2023-07-24  1:45:45

/*
Navicat PGSQL Data Transfer

Source Server         : 194.63.140.39
Source Server Version : 80123
Source Host           : 194.63.140.39:5432
Source Database       : test
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 80123
File Encoding         : 65001

Date: 2014-04-22 16:57:26
*/


-- ----------------------------
-- Sequence structure for "public"."contracts_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."contracts_id_seq";
CREATE SEQUENCE "public"."contracts_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."fields_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."fields_id_seq";
CREATE SEQUENCE "public"."fields_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."gameobjects_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."gameobjects_id_seq";
CREATE SEQUENCE "public"."gameobjects_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."contracts"
-- ----------------------------
DROP TABLE "public"."contracts";
CREATE TABLE "public"."contracts" (
"id" int8 DEFAULT nextval('contracts_id_seq'::regclass) NOT NULL,
"type" varchar,
"time" int8,
"coins" int8,
"population" int8,
"power" int8,
"price" int8 DEFAULT 0 NOT NULL
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of contracts
-- ----------------------------
INSERT INTO "public"."contracts" VALUES ('1', null, '300', '0', '10', '0', '0');
INSERT INTO "public"."contracts" VALUES ('2', 'contract_1', '300', '30', '0', '0', '5');
INSERT INTO "public"."contracts" VALUES ('3', 'contract_2', '900', '50', '0', '0', '10');

-- ----------------------------
-- Table structure for "public"."fields"
-- ----------------------------
DROP TABLE "public"."fields";
CREATE TABLE "public"."fields" (
"id" int8 DEFAULT nextval('fields_id_seq'::regclass) NOT NULL,
"coins" int8 DEFAULT 70 NOT NULL,
"population" int8 DEFAULT 0 NOT NULL,
"power" int8 DEFAULT 0 NOT NULL,
"sizex" int2 DEFAULT 10 NOT NULL,
"sizey" int2 DEFAULT 10 NOT NULL
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of fields
-- ----------------------------
INSERT INTO "public"."fields" VALUES ('1', '140', '600', '70', '10', '10');

-- ----------------------------
-- Table structure for "public"."gameobjects"
-- ----------------------------
DROP TABLE "public"."gameobjects";
CREATE TABLE "public"."gameobjects" (
"id" int8 DEFAULT nextval('gameobjects_id_seq'::regclass) NOT NULL,
"fieldid" int8,
"x" int4,
"y" int4,
"contract" int8 DEFAULT 0,
"time" int8 DEFAULT 0,
"type" varchar(64)
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of gameobjects
-- ----------------------------
INSERT INTO "public"."gameobjects" VALUES ('1', '1', '5', '5', '1', '1398171384', 'house');
INSERT INTO "public"."gameobjects" VALUES ('2', '1', '1', '6', '0', '0', 'factory');
INSERT INTO "public"."gameobjects" VALUES ('3', '1', '6', '1', '0', '0', 'wind_power');

-- ----------------------------
-- Table structure for "public"."session"
-- ----------------------------
DROP TABLE "public"."session";
CREATE TABLE "public"."session" (
"id" int8 NOT NULL,
"fieldid" int8 NOT NULL
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO "public"."session" VALUES ('1232280', '1');
INSERT INTO "public"."session" VALUES ('1296504', '1');
INSERT INTO "public"."session" VALUES ('1458660', '1');
INSERT INTO "public"."session" VALUES ('1655280', '1');
INSERT INTO "public"."session" VALUES ('1656048', '1');
INSERT INTO "public"."session" VALUES ('1656504', '1');
INSERT INTO "public"."session" VALUES ('1656876', '1');
INSERT INTO "public"."session" VALUES ('1656912', '1');
INSERT INTO "public"."session" VALUES ('1656936', '1');
INSERT INTO "public"."session" VALUES ('1657992', '1');
INSERT INTO "public"."session" VALUES ('1658520', '1');
INSERT INTO "public"."session" VALUES ('1658724', '1');
INSERT INTO "public"."session" VALUES ('1658808', '1');
INSERT INTO "public"."session" VALUES ('1696620', '1');
INSERT INTO "public"."session" VALUES ('1697040', '1');
INSERT INTO "public"."session" VALUES ('1697508', '1');
INSERT INTO "public"."session" VALUES ('1697724', '1');
INSERT INTO "public"."session" VALUES ('1749132', '1');
INSERT INTO "public"."session" VALUES ('1749252', '1');
INSERT INTO "public"."session" VALUES ('1749696', '1');
INSERT INTO "public"."session" VALUES ('1749816', '1');
INSERT INTO "public"."session" VALUES ('1749924', '1');
INSERT INTO "public"."session" VALUES ('1750164', '1');
INSERT INTO "public"."session" VALUES ('1750224', '1');
INSERT INTO "public"."session" VALUES ('1750404', '1');
INSERT INTO "public"."session" VALUES ('1750488', '1');
INSERT INTO "public"."session" VALUES ('1750704', '1');
INSERT INTO "public"."session" VALUES ('1750752', '1');
INSERT INTO "public"."session" VALUES ('1750944', '1');
INSERT INTO "public"."session" VALUES ('1751364', '1');
INSERT INTO "public"."session" VALUES ('1751916', '1');
INSERT INTO "public"."session" VALUES ('1752012', '1');
INSERT INTO "public"."session" VALUES ('1752144', '1');
INSERT INTO "public"."session" VALUES ('1752516', '1');
INSERT INTO "public"."session" VALUES ('1752756', '1');
INSERT INTO "public"."session" VALUES ('1752780', '1');
INSERT INTO "public"."session" VALUES ('1752828', '1');
INSERT INTO "public"."session" VALUES ('1753020', '1');
INSERT INTO "public"."session" VALUES ('1753080', '1');
INSERT INTO "public"."session" VALUES ('1753224', '1');
INSERT INTO "public"."session" VALUES ('1753260', '1');
INSERT INTO "public"."session" VALUES ('1753896', '1');
INSERT INTO "public"."session" VALUES ('1753992', '1');
INSERT INTO "public"."session" VALUES ('1754364', '1');
INSERT INTO "public"."session" VALUES ('1754568', '1');
INSERT INTO "public"."session" VALUES ('1754616', '1');
INSERT INTO "public"."session" VALUES ('1754640', '1');
INSERT INTO "public"."session" VALUES ('1754652', '1');
INSERT INTO "public"."session" VALUES ('1754664', '1');
INSERT INTO "public"."session" VALUES ('1754736', '1');
INSERT INTO "public"."session" VALUES ('1754784', '1');
INSERT INTO "public"."session" VALUES ('1754844', '1');
INSERT INTO "public"."session" VALUES ('1754868', '1');
INSERT INTO "public"."session" VALUES ('1754892', '1');
INSERT INTO "public"."session" VALUES ('1754928', '1');
INSERT INTO "public"."session" VALUES ('1755060', '1');
INSERT INTO "public"."session" VALUES ('1755072', '1');
INSERT INTO "public"."session" VALUES ('1755240', '1');
INSERT INTO "public"."session" VALUES ('1755252', '1');
INSERT INTO "public"."session" VALUES ('1755336', '1');
INSERT INTO "public"."session" VALUES ('1756224', '1');
INSERT INTO "public"."session" VALUES ('1756296', '1');
INSERT INTO "public"."session" VALUES ('1756344', '1');
INSERT INTO "public"."session" VALUES ('1756656', '1');
INSERT INTO "public"."session" VALUES ('1756992', '1');
INSERT INTO "public"."session" VALUES ('1881060', '1');
INSERT INTO "public"."session" VALUES ('1881372', '1');
INSERT INTO "public"."session" VALUES ('1881912', '1');
INSERT INTO "public"."session" VALUES ('1883412', '1');
INSERT INTO "public"."session" VALUES ('1883688', '1');
INSERT INTO "public"."session" VALUES ('1884552', '1');
INSERT INTO "public"."session" VALUES ('1885464', '1');
INSERT INTO "public"."session" VALUES ('1886016', '1');
INSERT INTO "public"."session" VALUES ('1886136', '1');
INSERT INTO "public"."session" VALUES ('1886592', '1');
INSERT INTO "public"."session" VALUES ('1886628', '1');
INSERT INTO "public"."session" VALUES ('1886904', '1');
INSERT INTO "public"."session" VALUES ('1886928', '1');
INSERT INTO "public"."session" VALUES ('1887648', '1');
INSERT INTO "public"."session" VALUES ('1887804', '1');
INSERT INTO "public"."session" VALUES ('1887876', '1');
INSERT INTO "public"."session" VALUES ('1888176', '1');
INSERT INTO "public"."session" VALUES ('1914912', '1');
INSERT INTO "public"."session" VALUES ('1917216', '1');
INSERT INTO "public"."session" VALUES ('1918572', '1');
INSERT INTO "public"."session" VALUES ('1918956', '1');
INSERT INTO "public"."session" VALUES ('1920060', '1');
INSERT INTO "public"."session" VALUES ('1980456', '1');
INSERT INTO "public"."session" VALUES ('1983144', '1');
INSERT INTO "public"."session" VALUES ('1983780', '1');
INSERT INTO "public"."session" VALUES ('1985196', '1');
INSERT INTO "public"."session" VALUES ('1986480', '1');
INSERT INTO "public"."session" VALUES ('2048160', '1');
INSERT INTO "public"."session" VALUES ('2666556', '1');
INSERT INTO "public"."session" VALUES ('2666820', '1');
INSERT INTO "public"."session" VALUES ('2667408', '1');
INSERT INTO "public"."session" VALUES ('2669400', '1');
INSERT INTO "public"."session" VALUES ('2669748', '1');
INSERT INTO "public"."session" VALUES ('2669916', '1');
INSERT INTO "public"."session" VALUES ('2670072', '1');
INSERT INTO "public"."session" VALUES ('2670300', '1');
INSERT INTO "public"."session" VALUES ('2670600', '1');
INSERT INTO "public"."session" VALUES ('2671188', '1');
INSERT INTO "public"."session" VALUES ('2672724', '1');
INSERT INTO "public"."session" VALUES ('2673564', '1');
INSERT INTO "public"."session" VALUES ('2797824', '1');
INSERT INTO "public"."session" VALUES ('2798388', '1');
INSERT INTO "public"."session" VALUES ('2798556', '1');
INSERT INTO "public"."session" VALUES ('2798676', '1');
INSERT INTO "public"."session" VALUES ('2799420', '1');
INSERT INTO "public"."session" VALUES ('2799708', '1');
INSERT INTO "public"."session" VALUES ('2799756', '1');
INSERT INTO "public"."session" VALUES ('2799888', '1');
INSERT INTO "public"."session" VALUES ('2800524', '1');
INSERT INTO "public"."session" VALUES ('2800920', '1');
INSERT INTO "public"."session" VALUES ('2801148', '1');
INSERT INTO "public"."session" VALUES ('2801304', '1');
INSERT INTO "public"."session" VALUES ('2801628', '1');
INSERT INTO "public"."session" VALUES ('2801688', '1');
INSERT INTO "public"."session" VALUES ('2802060', '1');
INSERT INTO "public"."session" VALUES ('2802156', '1');
INSERT INTO "public"."session" VALUES ('2802264', '1');
INSERT INTO "public"."session" VALUES ('2802396', '1');
INSERT INTO "public"."session" VALUES ('2802672', '1');
INSERT INTO "public"."session" VALUES ('2802744', '1');
INSERT INTO "public"."session" VALUES ('2802924', '1');
INSERT INTO "public"."session" VALUES ('2803044', '1');
INSERT INTO "public"."session" VALUES ('2803092', '1');
INSERT INTO "public"."session" VALUES ('2803128', '1');
INSERT INTO "public"."session" VALUES ('2803308', '1');
INSERT INTO "public"."session" VALUES ('2803380', '1');
INSERT INTO "public"."session" VALUES ('2803416', '1');
INSERT INTO "public"."session" VALUES ('2803428', '1');
INSERT INTO "public"."session" VALUES ('2803512', '1');
INSERT INTO "public"."session" VALUES ('2803644', '1');
INSERT INTO "public"."session" VALUES ('2803800', '1');
INSERT INTO "public"."session" VALUES ('2803812', '1');
INSERT INTO "public"."session" VALUES ('2803836', '1');
INSERT INTO "public"."session" VALUES ('2803884', '1');
INSERT INTO "public"."session" VALUES ('2804016', '1');
INSERT INTO "public"."session" VALUES ('2804100', '1');
INSERT INTO "public"."session" VALUES ('2804196', '1');
INSERT INTO "public"."session" VALUES ('2804340', '1');
INSERT INTO "public"."session" VALUES ('2804508', '1');
INSERT INTO "public"."session" VALUES ('2804580', '1');
INSERT INTO "public"."session" VALUES ('2804712', '1');
INSERT INTO "public"."session" VALUES ('2805240', '1');
INSERT INTO "public"."session" VALUES ('2805324', '1');
INSERT INTO "public"."session" VALUES ('2805576', '1');
INSERT INTO "public"."session" VALUES ('2805600', '1');
INSERT INTO "public"."session" VALUES ('2805672', '1');
INSERT INTO "public"."session" VALUES ('2805684', '1');
INSERT INTO "public"."session" VALUES ('2831184', '1');
INSERT INTO "public"."session" VALUES ('2837172', '1');
INSERT INTO "public"."session" VALUES ('2842272', '1');
INSERT INTO "public"."session" VALUES ('2842956', '1');
INSERT INTO "public"."session" VALUES ('2844384', '1');
INSERT INTO "public"."session" VALUES ('2844552', '1');
INSERT INTO "public"."session" VALUES ('2899464', '1');
INSERT INTO "public"."session" VALUES ('2928828', '1');
INSERT INTO "public"."session" VALUES ('2932668', '1');
INSERT INTO "public"."session" VALUES ('2933292', '1');
INSERT INTO "public"."session" VALUES ('2934048', '1');
INSERT INTO "public"."session" VALUES ('2934132', '1');
INSERT INTO "public"."session" VALUES ('2935056', '1');
INSERT INTO "public"."session" VALUES ('2936016', '1');
INSERT INTO "public"."session" VALUES ('2936076', '1');
INSERT INTO "public"."session" VALUES ('2936316', '1');
INSERT INTO "public"."session" VALUES ('2962872', '1');
INSERT INTO "public"."session" VALUES ('2963124', '1');
INSERT INTO "public"."session" VALUES ('2963712', '1');
INSERT INTO "public"."session" VALUES ('2966784', '1');
INSERT INTO "public"."session" VALUES ('2966796', '1');
INSERT INTO "public"."session" VALUES ('2967024', '1');
INSERT INTO "public"."session" VALUES ('2967156', '1');
INSERT INTO "public"."session" VALUES ('2967384', '1');
INSERT INTO "public"."session" VALUES ('2967588', '1');
INSERT INTO "public"."session" VALUES ('2967732', '1');
INSERT INTO "public"."session" VALUES ('2969148', '1');
INSERT INTO "public"."session" VALUES ('2969316', '1');
INSERT INTO "public"."session" VALUES ('3059724', '1');
INSERT INTO "public"."session" VALUES ('3131376', '1');
INSERT INTO "public"."session" VALUES ('3196356', '1');
INSERT INTO "public"."session" VALUES ('3355848', '1');
INSERT INTO "public"."session" VALUES ('3359316', '1');
INSERT INTO "public"."session" VALUES ('3360204', '1');
INSERT INTO "public"."session" VALUES ('3485940', '1');
INSERT INTO "public"."session" VALUES ('3549180', '1');
INSERT INTO "public"."session" VALUES ('3917892', '1');
INSERT INTO "public"."session" VALUES ('3933276', '1');
INSERT INTO "public"."session" VALUES ('3979056', '1');
INSERT INTO "public"."session" VALUES ('4079496', '1');
INSERT INTO "public"."session" VALUES ('9894684', '1');
INSERT INTO "public"."session" VALUES ('10056324', '1');
INSERT INTO "public"."session" VALUES ('10072584', '1');
INSERT INTO "public"."session" VALUES ('10090992', '1');
INSERT INTO "public"."session" VALUES ('10098756', '1');
INSERT INTO "public"."session" VALUES ('10112676', '1');
INSERT INTO "public"."session" VALUES ('10128108', '1');
INSERT INTO "public"."session" VALUES ('10128768', '1');
INSERT INTO "public"."session" VALUES ('10129260', '1');
INSERT INTO "public"."session" VALUES ('10129560', '1');
INSERT INTO "public"."session" VALUES ('10129572', '1');
INSERT INTO "public"."session" VALUES ('10129944', '1');
INSERT INTO "public"."session" VALUES ('10130148', '1');
INSERT INTO "public"."session" VALUES ('10130184', '1');
INSERT INTO "public"."session" VALUES ('10130448', '1');
INSERT INTO "public"."session" VALUES ('10130532', '1');
INSERT INTO "public"."session" VALUES ('10130592', '1');
INSERT INTO "public"."session" VALUES ('10131300', '1');
INSERT INTO "public"."session" VALUES ('10131408', '1');
INSERT INTO "public"."session" VALUES ('10132896', '1');
INSERT INTO "public"."session" VALUES ('10133136', '1');
INSERT INTO "public"."session" VALUES ('10133292', '1');
INSERT INTO "public"."session" VALUES ('10133412', '1');
INSERT INTO "public"."session" VALUES ('10133448', '1');
INSERT INTO "public"."session" VALUES ('10133940', '1');
INSERT INTO "public"."session" VALUES ('10134276', '1');
INSERT INTO "public"."session" VALUES ('10135560', '1');
INSERT INTO "public"."session" VALUES ('10137756', '1');
INSERT INTO "public"."session" VALUES ('10139652', '1');
INSERT INTO "public"."session" VALUES ('10140312', '1');
INSERT INTO "public"."session" VALUES ('10141092', '1');
INSERT INTO "public"."session" VALUES ('10141908', '1');
INSERT INTO "public"."session" VALUES ('10150824', '1');
INSERT INTO "public"."session" VALUES ('10167420', '1');
INSERT INTO "public"."session" VALUES ('10169568', '1');
INSERT INTO "public"."session" VALUES ('10183380', '1');
INSERT INTO "public"."session" VALUES ('10191060', '1');
INSERT INTO "public"."session" VALUES ('10195788', '1');
INSERT INTO "public"."session" VALUES ('10195920', '1');
INSERT INTO "public"."session" VALUES ('10195944', '1');
INSERT INTO "public"."session" VALUES ('10198896', '1');
INSERT INTO "public"."session" VALUES ('10208352', '1');
INSERT INTO "public"."session" VALUES ('10216008', '1');
INSERT INTO "public"."session" VALUES ('10294416', '1');
INSERT INTO "public"."session" VALUES ('10309440', '1');
INSERT INTO "public"."session" VALUES ('10358268', '1');
INSERT INTO "public"."session" VALUES ('10360488', '1');
INSERT INTO "public"."session" VALUES ('10361868', '1');
INSERT INTO "public"."session" VALUES ('10388256', '1');
INSERT INTO "public"."session" VALUES ('10391196', '1');
INSERT INTO "public"."session" VALUES ('10394292', '1');
INSERT INTO "public"."session" VALUES ('10398396', '1');
INSERT INTO "public"."session" VALUES ('10489128', '1');
INSERT INTO "public"."session" VALUES ('10489644', '1');
INSERT INTO "public"."session" VALUES ('10490088', '1');
INSERT INTO "public"."session" VALUES ('10490412', '1');
INSERT INTO "public"."session" VALUES ('10490928', '1');
INSERT INTO "public"."session" VALUES ('10491372', '1');
INSERT INTO "public"."session" VALUES ('10491528', '1');
INSERT INTO "public"."session" VALUES ('10491900', '1');
INSERT INTO "public"."session" VALUES ('10491948', '1');
INSERT INTO "public"."session" VALUES ('10492872', '1');
INSERT INTO "public"."session" VALUES ('10515456', '1');
INSERT INTO "public"."session" VALUES ('10524048', '1');
INSERT INTO "public"."session" VALUES ('10526508', '1');
INSERT INTO "public"."session" VALUES ('10621896', '1');
INSERT INTO "public"."session" VALUES ('10621932', '1');
INSERT INTO "public"."session" VALUES ('10622112', '1');
INSERT INTO "public"."session" VALUES ('10622916', '1');
INSERT INTO "public"."session" VALUES ('10622976', '1');
INSERT INTO "public"."session" VALUES ('10623012', '1');
INSERT INTO "public"."session" VALUES ('10623096', '1');
INSERT INTO "public"."session" VALUES ('10623108', '1');
INSERT INTO "public"."session" VALUES ('10623288', '1');
INSERT INTO "public"."session" VALUES ('10623720', '1');
INSERT INTO "public"."session" VALUES ('10625460', '1');
INSERT INTO "public"."session" VALUES ('10625820', '1');
INSERT INTO "public"."session" VALUES ('10651752', '1');
INSERT INTO "public"."session" VALUES ('10661376', '1');
INSERT INTO "public"."session" VALUES ('10661688', '1');
INSERT INTO "public"."session" VALUES ('10662372', '1');
INSERT INTO "public"."session" VALUES ('10663068', '1');
INSERT INTO "public"."session" VALUES ('10663320', '1');
INSERT INTO "public"."session" VALUES ('10663656', '1');
INSERT INTO "public"."session" VALUES ('10663908', '1');
INSERT INTO "public"."session" VALUES ('10673952', '1');
INSERT INTO "public"."session" VALUES ('10677228', '1');
INSERT INTO "public"."session" VALUES ('12273108', '1');
INSERT INTO "public"."session" VALUES ('12279528', '1');
INSERT INTO "public"."session" VALUES ('12282480', '1');
INSERT INTO "public"."session" VALUES ('12289380', '1');
INSERT INTO "public"."session" VALUES ('12296808', '1');
INSERT INTO "public"."session" VALUES ('12908064', '1');
INSERT INTO "public"."session" VALUES ('12913404', '1');
INSERT INTO "public"."session" VALUES ('12916452', '1');
INSERT INTO "public"."session" VALUES ('13667928', '1');
INSERT INTO "public"."session" VALUES ('13667976', '1');
INSERT INTO "public"."session" VALUES ('13668420', '1');
INSERT INTO "public"."session" VALUES ('13668528', '1');
INSERT INTO "public"."session" VALUES ('13669512', '1');
INSERT INTO "public"."session" VALUES ('13670124', '1');
INSERT INTO "public"."session" VALUES ('13670160', '1');
INSERT INTO "public"."session" VALUES ('13670244', '1');
INSERT INTO "public"."session" VALUES ('13670580', '1');
INSERT INTO "public"."session" VALUES ('13670700', '1');
INSERT INTO "public"."session" VALUES ('13670724', '1');
INSERT INTO "public"."session" VALUES ('13671072', '1');
INSERT INTO "public"."session" VALUES ('13672080', '1');
INSERT INTO "public"."session" VALUES ('13673244', '1');
INSERT INTO "public"."session" VALUES ('13798548', '1');
INSERT INTO "public"."session" VALUES ('13801044', '1');
INSERT INTO "public"."session" VALUES ('13803960', '1');
INSERT INTO "public"."session" VALUES ('13804164', '1');
INSERT INTO "public"."session" VALUES ('13804560', '1');
INSERT INTO "public"."session" VALUES ('13805376', '1');
INSERT INTO "public"."session" VALUES ('13806180', '1');
INSERT INTO "public"."session" VALUES ('13806504', '1');
INSERT INTO "public"."session" VALUES ('13806864', '1');
INSERT INTO "public"."session" VALUES ('13808472', '1');
INSERT INTO "public"."session" VALUES ('13809744', '1');
INSERT INTO "public"."session" VALUES ('13810416', '1');
INSERT INTO "public"."session" VALUES ('13810872', '1');
INSERT INTO "public"."session" VALUES ('13811400', '1');
INSERT INTO "public"."session" VALUES ('13811532', '1');
INSERT INTO "public"."session" VALUES ('13812168', '1');
INSERT INTO "public"."session" VALUES ('13812348', '1');
INSERT INTO "public"."session" VALUES ('13818408', '1');
INSERT INTO "public"."session" VALUES ('13818684', '1');
INSERT INTO "public"."session" VALUES ('13819416', '1');
INSERT INTO "public"."session" VALUES ('13819464', '1');
INSERT INTO "public"."session" VALUES ('13819872', '1');
INSERT INTO "public"."session" VALUES ('13868916', '1');
INSERT INTO "public"."session" VALUES ('13869360', '1');
INSERT INTO "public"."session" VALUES ('13996752', '1');
INSERT INTO "public"."session" VALUES ('14000568', '1');
INSERT INTO "public"."session" VALUES ('14028456', '1');
INSERT INTO "public"."session" VALUES ('14029932', '1');
INSERT INTO "public"."session" VALUES ('14062032', '1');
INSERT INTO "public"."session" VALUES ('14073780', '1');
INSERT INTO "public"."session" VALUES ('14169600', '1');
INSERT INTO "public"."session" VALUES ('14190588', '1');
INSERT INTO "public"."session" VALUES ('14192928', '1');
INSERT INTO "public"."session" VALUES ('14193168', '1');
INSERT INTO "public"."session" VALUES ('14193276', '1');
INSERT INTO "public"."session" VALUES ('14193576', '1');
INSERT INTO "public"."session" VALUES ('14193672', '1');
INSERT INTO "public"."session" VALUES ('14193744', '1');
INSERT INTO "public"."session" VALUES ('14196084', '1');
INSERT INTO "public"."session" VALUES ('14196096', '1');
INSERT INTO "public"."session" VALUES ('14197536', '1');
INSERT INTO "public"."session" VALUES ('14205456', '1');
INSERT INTO "public"."session" VALUES ('14218056', '1');
INSERT INTO "public"."session" VALUES ('14221416', '1');
INSERT INTO "public"."session" VALUES ('14222076', '1');
INSERT INTO "public"."session" VALUES ('14222424', '1');
INSERT INTO "public"."session" VALUES ('14225904', '1');
INSERT INTO "public"."session" VALUES ('14226528', '1');
INSERT INTO "public"."session" VALUES ('14238804', '1');
INSERT INTO "public"."session" VALUES ('14256996', '1');
INSERT INTO "public"."session" VALUES ('14267028', '1');
INSERT INTO "public"."session" VALUES ('14291796', '1');
INSERT INTO "public"."session" VALUES ('14292660', '1');
INSERT INTO "public"."session" VALUES ('14293788', '1');
INSERT INTO "public"."session" VALUES ('14294952', '1');
INSERT INTO "public"."session" VALUES ('14295144', '1');
INSERT INTO "public"."session" VALUES ('14314608', '1');
INSERT INTO "public"."session" VALUES ('14324244', '1');
INSERT INTO "public"."session" VALUES ('14324412', '1');
INSERT INTO "public"."session" VALUES ('14324796', '1');
INSERT INTO "public"."session" VALUES ('14327160', '1');
INSERT INTO "public"."session" VALUES ('14373216', '1');
INSERT INTO "public"."session" VALUES ('14488380', '1');
INSERT INTO "public"."session" VALUES ('14505192', '1');
INSERT INTO "public"."session" VALUES ('14530704', '1');
INSERT INTO "public"."session" VALUES ('15475140', '1');
INSERT INTO "public"."session" VALUES ('15564492', '1');
INSERT INTO "public"."session" VALUES ('15610332', '1');
INSERT INTO "public"."session" VALUES ('15634992', '1');
INSERT INTO "public"."session" VALUES ('15635124', '1');
INSERT INTO "public"."session" VALUES ('15636420', '1');
INSERT INTO "public"."session" VALUES ('15643716', '1');
INSERT INTO "public"."session" VALUES ('15643992', '1');
INSERT INTO "public"."session" VALUES ('15645828', '1');
INSERT INTO "public"."session" VALUES ('15646488', '1');
INSERT INTO "public"."session" VALUES ('15655128', '1');
INSERT INTO "public"."session" VALUES ('15655620', '1');
INSERT INTO "public"."session" VALUES ('15655824', '1');
INSERT INTO "public"."session" VALUES ('15656064', '1');
INSERT INTO "public"."session" VALUES ('15656436', '1');
INSERT INTO "public"."session" VALUES ('15656784', '1');
INSERT INTO "public"."session" VALUES ('15657252', '1');
INSERT INTO "public"."session" VALUES ('15657996', '1');
INSERT INTO "public"."session" VALUES ('15658272', '1');
INSERT INTO "public"."session" VALUES ('15659124', '1');
INSERT INTO "public"."session" VALUES ('15659340', '1');
INSERT INTO "public"."session" VALUES ('15659436', '1');
INSERT INTO "public"."session" VALUES ('15660156', '1');
INSERT INTO "public"."session" VALUES ('15660864', '1');
INSERT INTO "public"."session" VALUES ('15660936', '1');
INSERT INTO "public"."session" VALUES ('15662664', '1');
INSERT INTO "public"."session" VALUES ('15662868', '1');
INSERT INTO "public"."session" VALUES ('15663240', '1');
INSERT INTO "public"."session" VALUES ('15664116', '1');
INSERT INTO "public"."session" VALUES ('15664884', '1');
INSERT INTO "public"."session" VALUES ('15665148', '1');
INSERT INTO "public"."session" VALUES ('15666084', '1');
INSERT INTO "public"."session" VALUES ('15666348', '1');
INSERT INTO "public"."session" VALUES ('15666876', '1');
INSERT INTO "public"."session" VALUES ('15667140', '1');
INSERT INTO "public"."session" VALUES ('15667812', '1');
INSERT INTO "public"."session" VALUES ('15668004', '1');
INSERT INTO "public"."session" VALUES ('15668052', '1');
INSERT INTO "public"."session" VALUES ('15668076', '1');
INSERT INTO "public"."session" VALUES ('15668100', '1');
INSERT INTO "public"."session" VALUES ('15668796', '1');
INSERT INTO "public"."session" VALUES ('15669252', '1');
INSERT INTO "public"."session" VALUES ('15669348', '1');
INSERT INTO "public"."session" VALUES ('15670188', '1');
INSERT INTO "public"."session" VALUES ('15687816', '1');
INSERT INTO "public"."session" VALUES ('15692964', '1');
INSERT INTO "public"."session" VALUES ('15693360', '1');
INSERT INTO "public"."session" VALUES ('15693852', '1');
INSERT INTO "public"."session" VALUES ('15694152', '1');
INSERT INTO "public"."session" VALUES ('15694212', '1');
INSERT INTO "public"."session" VALUES ('15694740', '1');
INSERT INTO "public"."session" VALUES ('15695016', '1');
INSERT INTO "public"."session" VALUES ('15696636', '1');
INSERT INTO "public"."session" VALUES ('15697668', '1');
INSERT INTO "public"."session" VALUES ('15700512', '1');
INSERT INTO "public"."session" VALUES ('15709464', '1');
INSERT INTO "public"."session" VALUES ('15721332', '1');
INSERT INTO "public"."session" VALUES ('15731712', '1');
INSERT INTO "public"."session" VALUES ('15736176', '1');
INSERT INTO "public"."session" VALUES ('15737916', '1');
INSERT INTO "public"."session" VALUES ('15755664', '1');
INSERT INTO "public"."session" VALUES ('15787548', '1');
INSERT INTO "public"."session" VALUES ('15787596', '1');
INSERT INTO "public"."session" VALUES ('15797508', '1');
INSERT INTO "public"."session" VALUES ('15799164', '1');
INSERT INTO "public"."session" VALUES ('15806364', '1');
INSERT INTO "public"."session" VALUES ('15808080', '1');
INSERT INTO "public"."session" VALUES ('15809592', '1');
INSERT INTO "public"."session" VALUES ('15810276', '1');
INSERT INTO "public"."session" VALUES ('15819780', '1');
INSERT INTO "public"."session" VALUES ('15833460', '1');
INSERT INTO "public"."session" VALUES ('15851532', '1');
INSERT INTO "public"."session" VALUES ('15854136', '1');
INSERT INTO "public"."session" VALUES ('15855828', '1');
INSERT INTO "public"."session" VALUES ('15856692', '1');
INSERT INTO "public"."session" VALUES ('15857484', '1');
INSERT INTO "public"."session" VALUES ('15867852', '1');
INSERT INTO "public"."session" VALUES ('15870804', '1');
INSERT INTO "public"."session" VALUES ('15871032', '1');
INSERT INTO "public"."session" VALUES ('15875472', '1');
INSERT INTO "public"."session" VALUES ('15875844', '1');
INSERT INTO "public"."session" VALUES ('15897852', '1');
INSERT INTO "public"."session" VALUES ('15900192', '1');
INSERT INTO "public"."session" VALUES ('15901932', '1');
INSERT INTO "public"."session" VALUES ('15903936', '1');
INSERT INTO "public"."session" VALUES ('15907932', '1');
INSERT INTO "public"."session" VALUES ('15930984', '1');
INSERT INTO "public"."session" VALUES ('15941304', '1');
INSERT INTO "public"."session" VALUES ('15962160', '1');
INSERT INTO "public"."session" VALUES ('15964320', '1');
INSERT INTO "public"."session" VALUES ('15966756', '1');
INSERT INTO "public"."session" VALUES ('15982776', '1');
INSERT INTO "public"."session" VALUES ('15986616', '1');
INSERT INTO "public"."session" VALUES ('15993456', '1');
INSERT INTO "public"."session" VALUES ('15996600', '1');
INSERT INTO "public"."session" VALUES ('15996876', '1');
INSERT INTO "public"."session" VALUES ('15997068', '1');
INSERT INTO "public"."session" VALUES ('16001172', '1');
INSERT INTO "public"."session" VALUES ('16020132', '1');
INSERT INTO "public"."session" VALUES ('16021752', '1');
INSERT INTO "public"."session" VALUES ('16023468', '1');
INSERT INTO "public"."session" VALUES ('16024200', '1');
INSERT INTO "public"."session" VALUES ('16035192', '1');
INSERT INTO "public"."session" VALUES ('16043784', '1');
INSERT INTO "public"."session" VALUES ('16044924', '1');
INSERT INTO "public"."session" VALUES ('16052604', '1');
INSERT INTO "public"."session" VALUES ('16087068', '1');
INSERT INTO "public"."session" VALUES ('16089504', '1');
INSERT INTO "public"."session" VALUES ('16090164', '1');
INSERT INTO "public"."session" VALUES ('16091400', '1');
INSERT INTO "public"."session" VALUES ('16092048', '1');
INSERT INTO "public"."session" VALUES ('16092636', '1');
INSERT INTO "public"."session" VALUES ('16092960', '1');
INSERT INTO "public"."session" VALUES ('16092972', '1');
INSERT INTO "public"."session" VALUES ('16096572', '1');
INSERT INTO "public"."session" VALUES ('16114440', '1');
INSERT INTO "public"."session" VALUES ('16115748', '1');
INSERT INTO "public"."session" VALUES ('16118808', '1');
INSERT INTO "public"."session" VALUES ('16124712', '1');
INSERT INTO "public"."session" VALUES ('16124868', '1');
INSERT INTO "public"."session" VALUES ('16125048', '1');
INSERT INTO "public"."session" VALUES ('16125156', '1');
INSERT INTO "public"."session" VALUES ('16125816', '1');
INSERT INTO "public"."session" VALUES ('16127484', '1');
INSERT INTO "public"."session" VALUES ('16127712', '1');
INSERT INTO "public"."session" VALUES ('16129200', '1');
INSERT INTO "public"."session" VALUES ('16175772', '1');
INSERT INTO "public"."session" VALUES ('16177932', '1');
INSERT INTO "public"."session" VALUES ('16188576', '1');
INSERT INTO "public"."session" VALUES ('16190148', '1');
INSERT INTO "public"."session" VALUES ('16190328', '1');
INSERT INTO "public"."session" VALUES ('16193244', '1');
INSERT INTO "public"."session" VALUES ('16203300', '1');
INSERT INTO "public"."session" VALUES ('16203804', '1');
INSERT INTO "public"."session" VALUES ('16203840', '1');
INSERT INTO "public"."session" VALUES ('16205448', '1');
INSERT INTO "public"."session" VALUES ('16214004', '1');
INSERT INTO "public"."session" VALUES ('16215384', '1');
INSERT INTO "public"."session" VALUES ('16220856', '1');
INSERT INTO "public"."session" VALUES ('16222128', '1');
INSERT INTO "public"."session" VALUES ('16232868', '1');
INSERT INTO "public"."session" VALUES ('16245744', '1');
INSERT INTO "public"."session" VALUES ('16257156', '1');
INSERT INTO "public"."session" VALUES ('16261908', '1');
INSERT INTO "public"."session" VALUES ('16262364', '1');
INSERT INTO "public"."session" VALUES ('16264980', '1');
INSERT INTO "public"."session" VALUES ('16269012', '1');
INSERT INTO "public"."session" VALUES ('16269612', '1');
INSERT INTO "public"."session" VALUES ('16271424', '1');
INSERT INTO "public"."session" VALUES ('16272096', '1');
INSERT INTO "public"."session" VALUES ('16272132', '1');
INSERT INTO "public"."session" VALUES ('16272684', '1');
INSERT INTO "public"."session" VALUES ('16274256', '1');
INSERT INTO "public"."session" VALUES ('16274616', '1');
INSERT INTO "public"."session" VALUES ('16274964', '1');
INSERT INTO "public"."session" VALUES ('16275444', '1');
INSERT INTO "public"."session" VALUES ('16277904', '1');
INSERT INTO "public"."session" VALUES ('16278636', '1');
INSERT INTO "public"."session" VALUES ('16278696', '1');
INSERT INTO "public"."session" VALUES ('16286364', '1');
INSERT INTO "public"."session" VALUES ('16292496', '1');
INSERT INTO "public"."session" VALUES ('16296180', '1');
INSERT INTO "public"."session" VALUES ('16298184', '1');
INSERT INTO "public"."session" VALUES ('16298388', '1');
INSERT INTO "public"."session" VALUES ('16299408', '1');
INSERT INTO "public"."session" VALUES ('16299480', '1');
INSERT INTO "public"."session" VALUES ('16299636', '1');
INSERT INTO "public"."session" VALUES ('16300056', '1');
INSERT INTO "public"."session" VALUES ('16300236', '1');
INSERT INTO "public"."session" VALUES ('16300860', '1');
INSERT INTO "public"."session" VALUES ('16301472', '1');
INSERT INTO "public"."session" VALUES ('16301712', '1');
INSERT INTO "public"."session" VALUES ('16302072', '1');
INSERT INTO "public"."session" VALUES ('16302480', '1');
INSERT INTO "public"."session" VALUES ('16303368', '1');
INSERT INTO "public"."session" VALUES ('16303524', '1');
INSERT INTO "public"."session" VALUES ('16303752', '1');
INSERT INTO "public"."session" VALUES ('16312116', '1');
INSERT INTO "public"."session" VALUES ('16312548', '1');
INSERT INTO "public"."session" VALUES ('16315020', '1');
INSERT INTO "public"."session" VALUES ('16318824', '1');
INSERT INTO "public"."session" VALUES ('16319412', '1');
INSERT INTO "public"."session" VALUES ('16319916', '1');
INSERT INTO "public"."session" VALUES ('16320852', '1');
INSERT INTO "public"."session" VALUES ('16322640', '1');
INSERT INTO "public"."session" VALUES ('16327188', '1');
INSERT INTO "public"."session" VALUES ('16327212', '1');
INSERT INTO "public"."session" VALUES ('16330764', '1');
INSERT INTO "public"."session" VALUES ('16335432', '1');
INSERT INTO "public"."session" VALUES ('16335576', '1');
INSERT INTO "public"."session" VALUES ('16336044', '1');
INSERT INTO "public"."session" VALUES ('16346712', '1');
INSERT INTO "public"."session" VALUES ('16349352', '1');
INSERT INTO "public"."session" VALUES ('16350480', '1');
INSERT INTO "public"."session" VALUES ('16362912', '1');
INSERT INTO "public"."session" VALUES ('16364544', '1');
INSERT INTO "public"."session" VALUES ('16368660', '1');
INSERT INTO "public"."session" VALUES ('16372656', '1');
INSERT INTO "public"."session" VALUES ('16373436', '1');
INSERT INTO "public"."session" VALUES ('16377348', '1');
INSERT INTO "public"."session" VALUES ('16381272', '1');
INSERT INTO "public"."session" VALUES ('16384644', '1');
INSERT INTO "public"."session" VALUES ('16387872', '1');
INSERT INTO "public"."session" VALUES ('16389984', '1');
INSERT INTO "public"."session" VALUES ('16390608', '1');
INSERT INTO "public"."session" VALUES ('16391484', '1');
INSERT INTO "public"."session" VALUES ('16393512', '1');
INSERT INTO "public"."session" VALUES ('16400952', '1');
INSERT INTO "public"."session" VALUES ('16401324', '1');
INSERT INTO "public"."session" VALUES ('16402428', '1');
INSERT INTO "public"."session" VALUES ('16405176', '1');
INSERT INTO "public"."session" VALUES ('16409028', '1');
INSERT INTO "public"."session" VALUES ('16412580', '1');
INSERT INTO "public"."session" VALUES ('16417572', '1');
INSERT INTO "public"."session" VALUES ('16419084', '1');
INSERT INTO "public"."session" VALUES ('16423740', '1');
INSERT INTO "public"."session" VALUES ('16423836', '1');
INSERT INTO "public"."session" VALUES ('16429572', '1');
INSERT INTO "public"."session" VALUES ('16431276', '1');
INSERT INTO "public"."session" VALUES ('16432992', '1');
INSERT INTO "public"."session" VALUES ('16433784', '1');
INSERT INTO "public"."session" VALUES ('16443120', '1');
INSERT INTO "public"."session" VALUES ('16444632', '1');
INSERT INTO "public"."session" VALUES ('16445004', '1');
INSERT INTO "public"."session" VALUES ('16445040', '1');
INSERT INTO "public"."session" VALUES ('16445184', '1');
INSERT INTO "public"."session" VALUES ('16448460', '1');
INSERT INTO "public"."session" VALUES ('16456716', '1');
INSERT INTO "public"."session" VALUES ('16459800', '1');
INSERT INTO "public"."session" VALUES ('16463340', '1');
INSERT INTO "public"."session" VALUES ('16463724', '1');
INSERT INTO "public"."session" VALUES ('16466628', '1');
INSERT INTO "public"."session" VALUES ('16470336', '1');
INSERT INTO "public"."session" VALUES ('16472364', '1');
INSERT INTO "public"."session" VALUES ('16477752', '1');
INSERT INTO "public"."session" VALUES ('16479288', '1');
INSERT INTO "public"."session" VALUES ('16480500', '1');
INSERT INTO "public"."session" VALUES ('16485804', '1');
INSERT INTO "public"."session" VALUES ('16491408', '1');
INSERT INTO "public"."session" VALUES ('16497804', '1');
INSERT INTO "public"."session" VALUES ('16511124', '1');
INSERT INTO "public"."session" VALUES ('16512804', '1');
INSERT INTO "public"."session" VALUES ('16515396', '1');
INSERT INTO "public"."session" VALUES ('16519512', '1');
INSERT INTO "public"."session" VALUES ('16519680', '1');
INSERT INTO "public"."session" VALUES ('16523808', '1');
INSERT INTO "public"."session" VALUES ('16526100', '1');
INSERT INTO "public"."session" VALUES ('16528092', '1');
INSERT INTO "public"."session" VALUES ('16531032', '1');
INSERT INTO "public"."session" VALUES ('16531080', '1');
INSERT INTO "public"."session" VALUES ('16532520', '1');
INSERT INTO "public"."session" VALUES ('16533888', '1');
INSERT INTO "public"."session" VALUES ('16534260', '1');
INSERT INTO "public"."session" VALUES ('16534836', '1');
INSERT INTO "public"."session" VALUES ('16535196', '1');
INSERT INTO "public"."session" VALUES ('16535688', '1');
INSERT INTO "public"."session" VALUES ('16536072', '1');
INSERT INTO "public"."session" VALUES ('16536120', '1');
INSERT INTO "public"."session" VALUES ('16536564', '1');
INSERT INTO "public"."session" VALUES ('16537116', '1');
INSERT INTO "public"."session" VALUES ('16537620', '1');
INSERT INTO "public"."session" VALUES ('16538640', '1');
INSERT INTO "public"."session" VALUES ('16540680', '1');
INSERT INTO "public"."session" VALUES ('16541316', '1');
INSERT INTO "public"."session" VALUES ('16541484', '1');
INSERT INTO "public"."session" VALUES ('16543308', '1');
INSERT INTO "public"."session" VALUES ('16548564', '1');
INSERT INTO "public"."session" VALUES ('16551036', '1');
INSERT INTO "public"."session" VALUES ('16551912', '1');
INSERT INTO "public"."session" VALUES ('16553004', '1');
INSERT INTO "public"."session" VALUES ('16554240', '1');
INSERT INTO "public"."session" VALUES ('16555764', '1');
INSERT INTO "public"."session" VALUES ('16556208', '1');
INSERT INTO "public"."session" VALUES ('16556340', '1');
INSERT INTO "public"."session" VALUES ('16556532', '1');
INSERT INTO "public"."session" VALUES ('16557132', '1');
INSERT INTO "public"."session" VALUES ('16557324', '1');
INSERT INTO "public"."session" VALUES ('16557588', '1');
INSERT INTO "public"."session" VALUES ('16557780', '1');
INSERT INTO "public"."session" VALUES ('16557912', '1');
INSERT INTO "public"."session" VALUES ('16565472', '1');
INSERT INTO "public"."session" VALUES ('16573992', '1');
INSERT INTO "public"."session" VALUES ('16576812', '1');
INSERT INTO "public"."session" VALUES ('16579824', '1');
INSERT INTO "public"."session" VALUES ('16581156', '1');
INSERT INTO "public"."session" VALUES ('16582572', '1');
INSERT INTO "public"."session" VALUES ('16585692', '1');
INSERT INTO "public"."session" VALUES ('16586640', '1');
INSERT INTO "public"."session" VALUES ('16587288', '1');
INSERT INTO "public"."session" VALUES ('16588416', '1');
INSERT INTO "public"."session" VALUES ('16589100', '1');
INSERT INTO "public"."session" VALUES ('16593012', '1');
INSERT INTO "public"."session" VALUES ('16595628', '1');
INSERT INTO "public"."session" VALUES ('16597116', '1');
INSERT INTO "public"."session" VALUES ('16598904', '1');
INSERT INTO "public"."session" VALUES ('16599396', '1');
INSERT INTO "public"."session" VALUES ('16600716', '1');
INSERT INTO "public"."session" VALUES ('16603212', '1');
INSERT INTO "public"."session" VALUES ('16605180', '1');
INSERT INTO "public"."session" VALUES ('16606068', '1');
INSERT INTO "public"."session" VALUES ('16609428', '1');
INSERT INTO "public"."session" VALUES ('16610568', '1');
INSERT INTO "public"."session" VALUES ('16611048', '1');
INSERT INTO "public"."session" VALUES ('16612176', '1');
INSERT INTO "public"."session" VALUES ('16613292', '1');
INSERT INTO "public"."session" VALUES ('16613352', '1');
INSERT INTO "public"."session" VALUES ('16613520', '1');
INSERT INTO "public"."session" VALUES ('16615692', '1');
INSERT INTO "public"."session" VALUES ('16617300', '1');
INSERT INTO "public"."session" VALUES ('16617504', '1');
INSERT INTO "public"."session" VALUES ('16627332', '1');
INSERT INTO "public"."session" VALUES ('16630404', '1');
INSERT INTO "public"."session" VALUES ('16630656', '1');
INSERT INTO "public"."session" VALUES ('16634004', '1');
INSERT INTO "public"."session" VALUES ('16637616', '1');
INSERT INTO "public"."session" VALUES ('16639548', '1');
INSERT INTO "public"."session" VALUES ('16641816', '1');
INSERT INTO "public"."session" VALUES ('16653756', '1');
INSERT INTO "public"."session" VALUES ('16655088', '1');
INSERT INTO "public"."session" VALUES ('16655124', '1');
INSERT INTO "public"."session" VALUES ('16658064', '1');
INSERT INTO "public"."session" VALUES ('16659084', '1');
INSERT INTO "public"."session" VALUES ('16662528', '1');
INSERT INTO "public"."session" VALUES ('16663560', '1');
INSERT INTO "public"."session" VALUES ('16665180', '1');
INSERT INTO "public"."session" VALUES ('16668528', '1');
INSERT INTO "public"."session" VALUES ('16671180', '1');
INSERT INTO "public"."session" VALUES ('16671996', '1');
INSERT INTO "public"."session" VALUES ('16672092', '1');
INSERT INTO "public"."session" VALUES ('16675800', '1');
INSERT INTO "public"."session" VALUES ('16677456', '1');
INSERT INTO "public"."session" VALUES ('16678788', '1');
INSERT INTO "public"."session" VALUES ('16679412', '1');
INSERT INTO "public"."session" VALUES ('16679520', '1');
INSERT INTO "public"."session" VALUES ('16680036', '1');
INSERT INTO "public"."session" VALUES ('16682172', '1');
INSERT INTO "public"."session" VALUES ('16682280', '1');
INSERT INTO "public"."session" VALUES ('16682364', '1');
INSERT INTO "public"."session" VALUES ('16691400', '1');
INSERT INTO "public"."session" VALUES ('16693560', '1');
INSERT INTO "public"."session" VALUES ('16693596', '1');
INSERT INTO "public"."session" VALUES ('16694148', '1');
INSERT INTO "public"."session" VALUES ('16695228', '1');
INSERT INTO "public"."session" VALUES ('16696296', '1');
INSERT INTO "public"."session" VALUES ('16696452', '1');
INSERT INTO "public"."session" VALUES ('16697436', '1');
INSERT INTO "public"."session" VALUES ('16697892', '1');
INSERT INTO "public"."session" VALUES ('16698132', '1');
INSERT INTO "public"."session" VALUES ('16704324', '1');
INSERT INTO "public"."session" VALUES ('16706952', '1');
INSERT INTO "public"."session" VALUES ('16713648', '1');
INSERT INTO "public"."session" VALUES ('16718220', '1');
INSERT INTO "public"."session" VALUES ('16727064', '1');
INSERT INTO "public"."session" VALUES ('16733628', '1');
INSERT INTO "public"."session" VALUES ('16734924', '1');
INSERT INTO "public"."session" VALUES ('16735224', '1');
INSERT INTO "public"."session" VALUES ('16738164', '1');
INSERT INTO "public"."session" VALUES ('16744788', '1');
INSERT INTO "public"."session" VALUES ('16744824', '1');
INSERT INTO "public"."session" VALUES ('16751676', '1');
INSERT INTO "public"."session" VALUES ('16752540', '1');
INSERT INTO "public"."session" VALUES ('16754568', '1');
INSERT INTO "public"."session" VALUES ('16758108', '1');
INSERT INTO "public"."session" VALUES ('16760592', '1');
INSERT INTO "public"."session" VALUES ('16765356', '1');
INSERT INTO "public"."session" VALUES ('16769568', '1');
INSERT INTO "public"."session" VALUES ('16779264', '1');
INSERT INTO "public"."session" VALUES ('16780200', '1');
INSERT INTO "public"."session" VALUES ('16789224', '1');
INSERT INTO "public"."session" VALUES ('16790568', '1');
INSERT INTO "public"."session" VALUES ('16793232', '1');
INSERT INTO "public"."session" VALUES ('16795092', '1');
INSERT INTO "public"."session" VALUES ('16795332', '1');
INSERT INTO "public"."session" VALUES ('16796580', '1');
INSERT INTO "public"."session" VALUES ('16800480', '1');
INSERT INTO "public"."session" VALUES ('16801296', '1');
INSERT INTO "public"."session" VALUES ('16807932', '1');
INSERT INTO "public"."session" VALUES ('16809876', '1');
INSERT INTO "public"."session" VALUES ('16823196', '1');
INSERT INTO "public"."session" VALUES ('16827312', '1');
INSERT INTO "public"."session" VALUES ('16828488', '1');
INSERT INTO "public"."session" VALUES ('16828764', '1');
INSERT INTO "public"."session" VALUES ('16829460', '1');
INSERT INTO "public"."session" VALUES ('16833216', '1');
INSERT INTO "public"."session" VALUES ('16834176', '1');
INSERT INTO "public"."session" VALUES ('16843872', '1');
INSERT INTO "public"."session" VALUES ('16844712', '1');
INSERT INTO "public"."session" VALUES ('16850472', '1');
INSERT INTO "public"."session" VALUES ('16854348', '1');
INSERT INTO "public"."session" VALUES ('16861188', '1');
INSERT INTO "public"."session" VALUES ('16863708', '1');
INSERT INTO "public"."session" VALUES ('16865592', '1');
INSERT INTO "public"."session" VALUES ('16869456', '1');
INSERT INTO "public"."session" VALUES ('16871448', '1');
INSERT INTO "public"."session" VALUES ('16886052', '1');
INSERT INTO "public"."session" VALUES ('16891368', '1');
INSERT INTO "public"."session" VALUES ('16896720', '1');
INSERT INTO "public"."session" VALUES ('16900332', '1');
INSERT INTO "public"."session" VALUES ('16902876', '1');
INSERT INTO "public"."session" VALUES ('16911012', '1');
INSERT INTO "public"."session" VALUES ('16924584', '1');
INSERT INTO "public"."session" VALUES ('16927944', '1');
INSERT INTO "public"."session" VALUES ('16932480', '1');
INSERT INTO "public"."session" VALUES ('16948572', '1');
INSERT INTO "public"."session" VALUES ('16953072', '1');
INSERT INTO "public"."session" VALUES ('16955160', '1');
INSERT INTO "public"."session" VALUES ('16961136', '1');
INSERT INTO "public"."session" VALUES ('16965156', '1');
INSERT INTO "public"."session" VALUES ('16972548', '1');
INSERT INTO "public"."session" VALUES ('16973700', '1');
INSERT INTO "public"."session" VALUES ('16976352', '1');
INSERT INTO "public"."session" VALUES ('16982316', '1');
INSERT INTO "public"."session" VALUES ('16994532', '1');
INSERT INTO "public"."session" VALUES ('16999956', '1');
INSERT INTO "public"."session" VALUES ('17004576', '1');
INSERT INTO "public"."session" VALUES ('17016012', '1');
INSERT INTO "public"."session" VALUES ('17022096', '1');
INSERT INTO "public"."session" VALUES ('17025984', '1');
INSERT INTO "public"."session" VALUES ('17032764', '1');
INSERT INTO "public"."session" VALUES ('17036424', '1');
INSERT INTO "public"."session" VALUES ('17047860', '1');
INSERT INTO "public"."session" VALUES ('17054736', '1');
INSERT INTO "public"."session" VALUES ('17056608', '1');
INSERT INTO "public"."session" VALUES ('17060400', '1');
INSERT INTO "public"."session" VALUES ('17062956', '1');
INSERT INTO "public"."session" VALUES ('17069760', '1');
INSERT INTO "public"."session" VALUES ('17070432', '1');
INSERT INTO "public"."session" VALUES ('17074776', '1');
INSERT INTO "public"."session" VALUES ('17074872', '1');
INSERT INTO "public"."session" VALUES ('17075616', '1');
INSERT INTO "public"."session" VALUES ('17076984', '1');
INSERT INTO "public"."session" VALUES ('17081460', '1');
INSERT INTO "public"."session" VALUES ('17082432', '1');
INSERT INTO "public"."session" VALUES ('17083908', '1');
INSERT INTO "public"."session" VALUES ('17087640', '1');
INSERT INTO "public"."session" VALUES ('17090412', '1');
INSERT INTO "public"."session" VALUES ('17097228', '1');
INSERT INTO "public"."session" VALUES ('17099352', '1');
INSERT INTO "public"."session" VALUES ('17100528', '1');
INSERT INTO "public"."session" VALUES ('17106780', '1');
INSERT INTO "public"."session" VALUES ('17117640', '1');
INSERT INTO "public"."session" VALUES ('17122320', '1');
INSERT INTO "public"."session" VALUES ('17122896', '1');
INSERT INTO "public"."session" VALUES ('17139816', '1');
INSERT INTO "public"."session" VALUES ('17139960', '1');
INSERT INTO "public"."session" VALUES ('17141232', '1');
INSERT INTO "public"."session" VALUES ('17141508', '1');
INSERT INTO "public"."session" VALUES ('17141832', '1');
INSERT INTO "public"."session" VALUES ('17142060', '1');
INSERT INTO "public"."session" VALUES ('17142120', '1');
INSERT INTO "public"."session" VALUES ('17142744', '1');
INSERT INTO "public"."session" VALUES ('17142876', '1');
INSERT INTO "public"."session" VALUES ('17142996', '1');
INSERT INTO "public"."session" VALUES ('17143068', '1');
INSERT INTO "public"."session" VALUES ('17143932', '1');
INSERT INTO "public"."session" VALUES ('17144244', '1');
INSERT INTO "public"."session" VALUES ('17145036', '1');
INSERT INTO "public"."session" VALUES ('17154912', '1');
INSERT INTO "public"."session" VALUES ('17158776', '1');
INSERT INTO "public"."session" VALUES ('17169972', '1');
INSERT INTO "public"."session" VALUES ('17171976', '1');
INSERT INTO "public"."session" VALUES ('17180004', '1');
INSERT INTO "public"."session" VALUES ('17184168', '1');
INSERT INTO "public"."session" VALUES ('17195736', '1');
INSERT INTO "public"."session" VALUES ('17198136', '1');
INSERT INTO "public"."session" VALUES ('17200248', '1');
INSERT INTO "public"."session" VALUES ('17200296', '1');
INSERT INTO "public"."session" VALUES ('17200608', '1');
INSERT INTO "public"."session" VALUES ('17200884', '1');
INSERT INTO "public"."session" VALUES ('17204364', '1');
INSERT INTO "public"."session" VALUES ('17221572', '1');
INSERT INTO "public"."session" VALUES ('17224596', '1');
INSERT INTO "public"."session" VALUES ('17228820', '1');
INSERT INTO "public"."session" VALUES ('17236056', '1');
INSERT INTO "public"."session" VALUES ('17236632', '1');
INSERT INTO "public"."session" VALUES ('17240460', '1');
INSERT INTO "public"."session" VALUES ('17240952', '1');
INSERT INTO "public"."session" VALUES ('17242092', '1');
INSERT INTO "public"."session" VALUES ('17242248', '1');
INSERT INTO "public"."session" VALUES ('17242656', '1');
INSERT INTO "public"."session" VALUES ('17245860', '1');
INSERT INTO "public"."session" VALUES ('17249364', '1');
INSERT INTO "public"."session" VALUES ('17267664', '1');
INSERT INTO "public"."session" VALUES ('17270880', '1');
INSERT INTO "public"."session" VALUES ('17276664', '1');
INSERT INTO "public"."session" VALUES ('17280504', '1');
INSERT INTO "public"."session" VALUES ('17281224', '1');
INSERT INTO "public"."session" VALUES ('17282256', '1');
INSERT INTO "public"."session" VALUES ('17282352', '1');
INSERT INTO "public"."session" VALUES ('17284140', '1');
INSERT INTO "public"."session" VALUES ('17284836', '1');
INSERT INTO "public"."session" VALUES ('17301768', '1');
INSERT INTO "public"."session" VALUES ('17328804', '1');
INSERT INTO "public"."session" VALUES ('17340972', '1');
INSERT INTO "public"."session" VALUES ('17343432', '1');
INSERT INTO "public"."session" VALUES ('17344128', '1');
INSERT INTO "public"."session" VALUES ('17344368', '1');
INSERT INTO "public"."session" VALUES ('17345328', '1');
INSERT INTO "public"."session" VALUES ('17345664', '1');
INSERT INTO "public"."session" VALUES ('17383512', '1');
INSERT INTO "public"."session" VALUES ('17383956', '1');
INSERT INTO "public"."session" VALUES ('17404932', '1');
INSERT INTO "public"."session" VALUES ('17407980', '1');
INSERT INTO "public"."session" VALUES ('17415216', '1');
INSERT INTO "public"."session" VALUES ('17425428', '1');
INSERT INTO "public"."session" VALUES ('17425632', '1');
INSERT INTO "public"."session" VALUES ('17466540', '1');
INSERT INTO "public"."session" VALUES ('17488044', '1');
INSERT INTO "public"."session" VALUES ('17507592', '1');
INSERT INTO "public"."session" VALUES ('17508840', '1');
INSERT INTO "public"."session" VALUES ('17544912', '1');
INSERT INTO "public"."session" VALUES ('17549472', '1');
INSERT INTO "public"."session" VALUES ('17551092', '1');
INSERT INTO "public"."session" VALUES ('17561208', '1');
INSERT INTO "public"."session" VALUES ('17569908', '1');
INSERT INTO "public"."session" VALUES ('17569932', '1');
INSERT INTO "public"."session" VALUES ('17577732', '1');
INSERT INTO "public"."session" VALUES ('17601108', '1');
INSERT INTO "public"."session" VALUES ('17613000', '1');
INSERT INTO "public"."session" VALUES ('17637612', '1');
INSERT INTO "public"."session" VALUES ('17657244', '1');
INSERT INTO "public"."session" VALUES ('17657412', '1');
INSERT INTO "public"."session" VALUES ('17669436', '1');
INSERT INTO "public"."session" VALUES ('17685576', '1');
INSERT INTO "public"."session" VALUES ('17687076', '1');
INSERT INTO "public"."session" VALUES ('17696460', '1');
INSERT INTO "public"."session" VALUES ('17696508', '1');
INSERT INTO "public"."session" VALUES ('17706768', '1');
INSERT INTO "public"."session" VALUES ('17710128', '1');
INSERT INTO "public"."session" VALUES ('17719884', '1');
INSERT INTO "public"."session" VALUES ('17794116', '1');
INSERT INTO "public"."session" VALUES ('17813700', '1');
INSERT INTO "public"."session" VALUES ('17814204', '1');
INSERT INTO "public"."session" VALUES ('17815380', '1');
INSERT INTO "public"."session" VALUES ('17824968', '1');
INSERT INTO "public"."session" VALUES ('17827068', '1');
INSERT INTO "public"."session" VALUES ('17827884', '1');
INSERT INTO "public"."session" VALUES ('17829528', '1');
INSERT INTO "public"."session" VALUES ('17846400', '1');
INSERT INTO "public"."session" VALUES ('17849316', '1');
INSERT INTO "public"."session" VALUES ('17849640', '1');
INSERT INTO "public"."session" VALUES ('17850324', '1');
INSERT INTO "public"."session" VALUES ('17865612', '1');
INSERT INTO "public"."session" VALUES ('17867208', '1');
INSERT INTO "public"."session" VALUES ('17882808', '1');
INSERT INTO "public"."session" VALUES ('17894628', '1');
INSERT INTO "public"."session" VALUES ('17900112', '1');
INSERT INTO "public"."session" VALUES ('17907492', '1');
INSERT INTO "public"."session" VALUES ('17911224', '1');
INSERT INTO "public"."session" VALUES ('17911464', '1');
INSERT INTO "public"."session" VALUES ('17915604', '1');
INSERT INTO "public"."session" VALUES ('17940936', '1');
INSERT INTO "public"."session" VALUES ('17961804', '1');
INSERT INTO "public"."session" VALUES ('17967048', '1');
INSERT INTO "public"."session" VALUES ('17967144', '1');
INSERT INTO "public"."session" VALUES ('17971824', '1');
INSERT INTO "public"."session" VALUES ('17979372', '1');
INSERT INTO "public"."session" VALUES ('17981148', '1');
INSERT INTO "public"."session" VALUES ('17996676', '1');
INSERT INTO "public"."session" VALUES ('17997060', '1');
INSERT INTO "public"."session" VALUES ('18002232', '1');
INSERT INTO "public"."session" VALUES ('18002292', '1');
INSERT INTO "public"."session" VALUES ('18065172', '1');
INSERT INTO "public"."session" VALUES ('18072636', '1');
INSERT INTO "public"."session" VALUES ('18092040', '1');
INSERT INTO "public"."session" VALUES ('18094644', '1');
INSERT INTO "public"."session" VALUES ('18105732', '1');
INSERT INTO "public"."session" VALUES ('18106884', '1');
INSERT INTO "public"."session" VALUES ('18108096', '1');
INSERT INTO "public"."session" VALUES ('18114396', '1');
INSERT INTO "public"."session" VALUES ('18134940', '1');
INSERT INTO "public"."session" VALUES ('18137928', '1');
INSERT INTO "public"."session" VALUES ('18149592', '1');
INSERT INTO "public"."session" VALUES ('18150348', '1');
INSERT INTO "public"."session" VALUES ('18156480', '1');
INSERT INTO "public"."session" VALUES ('18158592', '1');
INSERT INTO "public"."session" VALUES ('18159240', '1');
INSERT INTO "public"."session" VALUES ('18159744', '1');
INSERT INTO "public"."session" VALUES ('18180336', '1');
INSERT INTO "public"."session" VALUES ('18185496', '1');
INSERT INTO "public"."session" VALUES ('18185520', '1');
INSERT INTO "public"."session" VALUES ('18188988', '1');
INSERT INTO "public"."session" VALUES ('18190380', '1');
INSERT INTO "public"."session" VALUES ('18190428', '1');
INSERT INTO "public"."session" VALUES ('18197388', '1');
INSERT INTO "public"."session" VALUES ('18205800', '1');
INSERT INTO "public"."session" VALUES ('18213768', '1');
INSERT INTO "public"."session" VALUES ('18218340', '1');
INSERT INTO "public"."session" VALUES ('18220404', '1');
INSERT INTO "public"."session" VALUES ('18231288', '1');
INSERT INTO "public"."session" VALUES ('18234792', '1');
INSERT INTO "public"."session" VALUES ('18237960', '1');
INSERT INTO "public"."session" VALUES ('18239640', '1');
INSERT INTO "public"."session" VALUES ('18242796', '1');
INSERT INTO "public"."session" VALUES ('18257628', '1');
INSERT INTO "public"."session" VALUES ('18259308', '1');
INSERT INTO "public"."session" VALUES ('18266460', '1');
INSERT INTO "public"."session" VALUES ('18271968', '1');
INSERT INTO "public"."session" VALUES ('18278340', '1');
INSERT INTO "public"."session" VALUES ('18301356', '1');
INSERT INTO "public"."session" VALUES ('18306984', '1');
INSERT INTO "public"."session" VALUES ('18308196', '1');
INSERT INTO "public"."session" VALUES ('18311928', '1');
INSERT INTO "public"."session" VALUES ('18323532', '1');
INSERT INTO "public"."session" VALUES ('18343392', '1');
INSERT INTO "public"."session" VALUES ('18351024', '1');
INSERT INTO "public"."session" VALUES ('18385164', '1');
INSERT INTO "public"."session" VALUES ('18395712', '1');
INSERT INTO "public"."session" VALUES ('18395880', '1');
INSERT INTO "public"."session" VALUES ('18404052', '1');
INSERT INTO "public"."session" VALUES ('18417204', '1');
INSERT INTO "public"."session" VALUES ('18427464', '1');
INSERT INTO "public"."session" VALUES ('18428028', '1');
INSERT INTO "public"."session" VALUES ('18430152', '1');
INSERT INTO "public"."session" VALUES ('18437436', '1');
INSERT INTO "public"."session" VALUES ('18439200', '1');
INSERT INTO "public"."session" VALUES ('18444264', '1');
INSERT INTO "public"."session" VALUES ('18459228', '1');
INSERT INTO "public"."session" VALUES ('18463800', '1');
INSERT INTO "public"."session" VALUES ('18473784', '1');
INSERT INTO "public"."session" VALUES ('18475356', '1');
INSERT INTO "public"."session" VALUES ('18476340', '1');
INSERT INTO "public"."session" VALUES ('18482544', '1');
INSERT INTO "public"."session" VALUES ('18484764', '1');
INSERT INTO "public"."session" VALUES ('18497904', '1');
INSERT INTO "public"."session" VALUES ('18498096', '1');
INSERT INTO "public"."session" VALUES ('18515748', '1');
INSERT INTO "public"."session" VALUES ('18523800', '1');
INSERT INTO "public"."session" VALUES ('18526632', '1');
INSERT INTO "public"."session" VALUES ('18531624', '1');
INSERT INTO "public"."session" VALUES ('18532872', '1');
INSERT INTO "public"."session" VALUES ('18565596', '1');
INSERT INTO "public"."session" VALUES ('18591432', '1');
INSERT INTO "public"."session" VALUES ('18599244', '1');
INSERT INTO "public"."session" VALUES ('18620376', '1');
INSERT INTO "public"."session" VALUES ('18711036', '1');
INSERT INTO "public"."session" VALUES ('18724644', '1');
INSERT INTO "public"."session" VALUES ('18725784', '1');
INSERT INTO "public"."session" VALUES ('18753420', '1');
INSERT INTO "public"."session" VALUES ('18757836', '1');
INSERT INTO "public"."session" VALUES ('18773628', '1');
INSERT INTO "public"."session" VALUES ('18797208', '1');
INSERT INTO "public"."session" VALUES ('18821580', '1');
INSERT INTO "public"."session" VALUES ('18856104', '1');
INSERT INTO "public"."session" VALUES ('18906240', '1');
INSERT INTO "public"."session" VALUES ('19026036', '1');
INSERT INTO "public"."session" VALUES ('19105356', '1');
INSERT INTO "public"."session" VALUES ('19350960', '1');
INSERT INTO "public"."session" VALUES ('19553112', '1');
INSERT INTO "public"."session" VALUES ('20058960', '1');

-- ----------------------------
-- Table structure for "public"."templates"
-- ----------------------------
DROP TABLE "public"."templates";
CREATE TABLE "public"."templates" (
"type" varchar NOT NULL,
"price_coins" int8 DEFAULT 0 NOT NULL,
"price_population" int8 DEFAULT 0 NOT NULL,
"price_power" int8 DEFAULT 0 NOT NULL,
"autotask" int8 DEFAULT 0 NOT NULL
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO "public"."templates" VALUES ('factory', '-30', '-10', '-20', '0');
INSERT INTO "public"."templates" VALUES ('house', '-20', '0', '-10', '1');
INSERT INTO "public"."templates" VALUES ('wind_power', '-50', '0', '30', '-1');

-- ----------------------------
-- Primary Key structure for table "public"."contracts"
-- ----------------------------
ALTER TABLE "public"."contracts" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."fields"
-- ----------------------------
CREATE UNIQUE INDEX "index_1" ON "public"."fields" USING btree ("id");

-- ----------------------------
-- Primary Key structure for table "public"."fields"
-- ----------------------------
ALTER TABLE "public"."fields" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."gameobjects"
-- ----------------------------
ALTER TABLE "public"."gameobjects" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table "public"."session"
-- ----------------------------
CREATE UNIQUE INDEX "index_2" ON "public"."session" USING btree ("id", "fieldid");

-- ----------------------------
-- Primary Key structure for table "public"."session"
-- ----------------------------
ALTER TABLE "public"."session" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table "public"."templates"
-- ----------------------------
ALTER TABLE "public"."templates" ADD PRIMARY KEY ("type");

-- ----------------------------
-- Foreign Key structure for table "public"."gameobjects"
-- ----------------------------
ALTER TABLE "public"."gameobjects" ADD FOREIGN KEY ("fieldid") REFERENCES "public"."fields" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

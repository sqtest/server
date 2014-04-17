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

Date: 2014-04-17 06:46:01
*/


-- ----------------------------
-- Sequence structure for "public"."fields_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."fields_id_seq";
CREATE SEQUENCE "public"."fields_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;

-- ----------------------------
-- Sequence structure for "public"."gameobjects_id_seq"
-- ----------------------------
DROP SEQUENCE "public"."gameobjects_id_seq";
CREATE SEQUENCE "public"."gameobjects_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for "public"."fields"
-- ----------------------------
DROP TABLE "public"."fields";
CREATE TABLE "public"."fields" (
"id" int8 DEFAULT nextval('fields_id_seq'::regclass) NOT NULL,
"coins" int8 DEFAULT 70 NOT NULL,
"population" int8 DEFAULT 0 NOT NULL,
"power" int8 DEFAULT 0 NOT NULL
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of fields
-- ----------------------------
INSERT INTO "public"."fields" VALUES ('1', '70', '0', '0');

-- ----------------------------
-- Table structure for "public"."gameobjects"
-- ----------------------------
DROP TABLE "public"."gameobjects";
CREATE TABLE "public"."gameobjects" (
"id" int8 DEFAULT nextval('gameobjects_id_seq'::regclass) NOT NULL,
"fieldid" int8,
"type" varchar(16),
"x" int4,
"y" int4,
"contract" int2 DEFAULT 0,
"time" int8 DEFAULT 0
)
WITHOUT OIDS 

;

-- ----------------------------
-- Records of gameobjects
-- ----------------------------
INSERT INTO "public"."gameobjects" VALUES ('1', '1', 'factory', '0', '0', '0', '0');

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
-- Foreign Key structure for table "public"."gameobjects"
-- ----------------------------
ALTER TABLE "public"."gameobjects" ADD FOREIGN KEY ("fieldid") REFERENCES "public"."fields" ("id") ON DELETE RESTRICT ON UPDATE CASCADE;

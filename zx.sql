/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.131
Source Server Version : 50562
Source Host           : 192.168.1.131:3306
Source Database       : zx

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-06-01 09:17:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `userid` int(11) NOT NULL,
  `zoneid` int(11) NOT NULL,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES ('32', '1', '1');
INSERT INTO `auth` VALUES ('32', '1', '0');
INSERT INTO `auth` VALUES ('32', '1', '2');
INSERT INTO `auth` VALUES ('32', '1', '3');
INSERT INTO `auth` VALUES ('32', '1', '4');
INSERT INTO `auth` VALUES ('32', '1', '5');
INSERT INTO `auth` VALUES ('32', '1', '6');
INSERT INTO `auth` VALUES ('32', '1', '7');
INSERT INTO `auth` VALUES ('32', '1', '8');
INSERT INTO `auth` VALUES ('32', '1', '9');
INSERT INTO `auth` VALUES ('32', '1', '10');
INSERT INTO `auth` VALUES ('32', '1', '11');
INSERT INTO `auth` VALUES ('32', '1', '100');
INSERT INTO `auth` VALUES ('32', '1', '101');
INSERT INTO `auth` VALUES ('32', '1', '102');
INSERT INTO `auth` VALUES ('32', '1', '103');
INSERT INTO `auth` VALUES ('32', '1', '104');
INSERT INTO `auth` VALUES ('32', '1', '105');
INSERT INTO `auth` VALUES ('32', '1', '200');
INSERT INTO `auth` VALUES ('32', '1', '201');
INSERT INTO `auth` VALUES ('32', '1', '202');
INSERT INTO `auth` VALUES ('32', '1', '203');
INSERT INTO `auth` VALUES ('32', '1', '204');
INSERT INTO `auth` VALUES ('32', '1', '205');
INSERT INTO `auth` VALUES ('32', '1', '206');
INSERT INTO `auth` VALUES ('32', '1', '207');
INSERT INTO `auth` VALUES ('32', '1', '208');
INSERT INTO `auth` VALUES ('32', '1', '209');
INSERT INTO `auth` VALUES ('32', '1', '210');
INSERT INTO `auth` VALUES ('32', '1', '211');
INSERT INTO `auth` VALUES ('32', '1', '212');
INSERT INTO `auth` VALUES ('32', '1', '213');
INSERT INTO `auth` VALUES ('32', '1', '214');
INSERT INTO `auth` VALUES ('32', '1', '501');
INSERT INTO `auth` VALUES ('32', '1', '502');
INSERT INTO `auth` VALUES ('32', '1', '503');
INSERT INTO `auth` VALUES ('32', '1', '504');
INSERT INTO `auth` VALUES ('32', '1', '505');
INSERT INTO `auth` VALUES ('32', '1', '506');
INSERT INTO `auth` VALUES ('32', '1', '507');
INSERT INTO `auth` VALUES ('32', '1', '508');
INSERT INTO `auth` VALUES ('32', '1', '509');
INSERT INTO `auth` VALUES ('32', '1', '510');
INSERT INTO `auth` VALUES ('32', '1', '511');
INSERT INTO `auth` VALUES ('32', '1', '512');
INSERT INTO `auth` VALUES ('32', '1', '513');
INSERT INTO `auth` VALUES ('32', '1', '514');
INSERT INTO `auth` VALUES ('32', '1', '515');
INSERT INTO `auth` VALUES ('32', '1', '516');
INSERT INTO `auth` VALUES ('32', '1', '517');
INSERT INTO `auth` VALUES ('32', '1', '518');

-- ----------------------------
-- Table structure for forbid
-- ----------------------------
DROP TABLE IF EXISTS `forbid`;
CREATE TABLE `forbid` (
  `userid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `ctime` datetime NOT NULL,
  `forbid_time` int(11) NOT NULL,
  `reason` longblob NOT NULL,
  `gmroleid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forbid
-- ----------------------------

-- ----------------------------
-- Table structure for iplimit
-- ----------------------------
DROP TABLE IF EXISTS `iplimit`;
CREATE TABLE `iplimit` (
  `uid` int(11) NOT NULL,
  `ipaddr1` int(11) DEFAULT NULL,
  `ipmask1` varchar(2) DEFAULT NULL,
  `ipaddr2` int(11) DEFAULT NULL,
  `ipmask2` varchar(2) DEFAULT NULL,
  `ipaddr3` int(11) DEFAULT NULL,
  `ipmask3` varchar(2) DEFAULT NULL,
  `enable` char(1) DEFAULT NULL,
  `lockstatus` char(1) DEFAULT NULL,
  `autolock` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of iplimit
-- ----------------------------

-- ----------------------------
-- Table structure for online
-- ----------------------------
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online` (
  `ID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of online
-- ----------------------------

-- ----------------------------
-- Table structure for point
-- ----------------------------
DROP TABLE IF EXISTS `point`;
CREATE TABLE `point` (
  `uid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `zoneid` int(11) DEFAULT NULL,
  `zonelocalid` int(11) DEFAULT NULL,
  `accountstart` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of point
-- ----------------------------
INSERT INTO `point` VALUES ('32', '23', '0', null, null, null, '2020-05-29 08:41:40', null);
INSERT INTO `point` VALUES ('32', '1', '2147483647', null, null, null, null, null);
INSERT INTO `point` VALUES ('48', '23', '0', null, null, null, '2020-05-31 14:28:02', null);

-- ----------------------------
-- Table structure for usecashlog
-- ----------------------------
DROP TABLE IF EXISTS `usecashlog`;
CREATE TABLE `usecashlog` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` datetime NOT NULL,
  `fintime` datetime NOT NULL,
  KEY `IX_usecashlog_creatime` (`creatime`),
  KEY `IX_usecashlog_uzs` (`userid`,`zoneid`,`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usecashlog
-- ----------------------------

-- ----------------------------
-- Table structure for usecashnow
-- ----------------------------
DROP TABLE IF EXISTS `usecashnow`;
CREATE TABLE `usecashnow` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `zoneid` int(11) NOT NULL DEFAULT '0',
  `sn` int(11) NOT NULL DEFAULT '0',
  `aid` int(11) NOT NULL DEFAULT '0',
  `point` int(11) NOT NULL DEFAULT '0',
  `cash` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `creatime` datetime NOT NULL,
  PRIMARY KEY (`userid`,`zoneid`,`sn`),
  KEY `IX_usecashnow_creatime` (`creatime`),
  KEY `IX_usecashnow_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usecashnow
-- ----------------------------
INSERT INTO `usecashnow` VALUES ('32', '1', '-1', '1', '0', '249999900', '0', '2020-05-29 08:41:26');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `passwd` varchar(64) NOT NULL,
  `Prompt` varchar(32) NOT NULL DEFAULT '',
  `answer` varchar(32) NOT NULL DEFAULT '',
  `truename` varchar(32) NOT NULL DEFAULT '',
  `idnumber` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `mobilenumber` varchar(32) DEFAULT '',
  `province` varchar(32) DEFAULT '',
  `city` varchar(32) DEFAULT '',
  `phonenumber` varchar(32) DEFAULT '',
  `address` varchar(64) DEFAULT '',
  `postalcode` varchar(8) DEFAULT '',
  `gender` int(11) DEFAULT '0',
  `birthday` datetime DEFAULT NULL,
  `creatime` datetime NOT NULL,
  `qq` varchar(32) DEFAULT '',
  `passwd2` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `IX_users_name` (`name`),
  KEY `IX_users_creatime` (`creatime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('32', 'Poison', '0xa66abb5684c45962d887564f08346e8d', '0', '0', '0', '0', 'admin@qq.com', '0', '0', '0', '0', '0', '0', '0', '2020-05-29 08:07:29', '2020-05-29 08:07:29', '', '0xa66abb5684c45962d887564f08346e8d');

-- ----------------------------
-- Procedure structure for acquireuserpasswd
-- ----------------------------
DROP PROCEDURE IF EXISTS `acquireuserpasswd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `acquireuserpasswd`(in name1 VARCHAR(64), out uid1 INTEGER, out passwd1 VARCHAR(64))
BEGIN
  DECLARE passwdtemp VARCHAR(64);
  START TRANSACTION;
    SELECT id, passwd INTO uid1, passwdtemp FROM users WHERE name = name1;
    SELECT fn_varbintohexsubstring(1,passwdtemp,1,0) INTO passwd1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addForbid
-- ----------------------------
DROP PROCEDURE IF EXISTS `addForbid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addForbid`(in userid1 INTEGER, in type1 INTEGER, in forbid_time1 INTEGER, in reason1 BINARY(255), in gmroleid1 INTEGER)
BEGIN
 DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE forbid SET ctime = now(), forbid_time = forbid_time1, reason = reason1, gmroleid = gmroleid1 WHERE userid = userid1 AND type = type1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO forbid VALUES(userid1, type1, now(), forbid_time1, reason1, gmroleid);
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addGM
-- ----------------------------
DROP PROCEDURE IF EXISTS `addGM`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addGM`(in userid INTEGER, in zoneid INTEGER)
BEGIN
  DECLARE x INTEGER;
  START TRANSACTION;
    SET x = 0;
    WHILE x < 12 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 100;
    WHILE x < 106 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 200;
    WHILE x < 215 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
    SET x = 500;
    WHILE x < 519 DO
      INSERT INTO auth VALUES (userid, zoneid, x);
      SET x = x + 1;
    END WHILE;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for adduser
-- ----------------------------
DROP PROCEDURE IF EXISTS `adduser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduser`(
  in name1 VARCHAR(64),
  in passwd1 VARCHAR(64),
  in prompt1 VARCHAR(32),
  in answer1 VARCHAR(32),
  in truename1 VARCHAR(32),
  in idnumber1 VARCHAR(32),
  in email1 VARCHAR(32),
  in mobilenumber1 VARCHAR(32),
  in province1 VARCHAR(32),
  in city1 VARCHAR(32),
  in phonenumber1 VARCHAR(32),
  in address1 VARCHAR(64),
  in postalcode1 VARCHAR(8),
  in gender1 INTEGER,
  in birthday1 VARCHAR(32),
  in qq1 VARCHAR(32),
  in passwd21 VARCHAR(64)
)
BEGIN
  DECLARE idtemp INTEGER;
    SELECT IFNULL(MAX(id), 16) + 16 INTO idtemp FROM users;
    INSERT INTO users (id,name,passwd,prompt,answer,truename,idnumber,email,mobilenumber,province,city,phonenumber,address,postalcode,gender,birthday,creatime,qq,passwd2) VALUES( idtemp, name1, passwd1, prompt1, answer1, truename1, idnumber1, email1, mobilenumber1, province1, city1, phonenumber1, address1, postalcode1, gender1, birthday1, now(), qq1, passwd21 );
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for adduserpoint
-- ----------------------------
DROP PROCEDURE IF EXISTS `adduserpoint`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduserpoint`(in uid1 INTEGER, in aid1 INTEGER, in time1 INTEGER)
BEGIN
 DECLARE rowcount INTEGER;
 START TRANSACTION;
    UPDATE point SET time = IFNULL(time,0) + time1 WHERE uid1 = uid AND aid1 = aid;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO point (uid,aid,time) VALUES (uid1,aid1,time1);
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for addUserPriv
-- ----------------------------
DROP PROCEDURE IF EXISTS `addUserPriv`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addUserPriv`(in userid INTEGER, in zoneid INTEGER, in rid INTEGER)
BEGIN
  START TRANSACTION;
    INSERT INTO auth VALUES(userid, zoneid, rid);
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for changePasswd
-- ----------------------------
DROP PROCEDURE IF EXISTS `changePasswd`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePasswd`(in name1 VARCHAR(64), in passwd1 VARCHAR(64))
BEGIN
  START TRANSACTION;
    UPDATE users SET passwd = passwd1 WHERE name = name1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for changePasswd2
-- ----------------------------
DROP PROCEDURE IF EXISTS `changePasswd2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePasswd2`(in name1 VARCHAR(64), in passwd21 VARCHAR(64))
BEGIN
  START TRANSACTION;
    UPDATE users SET passwd2 = passwd21 WHERE name = name1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for clearonlinerecords
-- ----------------------------
DROP PROCEDURE IF EXISTS `clearonlinerecords`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `clearonlinerecords`(in zoneid1 INTEGER, in aid1 INTEGER)
BEGIN
  START TRANSACTION;
    UPDATE point SET zoneid = NULL, zonelocalid = NULL WHERE aid = aid1 AND zoneid = zoneid1;
    DELETE FROM online;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for deleteTimeoutForbid
-- ----------------------------
DROP PROCEDURE IF EXISTS `deleteTimeoutForbid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteTimeoutForbid`(in userid1 INTEGER)
BEGIN
  START TRANSACTION;
    DELETE FROM forbid WHERE userid = userid1 AND timestampdiff(second, ctime, now()) > forbid_time;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for delUserPriv
-- ----------------------------
DROP PROCEDURE IF EXISTS `delUserPriv`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delUserPriv`(in userid1 INTEGER, in zoneid1 INTEGER, in rid1 INTEGER, in deltype1 INTEGER)
BEGIN
START TRANSACTION;
  IF deltype1 = 0 THEN
    DELETE FROM auth WHERE userid = userid1 AND zoneid = zoneid1 AND rid = rid1;
  ELSE
    IF deltype1 = 1 THEN
      DELETE FROM auth WHERE userid = userid1 AND zoneid = zoneid1;
    ELSE
      IF deltype1 = 2 THEN
        DELETE FROM auth WHERE userid = userid1;
      END IF;
    END IF;
  END IF;
COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for enableiplimit
-- ----------------------------
DROP PROCEDURE IF EXISTS `enableiplimit`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `enableiplimit`(in uid1 INTEGER, in enable1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  UPDATE iplimit SET enable=enable1 WHERE uid=uid1;
  SET rowcount = ROW_COUNT();
  IF rowcount = 0 THEN
    INSERT INTO iplimit (uid,enable) VALUES (uid1,enable1);
  END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for lockuser
-- ----------------------------
DROP PROCEDURE IF EXISTS `lockuser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lockuser`(in uid1 INTEGER, in lockstatus1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  UPDATE iplimit SET lockstatus=lockstatus1 WHERE uid=uid1;
  SET rowcount = ROW_COUNT();
  IF rowcount = 0 THEN
    INSERT INTO iplimit (uid,lockstatus,enable) VALUES (uid1,lockstatus1,'t');
  END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for recordoffline
-- ----------------------------
DROP PROCEDURE IF EXISTS `recordoffline`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recordoffline`(in uid1 INTEGER, in aid1 INTEGER, inout zoneid1 INTEGER, inout zonelocalid1 INTEGER, inout overwrite1 INTEGER)
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE point SET zoneid = NULL, zonelocalid = NULL WHERE uid = uid1 AND aid = aid1 AND zoneid = zoneid1;
    DELETE FROM online WHERE ID = uid1;
    SET rowcount = ROW_COUNT();
    IF overwrite1 = rowcount THEN
      SELECT zoneid, zonelocalid INTO zoneid1, zonelocalid1 FROM point WHERE uid = uid1 AND aid = aid1;
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for recordonline
-- ----------------------------
DROP PROCEDURE IF EXISTS `recordonline`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `recordonline`(in uid1 INTEGER, in aid1 INTEGER, inout zoneid1 INTEGER, inout zonelocalid1 INTEGER, inout overwrite INTEGER)
BEGIN
  DECLARE tmp_zoneid INTEGER;
  DECLARE tmp_zonelocalid INTEGER;
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    SELECT SQL_CALC_FOUND_ROWS zoneid, zonelocalid INTO tmp_zoneid, tmp_zonelocalid FROM point WHERE uid = uid1 and aid = aid1;
    INSERT INTO online (ID) VALUES (uid1);
    SET rowcount = FOUND_ROWS();
    IF rowcount = 0 THEN
      INSERT INTO point (uid, aid, time, zoneid, zonelocalid, lastlogin) VALUES (uid1, aid1, 0, zoneid1, zonelocalid1, now());
    ELSE IF tmp_zoneid IS NULL OR overwrite = 1 THEN
      UPDATE point SET zoneid = zoneid1, zonelocalid = zonelocalid1, lastlogin = now() WHERE uid = uid1 AND aid = aid1;
    END IF;
    END IF;
    IF tmp_zoneid IS NULL THEN
      SET overwrite = 1;
    ELSE
      SET zoneid1 = tmp_zoneid;
      SET zonelocalid1 = tmp_zonelocalid;
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for remaintime
-- ----------------------------
DROP PROCEDURE IF EXISTS `remaintime`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remaintime`(in uid1 INTEGER, in aid1 INTEGER, out remain INTEGER, out freetimeleft INTEGER)
BEGIN
  DECLARE enddate1 DATETIME;
  DECLARE now1 DATETIME;
  DECLARE rowcount INTEGER;
  START TRANSACTION;
  SET now1 = now();
  IF aid1 = 0 THEN
    SET remain = 86313600;
    SET enddate1 = date_add(now1, INTERVAL '30' DAY);
  ELSE
    SELECT time, IFNULL(enddate, now1) INTO remain, enddate1 FROM point WHERE uid = uid1 AND aid = aid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      SET remain = 0;
      INSERT INTO point (uid,aid,time) VALUES (uid1, aid1, remain);
    END IF;
  END IF;
  SET freetimeleft = 0;
  IF enddate1 > now1 THEN
    SET freetimeleft = timestampdiff(second, now1, enddate1);
  END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for setiplimit
-- ----------------------------
DROP PROCEDURE IF EXISTS `setiplimit`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `setiplimit`(in uid1 INTEGER, in ipaddr11 INTEGER, in ipmask11 VARCHAR(2), in ipaddr21 INTEGER, in ipmask21 VARCHAR(2), in ipaddr31 INTEGER, in ipmask31 VARCHAR(2), in enable1 CHAR(1))
BEGIN
  DECLARE rowcount INTEGER;
  START TRANSACTION;
    UPDATE iplimit SET ipaddr1 = ipaddr11, ipmask1 = ipmask11, ipaddr2 = ipaddr21, ipmask2 = ipmask21, ipaddr3 = ipaddr31, ipmask3 = ipmask31 WHERE uid = uid1;
    SET rowcount = ROW_COUNT();
    IF rowcount = 0 THEN
      INSERT INTO iplimit (uid, ipaddr1, ipmask1, ipaddr2, ipmask2, ipaddr3, ipmask3, enable1) VALUES (uid1, ipaddr11, ipmask11, ipaddr21, ipmask21, ipaddr31, ipmask31,'t');
    END IF;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for updateUserInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `updateUserInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateUserInfo`(
  in name1 VARCHAR(32),
  in prompt1 VARCHAR(32),
  in answer1 VARCHAR(32),
  in truename1 VARCHAR(32),
  in idnumber1 VARCHAR(32),
  in email1 VARCHAR(32),
  in mobilenumber1 VARCHAR(32),
  in province1 VARCHAR(32),
  in city1 VARCHAR(32),
  in phonenumber1 VARCHAR(32),
  in address1 VARCHAR(32),
  in postalcode1 VARCHAR(32),
  in gender1 INTEGER,
  in birthday1 VARCHAR(32),
  in qq1 VARCHAR(32)
 )
BEGIN
  START TRANSACTION;
    UPDATE users SET prompt = prompt1, answer = answer1, truename = truename1, idnumber = idnumber1, email = email1, mobilenumber = mobilenumber1, province = province1, city = city1, phonenumber = phonenumber1, address = address1, postalcode = postalcode1, gender = gender1, birthday = birthda1, qq = qq1 WHERE name = name1;
  COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usecash
-- ----------------------------
DROP PROCEDURE IF EXISTS `usecash`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usecash`(
  in userid1 INTEGER,
  in zoneid1 INTEGER,
  in sn1 INTEGER,
  in aid1 INTEGER,
  in point1 INTEGER,
  in cash1 INTEGER,
  in status1 INTEGER,
  out error INTEGER
)
BEGIN
DECLARE sn_old INTEGER;
DECLARE aid_old INTEGER;
DECLARE point_old INTEGER;
DECLARE cash_old INTEGER;
DECLARE status_old INTEGER;
DECLARE createtime_old DATETIME;
DECLARE time_old INTEGER;
DECLARE need_restore INTEGER;
DECLARE exists1 INTEGER;
DECLARE rowcount INTEGER;
START TRANSACTION;
  SET error = 0;
  SET need_restore = 0;
  SELECT SQL_CALC_FOUND_ROWS sn, aid, point, cash, status, creatime INTO sn_old, aid_old, point_old, cash_old, status_old, createtime_old FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn >= 0;
  SET rowcount = FOUND_ROWS();
  IF rowcount = 1 THEN
    SET exists1 = 1;
  ELSE
    SET exists1 = 0;
  END IF;
  IF status1 = 0 THEN
    IF exists1 = 0 THEN
      SELECT aid, point INTO aid1, point1 FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn1;
      SET point1 = IFNULL(point1,0);
      UPDATE point SET time = time-point1 WHERE uid = userid1 AND aid = aid1 AND time >= point1;
      SET rowcount = ROW_COUNT();
      IF rowcount = 1 THEN
        UPDATE usecashnow SET sn = 0, status = 1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn1;
      ELSE
        SET error = -8;
      END IF;
    END IF;
  ELSE
    IF status1 = 1 THEN
      IF exists1 = 0 THEN
        UPDATE point SET time = time-point1 WHERE uid = userid1 AND aid = aid1 AND time >= point1;
        SET rowcount = ROW_COUNT();
        IF rowcount = 1 THEN
          INSERT INTO usecashnow (userid, zoneid, sn, aid, point, cash, status, creatime) VALUES (userid1, zoneid1, sn1, aid1, point1, cash1, status1, now());
        ELSE
          INSERT INTO usecashnow SELECT userid1, zoneid1, IFNULL(min(sn),0)-1, aid1, point1, cash1, 0, now() FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND 0 >= sn;
          SET error = -8;
        END IF;
      ELSE
        INSERT INTO usecashnow SELECT userid1, zoneid1, IFNULL(min(sn),0)-1, aid1, point1, cash1, 0, now() FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND 0 >= sn;
        SET error = -7;
      END IF;
    ELSE
      IF status1 = 2 THEN
        IF exists1 = 1 AND status_old = 1 AND sn_old = 0 THEN
          UPDATE usecashnow SET sn = sn1, status = status1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
        ELSE
          SET error = -9;
        END IF;
      ELSE
        IF status1 = 3 THEN
           IF exists1 = 1 AND status_old = 2 THEN
            UPDATE usecashnow SET status = status1 WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
           ELSE
            SET error = -10;
            END IF;
        ELSE
         IF status1 = 4 THEN
          IF exists1 = 1 THEN
            DELETE FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
            INSERT INTO usecashlog (userid, zoneid, sn, aid, point, cash, status, creatime, fintime) VALUES (userid1, zoneid1, sn_old, aid_old, point_old, cash_old, status1, createtime_old, now());
          END IF;
          IF NOT (exists1 = 1 AND status_old = 3) THEN
            SET error = -11;
          END IF;
        ELSE
          SET error = -12;
        END IF;
      END IF;
    END IF;
  END IF;
  END IF;
  IF need_restore = 1 THEN
    UPDATE point SET time = time+point_old WHERE uid = userid1 AND aid = aid_old;
    DELETE FROM usecashnow WHERE userid = userid1 AND zoneid = zoneid1 AND sn = sn_old;
    INSERT INTO usecashlog (userid, zoneid, sn, aid, point, cash, status, creatime, fintime) VALUES (userid1, zoneid1, sn_old, aid_old, point_old, cash_old, status1, createtime_old, now());
  END IF;
COMMIT;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for fn_varbintohexsubstring
-- ----------------------------
DROP FUNCTION IF EXISTS `fn_varbintohexsubstring`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_varbintohexsubstring`(fsetprefix bit,pbinin varbinary(8000),startoffset int,cbytesin int) RETURNS varchar(4000) CHARSET latin1
    READS SQL DATA
    COMMENT 'RETURN  pstrout change pbinin;'
BEGIN
  DECLARE pstrout VARCHAR(4000);
  DECLARE i int;
  DECLARE firstnibble int;
  DECLARE secondnibble int;
  DECLARE tempint int;
  DECLARE hexstring char( 16);
  BEGIN
    IF( pbinin IS NOT NULL) THEN
      SET i= 0, cbytesin= CASE WHEN( cbytesin> 0) THEN cbytesin ELSE LENGTH( pbinin) END,
         pstrout= CASE WHEN( fsetprefix= 1) THEN '0x'  ELSE ''  END,
         hexstring= '0123456789abcdef';
      IF((( cbytesin * 2) + 2> 4000) or( startoffset< 1)) THEN
        RETURN NULL;
      END IF;
      WHILE( i< cbytesin) DO
        SET tempint= ASCII( substring( pbinin, i + startoffset, 1));
        SET firstnibble= TRUNCATE((tempint / 16),0);
        SET secondnibble= tempint % 16;
        SET pstrout= CONCAT(pstrout ,cast( substring( hexstring,( firstnibble+1), 1) AS CHAR), cast( substring( hexstring,( secondnibble+1), 1) AS CHAR));
        SET i= i + 1;
      END WHILE;
      RETURN pbinin;
    END IF;
    RETURN NULL;
  END;
END
;;
DELIMITER ;

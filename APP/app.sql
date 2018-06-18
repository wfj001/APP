USE appinfodb;
-- 前台用户
SELECT * FROM`dev_user`;
-- 后台用户
SELECT * FROM backend_user;
-- app 的详细信息
SELECT * FROM `app_info` WHERE id=48;
-- 版本信息
SELECT * FROM `app_version` GROUP BY  ORDER BY createionDate  DESC;

-- 分类
SELECT * FROM`app_category` WHERE parentId=1
	SELECT * FROM`app_category` WHERE parentId =1
-- 数据字典  
SELECT * FROM `data_dictionary`;

-- info 表和字典表 状态的对应
SELECT a.*,b.`valueName` AS appstatus FROM `app_info` AS a,data_dictionary AS b 
WHERE a.`status`=b.`valueId` AND b.`typeCode`='APP_STATUS';

-- info 表和字典表 平台的对应
SELECT a.*,b.`valueName` AS appflatform FROM `app_info` AS a,data_dictionary AS b 
WHERE a.`flatformId`=b.`valueId` AND b.`typeCode`='APP_FLATFORM';
-- info 表与分类表 一级分类
SELECT a.*,b.`categoryName` AS l1 FROM `app_info` AS a,app_category AS b 
WHERE a.`categoryLevel1`=b.`id` AND b.`parentId`IS NULL;

-- info 表与分类表 二级分类
SELECT a.*,b.`categoryName` AS l2 FROM `app_info` AS a,app_category AS b 
WHERE a.`categoryLevel2`=b.`id` AND a.`categoryLevel1`=b.`parentId`;

-- info 表与分类表 三级分类
SELECT a.*,b.`categoryName` AS l3 FROM `app_info` AS a,app_category AS b 
WHERE a.`categoryLevel3`=b.`id` AND a.`categoryLevel2`=b.`parentId`;
-- info 表与版本表
SELECT a.*,b.`versionNo` AS versionNo FROM `app_info` AS a LEFT JOIN app_version AS b 
ON a.`versionId`=b.`id` 


SELECT f.*,a.appstatus,b.appflatform,c.l1,d.l2,e.l3,g.versionNo FROM app_info AS f,
(SELECT a.*,b.`valueName` AS appstatus FROM `app_info` AS a,data_dictionary AS b 
WHERE a.`status`=b.`valueId` AND b.`typeCode`='APP_STATUS') AS a,
(SELECT a.*,b.`valueName` AS appflatform FROM `app_info` AS a,data_dictionary AS b 
WHERE a.`flatformId`=b.`valueId` AND b.`typeCode`='APP_FLATFORM') AS b,
(SELECT a.*,b.`categoryName` AS l1 FROM `app_info` AS a,app_category AS b 
WHERE a.`categoryLevel1`=b.`id` AND b.`parentId`IS NULL) AS c,
(SELECT a.*,b.`categoryName` AS l2 FROM `app_info` AS a,app_category AS b 
WHERE a.`categoryLevel2`=b.`id` AND a.`categoryLevel1`=b.`parentId`) AS d,
(SELECT a.*,b.`categoryName` AS l3 FROM `app_info` AS a,app_category AS b 
WHERE a.`categoryLevel3`=b.`id` AND a.`categoryLevel2`=b.`parentId`) AS e,
(SELECT a.*,b.`versionNo` AS versionNo FROM `app_info` AS a LEFT JOIN app_version AS b 
ON a.`versionId`=b.`id` ) AS g
WHERE f.id=b.id 
AND f.id=c.id
AND f.id=d.id
AND f.id=e.id
AND f.id=a.id
AND f.id=g.id
AND f.id=49

AND f.categoryLevel1=2
AND f.categoryLevel2=20
AND f.categoryLevel3=42
AND f.status=1
AND f.flatformId=1

SELECT * FROM app_info;
UPDATE app_info 
SET logoLocPath='D:\\softapache-tomcat-7.0.41\\webapps\\App\\statics\\uploadfiles\\com.katecca.screenofflockdonate.jpg' WHERE id=53



SELECT * FROM app_version AS a,`app_info` AS b WHERE a.appId=b.id AND a.appId=58

UPDATE app_version 
SET apkLocPath='D:\\soft\\apache-tomcat-7.0.41\\webapps\\App\\statics\\uploadfiles\\com.kleientertainment.doNotStarvePocket-V1.1.1.apk'
 WHERE id=35


SELECT a.softwareName,b.* FROM (SELECT * FROM app_info) AS a,
(SELECT a.*,b.valueName AS ps FROM app_version AS a,`data_dictionary` AS b WHERE a.publishStatus=b.valueId AND b.typeCode='PUBLISH_STATUS') AS b
WHERE a.id=b.appId  AND appId=










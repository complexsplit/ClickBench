CREATE EXTERNAL TABLE IF NOT EXISTS `test`.`hits` (
`watchid` bigint,
`javaenable` smallint,
`title` string,
`goodevent` smallint,
`eventtime` timestamp,
`eventdate` date,
`counterid` int,
`clientip` int,
`regionid` int,
`userid` bigint,
`counterclass` smallint,
`os` smallint,
`useragent` smallint,
`url` string,
`referer` string,
`isrefresh` smallint,
`referercategoryid` smallint,
`refererregionid` int,
`urlcategoryid` smallint,
`urlregionid` int,
`resolutionwidth` smallint,
`resolutionheight` smallint,
`resolutiondepth` smallint,
`flashmajor` smallint,
`flashminor` smallint,
`flashminor2` string,
`netmajor` smallint,
`netminor` smallint,
`useragentmajor` smallint,
`useragentminor` string,
`cookieenable` smallint,
`javascriptenable` smallint,
`ismobile` smallint,
`mobilephone` smallint,
`mobilephonemodel` string,
`params` string,
`ipnetworkid` int,
`traficsourceid` smallint,
`searchengineid` smallint,
`searchphrase` string,
`advengineid` smallint,
`isartifical` smallint,
`windowclientwidth` smallint,
`windowclientheight` smallint,
`clienttimezone` smallint,
`clienteventtime` timestamp,
`silverlightversion1` smallint,
`silverlightversion2` smallint,
`silverlightversion3` int,
`silverlightversion4` smallint,
`pagecharset` string,
`codeversion` int,
`islink` smallint,
`isdownload` smallint,
`isnotbounce` smallint,
`funiqid` bigint,
`originalurl` string,
`hid` int,
`isoldcounter` smallint,
`isevent` smallint,
`isparameter` smallint,
`dontcounthits` smallint,
`withhash` smallint,
`hitcolor` string,
`localeventtime` timestamp,
`age` smallint,
`sex` smallint,
`income` smallint,
`interests` smallint,
`robotness` smallint,
`remoteip` int,
`windowname` int,
`openername` int,
`historylength` smallint,
`browserlanguage` string,
`browsercountry` string,
`socialnetwork` string,
`socialaction` string,
`httperror` smallint,
`sendtiming` int,
`dnstiming` int,
`connecttiming` int,
`responsestarttiming` int,
`responseendtiming` int,
`fetchtiming` int,
`socialsourcenetworkid` smallint,
`socialsourcepage` string,
`paramprice` bigint,
`paramorderid` string,
`paramcurrency` string,
`paramcurrencyid` smallint,
`openstatservicename` string,
`openstatcampaignid` string,
`openstatadid` string,
`openstatsourceid` string,
`utmsource` string,
`utmmedium` string,
`utmcampaign` string,
`utmcontent` string,
`utmterm` string,
`fromtag` string,
`hasgclid` smallint,
`refererhash` bigint,
`urlhash` bigint,
`clid` int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe'
WITH SERDEPROPERTIES (
'serialization.format' = '1'
) LOCATION 's3://clickhouse-public-datasets/hits_compatible/athena'
TBLPROPERTIES ('has_encrypted_data'='false');
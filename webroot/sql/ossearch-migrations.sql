#This file updates the tables used by OpenSimSearch to the latest schema.
#Use this file if you are updating an existing installation of the search
#module. If you are doing a first time install, use the ossearch.sql file.

#SVN revision 126
BEGIN;
ALTER TABLE `search_parcelsales` CHANGE `mature` `mature` varchar(32) NOT NULL DEFAULT 'PG';
COMMIT;

#SVN revision 142
BEGIN;
ALTER TABLE `search_hostsregister` DROP `lastcheck`;
ALTER TABLE `search_hostsregister` ADD `nextcheck` int(10) NOT NULL AFTER `register`;
ALTER TABLE `search_hostsregister` ADD `checked` tinyint(1) NOT NULL AFTER `nextcheck`;
ALTER TABLE `search_hostsregister` CHANGE `failcounter` `failcounter` int(10) NOT NULL;
COMMIT;

#SVN revision 149
BEGIN;
ALTER TABLE `search_events` DROP `mature`;
ALTER TABLE `search_events` CHANGE `eventflags` `eventflags` tinyint(1) NOT NULL;
ALTER TABLE `search_parcels` ADD `mature` VARCHAR( 10 ) NOT NULL;
ALTER TABLE `search_parcelsales` CHANGE `mature` `mature` VARCHAR( 10 ) NOT NULL DEFAULT 'PG';
ALTER TABLE `search_popularplaces` CHANGE `has_picture` `has_picture` tinyint(1) NOT NULL;
COMMIT;

#SVN revision 153
BEGIN;
ALTER TABLE `search_parcels` CHANGE `mature` `mature` VARCHAR( 10 ) NOT NULL DEFAULT 'PG';
COMMIT;

#SVN revision 154
BEGIN;
ALTER TABLE `search_events` CHANGE `dateUTC` `dateUTC` int(10) NOT NULL;
ALTER TABLE `search_events` CHANGE `covercharge` `covercharge` tinyint(1) NOT NULL;
COMMIT;

#SVN revision 199
BEGIN;
ALTER TABLE `search_allparcels` CHANGE `regionUUID` `regionUUID` char(36) NOT NULL;
ALTER TABLE `search_events` CHANGE `owneruuid` `owneruuid` char(36) NOT NULL;
ALTER TABLE `search_events` CHANGE `creatoruuid` `creatoruuid` char(36) NOT NULL;
ALTER TABLE `search_objects` CHANGE `objectuuid` `objectuuid` char(36) NOT NULL;
ALTER TABLE `search_objects` CHANGE `parcelUUID` `parcelUUID` char(36) NOT NULL;
ALTER TABLE `search_objects` CHANGE `regionuuid` `regionuuid` char(36) NOT NULL default '';
ALTER TABLE `search_parcels` CHANGE `regionUUID` `regionUUID` char(36) NOT NULL;
ALTER TABLE `search_parcels` CHANGE `parcelUUID` `parcelUUID` char(36) NOT NULL;
ALTER TABLE `search_parcels` CHANGE `infouuid` `infouuid` char(36) NOT NULL default '';
ALTER TABLE `search_parcelsales` CHANGE `regionUUID` `regionUUID` char(36) NOT NULL;
ALTER TABLE `search_parcelsales` CHANGE `parcelUUID` `parcelUUID` char(36) NOT NULL;
ALTER TABLE `search_regions` CHANGE `regionUUID` `regionUUID` char(36) NOT NULL;
ALTER TABLE `search_regions` CHANGE `ownerUUID` `ownerUUID` char(36) NOT NULL;
COMMIT;

#SVN revision 202
BEGIN;
ALTER TABLE `search_events` CHANGE `eventid` `eventid` INT( 11 ) UNSIGNED NOT NULL AUTO_INCREMENT;
ALTER TABLE `search_events` CHANGE `duration` `duration` INT ( 10 ) NOT NULL;
COMMIT;

#SVN revision 208
BEGIN;
ALTER TABLE `search_events` ADD `parcelUUID` CHAR( 36 ) NOT NULL AFTER `simname`;
COMMIT;

#Revision 9
BEGIN;
ALTER TABLE `search_popularplaces` CHANGE `mature` `mature` varchar(10) COLLATE utf8_unicode_ci NOT NULL;
ALTER TABLE `search_popularplaces` ADD PRIMARY KEY  (`parcelUUID`);
COMMIT;

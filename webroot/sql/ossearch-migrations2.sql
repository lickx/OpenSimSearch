# Converts collation to modern mysql collation

BEGIN;

alter table search_allparcels convert to character set utf8 collate utf8mb3_general_ci;
alter table classifieds convert to character set utf8 collate utf8mb3_general_ci;
alter table search_events convert to character set utf8 collate utf8mb3_general_ci;
alter table search_hostsregister convert to character set utf8 collate utf8mb3_general_ci;
alter table search_objects convert to character set utf8 collate utf8mb3_general_ci;
alter table search_parcels convert to character set utf8 collate utf8mb3_general_ci;
alter table search_parcelsales convert to character set utf8 collate utf8mb3_general_ci;
alter table search_popularplaces convert to character set utf8 collate utf8mb3_general_ci;
alter table search_regions convert to character set utf8 collate utf8mb3_general_ci;

COMMIT;

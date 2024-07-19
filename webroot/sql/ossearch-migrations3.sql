# Adds column for parcel picture; to be used for example in a website listing
# The texture asset would first need to be converted to a regular jpg or png

BEGIN;

alter table search_parcels add pictureUUID char(36) NOT NULL default '00000000-0000-0000-0000-000000000000';

COMMIT;

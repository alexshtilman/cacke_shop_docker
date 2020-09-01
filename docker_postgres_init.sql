CREATE USER cake_shop_admin WITH PASSWORD 'cake_shop_admin' CREATEDB;
CREATE DATABASE cake_shop
    WITH
    OWNER = cake_shop_admin
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
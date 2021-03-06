-- Writers

CREATE ROLE kl_writers WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

CREATE USER kl_decoder WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'KlD3c0d3r';

GRANT kl_writers TO kl_decoder;

CREATE USER kl_nodered WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'KlN0d3r3d';

GRANT kl_writers TO kl_nodered;

CREATE USER kl_webapi WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'KlW3b4p1';

GRANT kl_writers TO kl_webapi;

-- Readers

CREATE ROLE kl_readers WITH
  NOLOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION;

CREATE USER kl_grafana WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'KlGr4f4n4';

GRANT kl_readers TO kl_grafana;

CREATE USER kl_httpreceiver WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'KlR3c3iv3r';

GRANT kl_readers TO kl_httpreceiver;

CREATE USER kl_snreceiver WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  PASSWORD 'KLSnR3c3iv3r';

GRANT kl_readers TO kl_snreceiver;

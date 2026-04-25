-- ============================================================================
-- Generated from db_ddl_from_dump.sql for Git management.
-- Do not commit actual dump/data files. Review before executing.
-- ============================================================================

-- Run as SYSTEM or SYSDBA before creating/importing schemas.
-- Adjust DATAFILE paths and sizes if your Oracle datafile directory differs.

CREATE TABLESPACE CELONISTBS
DATAFILE '/u01/app/oracle/oradata/orcl/CELONISTBS01.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 50M
MAXSIZE UNLIMITED;

CREATE TABLESPACE RBWEGTBS
DATAFILE '/u01/app/oracle/oradata/orcl/RBWEGTBS01.dbf'
SIZE 500M
AUTOEXTEND ON
NEXT 100M
MAXSIZE UNLIMITED;

CREATE TABLESPACE TENNISDBTBS
DATAFILE '/u01/app/oracle/oradata/orcl/TENNISDBTBS01.dbf'
SIZE 2G
AUTOEXTEND ON
NEXT 200M
MAXSIZE UNLIMITED;

CREATE TABLESPACE TWITTERTOOLTBS
DATAFILE '/u01/app/oracle/oradata/orcl/TWITTERTOOLTBS01.dbf'
SIZE 100M
AUTOEXTEND ON
NEXT 50M
MAXSIZE UNLIMITED;

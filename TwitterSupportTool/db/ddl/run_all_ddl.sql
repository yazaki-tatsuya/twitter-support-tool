-- ============================================================================
-- Generated from db_ddl_from_dump.sql for Git management.
-- Do not commit actual dump/data files. Review before executing.
-- ============================================================================

-- Run from SQL*Plus while connected as SYSTEM or a sufficiently privileged user.
-- Example:
--   sqlplus system@orcl
--   SQL> @db/ddl/run_all_ddl.sql

WHENEVER SQLERROR EXIT SQL.SQLCODE

@000_create_tablespaces.sql
@001_create_users.sql
@002_grants_roles.sql
@010_sequences.sql
@020_tables.sql
@030_indexes.sql
@040_constraints.sql
@050_views.sql
@060_procedures.sql

-- Statistics are intentionally not executed by default.
-- @900_optional_statistics_from_dump.sql

PROMPT DDL execution completed.

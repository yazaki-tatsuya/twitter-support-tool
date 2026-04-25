-- ============================================================================
-- CELONISUSR schema DDL extracted from db_ddl_from_dump.sql
-- Password hashes were sanitized in user-creation DDL files.
-- This file is for source control/reference. Prefer db/ddl/run_all_ddl.sql for full rebuild.
-- ============================================================================

-- CONNECT CELONISUSR

BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRENT_SCHEMA'), export_db_name=>'ORCL', inst_scn=>'120348706');
COMMIT; 
END; 
/

-- CONNECT CELONISUSR
BEGIN 
NULL;
END;
/

 
BEGIN 
NULL;
END;
/

 
-- new object type path: SCHEMA_EXPORT/TABLE/CONSTRAINT/CONSTRAINT

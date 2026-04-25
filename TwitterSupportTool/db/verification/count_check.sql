-- ============================================================================
-- Count check for migrated schemas
-- ============================================================================
SET SERVEROUTPUT ON SIZE UNLIMITED
SET FEEDBACK OFF

DECLARE
  v_count NUMBER;
BEGIN
  DBMS_OUTPUT.PUT_LINE('OWNER,TABLE_NAME,ROW_COUNT');
  FOR r IN (
    SELECT owner, table_name
    FROM dba_tables
    WHERE owner IN ('CELONISUSR', 'RBWEGUSR', 'TENNISDBUSR', 'TWITTERTOOLUSR')
    ORDER BY owner, table_name
  ) LOOP
    EXECUTE IMMEDIATE 'SELECT COUNT(*) FROM "' || r.owner || '"."' || r.table_name || '"' INTO v_count;
    DBMS_OUTPUT.PUT_LINE(r.owner || ',' || r.table_name || ',' || v_count);
  END LOOP;
END;
/

SET FEEDBACK ON

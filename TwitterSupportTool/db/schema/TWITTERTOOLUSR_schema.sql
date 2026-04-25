-- ============================================================================
-- TWITTERTOOLUSR schema DDL extracted from db_ddl_from_dump.sql
-- Password hashes were sanitized in user-creation DDL files.
-- This file is for source control/reference. Prefer db/ddl/run_all_ddl.sql for full rebuild.
-- ============================================================================

-- CONNECT TWITTERTOOLUSR

BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRENT_SCHEMA'), export_db_name=>'ORCL', inst_scn=>'120348706');
COMMIT; 
END; 
/ 
 
-- new object type path: SCHEMA_EXPORT/SEQUENCE/SEQUENCE

-- CONNECT TWITTERTOOLUSR
BEGIN 
NULL;
END;
/

 
BEGIN 
NULL;
END;
/

 
BEGIN 
NULL;
END;
/

 
BEGIN 
NULL;
END;
/

-- CONNECT TWITTERTOOLUSR
CREATE PROCEDURE TWIPKS_UTILS_ACCESS_COUNTER (var1 IN varchar2, var2 IN OUT varchar2) AS 
var3 NUMBER;
BEGIN
  for o in (select user_id, access_count from user_access_count)    
  loop
    --dbms_output.put_line(o.counter_id ||' '|| o.function_id ||' '|| o.access_count);
    var2:=o.user_id;
    dbms_output.put_line(var1);
    
    --本日分の結果をUSER_ACCESS_COUNT_HISTORYに格納（動作確認済）
    INSERT INTO USER_ACCESS_COUNT_HISTORY (USER_ID,ACCESS_COUNT,ACCESS_DATE)
    VALUES (var2,o.access_count,SYSDATE);
    
    --メインのカウンタ(ACCESS_COUNTER)の数値をリセット
    UPDATE USER_ACCESS_COUNT SET ACCESS_COUNT=0 WHERE USER_ID = var2;
        
  end loop;
END TWIPKS_UTILS_ACCESS_COUNTER;
/
 
-- new object type path: SCHEMA_EXPORT/PROCEDURE/ALTER_PROCEDURE

-- CONNECT TWITTERTOOLUSR

ALTER PROCEDURE "TWITTERTOOLUSR"."TWIPKS_UTILS_ACCESS_COUNTER" 
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED
    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'

 REUSE SETTINGS TIMESTAMP '2021-02-27 19:30:41'
/
 
-- new object type path: SCHEMA_EXPORT/VIEW/VIEW

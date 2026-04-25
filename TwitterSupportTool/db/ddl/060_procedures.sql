-- ============================================================================
-- Generated from db_ddl_from_dump.sql for Git management.
-- Do not commit actual dump/data files. Review before executing.
-- ============================================================================

-- new object type path: SCHEMA_EXPORT/PROCEDURE/PROCEDURE
-- CONNECT RBWEGUSR
CREATE PROCEDURE FILE_EDIT_TEST
IS
  read utl_file.file_type;
  write utl_file.file_type;
  buf varchar2(1022);
  vDirname  VARCHAR2(250);
  vDirname_out  VARCHAR2(250);
BEGIN
  --Open file in 'Write Mode'
  vDirname := 'RBWEG_0001';
  read := utl_file.fopen(vDirname,'test.txt','r');
  write := utl_file.fopen(vDirname,'test_out.txt','w');
  loop
    begin
      -- read the file
      utl_file.get_line(read,buf);
      dbms_output.put_line('data_A: '||buf);
      buf := buf || '_3';
      dbms_output.put_line('data_B: '||buf);
      utl_file.put_line(write,buf);
    exception
      -- end the loop when we come to the end of file
      when no_data_found then
      exit;
    end;
  end loop;    
  -- file close
  utl_file.fclose(read);
  --utl_file.fclose(write);
EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line('ER-0000 : Other Exception');
END FILE_EDIT_TEST;

 
/
 
CREATE PROCEDURE FILE_READ_TEST
IS
  no NUMBER :=10;
  read utl_file.file_type;
  buf varchar2(1022);
  vDirname	VARCHAR2(250);
BEGIN
  no := no + 100;
  DBMS_OUTPUT.PUT_LINE(no);
  --Open file in 'Read Mode'
  vDirname := 'RBWEG_0001';
  read := utl_file.fopen(vDirname,'test.txt','r');
  loop
    begin
      -- read the file
      utl_file.get_line(read,buf);
      dbms_output.put_line('data: '||buf);
    exception
      -- end the loop when we come to the end of file
      when no_data_found then
      exit;
    end;
  end loop;    
  -- file close
  utl_file.fclose(read);    
EXCEPTION
  WHEN OTHERS THEN
    dbms_output.put_line('ER-0000 : Other Exception');
END FILE_READ_TEST;

 
/
 
-- CONNECT TENNISDBUSR
CREATE PROCEDURE TENPKS_UTILS_ACCESS_COUNTER (var1 IN varchar2, var2 IN OUT varchar2) AS 
var3 NUMBER;
BEGIN
  for o in (select counter_id, function_id, access_count from access_counter)    
  loop
    --dbms_output.put_line(o.counter_id ||' '|| o.function_id ||' '|| o.access_count);
    var2:=o.function_id;
    dbms_output.put_line(var1);
        
    --ACCESS_COUNTERテーブルにレコードをINSERT（正常動作確認済み）
    --INSERT INTO ACCESS_COUNTER (COUNTER_ID,FUNCTION_ID,ACCESS_COUNT) VALUES (ACCESS_SEQ.NEXTVAL,'TEMP123',0);
    
    --本日分の結果をACCESS_COUNTER_HISTORYに格納（動作確認済）
    INSERT INTO ACCESS_COUNTER_HISTORY (COUNTER_ID,FUNCTION_ID,ACCESS_COUNT,ACCESS_DATE) 
    --VALUES (ACCESS_HISTORY_SEQ.NEXTVAL,var2,200,SYSDATE-1);
    VALUES (ACCESS_HISTORY_SEQ.NEXTVAL,var2,o.access_count,SYSDATE);
    
    --メインのカウンタ(ACCESS_COUNTER)の数値をリセット
    UPDATE ACCESS_COUNTER SET ACCESS_COUNT=0 WHERE FUNCTION_ID = var2;
        
  end loop;
END TENPKS_UTILS_ACCESS_COUNTER;
/
 
CREATE PROCEDURE TENPKS_UTILS_ACCESS_COUNTER_T (var1 IN varchar2, var2 IN OUT varchar2) AS
BEGIN
  --access_counterテーブルのレコード数だけLOOPする
  FOR o IN (select counter_id, function_id, access_count from access_counter)    
  LOOP
    --変数var2に次のINSERT文の条件で使う値を代入
    var2:=o.function_id;
 
    --access_counterテーブルのレコードをACCESS_COUNTER_HISTORYにINSERT
    INSERT INTO ACCESS_COUNTER_HISTORY_TEST (COUNTER_ID,FUNCTION_ID,ACCESS_COUNT,ACCESS_DATE) 
    VALUES (ACCESS_HISTORY_SEQ.NEXTVAL,var2,o.access_count,SYSDATE); 
  END LOOP;
END TENPKS_UTILS_ACCESS_COUNTER_T;
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
-- CONNECT RBWEGUSR

ALTER PROCEDURE "RBWEGUSR"."FILE_EDIT_TEST" 
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED
    PLSQL_DEBUG=  TRUE    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'

 REUSE SETTINGS TIMESTAMP '2020-03-29 01:25:41'
/
 

ALTER PROCEDURE "RBWEGUSR"."FILE_READ_TEST" 
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED
    PLSQL_DEBUG=  TRUE    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'

 REUSE SETTINGS TIMESTAMP '2020-03-29 01:25:41'
/
 
-- CONNECT TENNISDBUSR

ALTER PROCEDURE "TENNISDBUSR"."TENPKS_UTILS_ACCESS_COUNTER" 
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED
    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'

 REUSE SETTINGS TIMESTAMP '2020-07-25 09:44:01'
/
 

ALTER PROCEDURE "TENNISDBUSR"."TENPKS_UTILS_ACCESS_COUNTER_T" 
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED
    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'

 REUSE SETTINGS TIMESTAMP '2020-10-12 22:57:38'
/
 
-- CONNECT TWITTERTOOLUSR

ALTER PROCEDURE "TWITTERTOOLUSR"."TWIPKS_UTILS_ACCESS_COUNTER" 
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED
    PLSQL_DEBUG=  FALSE    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'

 REUSE SETTINGS TIMESTAMP '2021-02-27 19:30:41'
/

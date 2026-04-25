-- ============================================================================
-- RBWEGUSR schema DDL extracted from db_ddl_from_dump.sql
-- Password hashes were sanitized in user-creation DDL files.
-- This file is for source control/reference. Prefer db/ddl/run_all_ddl.sql for full rebuild.
-- ============================================================================

-- CONNECT RBWEGUSR

BEGIN 
sys.dbms_logrep_imp.instantiate_schema(schema_name=>SYS_CONTEXT('USERENV','CURRENT_SCHEMA'), export_db_name=>'ORCL', inst_scn=>'120348706');
COMMIT; 
END; 
/

-- CONNECT RBWEGUSR
CREATE INDEX "RBWEGUSR"."IDX_EMP_01" ON "RBWEGUSR"."EMP_TEST2" ("EMPNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "RBWEGTBS" PARALLEL 1 ;

  ALTER INDEX "RBWEGUSR"."IDX_EMP_01" NOPARALLEL;
 
CREATE UNIQUE INDEX "RBWEGUSR"."PK_PREFECTURE_MASTER_0" ON "RBWEGUSR"."PREFECTURE_MASTER" ("PREFECTURE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "RBWEGTBS" PARALLEL 1 ;

  ALTER INDEX "RBWEGUSR"."PK_PREFECTURE_MASTER_0" NOPARALLEL;
 
CREATE UNIQUE INDEX "RBWEGUSR"."PK_ACCESS_COUNTER_0" ON "RBWEGUSR"."ACCESS_COUNTER" ("COUNTER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "RBWEGTBS" PARALLEL 1 ;

  ALTER INDEX "RBWEGUSR"."PK_ACCESS_COUNTER_0" NOPARALLEL;
 
CREATE UNIQUE INDEX "RBWEGUSR"."PK_ACCESS_COUNTER2_0" ON "RBWEGUSR"."ACCESS_COUNTER2" ("COUNTER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "RBWEGTBS" PARALLEL 1 ;

  ALTER INDEX "RBWEGUSR"."PK_ACCESS_COUNTER2_0" NOPARALLEL;
 
CREATE UNIQUE INDEX "RBWEGUSR"."PK_0" ON "RBWEGUSR"."GROUP_MASTER" ("GROUP_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "RBWEGTBS" PARALLEL 1 ;

  ALTER INDEX "RBWEGUSR"."PK_0" NOPARALLEL;

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

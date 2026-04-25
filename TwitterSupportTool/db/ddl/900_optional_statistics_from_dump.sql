-- ============================================================================
-- Generated from db_ddl_from_dump.sql for Git management.
-- Do not commit actual dump/data files. Review before executing.
-- ============================================================================

-- new object type path: SCHEMA_EXPORT/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'ACCOUNT_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','ACCOUNT',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,24,1,24,1,1,1,0,24,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'TXN_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','ACC_TRANSACTION',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,21,1,21,1,1,1,0,21,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'BRANCH_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','BRANCH',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,4,1,4,1,1,1,0,4,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'CUST_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','BUSINESS',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,4,1,4,1,1,1,0,4,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'CUST_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','CUSTOMER',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,13,1,13,1,1,1,0,13,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'DEPT_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','DEPARTMENT',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,4,1,4,1,1,1,0,4,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'EMP_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','EMPLOYEE',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,18,1,18,1,1,1,0,18,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'CUST_ID';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','INDIVIDUAL',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,9,1,9,1,1,1,0,9,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  c(1) := 'EMPNO';

  DBMS_METADATA.GET_STAT_INDNAME('RBWEGUSR','EMP_IDX',c,1,i_o,i_n); 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,138667,289,138667,1,1,2423,1,138667,NV,NV,TO_DATE('2020-03-29 06:00:12',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'IDX_EMP_01'; 
  i_o := 'RBWEGUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,138667,308,138667,1,1,2416,1,138667,NV,NV,TO_DATE('2020-03-29 06:00:12',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_PREFECTURE_MASTER_0'; 
  i_o := 'RBWEGUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,47,1,47,1,1,1,0,47,NV,NV,TO_DATE('2020-03-29 06:00:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_ACCESS_COUNTER_0'; 
  i_o := 'RBWEGUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,4,1,4,1,1,1,0,4,NV,NV,TO_DATE('2021-02-27 06:00:07',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_ACCESS_COUNTER2_0'; 
  i_o := 'RBWEGUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,0,0,0,0,0,0,0,0,NV,NV,TO_DATE('2020-01-30 22:00:05',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_0'; 
  i_o := 'RBWEGUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,39,1,39,1,1,9,0,39,NV,NV,TO_DATE('2020-04-05 06:00:06',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_ACCESS_COUNTER_0'; 
  i_o := 'TENNISDBUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,8,1,8,1,1,4,0,8,NV,NV,TO_DATE('2026-04-25 10:02:50',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_ACCESS_COUNTER_ARCHIVE_0'; 
  i_o := 'TENNISDBUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,15721,95,15721,1,1,7634,1,15721,NV,NV,TO_DATE('2026-03-29 06:00:09',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_ACCESS_COUNTER_ARCHIVE_1'; 
  i_o := 'TENNISDBUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,8,1,8,1,1,1,0,8,NV,NV,TO_DATE('2020-10-13 22:00:07',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_0'; 
  i_o := 'TWITTERTOOLUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,13,1,13,1,1,2,0,13,NV,NV,TO_DATE('2021-03-21 18:10:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_USER_ROLE'; 
  i_o := 'TWITTERTOOLUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,26,1,26,1,1,2,0,26,NV,NV,TO_DATE('2021-03-21 18:10:10',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_USER_ACCESS_COUNT'; 
  i_o := 'TWITTERTOOLUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,12,1,12,1,1,10,0,12,NV,NV,TO_DATE('2026-04-25 06:00:08',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_USER_ACCESS_COUNT_HISTORY'; 
  i_o := 'TWITTERTOOLUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,8098,42,8098,1,1,4827,1,8098,NV,NV,TO_DATE('2026-03-29 06:00:09',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_0'; 
  i_o := 'CELONISUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,10,1,10,1,1,2,0,10,NV,NV,TO_DATE('2022-02-19 22:03:56',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/
 
DECLARE I_N VARCHAR2(60); 
  I_O VARCHAR2(60); 
  NV VARCHAR2(1); 
  c DBMS_METADATA.T_VAR_COLL; 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
 stmt varchar2(300) := ' INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,cl1) VALUES (''I'',6,:1,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,NULL,:14,:15,NULL,:16,:17)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  i_n := 'PK_ORDER_TRANSACTION'; 
  i_o := 'CELONISUSR'; 
  EXECUTE IMMEDIATE stmt USING 2,I_N,NV,NV,I_O,0,0,0,0,0,0,0,0,NV,NV,TO_DATE('2022-01-18 22:00:06',df),NV;

  DBMS_STATS.IMPORT_INDEX_STATS('"' || i_o || '"','"' || i_n || '"',NULL,'"IMPDP_STATS"',NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/


-- new object type path: SCHEMA_EXPORT/TABLE/STATISTICS/TABLE_STATISTICS
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACCOUNT'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               24,4,48,24,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'ACCOUNT_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               24,.0416666666666667,24,24,0,1,24,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C119',nv,2,nv;
  c := 'AVAIL_BALANCE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               22,.0454545454545455,22,24,0,0,50000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'80','C306',nv,2,nv;
  c := 'CLOSE_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,24,0,0,1,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),nv,nv,nv,2,nv;
  c := 'LAST_ACTIVITY_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               20,.05,20,24,0,2453017,2453376,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'7868010C010101','78690105010101',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACCOUNT'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'OPEN_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               18,.0555555555555556,18,24,0,2451559,2453368,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'7864010F010101','78680C1C010101',nv,2,nv;
  c := 'PENDING_BALANCE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               23,.0434782608695652,23,24,0,0,50000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'80','C306',nv,2,nv;
  c := 'STATUS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,24,0,3.38864895110559E+35,3.38864895110559E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'414354495645','414354495645',nv,2,nv;
  c := 'CUST_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,3,1,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,5,2,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,7,3,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,10,4,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,11,5,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,13,6,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,14,7,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,16,8,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,19,9,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,21,10,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,22,11,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,23,12,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0208333333333333,13,24,0,1,13,3,1,24,13,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  c := 'OPEN_BRANCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,4,3,1,8,1,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,4,3,1,15,2,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,4,3,1,18,3,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,4,3,1,24,4,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACCOUNT'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'OPEN_EMP_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,16,3,1,8,1,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C111',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,16,3,1,15,10,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C111',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,16,3,1,18,13,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C111',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0208333333333333,4,24,0,1,16,3,1,24,16,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C111',nv,2,nv;
  c := 'PRODUCT_CD'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               6,.166666666666667,6,24,0,3.44422173417098E+35,4.32305299632583E+35,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'425553','53424C',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"ACCOUNT"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACC_TRANSACTION'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               21,4,35,21,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'TXN_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               21,.0476190476190476,21,21,0,25,45,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C11A','C12E',nv,2,nv;
  c := 'AMOUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,21,0,100,100,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C202','C202',nv,2,nv;
  c := 'FUNDS_AVAIL_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               15,.0666666666666667,15,21,0,2451559,2453368,11,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'7864010F010101','78680C1C010101',nv,2,nv;
  c := 'TXN_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               15,.0666666666666667,15,21,0,2451559,2453368,11,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'7864010F010101','78680C1C010101',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACC_TRANSACTION'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TXN_TYPE_CD'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,21,0,3.49269748540533E+35,3.49269748540533E+35,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'434454','434454',nv,2,nv;
  c := 'ACCOUNT_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               21,.0476190476190476,21,21,0,1,23,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C118',nv,2,nv;
  c := 'EXECUTION_BRANCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,21,0,0,0,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),nv,nv,nv,2,nv;
  c := 'TELLER_EMP_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,21,0,0,0,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"ACC_TRANSACTION"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'BRANCH'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               4,4,49,4,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'BRANCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,1,4,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  c := 'ADDRESS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,2.55440875641777E+35,2.71017528529187E+35,17,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'31323520507265736964656E7469616C20576179','343232204D61706C652053742E',nv,2,nv;
  c := 'CITY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,4.22957440585618E+35,4.53988974866545E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'5175696E6379','576F6275726E',nv,2,nv;
  c := 'NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,3.75901613401904E+35,4.53988974866546E+35,14,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'486561647175617274657273','576F6275726E204272616E6368',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'BRANCH'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'STATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,4,0,4.01125214731419E+35,4.06459488457179E+35,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'4D41','4E48',nv,2,nv;
  c := 'ZIP_CODE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,2.50228538971869E+35,2.50268472141843E+35,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'3031383031','3033303739',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"BRANCH"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'BUSINESS'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               4,4,42,4,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'INCORP_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,2449839,2452456,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'77C30501010101','7866061E010101',nv,2,nv;
  c := 'NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,3.38822812251858E+35,4.33342586132521E+35,21,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'41414120496E737572616E636520496E632E','5375706572696F72204175746F20426F6479',nv,2,nv;
  c := 'STATE_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,2.55440247662553E+35,2.71077986399064E+35,11,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'31322D3334352D363738','34352D3637382D393031',nv,2,nv;
  c := 'CUST_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,10,13,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C10B','C10E',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"BUSINESS"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'CUSTOMER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               13,4,50,13,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'CUST_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,13,0,1,13,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10E',nv,2,nv;
  c := 'ADDRESS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,13,0,2.55439222406625E+35,2.86716668159551E+35,16,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'313220426C61796C6F636B204C6E','373839204D61696E205374',nv,2,nv;
  c := 'CITY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7,.142857142857143,7,13,0,3.97077482075725E+35,4.53988974866545E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'4C796E6E6669656C64','576F6275726E',nv,2,nv;
  c := 'CUST_TYPE_CD'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,13,0,3.42691592663299E+35,3.79037670673042E+35,2,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'42','49',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'CUSTOMER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'FED_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,13,0,2.50288515000610E+35,2.97121548285161E+35,12,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'30342D31313131313131','3939392D39392D39393939',nv,2,nv;
  c := 'POSTAL_CODE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7,.142857142857143,7,13,0,2.50228538971869E+35,2.50268472141843E+35,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'3031383031','3033303739',nv,2,nv;
  c := 'STATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,13,0,4.01125214731419E+35,4.06459488457179E+35,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'4D41','4E48',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"CUSTOMER"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'DEPARTMENT'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               4,4,12,4,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'DEPT_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,1,4,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  c := 'NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,3.39536205264249E+35,4.12471119143381E+35,9,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'41646D696E697374726174696F6E','4F7065726174696F6E73',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"DEPARTMENT"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMPLOYEE'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               18,4,41,18,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'EMP_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               18,.0555555555555556,18,18,0,1,18,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C113',nv,2,nv;
  c := 'END_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,18,0,0,1,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),nv,nv,nv,2,nv;
  c := 'FIRST_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               16,.0625,16,18,0,3.44749338686560E+35,4.38271134893419E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'42657468','54686F6D6173',nv,2,nv;
  c := 'LAST_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               18,.0555555555555556,18,18,0,3.44668051642915E+35,4.69444404328931E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'4261726B6572','5A6965676C6572',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMPLOYEE'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'START_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               18,.0555555555555556,18,18,0,2451584,2453264,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'78640209010101','7868090F010101',nv,2,nv;
  c := 'TITLE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7,.142857142857143,7,18,0,3.75901613303825E+35,4.48675057727519E+35,10,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'486561642054656C6C6572','5669636520507265736964656E74',nv,2,nv;
  c := 'ASSIGNED_BRANCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0277777777777778,4,18,0,1,4,3,1,9,1,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0277777777777778,4,18,0,1,4,3,1,12,2,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0277777777777778,4,18,0,1,4,3,1,15,3,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.0277777777777778,4,18,0,1,4,3,1,18,4,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C105',nv,2,nv;
  c := 'DEPT_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.0277777777777778,3,18,0,1,3,3,1,14,1,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C104',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.0277777777777778,3,18,0,1,3,3,1,15,2,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C104',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.0277777777777778,3,18,0,1,3,3,1,18,3,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C104',nv,2,nv;
  c := 'SUPERIOR_EMP_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,18,0,0,0,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"EMPLOYEE"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'INDIVIDUAL'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               9,4,25,9,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'BIRTH_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               9,.111111111111111,9,9,0,2432264,2443326,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'77930313010101','77B10701010101',nv,2,nv;
  c := 'FIRST_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,9,0,3.50000980664711E+35,4.33342822573735E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'436861726C6573','537573616E',nv,2,nv;
  c := 'LAST_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               9,.111111111111111,9,9,0,3.44889811269254E+35,4.64375071738490E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'426C616B65','596F756E67',nv,2,nv;
  c := 'CUST_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               9,.111111111111111,9,9,0,1,9,3,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'C102','C10A',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"INDIVIDUAL"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'TEST'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               0,0,0,0,0,NULL,NULL,NULL,
               TO_DATE('2019-04-03 22:00:08',df));
  c := 'ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2019-04-03 22:00:08',df),nv,nv,nv,2,nv;
  c := 'NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2019-04-03 22:00:08',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"TEST"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'TEST2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               0,0,0,0,0,NULL,NULL,NULL,
               TO_DATE('2019-04-03 22:00:09',df));
  c := 'ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2019-04-03 22:00:09',df),nv,nv,nv,2,nv;
  c := 'NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2019-04-03 22:00:09',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"TEST2"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'DEPT'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               30,4,49,30,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:06',df));
  c := 'DEPTNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,30,0,10,290,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:06',df),'C10B','C2035B',nv,2,nv;
  c := 'DNAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,30,0,3.39515132438416E+35,4.38472847019465E+35,14,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:06',df),'4163636F756E74696E67','54726164696E67',nv,2,nv;
  c := 'LOC'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,30,0,3.39697750254222E+35,4.53706526137180E+35,32,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:06',df),'416C6465722C2057617368696E67746F6E20393833323820555341','57617574617567612042656163682C2057617368696E67746F6E203938333636',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"DEPT"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_BKUP'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               208000,1525,48,208000,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:12',df));
  c := 'EMPNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               208000,4.80769230769231E-06,208000,208000,0,1,208000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C102','C31551',nv,2,nv;
  c := 'ENAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2019,.000495294700346706,2019,208000,0,3.39475756032663E+35,4.69566654927487E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'4161726F6E','5A6F6C6C6965',nv,2,nv;
  c := 'JOB'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               6,.166666666666667,6,208000,0,3.39046251458506E+35,4.32285038678150E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'414C45534D414E','53414C45534D414E',nv,2,nv;
  c := 'MGR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               206064,4.85286124699123E-06,206064,208000,0,31,8999990,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C120','C40964645B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_BKUP'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'HIREDATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17870,.0000559597090095132,17870,208000,0,2440678,2458665,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'77AA0401010101','7877061E010101',nv,2,nv;
  c := 'SAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               153328,6.52196598142544E-06,153328,208000,0,180001,499999,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C3130102','C3326464',nv,2,nv;
  c := 'COMM'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               155008,6.45127993393889E-06,155008,208000,0,180000,499998,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C313','C3326463',nv,2,nv;
  c := 'DEPTNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,208000,0,10,290,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C10B','C2035B',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"EMP_BKUP"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               138667,1019,48,138667,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:11',df));
  c := 'EMPNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               138667,7.21152112615114E-06,138667,138667,0,1,208000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'C102','C31551',nv,2,nv;
  c := 'ENAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1882,.00053134962805526,1882,138667,0,3.39475756032663E+35,4.69566654927487E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'4161726F6E','5A6F6C6C6965',nv,2,nv;
  c := 'JOB'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               6,.166666666666667,6,138667,0,3.39046251458506E+35,4.32285038678150E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'414C45534D414E','53414C45534D414E',nv,2,nv;
  c := 'MGR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               138080,7.24217844727694E-06,138080,138667,0,65,8999990,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'C142','C40964645B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'HIREDATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17864,.0000559785042543663,17864,138667,0,2440678,2458665,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'77AA0401010101','7877061E010101',nv,2,nv;
  c := 'SAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113376,8.82020886254587E-06,113376,138667,0,180001,499997,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'C3130102','C3326462',nv,2,nv;
  c := 'COMM'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113968,8.77439281201741E-06,113968,138667,0,180000,499997,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'C313','C3326462',nv,2,nv;
  c := 'DEPTNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,138667,0,10,290,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:11',df),'C10B','C2035B',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"EMP"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_IDX'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               138667,1019,48,138667,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:12',df));
  c := 'EMPNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               138667,7.21152112615114E-06,138667,138667,0,1,208000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C102','C31551',nv,2,nv;
  c := 'ENAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1882,.00053134962805526,1882,138667,0,3.39475756032663E+35,4.69566654927487E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'4161726F6E','5A6F6C6C6965',nv,2,nv;
  c := 'JOB'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               6,.166666666666667,6,138667,0,3.39046251458506E+35,4.32285038678150E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'414C45534D414E','53414C45534D414E',nv,2,nv;
  c := 'MGR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               137840,7.25478816018572E-06,137840,138667,0,143,8999990,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C2022C','C40964645B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_IDX'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'HIREDATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17866,.000055972237770066,17866,138667,0,2440678,2458665,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'77AA0401010101','7877061E010101',nv,2,nv;
  c := 'SAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113424,8.81647623078008E-06,113424,138667,0,180001,499997,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C3130102','C3326462',nv,2,nv;
  c := 'COMM'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113720,8.79352796341892E-06,113720,138667,0,180000,499997,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C313','C3326462',nv,2,nv;
  c := 'DEPTNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,138667,0,10,290,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C10B','C2035B',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"EMP_IDX"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_IDX_BKUP'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               200000,1468,48,200000,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:12',df));
  c := 'EMPNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               200000,.000005,200000,200000,0,1,200000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C102','C315',nv,2,nv;
  c := 'ENAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2018,.000495540138751239,2018,200000,0,3.39475756032663E+35,4.69566654927487E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'4161726F6E','5A6F6C6C6965',nv,2,nv;
  c := 'JOB'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               6,.166666666666667,6,200000,0,3.39046251458506E+35,4.32285038678150E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'414C45534D414E','53414C45534D414E',nv,2,nv;
  c := 'MGR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               198304,5.04276262707762E-06,198304,200000,0,31,8999990,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C120','C40964645B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_IDX_BKUP'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'HIREDATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17870,.0000559597090095132,17870,200000,0,2440678,2458665,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'77AA0401010101','7877061E010101',nv,2,nv;
  c := 'SAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               149008,6.71104907119081E-06,149008,200000,0,180001,499999,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C3130102','C3326464',nv,2,nv;
  c := 'COMM'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               150544,6.64257625677543E-06,150544,200000,0,180000,499998,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C313','C3326463',nv,2,nv;
  c := 'DEPTNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,200000,0,10,290,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C10B','C2035B',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"EMP_IDX_BKUP"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_TEST2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               138667,1019,48,138667,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:12',df));
  c := 'EMPNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               138667,7.21152112615114E-06,138667,138667,0,1,208000,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C102','C31551',nv,2,nv;
  c := 'ENAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1882,.00053134962805526,1882,138667,0,3.39475756032663E+35,4.69566654927487E+35,7,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'4161726F6E','5A6F6C6C6965',nv,2,nv;
  c := 'JOB'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               6,.166666666666667,6,138667,0,3.39046251458506E+35,4.32285038678150E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'414C45534D414E','53414C45534D414E',nv,2,nv;
  c := 'MGR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               138080,7.24217844727694E-06,138080,138667,0,65,8999990,6,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C142','C40964645B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'EMP_TEST2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'HIREDATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17864,.0000559785042543663,17864,138667,0,2440678,2458665,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'77AA0401010101','7877061E010101',nv,2,nv;
  c := 'SAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113376,8.82020886254587E-06,113376,138667,0,180001,499997,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C3130102','C3326462',nv,2,nv;
  c := 'COMM'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113968,8.77439281201741E-06,113968,138667,0,180000,499997,5,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C313','C3326462',nv,2,nv;
  c := 'DEPTNO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,138667,0,10,290,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:12',df),'C10B','C2035B',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"EMP_TEST2"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'PREFECTURE_MASTER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               47,4,11,47,0,NULL,NULL,NULL,
               TO_DATE('2020-03-29 06:00:10',df));
  c := 'PREFECTURE_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               47,.0212765957446809,47,47,0,2.50207687050610E+35,2.50289292058000E+35,4,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'303031','303437',nv,2,nv;
  c := 'PREFECTURE_NAME_ENG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               47,.0212765957446809,47,47,0,3.39636824714614E+35,4.64090480164356E+35,8,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),'4169636869','59616D616E61736869',nv,2,nv;
  c := 'PREFECTURE_NAME_JPN'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,47,0,0,0,0,nv,nv,0,
               TO_DATE('2020-03-29 06:00:10',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"PREFECTURE_MASTER"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACCESS_COUNTER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               4,4,16,4,0,NULL,NULL,NULL,
               TO_DATE('2021-02-27 06:00:07',df));
  c := 'COUNTER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,1,21,3,0,nv,nv,0,
               TO_DATE('2021-02-27 06:00:07',df),'C102','C116',nv,2,nv;
  c := 'FUNCTION_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,3.59713864680598E+35,3.59715132331198E+35,9,0,nv,nv,0,
               TO_DATE('2021-02-27 06:00:07',df),'4547434752504D4E','4547534752504D4E',nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4,0,22,270,4,0,nv,nv,0,
               TO_DATE('2021-02-27 06:00:07',df),'C117','C20347',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"ACCESS_COUNTER"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'ACCESS_COUNTER2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               0,0,0,0,0,NULL,NULL,NULL,
               TO_DATE('2020-01-30 22:00:05',df));
  c := 'COUNTER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2020-01-30 22:00:05',df),nv,nv,nv,2,nv;
  c := 'FUNCTION_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2020-01-30 22:00:05',df),nv,nv,nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2020-01-30 22:00:05',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"ACCESS_COUNTER2"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'GROUP_MASTER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               39,8,48,39,0,NULL,NULL,NULL,
               TO_DATE('2020-04-05 06:00:06',df));
  c := 'GROUP_NUMBER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               39,.0256410256410256,39,39,0,2.54422546068207E+35,2.86631012518805E+35,3,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'31','3734',nv,2,nv;
  c := 'GROUP_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17,.0588235294117647,17,39,0,4.64091510126878E+35,1.24484793774556E+36,15,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'59617A616B69','EFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBFBDEFBF',nv,2,nv;
  c := 'FOUND_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               14,.0714285714285714,14,36,3,2458852,2458945,8,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'78780103010101','78780405010101',nv,2,nv;
  c := 'MEMBER_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,37,2,-1,1000000,3,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'3E6466','C402',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'GROUP_MASTER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'ADDRESS1'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,39,0,2.50207697008685E+35,2.50288826647099E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'303031202D20486F6B6B6169646F','303431202D2053616761',nv,2,nv;
  c := 'ADDRESS2'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,39,0,2.33653358634067E+35,4.93268201560809E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'2D','5F',nv,2,nv;
  c := 'ADDRESS3'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,39,0,2.33653358634067E+35,4.93268201560809E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'2D','5F',nv,2,nv;
  c := 'ADDRESS4'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,39,0,2.33653358634067E+35,4.93268201560809E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-05 06:00:06',df),'2D','5F',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"GROUP_MASTER"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'TOURNAMENTS_1877_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               4114,214,338,4114,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:09',df));
  c := 'TOURNEY_YEAR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               141,.00709219858156028,141,4114,0,1877,2017,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C2134E','C21512',nv,2,nv;
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               106,.00943396226415094,106,4114,0,1,106,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C20207',nv,2,nv;
  c := 'TOURNEY_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               516,.00193798449612403,516,4114,0,2.04835642260154E+35,5.98032582987724E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'27732D486572746F67656E626F736368','732D486572746F67656E626F736368',nv,2,nv;
  c := 'TOURNEY_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               378,.00264550264550265,378,4081,33,73,9036,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C14A','C25B25',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'TOURNAMENTS_1877_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               277,.0036101083032491,277,4081,33,5.05668473764681E+35,6.35842323291504E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61636170756C636F','7A7572696368',nv,2,nv;
  c := 'TOURNEY_LOCATION'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               414,.00241545893719807,414,4073,41,3.39514974291566E+35,5.98032582987724E+35,12,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'41636170756C636F','732D486572746F67656E626F7363682C204E65746865726C616E6473',nv,2,nv;
  c := 'TOURNEY_DATES'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2549,.000392310710082385,2549,4113,1,2.55562735632463E+35,2.60592297845198E+35,11,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'313837372E30372E3039','323031372E31312E3132',nv,2,nv;
  c := 'TOURNEY_MONTH'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,4113,1,1,12,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C10D',nv,2,nv;
  c := 'TOURNEY_DAY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               31,.032258064516129,31,4113,1,1,31,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C120',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'TOURNAMENTS_1877_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_SINGLES_DRAW'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               22,.0454545454545455,22,4114,0,0,256,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20339',nv,2,nv;
  c := 'TOURNEY_DOUBLES_DRAW'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               22,.0454545454545455,22,4114,0,0,256,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20339',nv,2,nv;
  c := 'TOURNEY_CONDITIONS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,4113,1,3.81276693033261E+35,4.12573715297948E+35,8,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'496E646F6F72','4F7574646F6F72',nv,2,nv;
  c := 'TOURNEY_SURFACE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,4113,1,3.49860350048885E+35,3.75821830505089E+35,6,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'436172706574','48617264',nv,2,nv;
  c := 'TOURNEY_FIN_COMMIT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               677,.00147710487444609,677,2379,1735,1.87920025930520E+35,1.17610944792160E+36,7,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'24312C3030302C303030','E282AC3839312C303030',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'TOURNAMENTS_1877_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4081,.000245037980887037,4081,4081,33,2.46095205504274E+35,2.46095205504274E+35,46,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F73636F7265732F617263686976652F61636170756C636F2F3830372F','2F656E2F73636F7265732F617263686976652F7A75726963682F3831302F3139',nv,2,nv;
  c := 'SINGLES_WIN_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               624,.0016025641025641,624,4059,55,3.39475756032815E+35,4.69363830214946E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4161726F6E204B7269636B737465696E','5A656C6A6B6F204672616E756C6F766963',nv,2,nv;
  c := 'SINGLES_WIN_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               624,.0016025641025641,624,4059,55,2.46095205500689E+35,2.46095205500689E+35,40,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F706C61796572732F6161726F6E2D6B7269636B737465696E2F6B3032','2F656E2F706C61796572732F7A656C6A6B6F2D6672616E756C6F7669632F6630',nv,2,nv;
  c := 'SINGLES_WIN_PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               624,.0016025641025641,624,4059,55,5.05629255505992E+35,6.35517329688060E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'6161726F6E2D6B7269636B737465696E','7A656C6A6B6F2D6672616E756C6F766963',nv,2,nv;
  c := 'SINGLES_WIN_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               624,.0016025641025641,624,4059,55,5.04630170602845E+35,6.34498835126354E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61303036','7A333535',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'TOURNAMENTS_1877_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'DOUBLES_WIN_1_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               659,.00151745068285281,659,3599,515,3.39597689420464E+35,4.69566657393738E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4167757374696E2043616C6C657269','5A6F6C74616E204B75686172737A6B79',nv,2,nv;
  c := 'DOUBLES_WIN_1_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               659,.00151745068285281,659,3599,515,2.46095205500689E+35,2.46095205500689E+35,36,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F706C61796572732F6167757374696E2D63616C6C6572692F63343738','2F656E2F706C61796572732F7A6F6C74616E2D6B75686172737A6B792F6B3033',nv,2,nv;
  c := 'DOUBLES_WIN_1_PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               659,.00151745068285281,659,3599,515,5.05751188893578E+35,6.35720156866853E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'6167757374696E2D63616C6C657269','7A6F6C74616E2D6B75686172737A6B79',nv,2,nv;
  c := 'DOUBLES_WIN_1_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               659,.00151745068285281,659,3599,515,5.04630169364905E+35,6.34458350463764E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61303032','7A313638',nv,2,nv;
  c := 'DOUBLES_WIN_2_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               638,.00156739811912226,638,3599,515,3.39535889185654E+35,4.69566657393738E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4164696C205368616D617364696E','5A6F6C74616E204B75686172737A6B79',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'TOURNAMENTS_1877_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'DOUBLES_WIN_2_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               638,.00156739811912226,638,3599,515,2.46095205500689E+35,2.46095205500689E+35,36,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F706C61796572732F6164696C2D7368616D617364696E2F736239322F','2F656E2F706C61796572732F7A6F6C74616E2D6B75686172737A6B792F6B3033',nv,2,nv;
  c := 'DOUBLES_WIN_2_PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               638,.00156739811912226,638,3599,515,5.05689388674635E+35,6.35720156866853E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'6164696C2D7368616D617364696E','7A6F6C74616E2D6B75686172737A6B79',nv,2,nv;
  c := 'DOUBLES_WIN_2_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               638,.00156739811912226,638,3599,515,5.04630327821230E+35,6.34498835126354E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61303232','7A333535',nv,2,nv;
  c := 'TOURNEY_YEAR_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4113,.000243131534159981,4113,4114,0,2.55562735631278E+35,2.60592297844023E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'313837372D353430','323031372D383931',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"TOURNAMENTS_1877_2017"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1877_1967'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               20015,593,198,20015,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:09',df));
  c := 'TOURNEY_YEAR_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               260,.00384615384615385,260,20015,0,2.55562735631278E+35,2.55582938812719E+35,9,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'313837372D353430','313936372D353830',nv,2,nv;
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,20015,0,1,4,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C105',nv,2,nv;
  c := 'TOURNEY_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,20015,0,5.06034984478733E+35,6.20021645504316E+35,11,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'6175737472616C69616E2D6F70656E','77696D626C65646F6E',nv,2,nv;
  c := 'TOURNEY_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               260,.00384615384615385,260,20015,0,2.46095205504274E+35,2.46095205504274E+35,47,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F73636F7265732F617263686976652F6175737472616C69616E2D6F70','2F656E2F73636F7265732F617263686976652F77696D626C65646F6E2F353430',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1877_1967'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_ROUND_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,20015,0,3.65599178354851E+35,4.33017831048734E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'46696E616C73','53656D692D46696E616C73',nv,2,nv;
  c := 'ROUND_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,20015,0,1,8,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C109',nv,2,nv;
  c := 'MATCH_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               198,.00505050505050505,198,20015,0,1,198,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C20263',nv,2,nv;
  c := 'WIN_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2904,.00034435261707989,2904,20015,0,3.38434842491554E+35,4.69566657393738E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'412E20426173696C2D42726F6F6B65','5A6F6C74616E204B61746F6E61',nv,2,nv;
  c := 'WIN_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2907,.000343997248022016,2907,20015,0,5.04630566743657E+35,6.34519037379340E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61303536','7A343432',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1877_1967'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2896,.000345303867403315,2896,20007,8,5.04573298229586E+35,6.35720156866853E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'612D62617373666F7264','7A6F6C74616E2D6B61746F6E61',nv,2,nv;
  c := 'LOSE_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5361,.000186532363365044,5361,20015,0,3.38434842195334E+35,4.69566657393738E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'412E20416C6C656E','5A6F6C74616E204B61746F6E61',nv,2,nv;
  c := 'LOSE_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5378,.000185942729639271,5378,20015,0,5.04630249212037E+35,6.34519037379340E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61303134','7A343432',nv,2,nv;
  c := 'LOSE_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5343,.000187160771102377,5343,19995,20,5.04573222397231E+35,6.35720156866853E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'612D616C6C656E','7A6F6C74616E2D6B61746F6E61',nv,2,nv;
  c := 'WIN_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               16,.0625,16,4098,15917,1,16,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C111',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1877_1967'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               16,.0625,16,1202,18813,1,16,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C111',nv,2,nv;
  c := 'MATCH_SCORE_TIEBREAKS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7028,.000142287990893569,7028,20008,7,2.09460192199431E+35,2.97079006473175E+35,11,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'28572F4F29','3937203937203836',nv,2,nv;
  c := 'WIN_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5,.2,5,20015,0,0,4,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C105',nv,2,nv;
  c := 'LOSE_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,20015,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C104',nv,2,nv;
  c := 'WIN_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               40,.025,40,20015,0,0,40,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C129',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1877_1967'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               37,.027027027027027,37,20015,0,0,37,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C126',nv,2,nv;
  c := 'WIN_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,20015,0,0,1,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C102',nv,2,nv;
  c := 'LOSE_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,20015,0,0,0,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','80',nv,2,nv;
  c := 'MATCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               19778,.0000505612296491051,19778,20015,0,2.55562735631278E+35,2.55582938812719E+35,19,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'313837372D3534302D616635382D6E393133','313936372D3538302D746434302D63313832',nv,2,nv;
  c := 'MATCH_STATS_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,20015,0,0,0,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"MATCH_SCORES_1877_1967"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1968_1990'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               73010,2105,195,73010,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:10',df));
  c := 'TOURNEY_YEAR_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1824,.000548245614035088,1824,73010,0,2.55582939122190E+35,2.55583174330821E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'313936382D32303239','313939302D37333130',nv,2,nv;
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               106,.00943396226415094,106,73010,0,1,106,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'C102','C20207',nv,2,nv;
  c := 'TOURNEY_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               241,.004149377593361,241,73010,0,5.05689071824802E+35,6.35842323291504E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'6164656C61696465','7A7572696368',nv,2,nv;
  c := 'TOURNEY_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1824,.000548245614035088,1824,73010,0,2.46095205504274E+35,2.46095205504274E+35,46,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'2F656E2F73636F7265732F617263686976652F6164656C616964652F32303133','2F656E2F73636F7265732F617263686976652F7A75726963682F3831302F3139',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1968_1990'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_ROUND_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,73010,0,3.65599178354851E+35,4.33017831048734E+35,13,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'46696E616C73','53656D692D46696E616C73',nv,2,nv;
  c := 'ROUND_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7,.142857142857143,7,73010,0,1,7,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'C102','C108',nv,2,nv;
  c := 'MATCH_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               64,.015625,64,73010,0,1,64,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'C102','C141',nv,2,nv;
  c := 'WIN_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1515,.00066006600660066,1515,73010,0,3.38153988262694E+35,4.69566657393738E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'412047616C627261697468','5A6F6C74616E204B75686172737A6B79',nv,2,nv;
  c := 'WIN_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1516,.000659630606860158,1516,73010,0,5.04630169364905E+35,6.34458268759722E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'61303032','7A313530',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1968_1990'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1515,.00066006600660066,1515,73010,0,5.04573678256542E+35,6.35720156866853E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'612D672D6261726B6572','7A6F6C74616E2D6B75686172737A6B79',nv,2,nv;
  c := 'LOSE_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2879,.000347342827370615,2879,73010,0,3.38153988262694E+35,4.69682318445906E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'412047616C627261697468','5A75204D65692D4C696E',nv,2,nv;
  c := 'LOSE_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2888,.000346260387811634,2888,73010,0,5.04630169055420E+35,6.34518721085660E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'61303031','7A343034',nv,2,nv;
  c := 'LOSE_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2876,.000347705146036161,2876,73007,3,5.04573303473883E+35,6.35836857788654E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'612D6272656E6E616E','7A752D6D65692D6C696E',nv,2,nv;
  c := 'WIN_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               56,.0178571428571429,56,31889,41121,2.54422546068207E+35,4.53088748135975E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'31','5743',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1968_1990'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               58,.0172413793103448,58,19844,53166,2.54422546068207E+35,4.53088748135975E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'31','5743',nv,2,nv;
  c := 'MATCH_SCORE_TIEBREAKS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7714,.000129634430904848,7714,72958,52,2.09015484213753E+35,2.97099288883988E+35,8,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'2841424E29','3938203938203634',nv,2,nv;
  c := 'WIN_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5,.2,5,73010,0,0,4,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C105',nv,2,nv;
  c := 'LOSE_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,73010,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C104',nv,2,nv;
  c := 'WIN_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               38,.0263157894736842,38,73010,0,0,37,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C126',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1968_1990'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               37,.027027027027027,37,73010,0,0,36,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C125',nv,2,nv;
  c := 'WIN_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,73010,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C104',nv,2,nv;
  c := 'LOSE_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.333333333333333,3,73010,0,0,2,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C103',nv,2,nv;
  c := 'MATCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               72928,.0000137121544537078,72928,73010,0,2.55582939122190E+35,2.55583174330821E+35,20,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'313936382D323032392D623132332D68313532','313939302D373331302D763031342D6B303330',nv,2,nv;
  c := 'MATCH_STATS_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,73010,0,0,0,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"MATCH_SCORES_1968_1990"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               95359,3358,242,95359,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:11',df));
  c := 'TOURNEY_YEAR_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1882,.00053134962805526,1882,95359,0,2.55583174640282E+35,2.60592297534542E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'313939312D323031','323031362D3936',nv,2,nv;
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               92,.0108695652173913,92,95359,0,1,92,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C15D',nv,2,nv;
  c := 'TOURNEY_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               125,.008,125,95359,0,5.05668473764681E+35,6.35435806377398E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'61636170756C636F','7A6167726562',nv,2,nv;
  c := 'TOURNEY_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1882,.00053134962805526,1882,95359,0,2.46095205504274E+35,2.46095205504274E+35,46,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'2F656E2F73636F7265732F617263686976652F61636170756C636F2F3830372F','2F656E2F73636F7265732F617263686976652F7A61677265622F323237362F32',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_ROUND_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,95359,0,2.56764223642657E+35,4.33017831048734E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'31737420526F756E64205175616C696679696E67','53656D692D46696E616C73',nv,2,nv;
  c := 'ROUND_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,95359,0,1,10,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C10B',nv,2,nv;
  c := 'MATCH_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               64,.015625,64,95359,0,1,64,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C141',nv,2,nv;
  c := 'WIN_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2027,.000493339911198816,2027,95359,0,3.39475756032815E+35,4.69425392061505E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'4161726F6E204B7269636B737465696E','5A68756F79616E6720516975',nv,2,nv;
  c := 'WIN_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2027,.000493339911198816,2027,95359,0,5.04630170293360E+35,6.34518801861248E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'61303035','7A343139',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2027,.000493339911198816,2027,95359,0,5.05629255505992E+35,6.35578891534619E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'6161726F6E2D6B7269636B737465696E','7A68756F79616E672D716975',nv,2,nv;
  c := 'LOSE_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3479,.000287438919229664,3479,95359,0,3.39475756032815E+35,4.69446070606777E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'4161726F6E204B7269636B737465696E','5A697A6F75204265726773',nv,2,nv;
  c := 'LOSE_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3482,.000287191269385411,3482,95359,0,5.04630170293360E+35,6.34518879851470E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'61303035','7A343235',nv,2,nv;
  c := 'LOSE_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3479,.000287438919229664,3479,95359,0,5.05629255505992E+35,6.35599570079954E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'6161726F6E2D6B7269636B737465696E','7A697A6F752D6265726773',nv,2,nv;
  c := 'WIN_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               66,.0151515151515152,66,54893,40466,2.54422546068207E+35,4.53088748135975E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'31','5743',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               67,.0149253731343284,67,43165,52194,2.54422546068207E+35,4.53088748135975E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'31','5743',nv,2,nv;
  c := 'MATCH_SCORE_TIEBREAKS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               11780,.0000848896434634975,11780,95357,2,2.09076566651172E+35,2.86674764154877E+35,9,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'2844454629','3736283929203736283929203632',nv,2,nv;
  c := 'WIN_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5,.2,5,95359,0,0,4,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C105',nv,2,nv;
  c := 'LOSE_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,95359,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C104',nv,2,nv;
  c := 'WIN_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               36,.0277777777777778,36,95359,0,0,37,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C126',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               34,.0294117647058824,34,95359,0,0,33,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C122',nv,2,nv;
  c := 'WIN_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,95359,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C104',nv,2,nv;
  c := 'LOSE_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.333333333333333,3,95359,0,0,2,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C103',nv,2,nv;
  c := 'MATCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               95359,.0000104866871506622,95359,95359,0,2.55583174640282E+35,2.60592297534542E+35,20,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'313939312D3230312D613033352D72303132','323031362D39362D743738362D6A323637',nv,2,nv;
  c := 'MATCH_STATS_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               92800,.0000107758620689655,92800,91956,3403,2.46095205504274E+35,2.46095205504274E+35,37,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'2F656E2F73636F7265732F313939312F3230312F4D533030312F6D617463682D','2F656E2F73636F7265732F323031362F39362F4D533036332F6D617463682D73',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"MATCH_SCORES_1991_2016"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               3830,147,243,3830,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:09',df));
  c := 'TOURNEY_YEAR_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               67,.0149253731343284,67,3830,0,2.60592297843989E+35,2.60592297844023E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'323031372D31353336','323031372D383931',nv,2,nv;
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               67,.0149253731343284,67,3830,0,1,67,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C144',nv,2,nv;
  c := 'TOURNEY_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               67,.0149253731343284,67,3830,0,5.05668473764681E+35,6.20021730003442E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61636170756C636F','77696E73746F6E2D73616C656D',nv,2,nv;
  c := 'TOURNEY_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               67,.0149253731343284,67,3830,0,2.46095205504274E+35,2.46095205504274E+35,46,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F73636F7265732F617263686976652F61636170756C636F2F3830372F','2F656E2F73636F7265732F63757272656E742F6E6974746F2D6174702D66696E',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'TOURNEY_ROUND_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               11,.0909090909090909,11,3830,0,2.56764223642657E+35,4.33017831048734E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'31737420526F756E64205175616C696679696E67','53656D692D46696E616C73',nv,2,nv;
  c := 'ROUND_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,3830,0,1,10,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C10B',nv,2,nv;
  c := 'MATCH_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               64,.015625,64,3830,0,1,64,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C141',nv,2,nv;
  c := 'WIN_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               340,.00294117647058824,340,3830,0,3.39535255669824E+35,4.69444640159809E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4164616D205061766C6173656B','5A6968616F20586961',nv,2,nv;
  c := 'WIN_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               334,.0029940119760479,334,3830,0,5.04711855766852E+35,6.34498992344739E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61343739','7A333731',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               334,.0029940119760479,334,3830,0,5.05688755158806E+35,6.35598139632985E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'6164616D2D7061766C6173656B','7A6968616F2D786961',nv,2,nv;
  c := 'LOSE_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               536,.00186567164179104,536,3830,0,3.39535255669824E+35,4.69648022551461E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4164616D205061766C6173656B','5A736F6D626F72205069726F73',nv,2,nv;
  c := 'LOSE_PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               528,.00189393939393939,528,3830,0,5.04634066400148E+35,6.34518801861248E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61306162','7A343139',nv,2,nv;
  c := 'LOSE_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               528,.00189393939393939,528,3830,0,5.05688755158806E+35,6.35801522024575E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'6164616D2D7061766C6173656B','7A736F6D626F722D7069726F73',nv,2,nv;
  c := 'WIN_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               49,.0204081632653061,49,2480,1350,2.54422546068207E+35,4.53088748135975E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'31','5743',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SEED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               49,.0204081632653061,49,2066,1764,2.54422546068207E+35,4.53088748135975E+35,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'31','5743',nv,2,nv;
  c := 'MATCH_SCORE_TIEBREAKS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1367,.000731528895391368,1367,3830,0,2.09422083762746E+35,2.86674764154877E+35,10,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'28554E5029','3736283929203736283229',nv,2,nv;
  c := 'WIN_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,3830,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C104',nv,2,nv;
  c := 'LOSE_SETS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.333333333333333,3,3830,0,0,2,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C103',nv,2,nv;
  c := 'WIN_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               34,.0294117647058824,34,3830,0,0,34,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C123',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_SCORES_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_GAMES_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               32,.03125,32,3830,0,0,32,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C121',nv,2,nv;
  c := 'WIN_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,3830,0,0,3,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C104',nv,2,nv;
  c := 'LOSE_TIEBREAKS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.333333333333333,3,3830,0,0,2,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C103',nv,2,nv;
  c := 'MATCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3827,.000261301280376274,3827,3830,0,2.60592297843989E+35,5.93979512822488E+35,20,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'323031372D313533362D613437392D72343139','726573756C74732D3630352D7A3335352D63393737',nv,2,nv;
  c := 'MATCH_STATS_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3684,.000271444082519001,3684,3684,146,2.46095205504274E+35,2.46095205504274E+35,37,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F73636F7265732F323031372F313533362F4D533030312F6D61746368','2F656E2F73636F7265732F323031372F3839312F51533031352F6D617463682D',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"MATCH_SCORES_2017"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               91956,2930,218,91956,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:10',df));
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               89,.0112359550561798,89,91956,0,0,88,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C159',nv,2,nv;
  c := 'MATCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               91956,.0000108747661925269,91956,91956,0,2.55583174640282E+35,2.60592297534542E+35,20,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'313939312D3230312D613033352D72303132','323031362D39362D743738362D6A323637',nv,2,nv;
  c := 'MATCH_STATS_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               91956,.0000108747661925269,91956,91956,0,2.46095205504274E+35,2.46095205504274E+35,39,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'2F656E2F73636F7265732F313939312F3230312F4D533030312F6D617463682D','2F656E2F73636F7265732F323031362F39362F4D533036332F6D617463682D73',nv,2,nv;
  c := 'MATCH_TIME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               316,.00316455696202532,316,91806,150,2.50208415018865E+35,2.60653856894410E+35,9,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'30303A30313A3030','32333A33323A3030',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'MATCH_DURATION'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               316,.00316455696202532,316,91806,150,1,1412,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'C102','C20F0D',nv,2,nv;
  c := 'WIN_ACES'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               54,.0185185185185185,54,91806,150,0,113,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2020E',nv,2,nv;
  c := 'WIN_DOUBLE_FAULTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               24,.0416666666666667,24,91806,150,0,23,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C118',nv,2,nv;
  c := 'WIN_FIRST_SV_IN'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               161,.0062111801242236,161,91806,150,0,361,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2043E',nv,2,nv;
  c := 'WIN_FIRST_SV_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               239,.00418410041841004,239,91806,150,0,491,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2055C',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_FIRST_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               127,.0078740157480315,127,91806,150,0,292,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2035D',nv,2,nv;
  c := 'WIN_FIRST_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               161,.0062111801242236,161,91806,150,0,361,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2043E',nv,2,nv;
  c := 'WIN_SECOND_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               63,.0158730158730159,63,91806,150,0,82,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C153',nv,2,nv;
  c := 'WIN_SECOND_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               120,.00833333333333333,120,91806,150,0,130,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2021F',nv,2,nv;
  c := 'WIN_BREAK_POINTS_SAVED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               29,.0344827586206897,29,91806,150,-7,55,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'3E5E66','C138',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_BREAK_POINTS_SERVE_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               35,.0285714285714286,35,91806,150,0,55,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C138',nv,2,nv;
  c := 'WIN_SERVICE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               168,.00595238095238095,168,91806,150,0,374,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2044B',nv,2,nv;
  c := 'WIN_SERVICE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               239,.00418410041841004,239,91806,150,0,491,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2055C',nv,2,nv;
  c := 'WIN_FIRST_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               72,.0138888888888889,72,91806,150,0,71,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C148',nv,2,nv;
  c := 'WIN_FIRST_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               171,.00584795321637427,171,91806,150,0,328,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2041D',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_SECOND_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               76,.0131578947368421,76,91806,150,0,78,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C14F',nv,2,nv;
  c := 'WIN_SECOND_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               120,.00833333333333333,120,91806,150,0,161,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2023E',nv,2,nv;
  c := 'WIN_BREAK_POINTS_CONVERTED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               15,.0666666666666667,15,91806,150,0,15,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C110',nv,2,nv;
  c := 'WIN_BREAK_POINTS_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               37,.027027027027027,37,91806,150,0,46,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C12F',nv,2,nv;
  c := 'WIN_SERVICE_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               42,.0238095238095238,42,91806,150,0,90,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C15B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_RETURN_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               43,.0232558139534884,43,91806,150,0,91,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C15C',nv,2,nv;
  c := 'WIN_RETURN_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               107,.00934579439252336,107,91806,150,0,112,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2020D',nv,2,nv;
  c := 'WIN_RETURN_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               245,.00408163265306122,245,91806,150,0,489,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2055A',nv,2,nv;
  c := 'WIN_TOTAL_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               241,.004149377593361,241,91806,150,0,478,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2054F',nv,2,nv;
  c := 'WIN_TOTAL_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               451,.00221729490022173,451,91806,150,0,980,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20A51',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_ACES'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               54,.0185185185185185,54,91806,150,0,103,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20204',nv,2,nv;
  c := 'LOSE_DOUBLE_FAULTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               25,.04,25,91806,150,0,26,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C11B',nv,2,nv;
  c := 'LOSE_FIRST_SV_IN'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               171,.00584795321637427,171,91806,150,0,328,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2041D',nv,2,nv;
  c := 'LOSE_FIRST_SV_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               245,.00408163265306122,245,91806,150,0,489,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2055A',nv,2,nv;
  c := 'LOSE_FIRST_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               130,.00769230769230769,130,91806,150,0,284,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20355',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_FIRST_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               171,.00584795321637427,171,91806,150,0,328,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2041D',nv,2,nv;
  c := 'LOSE_SECOND_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               64,.015625,64,91806,150,0,101,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20202',nv,2,nv;
  c := 'LOSE_SECOND_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               120,.00833333333333333,120,91806,150,0,161,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2023E',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_SAVED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               31,.032258064516129,31,91806,150,-10,46,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'3E5B66','C12F',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_SERVE_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               37,.027027027027027,37,91806,150,0,46,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C12F',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SERVICE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               168,.00595238095238095,168,91806,150,0,385,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20456',nv,2,nv;
  c := 'LOSE_SERVICE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               245,.00408163265306122,245,91806,150,0,489,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2055A',nv,2,nv;
  c := 'LOSE_FIRST_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               73,.0136986301369863,73,91806,150,0,88,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C159',nv,2,nv;
  c := 'LOSE_FIRST_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               161,.0062111801242236,161,91806,150,0,361,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2043E',nv,2,nv;
  c := 'LOSE_SECOND_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               71,.0140845070422535,71,91806,150,0,79,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C150',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SECOND_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               120,.00833333333333333,120,91806,150,0,130,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2021F',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_CONVERTED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               16,.0625,16,91806,150,0,26,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C11B',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               35,.0285714285714286,35,91806,150,0,55,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C138',nv,2,nv;
  c := 'LOSE_SERVICE_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               43,.0232558139534884,43,91806,150,0,91,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C15C',nv,2,nv;
  c := 'LOSE_RETURN_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               42,.0238095238095238,42,91806,150,0,90,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C15B',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_1991_2016'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_RETURN_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               105,.00952380952380952,105,91806,150,0,126,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2021B',nv,2,nv;
  c := 'LOSE_RETURN_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               239,.00418410041841004,239,91806,150,0,491,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C2055C',nv,2,nv;
  c := 'LOSE_TOTAL_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               232,.00431034482758621,232,91806,150,0,502,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20603',nv,2,nv;
  c := 'LOSE_TOTAL_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               451,.00221729490022173,451,91806,150,0,980,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:10',df),'80','C20A51',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"MATCH_STATS_1991_2016"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               3811,132,217,3811,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:09',df));
  c := 'TOURNEY_ORDER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               67,.0149253731343284,67,3811,0,0,66,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C143',nv,2,nv;
  c := 'MATCH_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3808,.000262605042016807,3808,3811,0,2.60592297843989E+35,2.60592297844023E+35,20,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'323031372D313533362D613437392D72343139','323031372D3839312D793036312D6F333736',nv,2,nv;
  c := 'MATCH_STATS_URL_SUFFIX'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3811,.000262398320650748,3811,3811,0,2.46095205504274E+35,2.46095205504274E+35,39,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2F656E2F73636F7265732F323031372F313533362F4D533030312F6D61746368','2F656E2F73636F7265732F323031372F3839312F51533031352F6D617463682D',nv,2,nv;
  c := 'MATCH_TIME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               231,.00432900432900433,231,3811,0,2458917.00555556,2458917.21875,8,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'78780308010901','78780308061001',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'MATCH_DURATION'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               231,.00432900432900433,231,3811,0,8,315,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C109','C20410',nv,2,nv;
  c := 'WIN_ACES'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               37,.027027027027027,37,3811,0,0,76,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C14D',nv,2,nv;
  c := 'WIN_DOUBLE_FAULTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               17,.0588235294117647,17,3811,0,0,20,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C115',nv,2,nv;
  c := 'WIN_FIRST_SV_IN'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               124,.00806451612903226,124,3811,0,0,153,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20236',nv,2,nv;
  c := 'WIN_FIRST_SV_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               180,.00555555555555556,180,3811,0,0,213,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2030E',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_FIRST_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               98,.0102040816326531,98,3811,0,0,127,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2021C',nv,2,nv;
  c := 'WIN_FIRST_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               124,.00806451612903226,124,3811,0,0,153,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20236',nv,2,nv;
  c := 'WIN_SECOND_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               47,.0212765957446809,47,3811,0,0,51,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C134',nv,2,nv;
  c := 'WIN_SECOND_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               78,.0128205128205128,78,3811,0,0,84,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C155',nv,2,nv;
  c := 'WIN_BREAK_POINTS_SAVED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               21,.0476190476190476,21,3811,0,0,20,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C115',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_BREAK_POINTS_SERVE_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               24,.0416666666666667,24,3811,0,0,23,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C118',nv,2,nv;
  c := 'WIN_SERVICE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               125,.008,125,3811,0,0,171,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20248',nv,2,nv;
  c := 'WIN_SERVICE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               180,.00555555555555556,180,3811,0,0,213,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2030E',nv,2,nv;
  c := 'WIN_FIRST_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               47,.0212765957446809,47,3811,0,0,55,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C138',nv,2,nv;
  c := 'WIN_FIRST_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               123,.00813008130081301,123,3811,0,0,157,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2023A',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_SECOND_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               48,.0208333333333333,48,3811,0,0,54,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C137',nv,2,nv;
  c := 'WIN_SECOND_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               84,.0119047619047619,84,3811,0,1,91,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C15C',nv,2,nv;
  c := 'WIN_BREAK_POINTS_CONVERTED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,3811,0,0,11,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C10C',nv,2,nv;
  c := 'WIN_BREAK_POINTS_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               30,.0333333333333333,30,3811,0,0,30,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C11F',nv,2,nv;
  c := 'WIN_SERVICE_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               35,.0285714285714286,35,3811,0,0,41,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C12A',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WIN_RETURN_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               34,.0294117647058824,34,3811,0,0,42,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C12B',nv,2,nv;
  c := 'WIN_RETURN_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               76,.0131578947368421,76,3811,0,1,88,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C159',nv,2,nv;
  c := 'WIN_RETURN_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               180,.00555555555555556,180,3811,0,2,237,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C103','C20326',nv,2,nv;
  c := 'WIN_TOTAL_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               173,.00578034682080925,173,3811,0,5,234,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C106','C20323',nv,2,nv;
  c := 'WIN_TOTAL_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               311,.00321543408360129,311,3811,0,8,450,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C109','C20533',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_ACES'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               37,.027027027027027,37,3811,0,0,46,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C12F',nv,2,nv;
  c := 'LOSE_DOUBLE_FAULTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               18,.0555555555555556,18,3811,0,0,17,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C112',nv,2,nv;
  c := 'LOSE_FIRST_SV_IN'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               123,.00813008130081301,123,3811,0,0,157,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2023A',nv,2,nv;
  c := 'LOSE_FIRST_SV_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               180,.00555555555555556,180,3811,0,2,237,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C103','C20326',nv,2,nv;
  c := 'LOSE_FIRST_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               92,.0108695652173913,92,3811,0,0,125,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2021A',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_FIRST_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               123,.00813008130081301,123,3811,0,0,157,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2023A',nv,2,nv;
  c := 'LOSE_SECOND_SERVE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               48,.0208333333333333,48,3811,0,0,49,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C132',nv,2,nv;
  c := 'LOSE_SECOND_SERVE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               84,.0119047619047619,84,3811,0,1,91,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C15C',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_SAVED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               23,.0434782608695652,23,3811,0,0,24,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C119',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_SERVE_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               30,.0333333333333333,30,3811,0,0,30,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C11F',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SERVICE_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               124,.00806451612903226,124,3811,0,0,174,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2024B',nv,2,nv;
  c := 'LOSE_SERVICE_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               180,.00555555555555556,180,3811,0,2,237,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C103','C20326',nv,2,nv;
  c := 'LOSE_FIRST_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               44,.0227272727272727,44,3811,0,0,52,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C135',nv,2,nv;
  c := 'LOSE_FIRST_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               124,.00806451612903226,124,3811,0,0,153,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20236',nv,2,nv;
  c := 'LOSE_SECOND_SERVE_RETURN_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               43,.0232558139534884,43,3811,0,0,43,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C12C',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_SECOND_SERVE_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               78,.0128205128205128,78,3811,0,0,84,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C155',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_CONVERTED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               9,.111111111111111,9,3811,0,0,8,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C109',nv,2,nv;
  c := 'LOSE_BREAK_POINTS_RETURN_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               24,.0416666666666667,24,3811,0,0,23,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C118',nv,2,nv;
  c := 'LOSE_SERVICE_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               34,.0294117647058824,34,3811,0,0,42,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C12B',nv,2,nv;
  c := 'LOSE_RETURN_GAMES_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               35,.0285714285714286,35,3811,0,0,41,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C12A',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'MATCH_STATS_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'LOSE_RETURN_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               75,.0133333333333333,75,3811,0,0,78,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C14F',nv,2,nv;
  c := 'LOSE_RETURN_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               180,.00555555555555556,180,3811,0,0,213,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2030E',nv,2,nv;
  c := 'LOSE_TOTAL_POINTS_WON'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               179,.00558659217877095,179,3811,0,2,216,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C103','C20311',nv,2,nv;
  c := 'LOSE_TOTAL_POINTS_TOTAL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               311,.00321543408360129,311,3811,0,8,450,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C109','C20533',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"MATCH_STATS_2017"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'PLAYER_OVERVIEWS'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               10912,218,139,10912,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:09',df));
  c := 'PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10911,.0000916506278068005,10911,10912,0,5.04630169055420E+35,6.34519037379340E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'61303031','7A343432',nv,2,nv;
  c := 'PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10876,.0000919455682236116,10876,10912,0,5.04573222397231E+35,6.35836857788654E+35,14,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'612D616C6C656E','7A752D6D65692D6C696E',nv,2,nv;
  c := 'FIRST_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2909,.000343760742523204,2909,10912,0,2.38845655492602E+35,4.69679759191762E+35,7,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'2E','5A75',nv,2,nv;
  c := 'LAST_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               7794,.000128303823453939,7794,10912,0,3.39494770799467E+35,6.14951101857245E+35,8,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4162626F7474','766F6E20446F6E6F70',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'PLAYER_OVERVIEWS'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'PLAYER_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10911,.0000916506278068005,10911,10912,0,5.42360858001159E+35,5.42360858001159E+35,67,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'687474703A2F2F7777772E617470776F726C64746F75722E636F6D2F656E2F70','687474703A2F2F7777772E617470776F726C64746F75722E636F6D2F656E2F70',nv,2,nv;
  c := 'FLAG_CODE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               113,.00884955752212389,113,8727,2185,3.38965888321065E+35,4.68793433737715E+35,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'41484F','5A494D',nv,2,nv;
  c := 'RESIDENCE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1128,.000886524822695035,1128,2014,8898,3.39475281900897E+35,5.99476203981528E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'41616C736D6565722C204E65746865726C616E6473','737475747467617274',nv,2,nv;
  c := 'BIRTHPLACE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1830,.000546448087431694,1830,3038,7874,3.39475277569046E+35,6.19859787616329E+35,6,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'41616C656E2C204765726D616E79','776172736177',nv,2,nv;
  c := 'BIRTHDATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4576,.000218531468531469,4576,5114,5798,2.55562655475846E+35,2.60592216760121E+35,6,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'313836342E30322E3036','323030312E30352E3132',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'PLAYER_OVERVIEWS'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'BIRTH_YEAR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               135,.00740740740740741,135,5114,5798,1864,2001,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C21341','C21502',nv,2,nv;
  c := 'BIRTH_MONTH'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,5114,5798,1,12,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C10D',nv,2,nv;
  c := 'BIRTH_DAY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               31,.032258064516129,31,5114,5798,1,31,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'C102','C120',nv,2,nv;
  c := 'TURNED_PRO'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               55,.0181818181818182,55,1533,9379,0,2017,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C21512',nv,2,nv;
  c := 'WEIGHT_LBS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               91,.010989010989011,91,2706,8206,0,1488,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C20F59',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'PLAYER_OVERVIEWS'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'WEIGHT_KG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               53,.0188679245283019,53,2706,8206,0,675,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2074C',nv,2,nv;
  c := 'HEIGHT_FT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               23,.0434782608695652,23,2658,8254,2.50025076658505E+35,2.81179570863177E+35,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'30273022','36273922',nv,2,nv;
  c := 'HEIGHT_INCHES'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               23,.0434782608695652,23,2658,8254,0,83,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C154',nv,2,nv;
  c := 'HEIGHT_CM'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               23,.0434782608695652,23,2658,8254,0,211,2,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'80','C2030C',nv,2,nv;
  c := 'HANDEDNESS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3,.333333333333333,3,1136,9776,3.39717875428786E+35,4.27906188235869E+35,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'416D626964657874726F7573','52696768742D48616E646564',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'PLAYER_OVERVIEWS'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'BACKHAND'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,1136,9776,4.12430532939395E+35,4.38575351200127E+35,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:09',df),'4F6E652D48616E646564204261636B68616E64','54776F2D48616E646564204261636B68616E64',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"PLAYER_OVERVIEWS"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017_PART1'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               2000001,31399,108,2000001,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:13',df));
  c := 'WEEK_TITLE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1097,.000911577028258888,1097,2000001,0,2.55583176188907E+35,2.60592297845198E+35,11,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'313939362E30312E3239','323031372E31312E3230',nv,2,nv;
  c := 'WEEK_YEAR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               22,.0454545454545455,22,2000001,0,1996,2017,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'C21461','C21512',nv,2,nv;
  c := 'WEEK_MONTH'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,2000001,0,1,12,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'C102','C10D',nv,2,nv;
  c := 'WEEK_DAY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               31,.032258064516129,31,2000001,0,1,31,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'C102','C120',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017_PART1'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'RANK_TEXT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4069,.000245760629147211,4069,2000001,0,2.54422546068207E+35,2.97121560285897E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'31','39393954',nv,2,nv;
  c := 'RANK_NUMBER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2265,.000441501103752759,2265,2000001,0,1,2271,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'C102','C21748',nv,2,nv;
  c := 'MOVE_POSITIONS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               972,.00102880658436214,972,1595013,404988,1,1354,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'C102','C20E37',nv,2,nv;
  c := 'MOVE_DIRECTION'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,1595013,404988,5.21490495514178E+35,6.09770362324184E+35,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'646F776E','7570',nv,2,nv;
  c := 'PLAYER_AGE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               48,.0208333333333333,48,1955930,44071,9,66,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'C10A','C143',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017_PART1'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'RANKING_POINTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3801,.000263088660878716,3801,2000001,0,0,16950,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'80','C3024633',nv,2,nv;
  c := 'TOURNEYS_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               46,.0217391304347826,46,2000001,0,0,45,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'80','C12E',nv,2,nv;
  c := 'PLAYER_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10286,.0000972195216799533,10286,2000001,0,2.46095205500689E+35,2.46095205500689E+35,42,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'2F656E2F706C61796572732F612E2D6D6163646F6E616C642F6D3532382F6F76','2F656E2F706C61796572732F7A736F6D626F722D7069726F732F7030396F2F6F',nv,2,nv;
  c := 'PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10270,.0000973709834469328,10270,2000001,0,5.04589385238561E+35,6.35801522024575E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'612E2D6D6163646F6E616C64','7A736F6D626F722D7069726F73',nv,2,nv;
  c := 'PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10283,.0000972478848585043,10283,2000001,0,5.04630169364905E+35,6.34519195216695E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:13',df),'61303032','7A343630',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"RANKINGS_1973_2017_PART1"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017_PART2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               694540,10522,104,694540,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:11',df));
  c := 'WEEK_TITLE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               694,.00144092219020173,694,694540,0,2.55583016804127E+35,2.55583176188907E+35,11,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'313937332E30382E3233','313939362E30312E3239',nv,2,nv;
  c := 'WEEK_YEAR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               24,.0416666666666667,24,694540,0,1973,1996,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C2144A','C21461',nv,2,nv;
  c := 'WEEK_MONTH'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,694540,0,1,12,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C10D',nv,2,nv;
  c := 'WEEK_DAY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               31,.032258064516129,31,694540,0,1,31,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C120',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017_PART2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'RANK_TEXT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2330,.000429184549356223,2330,694540,0,2.54422546068207E+35,2.97121560285897E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'31','39393954',nv,2,nv;
  c := 'RANK_NUMBER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1299,.000769822940723634,1299,694540,0,1,1399,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C20E64',nv,2,nv;
  c := 'MOVE_POSITIONS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               619,.00161550888529887,619,539010,155530,1,917,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C20A12',nv,2,nv;
  c := 'MOVE_DIRECTION'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,539010,155530,5.21490495514178E+35,6.09770362324184E+35,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'646F776E','7570',nv,2,nv;
  c := 'PLAYER_AGE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               56,.0178571428571429,56,524052,170488,1,64,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'C102','C141',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017_PART2'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'RANKING_POINTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,694540,0,0,2,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C103',nv,2,nv;
  c := 'TOURNEYS_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,694540,0,0,1,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'80','C102',nv,2,nv;
  c := 'PLAYER_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5477,.000182581705313128,5477,694540,0,2.46095205500689E+35,2.46095205500689E+35,41,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'2F656E2F706C61796572732F612E2D62656E736F6E2F623137382F6F76657276','2F656E2F706C61796572732F7A736F6C742D66756C652F663238312F6F766572',nv,2,nv;
  c := 'PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5449,.000183519911910442,5449,694540,0,5.04589381839113E+35,6.35801521736539E+35,15,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'612E2D62656E736F6E','7A736F6C742D66756C65',nv,2,nv;
  c := 'PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               5477,.000182581705313128,5477,694540,0,5.04630169055420E+35,6.34438303881738E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:11',df),'61303031','7A303932',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"RANKINGS_1973_2017_PART2"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               2694539,41814,106,2694539,0,NULL,NULL,NULL,
               TO_DATE('2020-04-02 22:00:17',df));
  c := 'WEEK_TITLE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1790,.000558659217877095,1790,2694539,0,2.55583016804127E+35,2.60592297845198E+35,11,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'313937332E30382E3233','323031372E31312E3230',nv,2,nv;
  c := 'WEEK_YEAR'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               45,.0222222222222222,45,2694539,0,1973,2017,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'C2144A','C21512',nv,2,nv;
  c := 'WEEK_MONTH'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,2694539,0,1,12,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'C102','C10D',nv,2,nv;
  c := 'WEEK_DAY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               31,.032258064516129,31,2694539,0,1,31,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'C102','C120',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'RANK_TEXT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4243,.000235682300259251,4243,2694539,0,2.54422546068207E+35,2.97121560285897E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'31','39393954',nv,2,nv;
  c := 'RANK_NUMBER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2265,.000441501103752759,2265,2694539,0,1,2271,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'C102','C21748',nv,2,nv;
  c := 'MOVE_POSITIONS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               972,.00102880658436214,972,2134023,560516,1,1354,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'C102','C20E37',nv,2,nv;
  c := 'MOVE_DIRECTION'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,2134023,560516,5.21490495514178E+35,6.09770362324184E+35,4,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'646F776E','7570',nv,2,nv;
  c := 'PLAYER_AGE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               59,.0169491525423729,59,2479980,214559,1,66,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'C102','C143',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'RANKINGS_1973_2017'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'RANKING_POINTS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               3801,.000263088660878716,3801,2694539,0,0,16950,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'80','C3024633',nv,2,nv;
  c := 'TOURNEYS_PLAYED'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               46,.0217391304347826,46,2694539,0,0,45,3,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'80','C12E',nv,2,nv;
  c := 'PLAYER_URL'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               14088,.0000709823963657013,14088,2694539,0,2.46095205500689E+35,2.46095205500689E+35,42,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'2F656E2F706C61796572732F612E2D62656E736F6E2F623137382F6F76657276','2F656E2F706C61796572732F7A736F6D626F722D7069726F732F7030396F2F6F',nv,2,nv;
  c := 'PLAYER_SLUG'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               14041,.0000712199985756,14041,2694539,0,5.04589381839113E+35,6.35801522024575E+35,16,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'612E2D62656E736F6E','7A736F6D626F722D7069726F73',nv,2,nv;
  c := 'PLAYER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               14085,.000070997515086972,14085,2694539,0,5.04630169055420E+35,6.34519195216695E+35,5,0,nv,nv,0,
               TO_DATE('2020-04-02 22:00:17',df),'61303031','7A343630',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"RANKINGS_1973_2017"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'ACCESS_COUNTER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               8,5,16,8,0,NULL,NULL,NULL,
               TO_DATE('2026-04-25 10:02:50',df));
  c := 'COUNTER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,8,0,1,105,4,0,nv,nv,0,
               TO_DATE('2026-04-25 10:02:50',df),'C102','C20206',nv,2,nv;
  c := 'FUNCTION_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,8,0,4.37558624250442E+35,4.37558627967785E+35,9,0,nv,nv,0,
               TO_DATE('2026-04-25 10:02:50',df),'54454E475357494E','54454E5356414352',nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               4,.25,4,8,0,0,64,3,0,nv,nv,0,
               TO_DATE('2026-04-25 10:02:50',df),'80','C141',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"ACCESS_COUNTER"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'ACCESS_COUNTER_HISTORY'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               15721,65,23,15721,0,NULL,NULL,NULL,
               TO_DATE('2026-03-29 06:00:09',df));
  c := 'COUNTER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               15721,.000063609185166338,15721,15721,0,52,18048,5,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'C135','C3025131',nv,2,nv;
  c := 'FUNCTION_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,15721,0,4.37558624250442E+35,4.37558627967785E+35,9,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'54454E475357494E','54454E5356414352',nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               154,.00649350649350649,154,15721,0,0,3069,3,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'80','C21F46',nv,2,nv;
  c := 'ACCESS_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1983,.000504286434694907,1983,15721,0,2459033.99931713,2461128.99931713,8,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'78780702183C02','787E031C183C02',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"ACCESS_COUNTER_HISTORY"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TENNISDBUSR'; 
  t varchar2(60) := 'ACCESS_COUNTER_HISTORY_TEST'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               8,5,23,8,0,NULL,NULL,NULL,
               TO_DATE('2020-10-13 22:00:07',df));
  c := 'COUNTER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,8,0,1193,1200,4,0,nv,nv,0,
               TO_DATE('2020-10-13 22:00:07',df),'C20C5E','C20D',nv,2,nv;
  c := 'FUNCTION_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               8,.125,8,8,0,4.37558624250442E+35,4.37558627967785E+35,9,0,nv,nv,0,
               TO_DATE('2020-10-13 22:00:07',df),'54454E475357494E','54454E5356414352',nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,8,0,0,5,3,0,nv,nv,0,
               TO_DATE('2020-10-13 22:00:07',df),'80','C106',nv,2,nv;
  c := 'ACCESS_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,8,0,2459135.97230324,2459135.97230324,8,0,nv,nv,0,
               TO_DATE('2020-10-13 22:00:07',df),'78780A0C181508','78780A0C181508',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TENNISDBUSR"','"ACCESS_COUNTER_HISTORY_TEST"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TWITTERTOOLUSR'; 
  t varchar2(60) := 'USER_MASTER'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               13,5,50,13,0,NULL,NULL,NULL,
               TO_DATE('2021-03-21 18:10:10',df));
  c := 'USER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,13,0,5.11104203962345E+35,6.09839246938169E+35,7,0,nv,nv,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  c := 'PASSWORD'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,13,0,2.91787132866235E+35,2.91787132866235E+35,33,0,nv,nv,0,
               TO_DATE('2021-03-21 18:10:10',df),'3832376363623065656138613730366334633334613136383931663834653762','3832376363623065656138613730366334633334613136383931663834653762',nv,2,nv;
  c := 'USER_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,13,0,3.44950740214718E+35,4.38210606729148E+35,11,0,nv,nv,0,
               TO_DATE('2021-03-21 18:10:10',df),'426F62736F6E393039','54657374557365723131',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TWITTERTOOLUSR"','"USER_MASTER"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TWITTERTOOLUSR'; 
  t varchar2(60) := 'USER_ROLE'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               26,5,18,26,0,NULL,NULL,NULL,
               TO_DATE('2021-03-21 18:10:10',df));
  c := 'USER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,2,5.11104203962345E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,4,5.62906854988880E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,6,6.09839246936960E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,8,6.09839246936964E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,10,6.09839246936969E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,12,6.09839246936974E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,14,6.09839246936979E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,16,6.09839246936983E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,18,6.09839246936988E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,20,6.09839246936993E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,22,6.09839246936997E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,24,6.09839246938164E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0192307692307692,13,26,0,5.11104203962345E+35,6.09839246938169E+35,7,1,26,6.09839246938169E+35,0,
               TO_DATE('2021-03-21 18:10:10',df),'626F62','757365723131',nv,2,nv;
  c := 'ROLE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,26,0,5.05689704737080E+35,5.67936496554771E+35,11,0,nv,nv,0,
               TO_DATE('2021-03-21 18:10:10',df),'61646D696E2D677569','6D616E616765722D677569',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TWITTERTOOLUSR"','"USER_ROLE"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TWITTERTOOLUSR'; 
  t varchar2(60) := 'USER_ACCESS_COUNT'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               12,5,8,12,0,NULL,NULL,NULL,
               TO_DATE('2026-04-25 06:00:08',df));
  c := 'USER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               12,.0833333333333333,12,12,0,5.11104203962345E+35,6.30245009470141E+35,7,0,nv,nv,0,
               TO_DATE('2026-04-25 06:00:08',df),'626F62','79617A61',nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,12,0,0,2,3,0,nv,nv,0,
               TO_DATE('2026-04-25 06:00:08',df),'80','C103',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TWITTERTOOLUSR"','"USER_ACCESS_COUNT"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'TWITTERTOOLUSR'; 
  t varchar2(60) := 'USER_ACCESS_COUNT_HISTORY'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               8098,28,16,8098,0,NULL,NULL,NULL,
               TO_DATE('2026-03-29 06:00:09',df));
  c := 'USER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               13,.0769230769230769,13,8098,0,5.11104203962345E+35,6.30245009470141E+35,7,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'626F62','79617A61',nv,2,nv;
  c := 'ACCESS_COUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               16,.0625,16,8098,0,0,20,3,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'80','C115',nv,2,nv;
  c := 'ACCESS_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               683,.00146412884333821,683,8098,0,2459274.99931713,2460012.9993287,8,0,nv,nv,0,
               TO_DATE('2026-03-29 06:00:09',df),'7879021C183C02','787B0308183C03',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"TWITTERTOOLUSR"','"USER_ACCESS_COUNT_HISTORY"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'PROCESS_MANAGE_TABLE'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               21,5,40,21,0,NULL,NULL,NULL,
               TO_DATE('2021-05-17 22:00:13',df));
  c := 'BRANCH_CODE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               21,.0476190476190476,21,21,0,2.55399914623340E+35,2.65784508340410E+35,4,0,nv,nv,0,
               TO_DATE('2021-05-17 22:00:13',df),'313030','333030',nv,2,nv;
  c := 'CREATE_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,21,0,2456841.25973081,2456841.25973081,11,0,nv,nv,0,
               TO_DATE('2021-05-17 22:00:13',df),'78720702070F012C3A0580','78720702070F012C3A0580',nv,2,nv;
  c := 'MACHINE_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               21,.0476190476190476,21,21,0,2.50207622735984E+35,2.50207622735984E+35,11,0,nv,nv,0,
               TO_DATE('2021-05-17 22:00:13',df),'30303030303030303031','30303030303030303231',nv,2,nv;
  c := 'USER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               21,.0476190476190476,21,21,0,2.55399919594519E+35,2.55399919594519E+35,11,0,nv,nv,0,
               TO_DATE('2021-05-17 22:00:13',df),'31303030303030303030','31303030303030303230',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'RBWEGUSR'; 
  t varchar2(60) := 'PROCESS_MANAGE_TABLE'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'STATUS'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,21,0,2.50226632523809E+35,2.50267197343016E+35,3,0,nv,nv,0,
               TO_DATE('2021-05-17 22:00:13',df),'3031','3033',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"RBWEGUSR"','"PROCESS_MANAGE_TABLE"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'CELONISUSR'; 
  t varchar2(60) := 'HOSPITAL_EVENT_LOG'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               10,5,93,10,0,NULL,NULL,NULL,
               TO_DATE('2022-02-19 22:03:56',df));
  c := 'EVENT_LOG_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,10,0,2.50207622735984E+35,2.50207622735984E+35,9,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'3030303030303031','3030303030303130',nv,2,nv;
  c := 'PERSON_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,10,0,2.55420440313397E+35,2.55562575329881E+35,6,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'3131333235','3138353137',nv,2,nv;
  c := 'PROCEDURE_DATE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,10,0,2458704,2459128,8,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'78770808010101','78780A05010101',nv,2,nv;
  c := 'PROCEDURE_CONCEPT_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,10,0,2.55400556208821E+35,2.55400556208844E+35,9,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'3130383933323935','3130383933373134',nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'CELONISUSR'; 
  t varchar2(60) := 'HOSPITAL_EVENT_LOG'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'CONCEPT_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               2,.5,2,10,0,3.39718988356205E+35,4.01783003264135E+35,23,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'416D7075746174696F6E206F6620636572766978','4D616E75616C2072656D6F76616C206F662072657461696E656420706C616365',nv,2,nv;
  c := 'AMOUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               1,1,1,10,0,1,1,3,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'C102','C102',nv,2,nv;
  c := 'TOTAL_PAID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,10,0,989,1529,4,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'C20A5A','C2101E',nv,2,nv;
  c := 'PROVIDER_ID'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               9,.111111111111111,9,10,0,2.60673346713838E+35,2.76209911086804E+35,6,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'3234303233','3532333536',nv,2,nv;
  c := 'PROVIDER_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               10,.1,10,10,0,3.45012618646004E+35,5.21545535048186E+35,25,0,nv,nv,0,
               TO_DATE('2022-02-19 22:03:56',df),'42726F776E204865616C74682026204D65646963616C2043656E746572','64722E205374657665202620436F2E',nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"CELONISUSR"','"HOSPITAL_EVENT_LOG"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

 
DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'CELONISUSR'; 
  t varchar2(60) := 'ORDER_TRANSACTION'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  DELETE FROM "SYS"."IMPDP_STATS"; 
  INSERT INTO "SYS"."IMPDP_STATS" (type,version,flags,c1,c2,c3,c5,n1,n2,n3,n4,n9,n10,n11,n12,d1) VALUES ('T',6,2,t,p,sp,s,
               0,0,0,0,0,NULL,NULL,NULL,
               TO_DATE('2022-01-18 22:00:06',df));
  c := 'ORDER_SLIP'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2022-01-18 22:00:06',df),nv,nv,nv,2,nv;
  c := 'LINE_NUMBER'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2022-01-18 22:00:06',df),nv,nv,nv,2,nv;
  c := 'CUSTOMER_NAME'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2022-01-18 22:00:06',df),nv,nv,nv,2,nv;
  c := 'PRODUCT_CODE'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2022-01-18 22:00:06',df),nv,nv,nv,2,nv;

END; 
/

DECLARE 
  c varchar2(60); 
  nv varchar2(1); 
  df varchar2(21) := 'YYYY-MM-DD:HH24:MI:SS'; 
  s varchar2(60) := 'CELONISUSR'; 
  t varchar2(60) := 'ORDER_TRANSACTION'; 
  p varchar2(1); 
  sp varchar2(1); 
  stmt varchar2(300) := 'INSERT INTO "SYS"."IMPDP_STATS" (type,version,c1,c2,c3,c4,c5,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d1,r1,r2,r3,flags,cl1) VALUES (:1,6,:2,:3,:4,:5,:6,:7,:8,:9,:10,:11,:12,:13,:14,:15,:16,:17,:18,:19,:20,:21,:22,:23,:24)';
BEGIN
  NULL; 
  c := 'ORDER_QUANTITY'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2022-01-18 22:00:06',df),nv,nv,nv,2,nv;
  c := 'ORDER_AMOUNT'; 
  EXECUTE IMMEDIATE stmt USING 'C',t,p,sp,c,s,
               0,0,0,nv,0,0,0,0,0,nv,nv,0,
               TO_DATE('2022-01-18 22:00:06',df),nv,nv,nv,2,nv;

  DBMS_STATS.IMPORT_TABLE_STATS('"CELONISUSR"','"ORDER_TRANSACTION"',NULL,'"IMPDP_STATS"',NULL,NULL,'"SYS"'); 
  DELETE FROM "SYS"."IMPDP_STATS"; 
END; 
/

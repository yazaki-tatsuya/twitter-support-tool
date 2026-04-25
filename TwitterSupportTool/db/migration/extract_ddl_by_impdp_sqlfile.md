# DDL抽出手順（impdp sqlfile）

既存dumpからDDLだけを抽出する場合は、DBへ実インポートせず `sqlfile` を指定します。

```bash
impdp system   schemas=TENNISDBUSR,CELONISUSR,TWITTERTOOLUSR,RBWEGUSR   directory=DATA_PUMP_DIR   dumpfile=backup.dmp   sqlfile=db_ddl_from_dump.sql   logfile=ddl_extract.log
```

`DATA_PUMP_DIR` はLinux環境変数ではなく、Oracleのディレクトリオブジェクト名です。
実体パスは以下で確認します。

```sql
SELECT directory_name, directory_path
FROM dba_directories
WHERE directory_name = 'DATA_PUMP_DIR';
```

抽出後、元ファイルに含まれる `CREATE USER ... IDENTIFIED BY VALUES '<hash>'` はGit登録前に必ずサニタイズしてください。

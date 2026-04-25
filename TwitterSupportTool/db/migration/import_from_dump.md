# dumpからの復元手順

DDL/DML資産とは別に、実データ入りdumpを使って復元する場合の手順です。

```bash
impdp system   schemas=TENNISDBUSR,CELONISUSR,TWITTERTOOLUSR,RBWEGUSR   directory=DATA_PUMP_DIR   dumpfile=backup.dmp   logfile=import.log
```

## 注意

- `backup.dmp` はGit管理しません。
- `DATA_PUMP_DIR` の実体パスに `backup.dmp` を配置してから実行します。
- 初回は表領域が存在しないと `ORA-00959` になります。先に `ddl/000_create_tablespaces.sql` を実行してください。

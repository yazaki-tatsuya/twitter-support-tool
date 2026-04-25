# raw

`db_ddl_from_dump_sanitized.sql` は、`impdp ... sqlfile=...` で抽出したDDLをGit管理向けにサニタイズしたものです。

## 注意

- 元ファイルに含まれていた `CREATE USER ... IDENTIFIED BY VALUES '<hash>'` は、Git登録に向かないためプレースホルダパスワードへ置換しています。
- 実データ（`backup.dmp`）はGit管理しません。
- このrawファイルは参照用です。実行する場合は `db/ddl/` 配下の分割版を利用してください。

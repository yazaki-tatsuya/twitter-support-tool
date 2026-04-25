# DB資産

このディレクトリは、Oracle DBをGit管理しやすい形に整理したものです。

## 管理対象

- DDL（表領域、ユーザー、権限、テーブル、インデックス、制約、ビュー、プロシージャ）
- 少量の初期DML・サンプルDMLのテンプレート
- dumpからDDLを再抽出する手順
- 移行後の件数確認SQL

## 管理しないもの

- `backup.dmp` などのData Pump dumpファイル
- `.dbf` などのOracle物理データファイル
- 実データ入りログ
- SSH秘密鍵、パスワード、認証情報

## 実行順序

SQL*PlusでSYSTEM相当のユーザーに接続し、必要に応じて以下を実行します。

```sql
@ddl/000_create_tablespaces.sql
@ddl/001_create_users.sql
@ddl/002_grants_roles.sql
@ddl/010_sequences.sql
@ddl/020_tables.sql
@ddl/030_indexes.sql
@ddl/040_constraints.sql
@ddl/050_views.sql
@ddl/060_procedures.sql
```

または、`ddl` ディレクトリに移動して以下を実行します。

```sql
@run_all_ddl.sql
```

## 注意

`001_create_users.sql` のパスワードはGit管理向けにプレースホルダへ置換しています。
本番・検証環境で実行する場合は、必ず適切なパスワードに変更してください。

## スキーマ別DDL

`schema/` 配下には、参照しやすいようにスキーマ単位でまとめたDDLも配置しています。
実行順序を重視する場合は `ddl/` 配下を利用してください。

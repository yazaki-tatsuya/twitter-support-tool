# DDL

`db_ddl_from_dump.sql` をもとに、Git管理しやすい単位へ分割したDDLです。

## ファイル構成

- `000_create_tablespaces.sql`: 表領域作成
- `001_create_users.sql`: スキーマユーザー作成（パスワードはプレースホルダ化済み）
- `002_grants_roles.sql`: 権限・ロール付与
- `010_sequences.sql`: シーケンス
- `020_tables.sql`: テーブル
- `030_indexes.sql`: インデックス
- `040_constraints.sql`: 制約・外部キー
- `050_views.sql`: ビュー
- `060_procedures.sql`: プロシージャ
- `900_optional_statistics_from_dump.sql`: Data Pump由来の統計情報（通常は実行不要）
- `run_all_ddl.sql`: 実行用のまとめスクリプト

## 注意

Data Pumpの `sqlfile` 由来のDDLであるため、環境差がある場合はそのまま実行できない可能性があります。
実行前に、表領域パス・ユーザー・権限・パスワードを確認してください。

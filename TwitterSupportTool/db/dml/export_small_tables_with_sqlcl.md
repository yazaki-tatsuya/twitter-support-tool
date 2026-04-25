# 小規模テーブルのDML抽出方法（必要時のみ）

大量テーブルはDML化せず、dump/CSV等で別保管します。
少量のマスタ・サンプルデータだけをGit管理したい場合は、SQL DeveloperやSQLclのExport機能で `INSERT` 形式に出力してください。

## SQLcl例

```sql
SET SQLFORMAT INSERT
SPOOL seed_candidate.sql

-- 例: 実データをコミットして問題ないと判断した小規模テーブルのみ対象にする
SELECT * FROM CELONISUSR.HOSPITAL_EVENT_LOG;
-- SELECT * FROM RBWEGUSR.PREFECTURE_MASTER;

SPOOL OFF
SET SQLFORMAT DEFAULT
```

## 除外推奨

- 認証情報・パスワードハッシュを含むテーブル
- 個人情報を含むテーブル
- 数千件以上の大きなテーブル
- テスト目的でなく再現不要な履歴テーブル
```

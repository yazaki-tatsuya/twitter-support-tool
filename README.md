# TwitterSupportTool (Eclipse / Tomcat WebApp)

このリポジトリは、以下の Eclipse プロジェクトで構成されています。

- `TwitterSupportTool` : Webアプリ本体（JSP/Servlet）

# TwitterSupportTool

Twitter API を利用して以下の情報取得を行う Java Web アプリケーションです。

- フォロワー取得
- ハッシュタグ検索
- いいね数条件付きハッシュタグ検索
- 最近ツイート取得
- ユーザー検索
- CSV エクスポート

開発環境は **Eclipse + Java Web Application (Tomcat)** を想定しています。

## 開発環境

| 項目 | 内容 |
|---|---|
| Language | Java |
| IDE | Eclipse |
| Server | Apache Tomcat |
| Library | Twitter4J 4.0.7 |

## セットアップ手順

1. 本リポジトリを clone する: git clone <repository>
2. Eclipse で **Existing Projects into Workspace** を選択してインポート
3. Tomcat を設定
4. プロジェクトをサーバーへデプロイ

## 依存ライブラリ
本プロジェクトでは Twitter API 連携のため **Twitter4J** を使用しています。
以下のライブラリは `WEB-INF/lib` に含まれています。
- twitter4j-core-4.0.7.jar
- twitter4j-async-4.0.7.jar
- twitter4j-stream-4.0.7.jar
※ `twitter4j-examples` はサンプルコード用ライブラリのため含めていません。

## Twitter API 認証情報

Twitter API を利用するため、以下の認証情報が必要です。

- Consumer Key
- Consumer Secret
- Access Token
- Access Token Secret

これらは **CommonUtil.java** に設定されています。  
必要に応じて自身の Twitter Developer アカウントのキーに置き換えてください。

## 注意

本リポジトリは **学習・検証目的のコードアーカイブ**として管理されています。  
一部に実験用コードや試行錯誤の痕跡が含まれる場合があります。

## 動作環境（目安）
- Eclipse IDE for Enterprise Java and Web Developers
- JDK: 11（※元はJava8想定だが、現状はJDK11で確認）
- Tomcat: 8.5.x

## 起動確認（概要）
1. Eclipse にプロジェクトを Import（Existing Projects into Workspace）
2. Tomcat 8.5 を Servers に登録
3. `TwitterSupportTool` を Tomcat に Add and Remove
4. 起動後、以下へアクセス  
   - `http://localhost:8080/TwitterSupportTool/`

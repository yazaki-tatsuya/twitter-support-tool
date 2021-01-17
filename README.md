# TwitterSupportTool (Eclipse / Tomcat WebApp)

このリポジトリは、以下の Eclipse プロジェクトで構成されています。

- `TwitterSupportTool` : Webアプリ本体（JSP/Servlet）

## 必要な準備（重要）
本リポジトリは **公開リポジトリ** のため、依存JAR（バイナリ）を同梱していません。  
動作/ビルドには、下記のJARを **手元で配置** してください。

- xxx: `xxx.jar`
- yyy: `yyy.jar`

配置手順は `docs/README-dependencies.md` を参照してください。

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

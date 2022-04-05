# アプリケーション概要

### 日本の讃美歌専用ギターコード譜配信サイト

[Worship App](https://worship.tokyo "Worship App")

### ターゲット: 英語圏のクリスチャンかつ日本の讃美歌に興味がある方

# 機能一覧

### ログイン機能, 認証機能, Remember Me 機能, パスワードリセット機能, ページネーション機能, 検索機能, お気に入り機能 (ajax), 楽曲キー変更機能 (ajax), 楽曲コード変更機能 (ajax)

# 使用技術一覧

### 言語: HTML5, CSS3, Sass, JavaScript, jQuery, SQL, Ruby 2.7.3

### フレームワーク: Rails 6

### AWS: VPC(Amazon Virtual Private Cloud), RDS(Amazon Relational Database Service), EC2(Amazon Elastic Compute Cloud), Route 53, ACM(Certificate Manager), ALB(Application Load Balancer)

##### 構成図

![構成図aws_worship_app](https://user-images.githubusercontent.com/84742299/161867694-66e64864-e221-4375-bd24-fe0475a5f38e.png)

### データベース: MySQL

### セキュリティ: bcrypt, SecureRandom モジュール(urlsafe_base64)

### Web サーバー: Nginx

### アプリケーションサーバー: Puma

### ツール: Capistrano, Bootstrap

### テスト: minitest

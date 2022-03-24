# README

アプリケーション概要
	日本の讃美歌専用ギターコード譜配信サイト

ターゲット
  英語圏のクリスチャンかつ日本の讃美歌に興味がある方

機能一覧
	ログイン機能
	認証機能
	Remember Me機能
	パスワードリセット機能
	ページネーション機能
	検索機能
	お気に入り機能
	楽曲キー変更機能
	楽曲コード変更機能
	
使用技術一覧
	言語：HTML5, CSS3, Saas, JavaScript, jQuery, SQL, Ruby 2.7.3
	フレームワーク：Rails 6
	AWS
		VPC(Amazon Virtual Private Cloud)
		RDS(Amazon Relational Database Service)
		EC2(Amazon Elastic Compute Cloud)
		Route 53
		ACM(Certificate Manager)
		ALB(Application Load Balancer)
	データベース
		MySQL
	セキュリティ
		bcrypt
		SecureRandomモジュール(urlsafe_base64)
	Web サーバー
		Nginx
	アプリケーションサーバー
		Puma
	ツール
		Capistrano, Bootstrap
	テスト
		minitest
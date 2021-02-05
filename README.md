# Tech_maki
### 個人制作

### Tech_maki！URL: https://thawing-hamlet-64941.herokuapp.com/
- スリープ状態の場合があります。その場合、起動まで10秒程度お待ちください。

#### 概要
Instagram風SNSサービスです。  

#### 主な機能
1．ユーザー登録　　  
2．ログイン・ログアウト　　  
3．投稿  
4．投稿一覧  
5．投稿編集・削除   
6．マイページ  
7．いいね   

#### 開発環境
OS: Mac OS 10.15.7  
開発言語: Ruby2.7.2  
フレームワーク: Rails 6.0.3.4  

#### 本番環境  
Heroku

#### 動作確認方法  
⚫︎上記URLより → ログイン画面からゲストログイン（閲覧用）ボタン押 → 投稿画像一覧画面へ移動  
・ログイン画面下、アカウント登録ボタン → 新規ユーザー登録画面へ  
⚫︎投稿画像一覧画面、いいねボタンorコメント入力可能  
・投稿画像一覧画面右上投稿ボタン → 新規投稿画面、ファイルの選択orキャプション  
・投稿画像一覧画面右上アイコン → プロフィール画面、プロフィールの編集可能  
（ゲストログイン閲覧用の場合、プロフィール編集不可）  
⚫︎プロフィール画面、歯車アイコンにてログアウト  
 
## 【Tech_maki】一部サンプル画像   
#### 1、新規ユーザー登録 画面  
![userCreate.jpg](https://user-images.githubusercontent.com/68980008/106239580-3583e080-6246-11eb-8c56-b7c9aaa0ab67.png)
-----------
　  
#### 2、ログイン 画面  
![login.jpg](https://user-images.githubusercontent.com/68980008/106239786-87c50180-6246-11eb-976b-85b825714cf8.png)
-----------
　  
#### 3、投稿画像一覧 画面  
![imageList.jpg](https://user-images.githubusercontent.com/68980008/106239899-b2af5580-6246-11eb-9b63-15a1248b5ff0.png)
-----------
　  
#### 4、新規投稿 画面
![post.jpg](https://user-images.githubusercontent.com/68980008/106240032-ee4a1f80-6246-11eb-9f19-9ab0f7d55d79.png)
-----------
　  
#### 5、マイページ編集 画面
![editMyPage.jpg](https://user-images.githubusercontent.com/68980008/106240742-29991e00-6248-11eb-924c-19c15ee3a000.png)  
  
  
#### 良かった点  
以前作ったアプリを復習してから始めたため基本的にはうまく実装できた。  
しかし、実装中振り返るタイミングも多々あった為継続して復習でインプット・アウトプットが必要だと感じている。  

#### 苦労した点  
herokuのデプロイ・ゲストログイン機能・AWSでの画像保存に大きく時間を取られました。  
herokuはそもそものやり方の部分に、ゲストログイン機能はRoutingErrorにつかまり時間を使いました。  
また、herokuでは画像が一時的にしか保存されないため、AWS S3を用意し、格納させた。  
特に初めてする工程がうまくいかず、調べることに時間を使いました。  
調べ方によって必要な情報が獲れることを改めて感じ、良い勉強になったと思います。  

#### 今後の課題  
アプリを作ることによってスキルが定着している感があるので、継続しつつ実装したことのない機能を増やしていき勉強していく。  
また、PHP等使ったことのない言語でアプリ制作をしスキルUPにつなげる。  
  
  
# DB設計

# users table
|Column|Type|Options|
|------|----|-------|
### Association
has_many :posts, dependent: :destroy<br>
has_many :likes<br>
has_many :comments
# comments table
|Column|Type|Options|
|------|----|-------|
|comment|text|
|post   |references|foreign_key: true null: false|
|user   |references|foreign_key: true null: false|
### Association
belongs_to :user<br>
belongs_to :post

# posts table
|Column|Type|Options|
|------|----|-------|
|caption|string|
|user   |references|foreign_key: true null: false|
### Association
belongs_to :user<br>
has_many :photos, dependent: :destroy<br>
has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy<br>
has_many :comments, dependent: :destroy

# likes table
|Column|Type|Options|
|------|----|-------|
|post  |references  |foreign_key: true null: false|
|user  |references  |foreign_key: true null: false|
### Association
belongs_to :user<br>
belongs_to :post<br>
validates :user_id, uniqueness: { scope: :post_id }
# photos table
|Column|Type|Options|
|------|----|-------|
|image |string|null: false|
|post  |references|foreign_key: true null: false|

### Association
belongs_to :post<br>
validates :image, presence: true  

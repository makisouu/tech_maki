# Tech_maki
### 個人制作

### Tech_maki！URL: https://thawing-hamlet-64941.herokuapp.com/

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
・投稿画像一覧画面右上アイコン → マイページ編集画面、プロフィールの編集可能  
（ゲストログイン閲覧用の場合、プロフィール編集不可）  
⚫︎歯車アイコンにてログアウト  
 
## 【Tech_maki】一部サンプル画像   
#### 1、新規ユーザー登録 画面  
[![Image from Gyazo](https://i.gyazo.com/b30e4d8264773371eed29ffd864ea91f.png)](https://gyazo.com/b30e4d8264773371eed29ffd864ea91f)
-----------
　  
#### 2、ログイン 画面  
[![Image from Gyazo](https://i.gyazo.com/6896b89a295b091eeb94ed69f0af8dad.png)](https://gyazo.com/6896b89a295b091eeb94ed69f0af8dad)
-----------
　  
#### 3、投稿画像一覧 画面  
[![Image from Gyazo](https://i.gyazo.com/16b9d0335f9cb24ec72c7bb42e091c36.png)](https://gyazo.com/16b9d0335f9cb24ec72c7bb42e091c36)
-----------
　  
#### 4、新規投稿 画面
[![Image from Gyazo](https://i.gyazo.com/a0080d98888f80163df1c3686d280a86.png)](https://gyazo.com/a0080d98888f80163df1c3686d280a86)
-----------
　  
#### 5、マイページ編集 画面
[![Image from Gyazo](https://i.gyazo.com/cb255ed910be7df7011a7cb69fe994d9.png)](https://gyazo.com/cb255ed910be7df7011a7cb69fe994d9)  


#### 良かった点  
以前作ったアプリを復讐してから始めたため基本的にはうまく実装できた。  
しかし、実装中振り返るタイミングも多々あった為継続して復讐でインプット・アウトプットが費用だと感じている。  

#### 苦労した点  
Railsの復習として実装し、herokuのデプロイ・ゲストログイン機能・AWSでの画像保存に大きく時間を取られました。  
herokuはそもそものやり方の部分に、ゲストログイン機能はRoutingErrorにつかまり、AWSもError回避に時間を使いました。  
特に初めてする工程がうまくいかず、調べることに時間を使いましたが調べ方によって必要な情報が獲れることを改めて思う良い機会になったと思います。  

#### 今後の課題  
アプリを作ることによって復讐になるので継続しつつ実装したことのない機能を増やしていき勉強していく。  
また、PHP等使ったことのない言語でアプリ制作をしスキルUPにつなげる。  



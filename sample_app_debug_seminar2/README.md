# Sample App for Learning Debug
デバッグ講義用サンプルアプリ

## インストールと起動
1. zipファイルをダウンロードする  
2. zipファイルをCloud9上にドラッグ＆ドロップする  
3. 以下のコードをターミナルに入力してZipファイルを解凍する  
    ```
    unzip sample_app_debug_seminar.zip
    cd sample_app_debug_seminar
    ```
4. 下記のコードを入力して、アプリケーションを起動できるようにします。
    ```
    $ bundle install
    $ yarn install
    $ rails db:migrate
    $ rails db:seed
    ```
5. `config/environments/development.rb`にご自身のホスト設定を追記してください。
    ```ruby
    require "active_support/core_ext/integer/time"
    
    Rails.application.configure do
      :
      :
      config.hosts << "xxxx.vfs.cloud9.ap-northeast-1.amazonaws.com"
    end
    ```
6. `rails s`を実行後、トップページにアクセスして下記の画像のように表示されたら完了です。  
![Top Page](sample_app_debug_seminar/readme.png)

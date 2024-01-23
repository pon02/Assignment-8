# Assignment 8
## 目的
- データベースを用いたWebアプリケーションの作成
- テーブルからレコードを全件取得するAPIの実装
- クエリ文字列を指定してレコードを取得するAPIの実装

## データベース概要
- データベース名: staff_list
- テーブル数: 2
- テーブル名: staff, companies  
  <img width="200" alt="スクリーンショット 2024-01-21 20 05 20" src="https://github.com/pon02/Assignment-8/assets/140311845/d7dd982f-f996-431b-a4c5-f150e5e98398">


## 動作確認
1. テーブルからレコードを全件取得
* staffテーブル  
    - URL: http://localhost:8080/staff
    - メソッド: GET
    - レスポンス: テーブルstaffの全レコード
  <img width="400" alt="スクリーンショット 2024-01-21 20 31 37" src="https://github.com/pon02/Assignment-8/assets/140311845/fb2a1baa-0aa1-4808-8bb5-56929a7ec5f5">

    ```sh
    makiba@PonBook assignment8 % curl --location 'http://localhost:8080/staff' -v
    *   Trying 127.0.0.1:8080...
    * Connected to localhost (127.0.0.1) port 8080 (#0)
    > GET /staff HTTP/1.1
    > Host: localhost:8080
    > User-Agent: curl/8.1.2
    > Accept: */*
    > 
    < HTTP/1.1 200 
    < Content-Type: application/json
    < Transfer-Encoding: chunked
    < Date: Sun, 21 Jan 2024 11:38:39 GMT
    < 
    * Connection #0 to host localhost left intact
    [{"id":1,"name":"山本 太郎","age":32,"company":"株式会社A","smoking":false},{"id":2,"name":"田中 二郎","age":41,"company":"株式会社B","smoking":true},{"id":3,"name":"佐藤 三郎","age":25,"company":"株式会社C","smoking":false},{"id":4,"name":"鈴木 四郎","age":36,"company":"株式会社A","smoking":true},{"id":5,"name":"高橋 五郎","age":29,"company":"株式会社D","smoking":false}]%
    ```

* companiesテーブル  
    - URL: http://localhost:8080/companies
    - メソッド: GET
    - レスポンス: テーブルcompaniesの全レコード  
      <img width="400" alt="スクリーンショット 2024-01-21 20 29 12" src="https://github.com/pon02/Assignment-8/assets/140311845/d26f19c2-14d6-4188-ad9a-39fddc8fe313">
    ```sh
    makiba@PonBook assignment8 % curl --location 'http://localhost:8080/companies' -v
    *   Trying 127.0.0.1:8080...
    * Connected to localhost (127.0.0.1) port 8080 (#0)
    > GET /companies HTTP/1.1
    > Host: localhost:8080
    > User-Agent: curl/8.1.2
    > Accept: */*
    > 
    < HTTP/1.1 200 
    < Content-Type: application/json
    < Transfer-Encoding: chunked
    < Date: Sun, 21 Jan 2024 11:35:45 GMT
    < 
    * Connection #0 to host localhost left intact
    [{"id":1,"name":"株式会社A","section":"大道具"},{"id":2,"name":"株式会社B","section":"映像"},{"id":3,"name":"株式会社C","section":"照明"},{"id":4,"name":"株式会社D","section":"音響"}]%
    ```  


2. クエリ文字列を指定してレコードを取得
    - URL: http://localhost:8080/staff/room_type?smoking=true → 喫煙者のみ表示
      <img width="400" alt="スクリーンショット 2024-01-21 18 31 39" src="https://github.com/pon02/Assignment-8/assets/140311845/aa31a6ea-e106-4c06-a3bf-b1aa06488c32">


    - URL: http://localhost:8080/staff/room_type?smoking=false → 禁煙者のみ表示
      <img width="400" alt="スクリーンショット 2024-01-21 18 33 05" src="https://github.com/pon02/Assignment-8/assets/140311845/abb41fb4-26cd-4248-9d67-fdebf67f3412">


## 所感
全レコードを取得するAPIは録画講義通りに行っていくと実装できたが、クエリ文字列で真偽値を指定してレコードを取得するAPIではSELECT文の書き方がなかなか調べても分からず、時間を要した。
結果、色々試しているうちにcopilotの推測力を借りて実装することができた。
現状、第4回以降の課題についてはcopilotのおかげでプロジェクトを作成できている部分が大きいが、これを自力でコーディングできるようになるにはどのように学習を進めていくべきかが課題に感じている。
copilotのおかげで自分の知らないコードを新たに知ることもできるので、RaiseTech講義では今後も使っていきたいと思っているが、就職先で使用禁止だった場合を考えると今の自分では絶望的だ。

今回@GetMappingで「全件取得」と「クエリ文字列を指定して取得」を同じコントローラー上に記述するためにパス変数を追加しているが、これを同じパス変数でクエリ文字列のみ追加して実装する方法はないのか疑問に思う。
インターネット上でキーワードを色々変えて検索してみたが、基本的すぎる事項なのか見つけることができなかった。


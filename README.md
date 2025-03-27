## ■サービス概要
「ほめる・肯定する」コミュニケーションをサポートするアプリです。ポジティブな言葉を、ユーザーが選択したシチュエーションに合わせてランダムに表示します。自己肯定感を高め、日常生活や職場で、より良い人間関係を築く力を育むお手伝いをします。
## ■このサービスへの思い・作りたい理由
私は人見知りで口下手なため、なかなか人間関係がスムーズに築けませんでした。そんな中で、ポジティブな言葉が相手に心地よい印象を与え、関係を深める力を持っていることに気づきました。実際、ポジティブな言葉で支えられ、自己肯定感が高まり、人間関係も改善された経験があります。
このアプリを通じて、日常的に使える「ほめる・肯定する」言葉をサポートし、より良いコミュニケーションを促進し、自己肯定感を高め、ポジティブな社会作りに貢献したいと考えています。
## ■ユーザー層について
- **人間関係をスムーズに築きたいと感じている人**  
  人間関係に悩む多くの人が、コミュニケーションの改善を望んでいるため。ポジティブな言葉を使うことで、相手との信頼を築きやすくなります。
-  **自己肯定感を高めたいと感じている人**  
  自己肯定感が低いと、他者との関係がうまくいかず、自己表現にも制限がかかります。ポジティブな言葉を学んでいくことで、前向きな変化を促します。
## ■サービスの利用イメージ
1. ユーザーが「ホメたい人」と「シチュエーション」を選択
2. データベースから適切なポジティブ表現をランダムに取得して表示
3. ユーザーはその表現をコピーして、SNSやチャットアプリで送信
4. 送った言葉はマイページで常時表示できる
5. 送信した言葉をお気に入り登録し、ポジティブな言葉を蓄積する。
6. 蓄積した言葉を振り返り、自己肯定感を高める。
## ■ユーザーの獲得について
- SNS広告（Twitter、Instagram）を活用し、ターゲット層にアプローチ。  
- 「人間関係の悩み」「自己肯定感向上」などのワードをSEO対策。  
## ■サービスの差別化ポイント・推しポイント
**差別化ポイント:**
- 「ポジティブな言葉」に特化。状況に応じた適切なポジティブな言葉を提案。相手とのより良いコミュニケーションをサポートします。
- ポジティブな言葉の蓄積を通じて、自己肯定感の向上と自己成長を支援。
**推しポイント:**
- **メッセージ提案機能**: ユーザーが何を言ったら良いか迷う場面でも、シチュエーションに合ったほめ言葉やポジティブな言葉をデータベースとポジティブ辞書からランダムに取得し、即座に提案。
- **自己肯定感の向上**: ユーザーがほめ言葉やポジティブな言葉を習慣化し、前向きな行動をサポートします。
- **ポジティブワードの蓄積**: お気に入り機能でほめ言葉やポジティブな言葉を蓄積し、自己肯定感の向上につなげる。
## ■機能候補
**MVPリリース時に作りたい機能:**
- **ユーザー登録・ログイン機能**:SNSログイン（例: Facebook, Googleなど）を使って、簡単にアカウント登録とログインできるようにする。
- **ランダムメッセージ提案機能**:ユーザーが選択した内容に基づき、データベースから適切なポジティブな言葉やフレーズをランダムに取得して表示。初期段階では、選択式のシチュエーションと、それに対応するポジティブメッセージをデータベースに登録し、そこからランダムにメッセージを表示する。
- **メッセージ履歴機能**：ユーザーが送信した言葉を保存し、振り返りやすくするために履歴を管理。
- **ポジティブワードの蓄積機能**: データベースから提案された言葉、もしくは日常で見つけた素敵な言葉を自由に入力し、お気に入り登録できる。自分だけのポジティブ辞書が作れる。
**本リリースまでに作りたい機能:**
- **ポジティブワード共有機能**: 他のユーザーが使っているポジティブな言葉を閲覧し、自身のポジティブな言葉も共有できる機能。ユーザー同士が言葉を共有し、互いに刺激し合い、前向きなコミュニケーションを広げます。
## ■機能の実装方針予定
**ランダムメッセージ提案機能**
- **データベース設計**:
  - RailsのActiveRecordを使用し、シチュエーションごとに適したポジティブメッセージをデータベースに保存。
  - ユーザーが選択したシチュエーションに応じて、ランダムにメッセージを取得し、表示。
  - 初期段階では、メッセージのカテゴリ分け（例：友人、家族、仕事など）や、具体的なシチュエーション（例：誕生日、成功、困難な時など）を組み合わせることで、多様なニーズに対応。
  - メッセージのトーン（例：感謝、励まし、称賛など）を意識し、バランス良く組み合わせることで、ユーザーに多様なポジティブな体験を提供。
- **シチュエーションの選択**:
  - ユーザーが「ホメたい人」と「シチュエーション」をいくつかの選択肢から選択する形式にする。
  - 初期段階では、選択肢の数を絞り、開発とテストの効率化を図る。各シチュエーションあたり5～10個くらい(メッセージは25～50個目指す)
  - MVPリリース後、ユーザーからのフィードバックや利用状況を分析し、選択肢を段階的に拡張。
**メッセージ履歴機能:**
- **データベース設計**:
RailsのActiveRecordを使用し、ユーザーごとの送信履歴をPostgreSQLで管理します。これにより、ユーザーがどのようなポジティブな言葉を送ったか、履歴として振り返ることができます。
送信された日時や相手の情報も保存し、過去に送ったメッセージが簡単に見返せるようにします。
**ポジティブワードの蓄積機能**  
- **データベース設計**: 
  - Rails ActiveRecordとPostgreSQLでポジティブワードを管理。
  - ユーザーが自由に入力したワードとシステム提案ワードを分けて管理する。
 - ユーザーごとの蓄積も可能にする。
- **UI/UX設計**: 蓄積したワードを見やすくマイページなどで表示。
**SNSへの投稿機能**  
- **体験シェア機能**: ユーザーが「この言葉で上手くいった!」など、ポジティブな体験をSNSで共有できる機能。自己評価や振り返りの結果もSNSシェアの一部として活用し、他のユーザーのポジティブな行動を鼓舞することができます。
**フィードバック機能**  
  - アプリ内にフィードバックフォームを設置し、ユーザーからの意見や要望を収集。
  - 収集したフィードバックは、サービスの改善や機能追加の参考にし、ユーザーの満足度向上に繋げる。
**今後できたら面白そうな機能**  
**AIによる提案機能**
- ユーザーが入力したワードに対して、AIがより適したポジティブな言葉を提案。
- 固定メッセージの候補に加えて、個別のシチュエーションに応じたカスタマイズメッセージを生成できる。
- 否定的な表現を避けるためにプロンプト設計を工夫し、安全な言葉選びをサポート。
**モード変換機能**
- **方言対応モード(仮)**:
  地域ごとに異なる誉め言葉を学べるモード。地方に引っ越してきたばかりの人が、その土地の方言を学びながら、地元の人との距離を縮められる。
- **ビジネスモード(仮)**:
  ビジネスシーンのサポートとして活用できるモード。ビジネスシーンに応じたスマートなほめ言葉を提案。

## 画面遷移図  
Figma:(https://www.figma.com/design/CJPRX5SV3sib60vnQLbSkx/%E5%8D%92%E6%A5%AD%E5%88%B6%E4%BD%9C_%E7%94%BB%E9%9D%A2%E9%81%B7%E7%A7%BB%E5%9B%B3?node-id=0-1&t=CmzqvyAh9Eg195yV-1)

### ER図  
ER図:(https://drive.google.com/file/d/1Ok1aNXq-tyA5GrYD7sH0VaLB-nX4wAhB/view?usp=sharing)
# lyralis.org Guide

## リポジトリのセットアップ方法

1. リポジトリをクローンします．
2. [mise](https://github.com/jdx/mise) をインストールして以下のコマンドを実行する．
  - mise をインストールしたくない場合は手動で Zola をインストールしてください．
  ```bash
  mise install
  ```

```bash
# ビルド
zola build
# ローカルサーバー起動
zola serve
# レンダリングチェック
zola check
```

## 記事の追加方法

- 記事は `content/blog/` フォルダに Markdown 形式で追加します．
- 記事で使用する画像などのアセットは記事のディレクトリ内に配置してください．

1. プロジェクトルートで `./x <new-post-name>` を実行します．
  - 例: `./x my-first-post`
  - Windows の場合は手動で `content/blog/HH-MM-DD-<new-post-name>` フォルダーを作成し，`_index.md` ファイルを追加してください．
2. `content/blog/YY-MM-DD-<new-post-name>/_index.md` が生成されるので，以下の Front Matter を編集してください．

  ```md
  +++
  # 記事のタイトル．分かりやすいものにしてください
  title = ""
  # 記事の説明．簡潔にまとめてください
  description = ""
  # 自分の GitHub ID にすること
  authors = [""]
  # 記事の日付．自動生成されるので，基本編集する必要はありません．
  # date = 
  # 記事の最終更新日．公開後に更新した場合は追加してください．
  # updated = 

  [taxonomies]
  # 記事のタグ．複数ある場合はカンマで区切ってください．
  # 基本は dev, tech, creative, other など
  tags = [""]
  # 記事のカテゴリー. 複数ある場合はカンマで区切ってください．
  categories = [""]
  
  # 埋め込みの画像を設定したい場合はコメントをはずして以下を編集
  # [extra.social_media_image]
  # path = "keyoxide-profile-page.png"
  # alt_text = "Screenshot of my personal Keyoxide profile page with a few identity proofs visible"
  +++
  ```

3. `zola serve` でローカルサーバーを起動する
  - Front Matter が間違っていると起動しません．
4. 記事を書きましょう!

## 記事で使用できる Markdown 記法

全ての記法は [こちら](https://eyalkalderon.com/terminus/blog/markdown/) を参照してください．

### 見出し

```md
# H1

## H2

### H3

#### H4

##### H5

###### H6
```

### 引用

```
> これは引用です。
```

#### 出典付きの引用

```
> これは引用です。
> 
> - <cite>m1sk9[^1]</cite>

[^1]: https://m1sk9.dev
```

### GitHub Callouts

```md
> [!NOTE]
> Some **content** with _Markdown_ `syntax`. Here is [a `link`](#github-style-alerts).

> [!TIP]
> Some **content** with _Markdown_ `syntax`. Here is [a `link`](#github-style-alerts).

> [!IMPORTANT]
> Some **content** with _Markdown_ `syntax`. Here is [a `link`](#github-style-alerts).

> [!WARNING]
> Some **content** with _Markdown_ `syntax`. Here is [a `link`](#github-style-alerts).

> [!CAUTION]
> Some **content** with _Markdown_ `syntax`. Here is [a `link`](#github-style-alerts).
```

### コードブロック

```md
```rust
fn main() {
    println!("Hello, world!");
}
```
```

### メタデータ付きコードブック

```md
```rust,linenos,hl_lines=10,name=~/incredibly/long/file/path/src/main.rs
fn main() {
    println!("Hello, world!");
}
```
```

# R Markdownのparams機能を利用してflexdashboard作成

タイトルのとおりです。このリポジトリで自動生成したダッシュボードは以下の様な感じです:

- [1001 kosaki](https://kazutan.github.io/param_dashboard/out1001.html)
- [1002 chitoge](https://kazutan.github.io/param_dashboard/out1002.html)
- [1003 tsugumi](https://kazutan.github.io/param_dashboard/out1003.html)
- [1004 marika](https://kazutan.github.io/param_dashboard/out1004.html)

## 注意事項
- rmarkdownパッケージをgithub版にアップデートしてください(2016/06/10現在)
- flexdashboardパッケージをgithubからインストールしてください(2016/06/10現在)

## 手順
### データセットを準備

普通にデータセットを準備してください。今回はcsvファイルを念頭に置いています。今回は本リポジトリ内の`makedata.R`を実行して`data.csv`を作成しましたので、これを利用しています。

### 雛形の`dash.Rmd`を準備

[flexdashboardパッケージのドキュメント](http://rmarkdown.rstudio.com/flexdashboard/)を参考に作成してください。

まずはcsvデータを読み込み、そこから1レコードを指定するようフィルタをかけて、そのデータをもとにダッシュボードの内容を組み立てるようにしてください。

単体でちゃんとknitできるようになれば、あとは`params`の設定です。詳しくは[rmarkdowm本家ドキュメントの該当ページ](http://rmarkdown.rstudio.com/developer_parameterized_reports.html)を参照してください。

### render_dashの実行

詳細は`render_dash.R`のコードをみてください。これを実行すると自動的に連番でhtmlファイルが生成されます。これでOKです。なおデータを変更したり、ベースのダッシュボード用Rmdを変更した場合は、もう一度このrender_dashを全部選択して実行すればOKなはずです。

## このあとは?

ここまできたら関数化したりパッケージ化してもいい気がするのですが、それはそのうち気が向いたらやります…が、使用場面とニーズを考えると、この辺のノウハウ程度でとどめておいて、あとは各自ででもいいかなぁ。

### LICENSE

MIT LICENSE.

あとは実際のニーズにより色々変化するので省略します。
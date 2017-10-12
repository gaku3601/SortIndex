# SortIndex
rails アプリのscaffordで生成したindex.html.erbにソート機能を付与します。
![](http://www.gakusmemo.com/wp-content/uploads/2017/10/Untitled.gif)

## 使い方
index.html.erbのテーブルヘッダー部分を  
<%= sort_item "表示名","カラム名" %>というように  
以下のような形で修正します。

    <th><%= sort_item "#","id" %></th>
    <th><%= sort_item "Name","name" %></th>
    <th><%= sort_item "Title","title" %></th>
    <th><%= sort_item "Result","result" %></th>
    <th colspan="3"></th>

また、scaffoldで生成したcontrollerのindex部分を  
order_model("モデル名",params[:sort],params[:method])  
で返却されものを格納するように変更します。

    def index
      @scores = order_model("Score",params[:sort],params[:method])
    end

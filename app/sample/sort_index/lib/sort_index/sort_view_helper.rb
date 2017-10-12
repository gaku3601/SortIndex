module SortIndex
  module SortViewHelper
    # ソート結果を(△ ▽ で表現し、リンクを作成する)
    def sort_item(item_name,sort_name)
      if sort_name == @sort && @method == "asc"
        return link_to("#{item_name}",:sort =>sort_name,:method =>"desc") + "▲".html_safe
      elsif sort_name == @sort && @method == "desc"
        return link_to("#{item_name}",:sort =>sort_name,:method =>"asc") + "▼".html_safe
      else
        return link_to("#{item_name}",:sort =>sort_name,:method =>"desc")
      end
    end
  end
end

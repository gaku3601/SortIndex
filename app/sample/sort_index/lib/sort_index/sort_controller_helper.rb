module SortIndex
  module SortControllerHelper
    def order_model(model_name,sort_param,method_param)
      @sort = sort_param.nil? ? 'id' : sort_param
      @method = method_param.nil? ? 'desc' : method_param
      model_name.constantize.order("#{@sort} #{@method}")
    end
  end
end

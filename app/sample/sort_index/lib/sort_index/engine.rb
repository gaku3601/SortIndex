require 'sort_index/sort_view_helper'
module SortIndex
  class Engine < ::Rails::Engine
    isolate_namespace SortIndex
    initializer 'sort_index.action_view_helpers' do
      ActiveSupport.on_load :action_view do
        include SortIndex::SortViewHelper
      end
    end
  end
end

require 'sort_index/sort_controller_helper'
module SortIndex
  class Engine < ::Rails::Engine
    isolate_namespace SortIndex
    initializer 'sort_index.action_controller_helpers' do
      ActiveSupport.on_load :action_controller do
        include SortIndex::SortControllerHelper
      end
    end
  end
end

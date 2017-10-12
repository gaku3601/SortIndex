Rails.application.routes.draw do
  mount SortIndex::Engine => "/sort_index"
end

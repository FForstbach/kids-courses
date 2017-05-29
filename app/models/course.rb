class Course < ApplicationRecord
  has_many :teachers

  include AlgoliaSearch

  algoliasearch do
    attribute :title, :subtitle, :description
    searchableAttributes ['title', 'subtitle', 'unordered(description)']
  end


end

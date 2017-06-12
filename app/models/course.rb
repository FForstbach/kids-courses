class Course < ApplicationRecord
  has_many :teachers
  belongs_to :school

  include AlgoliaSearch

  algoliasearch per_environment: true do
    attribute :title, :subtitle, :description, :category, :school, :url, :photo
    searchableAttributes ['title', 'subtitle', 'unordered(description)']
  end
  def url
    course_path(id: self.id)
  end

end

class CoursesController < ApplicationController

  def index
    @courses = Index.all
  end


end

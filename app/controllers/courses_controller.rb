class CoursesController < ApplicationController

  def index
    @courses = Course.all
  end

  def create
  end

  def home
    @courses = Course.all
  end

end

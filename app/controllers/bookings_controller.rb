class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @booking = Booking.new
    @booking.user = current_user
    @booking.course_id = params[:course_id]
    @booking.save
    raise
  end

  def create
  end

  def destroy
  end
end

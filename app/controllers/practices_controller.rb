class PracticesController < ApplicationController
  def index
    @practice = Practice.new
    @practices = Practice.all
  end

  def create
    @practice = Practice.new(practice_params)
    @practice.save
  end

  def edit
  end

  private
  def practice_params
    params.require(:practice).permit(:method, :text)
  end
end

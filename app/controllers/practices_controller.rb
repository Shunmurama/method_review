class PracticesController < ApplicationController
  def index
    @practice = Practice.new
    @practices = Practice.all
  end

  def create
    @practice = Practice.new(practice_params)
    @practice.save
    redirect_to practices_path
  end

  def edit
    @practice = Practice.find(params[:id])
  end

  def update
    @practice = Practice.find(params[:id])
    @practice.update(practice_params)
    redirect_to practices_path
  end

  def destroy
    practice = Practice.find(params[:id])
    practice.destroy
    redirect_to practices_path
  end

  private
  def practice_params
    params.require(:practice).permit(:method, :text)
  end
end

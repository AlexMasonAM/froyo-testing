class YogurtsController < ApplicationController

  def index
    @yogurts = Yogurt.all
  end

  def show
    @yogurt = Yogurt.find(params[:id])
  end
end
class YogurtsController < ApplicationController

  def index
    @yogurts = Yogurt.all
  end

  def show
    @yogurt = Yogurt.find(params[:id])
  end

  def new
    @yogurt = Yogurt.new
    # Yogurt.create!(flavor: 'alex', topping: 'shirt', quantity: 3.5)
  end

  def create
    @yogurt = Yogurt.new(params.require(:yogurt).permit(:flavor, :topping, :quantity))

    if @yogurt.save
      redirect_to yogurts_path
    else
      render :new
    end

  end
end
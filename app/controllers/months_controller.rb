class MonthsController < ApplicationController
  def index
    @months = Month.ordered
  end

  def show
    @month = Month.ordered.includes(:expenses).find(params[:id])
  end

  def new
    @month = Month.new
  end

  def create
    @month = Month.new(month_params)

    if @month.save
      redirect_to months_path
    else
      render :edit
    end
  end

  def edit
    @month = Month.includes(:expenses).find(params[:id])
  end

  def update
    @month = Month.find(params[:id])
    if @month.update_attributes(month_param)
      @month.month_expenses.each do |me|
        me.calculate_sum_real
        me.save
      end

      redirect_to months_path
    else
      redirect_to months_path
    end
  end

  def month_params
    params.require(:months).permit(:name, :result)
  end

  def month_param
    params.require(:month).permit(:name, :result)
  end
end

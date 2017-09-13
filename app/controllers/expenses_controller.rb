class ExpensesController < ApplicationController
  def index
    @expenses = Expense.ordered
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expense_params)

    if @expense.save
      redirect_to expenses_path
    else
      redirect_to expenses_path
    end
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update_attributes(expense_param)
      redirect_to expenses_path
    else
      redirect_to edit_expense_path
    end
  end

  def expense_params
    params.require(:expenses).permit(:name, :weight)
  end

  def expense_param
    params.require(:expense).permit(:name, :weight)
  end
end

require 'rails_helper'

RSpec.describe Expense, :type => :model do
  # Create sample data
  subject(:expense) { Expense.create(name: 'Test', weight: '2500', month: 'Apr') }

  it "Verify nil value in name column" do
  	name = Expense.new(name: nil)
  	expect(name).to_not be_valid
  end

  it "Verify nil value in weight column" do
  	weight = Expense.new(weight: nil)
  	expect(weight).to_not be_valid
  end

  it "Verify nil value in month column" do
  	month = Expense.new(month: nil)
  	expect(month).to_not be_valid
  end

  it "Verify the name in expense table" do
    expect(expense.name).to eq('Test')
  end

  it "Verify the amount in expense table" do
  	expect(expense.weight.to_s).to eq('2500')
  end

  it "Verify the month in expense table" do
  	expect(expense.month).to eq('Apr')
  end
end

require 'rails_helper'

RSpec.describe Month, :type => :model do
  # Create some sample data
  subject(:month) { Month.create(name: 'Test Month', result: 'Sample description') }

  it "Verify nil value in name column" do
  	expect(Month.new(name: nil)).to_not be_valid
  end

  it "Verify nil value in result column" do
  	expect(Month.new(result: nil)).to_not be_valid
  end

  it "Verify the name in month table" do
    expect(month.name).to eq('Test Month')
  end

  it "Verify the result in month table" do
  	expect(month.result).to eq('Sample description')
  end

  it "Verify sum of all expenses for a particular month" do
  	Expense.create(name: 'Test2', weight: '200', month: 'May')
  	Expense.create(name: 'Test3', weight: '3500', month: 'May')
  	expenses_sum = Expense.where(month: 'May').sum(:weight)
  	expect(expenses_sum.to_s).to eq('3700')
  end

  it "Update result value and verify" do
    month.update(result: 'Updated description')
    expect(month.result).to eq('Updated description')
  end

  it "Update name value and verify" do
    month.update(name: 'Update Month')
    expect(month.name).to eq('Update Month')
  end

  it "Update all fields and verify" do
    month.update(name: 'Last Update', result: 'Final description')
    expect(month.name).to eq('Last Update')
    expect(month.result).to eq('Final description')
  end
end

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
end

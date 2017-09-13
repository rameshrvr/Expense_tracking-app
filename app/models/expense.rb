class Expense < ApplicationRecord
  has_many :month_expenses, dependent: :destroy, inverse_of: :expenses
  has_many :months, through: :month_expenses

  validates_presence_of :name, :weight
  validates_uniqueness_of :name

  attr_accessor :name, :weight, :is_active

  scope :ordered, ->() { order('weight DESC') }
  scope :active, ->() { where(is_active: true) }
end

class Month < ApplicationRecord
  has_many :month_expenses, dependent: :destroy, inverse_of: :month
  has_many :expenses, through: :month_expenses

  validates_presence_of :name

  accepts_nested_attributes_for :month_expenses

  scope :ordered, -> { order('id DESC') }
end

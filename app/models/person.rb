class Person < ApplicationRecord
  belongs_to :address, dependent: :destroy, foreign_key: 'address_id'
  accepts_nested_attributes_for :address
  validates :name,
            presence: true
  def to_s
    name
  end
end

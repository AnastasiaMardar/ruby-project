class Address < ApplicationRecord
  has_many :people;
  validates :street,
            presence: true
  def to_s
    street
  end
  # accepts_nested_attributes_for :people
end

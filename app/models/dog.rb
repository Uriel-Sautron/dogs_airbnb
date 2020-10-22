class Dog < ApplicationRecord
  has_many :strolls
  has_many :dog_sisters, through: :strolls
end

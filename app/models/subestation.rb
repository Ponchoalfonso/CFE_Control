class Subestation < ApplicationRecord

  belongs_to :zone

  has_many :power_transformers
  has_many :own_use_transformers
  has_many :switches
  has_many :battery_banks

end

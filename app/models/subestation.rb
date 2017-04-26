class Subestation < ApplicationRecord

  belongs_to :zone

  has_many :switches
  has_many :pwtransformers
  has_many :owntransformers
  has_many :btbanks

end

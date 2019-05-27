class Basic < ApplicationRecord
  has_one :skill, dependent: :destroy
  has_one :inventory, dependent: :destroy
end

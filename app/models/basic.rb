class Basic < ApplicationRecord
  has_one :skill, dependent: :destroy
end

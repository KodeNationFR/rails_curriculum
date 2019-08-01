class Course < ApplicationRecord
  has_many :steps, dependent: :destroy
end

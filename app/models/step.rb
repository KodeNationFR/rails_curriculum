class Step < ApplicationRecord
  belongs_to :course, dependent: :destroy
end

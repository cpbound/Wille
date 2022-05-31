class Will < ApplicationRecord
  belongs_to :user
  belongs_to :executor, class_name: "User", foreign_key: :executor_id
end

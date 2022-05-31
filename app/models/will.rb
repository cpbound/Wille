class Will < ApplicationRecord
  belongs_to :user
  belongs_to :executor, class_name: "User", foreign_key: :executor_id, optional: true


  CATEGORIES = ["< $500k", "$500k - 1$M", "$1M - $5M", "> $5M"]

end

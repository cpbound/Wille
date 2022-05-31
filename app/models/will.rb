class Will < ApplicationRecord
  belongs_to :user

  CATEGORIES = ["< $500k", "$500k - 1$M", "$1M - $5M", "> $5M"]
end

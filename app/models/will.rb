class Will < ApplicationRecord
  belongs_to :user
  belongs_to :executor, class_name: "User", foreign_key: :executor_id, optional: true


  CATEGORIES = ["< $500k", "$500k - 1$M", "$1M - $5M", "> $5M"]
  CATEGORIES2 = ["Partner", "Best friend", "Children", "Nurse"]
  CATEGORIES3 = ["Cellphone", "Sunglasses", "Guitar", "Chair"]
  CATEGORIES4 = ["Violence Against Women", "Childhood Cancer Support", "Fight Climate Change", "Bund für Umwelt und Naturschutz" ]
end

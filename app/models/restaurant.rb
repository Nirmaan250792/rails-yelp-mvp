class Restaurant < ApplicationRecord
  validates :name, presence true
  validates :address, presence true

  restaurant_category = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion:{in:restaurant_category,message:"%{value} is not a valid category"}
end

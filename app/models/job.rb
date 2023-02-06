class Job < ApplicationRecord
  has_rich_text :description
  has_many :categories, dependent: :destroy, class_name: "Category"

 
end

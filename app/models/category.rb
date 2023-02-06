class Category < ApplicationRecord
    belongs_to :job, optional: true, dependent: :destroy, class_name: "Job"
end

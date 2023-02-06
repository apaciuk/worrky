class AddCategoryIdToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :category_id, :uuid
  end
end

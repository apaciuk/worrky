class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs, id: :uuid do |t|
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""
      t.string :company, null: false, default: ""
      t.string :url, null: false, default: ""

      t.timestamps
    end
  end
end

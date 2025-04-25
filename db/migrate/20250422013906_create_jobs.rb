class CreateJobs < ActiveRecord::Migration[8.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :salary
      t.integer :category_id

      t.timestamps
    end
  end
end

class CreateTaskCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :task_categories do |t|

      t.references :task, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.timestamps
    end
  end
end

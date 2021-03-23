class CreateUpdateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :update_categories do |t|

      t.references :update, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.timestamps
    end
  end
end

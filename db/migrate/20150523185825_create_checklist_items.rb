class CreateChecklistItems < ActiveRecord::Migration
  def change
    create_table :checklist_items do |t|
      t.string :description
      t.datetime :completed_on
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :active, default: true, null: false
      t.string :union, null: false

      t.timestamps
    end
  end
end

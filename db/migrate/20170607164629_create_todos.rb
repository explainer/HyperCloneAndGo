class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :completed
      t.integer :priority

      t.timestamps
    end
  end
end

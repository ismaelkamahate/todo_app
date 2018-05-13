class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :description
      t.integer :pomdoro_estimate
      t.boolean :complete
      t.string :title
      t.integer :time_complete

      t.timestamps null: false
    end
  end
end

class CreateReps < ActiveRecord::Migration
  def change
    create_table :reps do |t|
      t.references :steppy
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :reps, :steppy_id
  end
end

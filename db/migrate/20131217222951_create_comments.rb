class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :steppy
      t.string :name
      t.text :body

      t.timestamps
    end
    add_index :comments, :steppy_id
  end
end

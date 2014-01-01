class CreateCommentsies < ActiveRecord::Migration
  def change
    create_table :commentsies do |t|
      t.references :steppy
      t.string :title
      t.text :body

      t.timestamps
    end
    add_index :commentsies, :steppy_id
  end
end

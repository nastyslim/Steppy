class CreateChecklists < ActiveRecord::Migration
  def change
    create_table :checklists do |t|
      t.string :chk1
      t.string :chk2
      t.string :chk3
      t.string :chk4
      t.string :chk5
      t.string :chk6
      t.string :chk7
      t.string :chk8
      t.string :chk9
      t.string :chk10

      t.timestamps
    end
  end
end

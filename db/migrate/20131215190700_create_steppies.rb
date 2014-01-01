class CreateSteppies < ActiveRecord::Migration
  def change
    create_table :steppies do |t|
      t.string :goal
      t.string :region
      t.text :description
      t.string :step1
      t.string :step2
      t.string :step3
      t.string :step4
      t.string :step5
      t.string :step6
      t.string :step7
      t.string :step8
      t.string :step9
      t.string :step10
      t.string :ask

      t.timestamps
    end
  end
end

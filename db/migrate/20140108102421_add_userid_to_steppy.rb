class AddUseridToSteppy < ActiveRecord::Migration
  def change
    add_column :steppies, :userid, :string
  end
end

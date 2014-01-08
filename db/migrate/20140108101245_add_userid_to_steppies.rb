class AddUseridToSteppies < ActiveRecord::Migration
  def change
    add_column :steppies, :userid_string, :string
  end
end

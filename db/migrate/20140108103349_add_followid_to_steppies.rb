class AddFollowidToSteppies < ActiveRecord::Migration
  def change
    add_column :steppies, :followid, :string
  end
end

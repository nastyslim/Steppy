class AddChkUserIdColumnToChecklist < ActiveRecord::Migration
  def change
    add_column :checklists, :chk_user_id, :string
  end
end

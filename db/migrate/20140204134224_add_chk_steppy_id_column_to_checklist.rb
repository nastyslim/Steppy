class AddChkSteppyIdColumnToChecklist < ActiveRecord::Migration
  def change
    add_column :checklists, :chk_steppy_id, :string
  end
end

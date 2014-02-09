class AddCategoriesColumnToIdeas < ActiveRecord::Migration
  def change
    add_column :steppies, :categories, :string
  end
end

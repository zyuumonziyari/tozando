class AddApplyUrlToProjects < ActiveRecord::Migration[7.2]
  def change
    add_column :projects, :apply_url, :string
  end
end

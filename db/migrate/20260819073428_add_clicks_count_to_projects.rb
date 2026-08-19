class AddClicksCountToProjects < ActiveRecord::Migration[7.2]
  def change
    add_column :projects, :clicks_count, :integer, default: 0
  end
end

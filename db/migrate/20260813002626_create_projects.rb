class CreateProjects < ActiveRecord::Migration[7.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :area
      t.date :event_date
      t.text :description

      t.timestamps
    end
  end
end

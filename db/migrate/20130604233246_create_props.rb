class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|
      t.integer :project_id

      t.timestamps
    end
  end
end

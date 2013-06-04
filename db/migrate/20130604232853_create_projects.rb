class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :codebase_url
      t.text :description
      t.string :contact_email

      t.timestamps
    end
  end
end

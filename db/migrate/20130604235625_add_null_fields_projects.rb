class AddNullFieldsProjects < ActiveRecord::Migration
  def up
    change_column :projects, :name, :string, :null => false
    change_column :projects, :url, :string, :null => false
    change_column :projects, :codebase_url, :string, :null => false
    change_column :projects, :description, :text, :null => false
  end

  def down
    change_column :projects, :name, :string, :null => true
    change_column :projects, :url, :string, :null => true
    change_column :projects, :codebase_url, :string, :null => true
    change_column :projects, :description, :text, :null => true
  end
end
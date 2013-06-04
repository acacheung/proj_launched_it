class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :body
      t.integer :project_id

      t.timestamps
    end
  end
end

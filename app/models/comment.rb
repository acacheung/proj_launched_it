class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :first_name, :last_name, :project_id
end

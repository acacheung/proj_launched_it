class Comment < ActiveRecord::Base
  attr_accessible :body, :email, :first_name, :last_name, :project_id

  validates_presence_of :body, :email, :first_name, :last_name, :project_id

  validates :email, :format => { :with=>/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end

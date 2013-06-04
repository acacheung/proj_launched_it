class Project < ActiveRecord::Base
  attr_accessible :codebase_url, :contact_email, :description, :name, :url

  validates_presence_of :codebase_url, :contact_email, :description, :name, :url
end

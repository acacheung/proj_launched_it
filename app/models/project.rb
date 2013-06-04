class Project < ActiveRecord::Base
  attr_accessible :codebase_url, :contact_email, :description, :name, :url
end

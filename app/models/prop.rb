class Prop < ActiveRecord::Base
  attr_accessible :project_id

  belongs_to :project
end

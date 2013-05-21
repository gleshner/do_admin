class Workshop < ActiveRecord::Base
  attr_accessible :description, :level, :title
  has_many :things
  has_many :events, :through => :things
  has_many :presenters, :through => :things
end

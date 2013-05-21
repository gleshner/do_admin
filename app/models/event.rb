class Event < ActiveRecord::Base
  attr_accessible :duration, :e_name, :startDate
  has_many :things
  has_many :presenters, :through => :things
  has_many :workshops, :through => :things
end

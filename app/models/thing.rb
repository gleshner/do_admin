class Thing < ActiveRecord::Base
  attr_accessible :classDate, :endTime, :event_id, :presenter_id, :startTime, :workshop_id
  belongs_to :event
  belongs_to :presenter
  belongs_to :workshop
end

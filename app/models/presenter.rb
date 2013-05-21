class Presenter < ActiveRecord::Base
  attr_accessible :bio, :email, :facebook, :fetlife, :google, :image, :nameAlias, :nameFirst, :nameLast, :new, :phone, :privateEmail, :shirtSize, :shortDescrip, :twitter, :website
  has_many :things
  has_many :events, :through => :things
  has_many :workshops, :through => :things
end

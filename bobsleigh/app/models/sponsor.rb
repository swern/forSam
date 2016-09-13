class Sponsor < ActiveRecord::Base
  has_many :sponsorships
  has_many :athletes, through: :sponsorships

end

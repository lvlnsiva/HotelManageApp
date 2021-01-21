class Guest < ApplicationRecord
	has_and_belongs_to_many :checkins
  validates_presence_of :first_name
  validates_presence_of :last_name

  def name
    self.FirstName  + " " + self.LastName
  end
end

class Student < ActiveRecord::Base
  attr_accessible :date_of_birth, :family_name, :given_name, :grade_point_average, 
  :middle_name, :start_date

  has_many :awards, :dependent => :destroy

  has_and_belongs_to_many :courses

  def name
  	given_name + " " + family_name
  end
end

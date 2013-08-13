class Course < ActiveRecord::Base
  attr_accessible :name

  has_and_belongs_to_many :students

  def enrolled_in?(course)
  	self.courses.include?(course)
  end

  def unenrolled_courses
  	Course.find(:all) - self.courses
  end

end

class Appointment < ActiveRecord::Base
  belongs_to :students
attr_accessor :date, :hour, :done

validates :date,  :presence => true
validates :hour,  :presence => true,
                  :uniqueness => {:scope => :date}
end

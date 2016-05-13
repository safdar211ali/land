class Course < ActiveRecord::Base
  belongs_to :teacher
  validates_presence_of :coursename,:urcoursename,:school,:urschool,:teacher_id
  scope :ordered,->{order(:id)}
 end

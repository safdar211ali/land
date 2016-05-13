class Teacher < ActiveRecord::Base
  has_many :contacts,dependent: :destroy
  has_many :courses,dependent: :destroy
  # before_save :cap_name
  validates_presence_of :name
  validates_presence_of :urname
  # def cap_name
  #   self.name = name.capitalize
  #
  # end
  def full_name
    "#{name} (#{urname})"
  end
end

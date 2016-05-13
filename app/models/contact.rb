class Contact < ActiveRecord::Base
  validates_presence_of :teacher_id,:contactname,:urcontactname,:contact
  # before_save :cap_name
  belongs_to :teacher
  # def cap_name
  #   self.contactname = contactname.capitalize
  #
  # end
end

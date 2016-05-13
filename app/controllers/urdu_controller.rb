class UrduController < ApplicationController
  layout 'urdu'
  def index

  end
  def plan
    @fees = Fee.all
  end
  def services
    @services = Service.order(:id)
  end
  def qualifications
    # @courses = Course.ordered
    @teachers = Teacher.order(:id)
  end
  def contacts
    @contacts = Contact.order(:id)
    @teachers = Teacher.order(:id)
  end
end

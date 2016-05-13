class HomeController < ApplicationController
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
    @teachers = Teacher.all
  end
  def contacts
    @contacts = Contact.all
    @teachers = Teacher.all
  end

end

 class RegistrationsController < Devise::RegistrationsController
  def new

    @pro_plan = Plan.find(2)
  end

end

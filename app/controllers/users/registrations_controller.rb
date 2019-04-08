class Users::RegistrationsController < Devise::RegistrationsController#update
  #Extend default devise gem behavior so that
  #users signing up with the Pro account (plan ID 2)
  #save with a special Stripe subscription function.
  #Otherwise Devise signs up user as usual.
  # Only do this when the user is signing up


  # Extends the default Devisor behaviour so that
  # users who are signing up with the pro account is
  # saved with the special stripe function otherwise,
  # devise signs up as usual.

  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_subscription
        else
          resource.save
        end
      end
    end
  end
end

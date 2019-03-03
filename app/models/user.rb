class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :plan
  has_one :profile
  has_many :links


  attr_accessor :stripe_card_token
  #If Pro users passes validations (email, password, etc.),
  #then call Stripe and tell Stripe to set up a subscription
  #upon charging customer's card.
  #Strip responds back with customer data.
  #Store customer.id as customer token and save the user.
  def save_with_subscription
    if valid?
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end

  has_one :profile
end

class ChartsController < ApplicationController
  def new_votes
    render json: ActsAsVotable::Vote.all.group_by_day(:created_at).count
  end

    def new_users
      render json: User.group_by_month(:created_at).count
    end
end

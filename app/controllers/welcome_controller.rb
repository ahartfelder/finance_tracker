class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if user_signed_in?
      redirect_to my_portfolio_path
    end
  end
end

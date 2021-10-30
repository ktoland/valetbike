class LoginController < ApplicationController
  def index
  end

  def new
   # @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      flash[:success] = "Successfully created."
      render 'index'
    else
      flash[:danger] = "Something went wrong."
      render 'signup'
    end
  end

  
  def signup 
  end

  private

    def user_params
      params.permit(:Email, :Username, :Password, :CreditCardNum, :ExpDate, :SecurityCode)
    end
end 

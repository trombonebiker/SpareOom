class UsersController < ApplicationController

  def index
    @users = User.all

    @users.each do |user|
      user.meat = 0
      user.non_meat = 0

      @reciepts = user.receipts.all

      @reciepts.each do |receipt|
        user.meat = user.meat + receipt.meat
        user.non_meat = user.non_meat + receipt.total - receipt.meat
      end

      user.amount_due_ethan = user.non_meat / 5
      user.amount_due_others = user.meat / 4
    end
  end


  def show
    @user = User.find(params[:id])
  end


  def new
    @user = User.new
  end


  def edit
    @user = User.find(params[:id])
  end


  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end


  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end


  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end


  private
  def user_params
    params.require(:user).permit(:first_name, :surname, :amount_due)
  end
  
end

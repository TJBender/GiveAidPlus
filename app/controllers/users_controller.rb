class UsersController < ApplicationController

#   before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @articles = User.all
  end


  def show
    @user = User.find_by(params[:id])
  end

  # GET /user/new
  def new
    @user = User.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /user

  def update

  end

  def destroy

  end

  private

    def user_params
      params.require(:user).permit(:name)
    end

end

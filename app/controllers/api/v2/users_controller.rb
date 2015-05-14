class Api::V2::UsersController < Api::V1::UsersController

  def show
    @user = User.find(params[:id])
  end
  
end

class Api::V1::UsersController < Api::V1::BaseController

  before_action :authenticate_user!, only: [:update]
  
  def show
    @user = User.find(params[:id])

    Rails.logger.info("---------------------#{@user.inspect}")

    # render(json: Api::V1::UserSerializer.new(user).to_json)
    # render json: @user.to_json
  end

  def update
    @user = User.find(params[:id])
    # return api_error(status: 403) if !UserPolicy.new(current_user, @user).update?
    authorize @user, :update?
    @user.update_attributes(update_params)
  end

  private

  def update_params
    params.require(:user).permit(:name)
  end
  
end

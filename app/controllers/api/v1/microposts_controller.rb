class Api::V1::MicropostsController < Api::V1::BaseController

  def index
    user = User.find(params[:user_id])
    @microposts = paginate(user.microposts)
  end
  
end

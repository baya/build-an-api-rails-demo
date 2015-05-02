json.session do
  json.(@user, :id, :name, :admin)
  json.token @user.authentication_token
end

json.user do
  json.(@user, :id, :email, :name,  :activated, :admin, :created_at, :updated_at)
end

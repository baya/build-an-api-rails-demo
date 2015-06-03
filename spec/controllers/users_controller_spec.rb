# -*- coding: utf-8 -*-
require 'spec_helper'
require 'awesome_print'

RSpec.describe Api::V1::UsersController, type: :controller do

  render_views
  
  describe "GET #show" do

    before do
      @user = User.create(email: 'test01@mail.com', password: '123123')
      @request.headers['Authorization'] = "Token token=#{@user.authentication_token}, email=#{@user.email}"  # 问题point
    end

    after do
      @request.headers['Authorization'] = nil
    end

    it "returns http success" do
      get :show, { id: @user.to_param, format: :json }

      ap response.body  # 此处有一个奇怪的反应，打印 "" 这个""不知从何处而来。原因是加入了@request.headers['Authorization'] = "xxx“的设置，去掉就正常返回。
      json_hash = JSON.parse(response.body)
      expect(response).to be_success
    end
    
  end
end

class UserController < ApplicationController
  get "users/:slug" do
    @user = User.find_by_slug(params[:slug])
    erb :'users/show'
  end

  get "/signup" do
    if !logged_in?
      erb :'users/signup'
    else
      redirect to "/inventory"
    end
  end

  get "/login" do
    if !logged_in?
      erb :'users/login'
    else
      redirect "/inventory"
    end
  end
end

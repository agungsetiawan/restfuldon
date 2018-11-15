class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def grant_admin
    current_resource.update(admin: true)

    redirect_to users_path
  end

  def revoke_admin
    current_resource.update(admin: false)

    redirect_to users_path
  end

  private

  def current_resource
    User.find_by(id: params[:id])
  end
end

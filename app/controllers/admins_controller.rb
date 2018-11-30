class AdminsController < ApplicationController
  def create
    current_resource.update(admin: true)

    redirect_to users_path
  end

  def destroy
    current_resource.update(admin: false)

    redirect_to users_path
  end

  private

  def current_resource
    User.find_by(id: params[:user_id])
  end
end

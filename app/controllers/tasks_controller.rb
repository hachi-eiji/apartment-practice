class TasksController < ApplicationController
  def index
    if user.nil?
      school_id = params[:school_id]
      user_id = params[:user_id]
      session[:user] = {user_id: user_id, school_id: school_id}
      user
      logger.info "set user is #{user}"
    else
      logger.info "user is #{user}"
    end
    @tasks = Task.all
    render json: @tasks
  end

  def user
    session[:user]
  end
end

class TasksController < ApplicationController
  def index
    # ここはちゃんと共通を見に行ってる？
    # 見に行ってるぽい
    @user = User.first
    @tasks = Task.all
    render json: @tasks
  end
end

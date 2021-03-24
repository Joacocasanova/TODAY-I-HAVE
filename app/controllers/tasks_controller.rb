class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]

  def create
    @task = Task.create(task_params)
    @task.user_id = current_user.id
    @task.save!
    redirect_to root_path
  end

  def new
    @task = Task.new
  end

  def index
    @tasks = Task.all.group_by_day(&:created_at)
    @task = Task.new
    @tag = Tag.new
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, tags_attributes: [ :name ])
  end
end

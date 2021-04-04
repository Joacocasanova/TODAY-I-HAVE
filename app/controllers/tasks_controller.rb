class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new, :show ]
  before_action :set_task, only: [ :show ]

  def create
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    @tags = params[:task][:tags_attributes]["0"]["name"]
    if @task.save
      @tags.split(" ").each do |tag_name|
        tag = Tag.find_or_create_by(name: tag_name)
        @task.task_categories.find_or_create_by(tag: tag)
      end
      redirect_to root_path
    end
  end

  def new
  end

  def show
    @review = Review.new
  end

  def index
    @today_tasks = Task.all.where(user_id: current_user, created_at: Time.now.midnight..Time.now)
    @tasks = Task.all.group_by_day(&:created_at)
    @task = Task.new
    @task.tags.build
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, :tags_attributes)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end

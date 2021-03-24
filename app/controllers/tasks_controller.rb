class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]

  def create
  end

  def new
  end

  def index
    @tasks = Task.all.group_by_day(&:created_at)
  end
end

class TaskController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :new ]

  def create
  end

  def new
  end

  def index
    @tasks = Task.all.order(created_at: :desc)
  end
end

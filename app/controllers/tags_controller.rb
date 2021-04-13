class TagsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query"
      @tasks = Task.joins(:tags).where(sql_query, query: "%#{params[:query]}%")
    else
      @tasks = Task.all
    end
  end
end

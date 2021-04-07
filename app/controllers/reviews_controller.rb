class ReviewsController < ApplicationController
  def new
    @task = Task.find(params[:task_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @task = Task.find(params[:task_id])
    @review.task = @task
    @review.user_id = current_user.id
    if @review.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
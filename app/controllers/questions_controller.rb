class QuestionsController < ApplicationController
  before_action :set_question, only: %i[ show destroy ]
  before_action :authenticate_user!, only: [:new, :destroy]

  def new
    @post = Post.find(params[:post_id])
    @question = Question.new
    @user_id = current_user.id
  end

  def create
    @question = Question.new(question_params)

    if @question.save!
      redirect_to post_path
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body, :user_id, :answer_id)
  end
end

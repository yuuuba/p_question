class Question < ApplicationRecord
  belongs_to :user
  belongs_to :answer, optional: true
  belongs_to :post

  def posts_search
    #Post.where(Question.:post_id == :id)
  end
end

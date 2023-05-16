class PostAddQuestionId < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :question, foreign_key: true
  end
end

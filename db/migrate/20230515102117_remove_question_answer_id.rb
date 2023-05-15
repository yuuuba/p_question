class RemoveQuestionAnswerId < ActiveRecord::Migration[7.0]
  def change
    remove_index :questions, :answer_id
    remove_column :questions, :answer_id, :bigint
  end
end

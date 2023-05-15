class Question < ApplicationRecord
  belongs_to :user
  belongs_to :answer, optional: true
end

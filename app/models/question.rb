class Question < ApplicationRecord
  belongs_to :question_frame
  has_many :choices

end

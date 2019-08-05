class Question < ApplicationRecord
  validates_presence_of :text
  has_many :answers
end


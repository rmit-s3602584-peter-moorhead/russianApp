class Vocab < ApplicationRecord
    has_many :learneds
    has_many :users, through: :learneds
end
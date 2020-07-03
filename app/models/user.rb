class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :learneds
  has_many :vocabs, through: :learneds

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

end

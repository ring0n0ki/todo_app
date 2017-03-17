class User < ApplicationRecord
  has_many :lists, dependent: :destroy

  # Include default devise modules. Others available are:
  devise :database_authenticatable,:registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable #, :omniauthable
end

class User < ActiveRecord::Base
  has_many :following_through, class_name: 'Relationship', foreign_key: :following_id, dependent: :destroy
  has_many :follower_through, class_name: 'Relationship', foreign_key: :following_id, dependent: :destroy
  has_many :followings, through: :follower_through, source: :following
  has_many :followers, through: :following_through, source: :follower
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

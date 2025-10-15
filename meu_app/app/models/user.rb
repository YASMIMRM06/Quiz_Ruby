# app/models/user.rb
class User < ApplicationRecord
  has_secure_password

  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles

  has_many :user_answer_histories, dependent: :destroy
  has_many :user_results, dependent: :destroy

  validates :name, :email, :suap_id, presence: true
  validates :email, uniqueness: true
end
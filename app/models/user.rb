# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end

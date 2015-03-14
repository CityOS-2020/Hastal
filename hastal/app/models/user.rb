class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]
  include DeviseTokenAuth::Concerns::User
end

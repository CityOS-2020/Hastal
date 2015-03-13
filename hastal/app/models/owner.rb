class Owner < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable

  def self.find_for_database_authentication(warden_conditions)
    where(username: warden_conditions[:username]).first
  end
end

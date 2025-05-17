class User < ApplicationRecord
  acts_as_api
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  api_accessible :basic_details do |t|
    t.add :id
    t.add :full_name
    t.add :email
    t.add :created_at
  end
end

class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         jwt_revocation_strategy: JwtDenylist
  has_many :addresses
  def is?( requested_role )
    print(requested_role)
    self.role == requested_role.to_s
  end
end

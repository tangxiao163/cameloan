class User < ActiveRecord::Base
  belongs_to :tenant

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable

  validates :email, presence: true, uniqueness: { scope: :tenant_id }, case_sensitive: false
  validates :password, presence: true, confirmation: true

  def subdomain=(value)

  end

  def subdomain
  end

  def tenant_name=(value)
  end

  def tenant_name
  end
end

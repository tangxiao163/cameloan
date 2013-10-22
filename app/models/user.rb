class User < ActiveRecord::Base
  belongs_to :tenant

  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def subdomain=
  end

  def subdomain
  end
end

class User < ApplicationRecord
  attr_accessor :login
  has_many :challenges, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :o mniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :employee_id, presence: true, length: {maximum:4}       

  def self.find_for_database_authentication warden_condition
    conditons = warden_condition.dup
    login = conditons.delete(:login)
    where(conditons).where(
      ["lower(employee_id) = :value OR lower(email) = :value",
      { value: login.strip.downcase}]).first
  end
end


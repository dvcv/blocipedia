class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
    has_many :collaborators, dependent: :destroy
    has_many :wikis, through: :collaborators
    has_many :wikis, dependent: :destroy
    before_save { self.role ||= :standard }
    enum role: [:standard, :admin, :premium]
    scope :all_except, ->(user) { where.not(id: user) }
end

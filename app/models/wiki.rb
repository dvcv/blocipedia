class Wiki < ActiveRecord::Base
  belongs_to :user
  has_many :collaborators, dependent: :destroy
  has_many :users, through: :collaborators
  validates :user, presence: true
  default_scope { order(created_at: :desc) }
end

class User < ApplicationRecord

  after_create :create_subscriber

  extend FriendlyId
  friendly_id :username, use: [:slugged, :finders]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true

  has_many :favorites, dependent: :destroy

  def create_subscriber
    Subscriber.create(email: self.email) unless Subscriber.where(email: self.email).count > 0
  end
end

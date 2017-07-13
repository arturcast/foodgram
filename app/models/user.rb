class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
  validates :lastname, presence: true
  
  def fullname
    name + ' ' + lastname
  end
end

class User < ApplicationRecord
  # On crée les liens entre tables
  has_many :links 
  has_many :comments
end

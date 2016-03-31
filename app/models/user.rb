class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy, foreign_key: "author_id"
  has_many :comments, dependent: :destroy, foreign_key: "author_id"
end

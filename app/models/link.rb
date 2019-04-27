class Link < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments

  def self.search_by(search_term)
    where("LOWER(title) LIKE :search_term",
    search_term: "%#{search_term}")
  end
end

class Yeaornay < Link
  acts_as_votable
  belongs_to :user
  has_many :comments
end

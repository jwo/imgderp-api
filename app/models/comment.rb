class Comment < ActiveRecord::Base
  belongs_to :gallery

  validates :name, presence: true
  validates :gallery, presence: true
  validates :text, presence: true

end

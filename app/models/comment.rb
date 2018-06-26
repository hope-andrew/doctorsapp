class Comment < ApplicationRecord
  belongs_to :doctor, :validate => true
  belongs_to :user, :validate => true

  after_initialize :default_values

  # attr_accessor :doctor_id, :comment_body, :rating, :user_id
  validates :doctor_id, :comment_body, :rating, :user_id, :presence => true
  validates :rating, :numericality => { :only_integer => true, :less_than_or_equal_to => 5, :greater_than => 0}

  def default_values
    self.active ||= true
  end
end

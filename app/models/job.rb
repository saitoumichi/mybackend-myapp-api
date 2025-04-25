# app/models/job.rb

class Job < ApplicationRecord
  belongs_to :category

  validates :title, presence: true
  validates :salary, presence: true
  validates :category_id, presence: true

  def category_name
    category&.name
  end
end

# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  body       :text
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  has_many :comments
  
  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
end
 

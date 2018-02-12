# == Schema Information
#
# Table name: houses
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  background  :string
#  words       :string
#  seat        :string
#  region      :string
#  lord        :string
#  religion    :string
#  sigil_url   :string
#  sigil       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class House < ApplicationRecord
  has_many :characters
  has_many :images
  validates :name, presence: true
end

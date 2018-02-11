
class Character < ApplicationRecord
  belongs_to :house, inverse_of: :characters
  has_many :images, as: :imageable, inverse_of: :imageable

  validates :name, :description, presence: true
  def self.fields
    [
      "name",
      "description",
      "biography",
      "personality",
      "seasons",
      "titles",
      "status",
      "death",
      "origin",
      "allegiance",
      "culture",
      "religion",
      "predecessor",
      "successor",
      "father",
      "mother",
      "spouse",
      "children",
      "siblings",
      "lovers",
      "image_1_src",
      "image_1_caption",
      "image_2_src",
      "image_2_caption",
      "image_3_src",
      "image_3_caption",
      "image_4_src",
      "image_4_caption",
      "image_5_src",
      "image_5_caption",
      "image_6_src",
      "image_6_caption",
      "image_7_src",
      "image_7_caption",
      "image_8_src",
      "image_8_caption",
      "house"
    ]
  end
end
# == Schema Information
#
# Table name: characters
#
#  id                  :integer          not null, primary key
#  name                :string
#  house_id            :integer
#  description         :string
#  biography           :string
#  personality         :string
#  titles              :string
#  status              :string
#  death               :string
#  origin              :string
#  allegiance          :string
#  religion            :string
#  predecessor         :string
#  successor           :string
#  father              :string
#  mother              :string
#  spouse              :string
#  children            :string
#  siblings            :string
#  lovers              :string
#  culture             :string
#  appears_in_season_1 :boolean
#  appears_in_season_2 :boolean
#  appears_in_season_3 :boolean
#  appears_in_season_4 :boolean
#  appears_in_season_5 :boolean
#  appears_in_season_6 :boolean
#  appears_in_season_7 :boolean
#  appears_in_season_8 :boolean
#  appears_in_season_9 :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

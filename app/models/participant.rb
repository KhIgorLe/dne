# == Schema Information
#
# Table name: participants
#
#  id          :bigint           not null, primary key
#  age         :integer          not null
#  date        :date             not null
#  height      :integer          not null
#  weight      :integer          not null
#  eye_color   :string           not null
#  hair_color  :string           not null
#  hair_length :integer          not null
#  shoe_size   :integer          not null
#  type        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#

class Participant < ApplicationRecord
  belongs_to :user

  validates :age, :date, :height, :weight, :eye_color,
            :hair_color, :hair_length, :shoe_size, :type, presence: true
end

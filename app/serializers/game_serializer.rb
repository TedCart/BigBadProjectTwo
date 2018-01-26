class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_over, :board_string
  has_one :user
end

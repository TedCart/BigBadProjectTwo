class GameSerializer < ActiveModel::Serializer
  attributes :id, :game_over
  has_one :user
end

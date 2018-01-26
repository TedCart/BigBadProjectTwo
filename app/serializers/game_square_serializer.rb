class GameSquareSerializer < ActiveModel::Serializer
  attributes :id, :cell_index, :value
  has_one :game
end

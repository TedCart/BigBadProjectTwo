class WordSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :player_id, :word
end

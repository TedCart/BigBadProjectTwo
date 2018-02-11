class WordsController < ProtectedController
  before_action :set_word, only: [:update, :destroy]

  # GET /words
  def index
    @words = Word.all

    render json: @words
  end

  def self.one_game(id)
    where(game_id: id)
  end

  # GET /words/1
  def show
    word_list = Word.one_game(:id)
    render json: word_list
  end

  # POST /words
  def create
    word_beast = word_params
    word_string = word_beast['word']
    @game_id = word_beast['game_id']
    @player_id = word_beast['player_id']

    separated_words = word_string.split(',')

    separated_words.each do |new_word|
      @word = Word.new(
        word: new_word,
        game_id: @game_id,
        player_id: @player_id
      )
      @word.save
      if !@word.save
        return render json: @word.errors, status: :unprocessable_entity
      end
    end
    render json: word_string, status: :created, location: @word
  end

  # PATCH/PUT /words/1
  def update
    if @word.update(word_params)
      render json: @word
    else
      render json: @word.errors, status: :unprocessable_entity
    end
  end

  # DELETE /words/1
  def destroy
    @word.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = Word.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_params
      params.require(:word).permit(:game_id, :player_id, :word)
    end
end

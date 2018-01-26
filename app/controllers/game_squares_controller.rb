class GameSquaresController < OpenReadController
  before_action :set_game_square, only: [:show, :update, :destroy]

  # GET /game_squares
  def index
    @game_squares = GameSquare.all

    render json: @game_squares
  end

  # GET /game_squares/1
  def show
    render json: @game_square
  end

  # POST /game_squares
  def create
    @game_square = current_user.game_squares.build(game_square_params)

    if @game_square.save
      render json: @game_square, status: :created, location: @game_square
    else
      render json: @game_square.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /game_squares/1
  def update
    if @game_square.update(game_square_params)
      render json: @game_square
    else
      render json: @game_square.errors, status: :unprocessable_entity
    end
  end

  # DELETE /game_squares/1
  def destroy
    @game_square.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_square
      @game_square = GameSquare.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_square_params
      params.require(:game_square).permit(:game_id, :cell_index, :value)
    end
end

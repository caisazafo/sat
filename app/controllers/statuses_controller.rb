class StatusesController < ActionController::Base

  # GET /likes
  def index
    @likes = Status.all.order(created_at: :desc)
    render json: @likes
  end

  # GET /likes/1
  def show
    render json: @status
  end

  # POST /likes
  def create
    @like = Status.new(status_params)
    @like.save()
    render json: @like, status: :created, location: @like
  end



  def status_by_source
    @likes = Status.all

    likes = Status.where("sat_id = ?", params[:id]).order(created_at: :desc).limit(1)

    render json: likes[0]
  end



  private

    # Only allow a trusted parameter "white list" through.
    def status_params
      params.require(:status).permit(:sat_id, :depth, :risk)
    end
end

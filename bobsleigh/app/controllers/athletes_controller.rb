class AthletesController <ApplicationController

  def index
    athletes = Athlete.all
    render json: athletes.as_json(include: {team: {:except => [:created_at, :updated_at]}}, 
     :except => [:created_at, :updated_at])
  end

  def show
    athlete = Athlete.find(params[:id])
    render json: athlete.as_json(include: {team: {:except => [:created_at, :updated_at]}}, 
     :except => [:created_at, :updated_at])
  end
end

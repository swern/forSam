class SponsorshipsController <ApplicationController

    def index
        sponsorships= Sponsorship.where({athlete: params[:athlete_id]})
        render json: sponsorships.as_json(include: {sponsor: {:except => [:created_at, :updated_at]}}, 
     :except => [:created_at, :updated_at, :athlete_id, :sponsor_id])
    end

    def  show
      sponsorship = Sponsorship.find(params[:id])
      render json: sponsorship.as_json(include: {sponsor: {:except => [:created_at, :updated_at]}}, 
     :except => [:created_at, :updated_at, :athlete_id, :sponsor_id])
    end

end
class CompetitorsController < ApplicationController
  before_action :authorize, except: :index

  def index
    @competitors = Competitor.all
  end

  def new
    @competitor = Competitor.new
  end

  def create
    competitor = Competitor.new competitor_params
    if competitor.save
      flash[:info] = "Você criou um competidor"
    else
      flash[:info] = "Erro: Nome precisa existir e ser diferente de qualquer outro."
    end

    redirect_to competitors_path
  end

  def results
    @competitors = Competitor.all.map.sort_by { |comp| comp.votes}.reverse!

  end

  private

  def competitor_params
    params.require(:competitor).permit(:name, :image_url)
  end
end
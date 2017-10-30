class VotersController < ApplicationController
  def index
    @voters = Voter.all.order(name: :asc)
  end

  def new
    @voter = Voter.new
  end

  def create
    voter = Voter.new voter_params
    if voter.save
      flash[:info] = "Você criou um eleitor."
    else
      flash[:info] = "Erro: Nome precisa existir e ser diferente de qualquer outro."
    end

    redirect_to competitors_path
  end

  def unvote
    Voter.find(params[:id]).update competitor_id: nil, vote: false

    redirect_to voter_path
  end

  def vote
    if user = Voter.find_by_email(voter_params[:email])
      if user.vote
        flash[:info] = "Você não pode votar duas vezes."
      else
        user.update! vote: true, competitor_id: voter_params[:competitor]
        flash[:info] = "Obrigado pelo seu voto!"
      end
    else
      flash[:info] = "Esse email não esta autorizado para votação."
    end

    redirect_to competitors_path
  end

  private

  def voter_params
    params.require(:voter).permit(:competitor, :name, :email)
  end
end
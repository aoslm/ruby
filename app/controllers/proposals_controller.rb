class ProposalsController < ApplicationController
  def new
    @proposal = Proposal.new
  end
  
  def create
    Proposal.create!(params[:proposal])
    redirect_to action: :index
  end

  def index
    @proposals = Proposal.all
  end

  def upvote
    @proposal = Proposal.find(params[:id])
    @proposal.upvote
    respond_to do |format|
      format.html { redirect_to action: :index }
      format.js do
        @proposals = Proposal.all
      end
    end
  end
end

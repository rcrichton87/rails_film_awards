class AwardsController < ApplicationController
  def index
    render json: Award.where({ role: params[:role_id] }).as_json({
      include: {
        role: {
          only: [],
          include: {
            actor: { only: [:name] }, 
            film: { only: [:title]}
          }
        }
      },
      only: [:id, :title]
    })
  end
end
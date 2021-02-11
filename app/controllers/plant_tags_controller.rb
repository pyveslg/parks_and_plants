class PlantTagsController < ApplicationController
  before_action :plant_tag_params, only: [:create]

  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])

    # params[:plant_tag][:tag].reject(&:blank?) => me permet d'enlever la string vide dans le tag
    # On n'aurait pas eu besoin de faire ça avec l'option include_hidden: false dans notre form (cf. new.html.erb)

    tags = Tag.find(params[:plant_tag][:tag].reject(&:blank?))


    tags.each do |tag|
      plant_tag = PlantTag.new(tag: tag, plant: @plant)
      plant_tag.save
    end

    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end
end

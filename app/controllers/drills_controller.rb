class DrillsController < ApplicationController

  def index
    @grid = DrillsGrid.new(params[:drills_grid]) do |scope|
      scope.page(params[:page])
    end
  end

end


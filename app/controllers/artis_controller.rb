class ArtisController < ApplicationController
    def show
        #byebug
        @artis = Artis.find(params[:id])

    end
end
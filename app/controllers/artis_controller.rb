class ArtisController < ApplicationController
    def show
        #byebug
        @artis = Artis.find(params[:id])

    end

    def index
        @articals = Artis.all
    end
end
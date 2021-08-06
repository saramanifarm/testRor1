class ArtisController < ApplicationController
    def show
        #byebug
        @artis = Artis.find(params[:id])

    end

    def index
        @artis = Artis.all
    end

    def new
        @artis = Artis.new
    end

    def edit
        #byebug
        @artis = Artis.find(params[:id])
    end

    def update
        @artis = Artis.find(params[:id])
       if @artis.update(params.require(:artis).permit(:title, :description))
        flash[:notice] = "Artical update successfully...."
        redirect_to @artis
       else
        render 'edit'
       end
    end

    def create
        @artis = Artis.new(params.require(:arti).permit(:title, :description))
        #render plain: @artis.inspect
         if @artis.save
            flash[:notice] = "Articles was created succesfully....."
            redirect_to @artis
         else
            render 'new'
         end
        
    end

    def destroy
        @artis = Artis.find(params[:id])
        @artis.destroy
        redirect_to artis_path
    end
end
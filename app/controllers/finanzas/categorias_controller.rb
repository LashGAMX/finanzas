class Finanzas::CategoriasController < ApplicationController
    def index
        @categoria = Categorium.all
        pp @categoria
    end
    def new
        @categoria = Categorium.new
        pp @categoria
    end
    def create
        @categoria = Categorium.new (categoria_params)
        if @categoria.save
            redirect_to '/categorias'
        else
            render :new ,status: :unprocessable_entity
        end
        pp params[:categorium]
    end
    def edit
        @categoria = Categorium.find([params[:format]])
        pp params[:format]
    end
    private
    def categoria_params
        params.require(:categorium).permit(:categoria,:tipo)
    end
end
class Finanzas::EgresosController < ApplicationController
    def index
        @ingreso = Ingreso.where(tipo:2)
    end
    def new
        @ingreso = Ingreso.new
        @categoria = Categorium.where(tipo:2)
        pp @categoria
    end
    def create
        @ingreso = Ingreso.new (get_params)
        if @ingreso.save
            redirect_to '/egresos'
        else
            render :new ,status: :unprocessable_entity
        end
    end
    def edit
        @ingreso = Ingreso.find(params[:id])
        @categoria = Categorium.where(tipo:2)
    end
    def update
        @ingreso = Ingreso.find_by(id:[params[:id]])
        if @ingreso.update(get_params)
            redirect_to '/egresos'
        else
            render :edit, status: :unprocessable_entity
        end
    end
    private
    def get_params
        params.require(:ingreso).permit(:id_categoria,:fecha,:monto,:comentario,:tipo)
    end
end
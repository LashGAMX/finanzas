class HomeController < ApplicationController
    def home
        @categoriaIng = Categorium.where(tipo:1)
        @categoriaEgr = Categorium.where(tipo:2)
        @model = Ingreso.where(fecha:Date)
    end
end
class ApisController < ApplicationController
	 include ActionController::HttpAuthentication::Basic::ControllerMethods
    http_basic_authenticate_with name: "miguel", password: "12345", except: :index


    def index
        @apis= Api.all

        render json: @apis
    end

    def show
        @api = Api.find_by(date: params[:date])

        if @price.nil?
            render json: { message: 'No se encuentra el valor de la fecha ingresada' }
        else 
            render json: @api
        end

    end
end

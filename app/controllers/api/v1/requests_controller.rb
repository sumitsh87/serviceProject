module Api
  module V1
    class RequestsController < ApplicationController
	skip_before_filter :verify_authenticity_token
      def index
      	respond_to do |format|
      		format.html
        	format.json {render json: Request.all}
        end
      end

      def show
        respond_with Request.find(params[:id])
      end

      def create
    
        @newRequest = Request.create(params[:request])
        respond_to do |format|
        	format.html
        	format.json {render json: @newRequest}
        end

      end

      def update
        respond_with Request.update(params[:id], params[:product])
      end

      def destroy
        respond_with Request.destroy(params[:id])
      end
    end
  end
end
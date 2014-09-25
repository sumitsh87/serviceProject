module Api
  module V1
    class UsersController < ApplicationController

      def index
      	respond_to do |format|
      		format.html
        	format.json {render json: User.all}
        end
      end

      def show
        respond_with User.find(params[:id])
      end

      def create
        respond_with User.create(params[:product])
      end

      def update
        respond_with User.update(params[:id], params[:product])
      end

      def destroy
        respond_with User.destroy(params[:id])
      end
    end
  end
end
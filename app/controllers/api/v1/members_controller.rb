module Api
  module V1
    class MembersController < ApplicationController

      respond_to :json

      before_action :authenticate_member!

      def index

      end

      def show
        render json: current_member.as_json
      end

    end
  end
end

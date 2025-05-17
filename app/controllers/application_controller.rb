class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def home
    render json: { status: true, message: "Hello World", timestamp: Time.zone.now.to_i }, status: 200
  end
end

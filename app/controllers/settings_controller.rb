class SettingsController < ApplicationController
  def master_settings
    user = current_user.as_api_response(:basic_details)
    render json: { status: true, user: user }, status: :ok
  end
end

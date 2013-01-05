class ApplicationController < ActionController::API
  before_filter :cors
  def cors
    headers["Access-Control-Allow-Origin"]  = '*'
    headers["Access-Control-Allow-Methods"] = %w{GET POST PUT PATCH DELETE}.join(",")
    headers["Access-Control-Allow-Headers"] = %w{Origin Accept Content-Type X-Requested-With X-CSRF-Token}.join(",")
    head(:ok) if request.request_method == 'OPTIONS'
  end
end

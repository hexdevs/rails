# frozen_string_literal: true

Rails.application.routes.draw do
  if ActiveStorage.draw_routes
    draw :active_storage
  elsif ActiveStorage.disk_service_enabled?
    draw :disk_service
  end
end

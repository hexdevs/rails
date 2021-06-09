# frozen_string_literal: true

if ActiveStorage.draw_routes
  Rails.application.routes.draw do
    draw :active_storage
  end
elsif ActiveStorage.disk_service_enabled?
  Rails.application.routes.draw do
    draw :disk_service
  end
end

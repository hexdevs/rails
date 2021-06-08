# frozen_string_literal: true

namespace :disk_service do
  scope ActiveStorage.routes_prefix do
    get  "/disk/:encoded_key/*filename" => "active_storage/disk#show", as: :rails_disk_service
    put  "/disk/:encoded_token" => "active_storage/disk#update", as: :update_rails_disk_service
  end
end

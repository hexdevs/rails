# frozen_string_literal: true

module ActiveStorage
  def self.disk_service_enabled?
    # check if the current storage adapter is using the disk service
    # rename this into something better or put it somewhere else, on ActiveStorage directly?
    # extract the disk service routes to a different file
    
    # Rails.configuration.active_storage.service == "local"
    # or
    Blob.services.fetch(:local).is_a? Service::DiskService
  end
end
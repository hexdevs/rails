# frozen_string_literal: true

module ActiveStorage
  def self.disk_service_enabled?
    # check if the current storage adapter is using the disk service
    # rename this into something better or put it somewhere else
    # extract the disk service routes to a different file
    true
  end
end
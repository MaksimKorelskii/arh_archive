# frozen_string_literal: true

require 'zeitwerk'
require 'faraday'

loader = Zeitwerk::Loader.for_gem
loader.setup

# This is a Ruby client that enables you to easily perform translations using ArhArchive API:
#
# client = ArhArchive.client
# result = client.save_images(number_of_document, page_from, page_to, directory, params)

module ArhArchive
  class << self
    # Initializes a new Client object
    #
    # @return [ArhArchive::Client]
    def client
      ArhArchive::Client.new
    end
  end
end

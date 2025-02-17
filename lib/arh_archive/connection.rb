# frozen_string_literal: true

module ArhArchive
  module Connection
    BASE_URL = 'https://archives.dvinaland.ru'
    def connection
      Faraday.new(options) do |faraday|
        faraday.adapter Faraday.default_adapter
        faraday.request :url_encoded
      end
    end

    private

    def options
      headers = {
        accept: 'application',
        user_agent: "arh_archieve gem/#{ArhArchive::VERSION}"
      }

      {
        headers: headers,
        url: BASE_URL
      }
    end
  end
end

# frozen_string_literal: true

module ArhArchive
  module Request
    include ArhArchive::Connection

    def get(path, params = {})
      connection.get(path, params)
    end
  end
end

# frozen_string_literal: true

module ArhArchive
  class Saver
    def initialize(response, document, page, directory_path)
      file_name = "#{document}_#{page}.jpg"
      file_path = File.join(directory_path, file_name)

      FileUtils.mkdir_p(directory_path)

      File.binwrite(file_path, response.body)
    end
  end
end

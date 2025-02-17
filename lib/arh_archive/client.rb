# frozen_string_literal: true

module ArhArchive
  class Client
    include ArhArchive::Request


    def save_images(document, page_from, page_to, directory_path = "C://image_from_archive/#{document}", params = {})
      while page_from <= page_to
        save_image(document, page_from, page_to, directory_path, params)
        page_from += 1
      end
    end

    private

    def save_image(document, page_from, _page_to, directory_path, params)
      ArhArchive::Saver.new(get("/archive1/image/#{document}", {n: page_from}.merge(params)),
                            document,
                            page_from,
                            directory_path)
    end
  end
end

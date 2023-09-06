require "cgi"

module Down
  module Utils
    module_function

    # Retrieves potential filename from the "Content-Disposition" header.
    def filename_from_content_disposition(content_disposition)
      nil
    end

    # Retrieves potential filename from the URL path.
    def filename_from_path(path)
      path = path.to_s.split('/').last.to_s
      filename = SecureRandom.hex
      if (extension = File.extname(path)).length.between?(3, 5)
        filename += extension
      end
      filename
    end
  end
end

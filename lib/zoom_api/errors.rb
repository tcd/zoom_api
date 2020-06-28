require "zoom_api/version"

# Ruby wrapper around Zoom's REST API.
module ZoomAPI
  # Exceptions raised by `ZoomAPI`.
  module Errors
    # Exceptions raised by `ZoomAPI` inherit from Error.
    class Error < StandardError; end
  end
end

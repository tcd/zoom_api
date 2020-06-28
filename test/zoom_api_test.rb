require "test_helper"

class ZoomAPITest < Minitest::Test

  def test_that_it_has_a_version_number()
    refute_nil(::ZoomAPI::VERSION)
  end

end

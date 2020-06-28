require "test_helper"
require "rubygems"

class VersionTest < Minitest::Test

  def test_that_it_has_a_version_number()
    refute_nil(ZoomAPI::VERSION)
  end

  def test_gemspec_has_correct_version()
    spec_path = File.join(Dir.pwd, "zoom_api.gemspec")
    spec = Gem::Specification.load(spec_path)
    assert_equal(ZoomAPI::VERSION, spec.version.to_s)
  end

  def test_readme_has_correct_version()
    search_string = "[docs]: https://www.rubydoc.info/gems/zoom_api/#{ZoomAPI::VERSION}"
    readme = File.read(File.join(Dir.pwd, "README.md"))
    assert(readme.include?(search_string))
  end

end

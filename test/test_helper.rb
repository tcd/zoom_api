require "simplecov"

formatters = []
formatters << SimpleCov::Formatter::HTMLFormatter
if ENV["CI"] == "true"
  require "coveralls"
  formatters << Coveralls::SimpleCov::Formatter
end
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new(formatters)

SimpleCov.start do
  add_filter("/bin/")
  add_filter("/test/")
  track_files("lib/**/*.rb")
end

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "zoom_api"

require "minitest/autorun"
require "minitest/focus"
require "minitest/reporters"
Minitest::Reporters.use!([
  Minitest::Reporters::SpecReporter.new,
])

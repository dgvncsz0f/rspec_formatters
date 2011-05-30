require "rubygems"
require "rake"
require "rspec/core/rake_task"
require "rubygems/package_task"
require "rake/clean"

task :default => :rspec

RSpec::Core::RakeTask.new("rspec") do |t|
  mapper       = { "junit" => "JUnitFormatter",
                   "tap"   => "TapFormatter"
                 }
  format       = mapper[ENV["format"]] || "progress"
  formatters   = File.expand_path(File.dirname(__FILE__) + "/lib/rspec-extra-formatters.rb")
  t.rspec_opts = ["-r \"#{formatters}\"", "-f \"#{format}\""]
  t.pattern    = "spec/**/*_spec.rb"
end

Gem::PackageTask.new(Gem::Specification.load("rspec-extra-formatters.gemspec")) do |g|
end

require "rubygems"
require "rake"
require "rspec/core/rake_task"

require 'rubygems/package_task'
require 'rake/clean'

CLOBBER.add('coverage')

RSpec::Core::RakeTask.new('rspec') do |t|
  mapper       = { "junit" => "JUnitFormatter" \
                 , "tap"   => "TapFormatter" \
                 }
  format       = mapper[ENV["format"]] || "progress"
  t.rcov       = true
  t.rcov_opts  = ["-x .", "-i \"lib/rspec-extra-formatters/(junit|tap)_formatter.rb\"", "--text-report"]
  t.rspec_opts = ["--no-color", "-r lib/rspec-extra-formatters/junit_formatter.rb", "-r lib/rspec-extra-formatters/tap_formatter.rb", "-f \"#{format}\""]
  t.pattern    = "spec/**/*_spec.rb"
end

gemspecs = Gem::Specification.load('rspec-extra-formatters.gemspec')

Gem::PackageTask.new(gemspecs) { |pkg| }

task :default => :rspec

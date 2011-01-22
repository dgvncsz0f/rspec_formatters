require "rubygems"
require "rake"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new('rspec') do |t, args|
  mapper       = { "junit" => "JUnitFormatter" \
                 , "tap"   => "TapFormatter" \
                 }
  format       = mapper[ENV["format"]] || "progress"
  t.rcov       = true
  t.rcov_opts  = ["-x .", "-i \"lib/(junit|tap)_formatter.rb\"", "--text-report"]
  t.rspec_opts = ["--no-color", "-r lib/junit_formatter.rb", "-r lib/tap_formatter.rb", "-f \"#{format}\""]
  t.pattern    = "spec/**/*_spec.rb"
end

task :default => :rspec

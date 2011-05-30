Gem::Specification.new do |spec|
  spec.name        = "rspec-extra-formatters"
  spec.version     = "0.3"
  spec.date        = %q{2011-05-26}
  spec.summary     = "TAP and JUnit formatters for rspec"
  spec.authors     = ["Diego Souza", "Floréal TOUMIKIAN"]
  spec.email       = "dsouza+rspec-extra-formatters@bitforest.org"
  spec.homepage    = "http://dsouza.bitforest.org/2011/01/22/rspec-tap-and-junit-formatters/"
  spec.files       = Dir["lib/**/*.rb"]
  spec.test_files  = Dir["spec/**/*spec*.rb"]
  spec.extra_rdoc_files = ["LICENSE", "README.rst"]
  spec.description = <<-EOF
    rspec-extra-formatters Provides TAP and JUnit formatters for rspec
  EOF

  spec.add_development_dependency("rspec")
end

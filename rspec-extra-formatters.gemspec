# -*- coding: utf-8 -*-
Gem::Specification.new do |spec|
  spec.name        = "rspec-extra-formatters"
  spec.version     = "1.0.0"
  spec.date        = %q{2012-04-24}
  spec.summary     = "TAP and JUnit formatters for rspec"
  spec.authors     = ["Diego Souza", "Floréal TOUMIKIAN"]
  spec.email       = "dsouza+rspec-extra-formatters@bitforest.org"
  spec.homepage    = "https://github.com/dgvncsz0f/rspec_formatters"
  spec.files       = Dir["lib/**/*.rb"]
  spec.test_files  = Dir["spec/**/*spec*.rb"]
  spec.extra_rdoc_files = ["LICENSE", "README.rst"]
  spec.description = <<-EOF
    rspec-extra-formatters Provides TAP and JUnit formatters for rspec
  EOF

  spec.add_development_dependency("rspec")
end

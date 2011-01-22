SRCROOT = $(shell pwd)

RCOV    = $(shell which rcov)
RSPEC   = $(shell which rspec)

RSPECFLAGS         = --no-color
RCOVFLAGS          = --text-report

test:
	$(RCOV) -o dist/coverage -x . -i lib/junit_formatter,lib/tap_formatter $(RCOVFLAGS) $(RSPEC) -- -Ilib $(RSPECFLAGS) spec

clean:
	rm -f -r dist

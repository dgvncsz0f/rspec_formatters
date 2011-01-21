require 'rspec/core/formatters/base_formatter'

class TapFormatter < RSpec::Core::Formatters::BaseFormatter

  def initialize(output)
    super(output)      
    @test_count = 0
  end

  def example_passed(example)
    super(example)
    @test_count += 1
    output.print("ok #{@test_count} - #{example.metadata[:full_description]}\n")
  end

  def example_pending(example)
    self.example_failed(example)
  end

  def example_failed(example)
    super(example)
    @test_count += 1
    output.print("not ok #{@test_count} - #{example.metadata[:full_description]}\n")
  end

  def start_dump
    super()
  end

  def dump_summary(duration, example_count, failure_count, pending_count)
    super(duration, example_count, failure_count, pending_count)
    output.print("1..#{example_count}")
  end

end

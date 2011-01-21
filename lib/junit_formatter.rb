require "time"
require "rspec/core/formatters/base_formatter"

class JUnitFormatter < RSpec::Core::Formatters::BaseFormatter

  def initialize(output)
    super(output)      
    @tests = { :failures => [], :success => [] }
  end

  def example_passed(example)
    super(example)
    @tests[:success].push(example)
  end

  def example_pending(example)
    self.example_failed(example)
  end

  def example_failed(example)
    super(example)
    @tests[:failures].push(example)
  end

  def start_dump
    super()
  end

  def dump_summary(duration, example_count, failure_count, pending_count)
    super(duration, example_count, failure_count, pending_count)
    xml  = "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n"
    xml += "<testsuite errors=\"0\" failures=\"#{failure_count+pending_count}\" tests=\"#{example_count}\" time=\"#{duration}\" timestamp=\"#{Time.now.iso8601}\">\n"
    xml += "  <properties />\n"
    @tests[:success].each do |t|
      xml += "  <testcase classname=\"#{t.metadata[:file_path]}\" name=\"#{t.metadata[:description]}\" time=\"#{t.metadata[:execution_result][:run_time]}\" />\n"
    end
    @tests[:failures].each do |t|
      xml += "  <testcase classname=\"#{t.metadata[:file_path]}\" name=\"#{t.metadata[:description]}\" time=\"#{t.metadata[:run_time]}\">\n"
      xml += "    <failure message=\"\" type=\"failure\">\n"
      xml += "  </testcase>\n"
    end
    xml += "</testsuite>\n"
    output.print(xml)
  end

end

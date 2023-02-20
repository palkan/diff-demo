require "simplecov"
require "simplecov-lcov"
SimpleCov::Formatter::LcovFormatter.config do |c|
  c.report_with_single_file = true
  c.single_report_path = "coverage/lcov.info"
end

SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter

SimpleCov.start do
  enable_coverage :branch
  add_filter "/spec/"
end

require File.join File.dirname(__FILE__), '../lib++/run.rb'
require File.join File.dirname(__FILE__), '../lib++/run+two.rb'

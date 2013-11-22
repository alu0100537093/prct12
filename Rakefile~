require "bundler/gem_tasks"

$:.unshift File.dirname(__FILE__) + 'lib'
$:.unshift './lib', './spec'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :rspec

task :rspec do

        sh "rspec -I. spec/matrix_spec.rb"

end

task :test do
  
	sh "ruby -I. test/tc_matrix.rb"

end

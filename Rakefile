require 'rubygems'
require 'rake/testtask'

task :default => 'specs'

Rake::TestTask.new('specs') do |t|
  t.test_files = FileList['spec/*_spec.rb']
  t.verbose = true
end

Rake::TestTask.new('test') do |t|
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
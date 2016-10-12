require "bundler/gem_tasks"
require 'rake/testtask'
 
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end
 
task :default => :test

task :console do
  exec "irb -r hiveage -I ./lib"
end

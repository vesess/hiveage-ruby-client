require "bundler/gem_tasks"
require 'rake/testtask'
 
task default: [:test]

Rake::TestTask.new do |t|
  t.pattern = './test/**/*_test.rb'
end

# Rake::TestTask.new do |t|
#   t.test_files = FileList['test/*_test.rb']
#   t.verbose = true
# end

task :console do
  exec "irb -r hiveage -I ./lib"
end

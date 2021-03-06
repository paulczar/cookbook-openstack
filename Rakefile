# Encoding: utf-8

namespace :prepare do

  desc 'Install ChefDK'
  task :chefdk do
    begin
      gem 'chef-dk', '0.2.1'
    rescue Gem::LoadError
      puts 'ChefDK not found.  Installing it for you...'
      sh %(wget -O /tmp/meez_chefdk.deb https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.2.1-1_amd64.deb)
      sh %(sudo dpkg -i /tmp/meez_chefdk.deb)
    end
  end

  task :bundle do
    if ENV['CI']
      sh %(chef exec bundle install --path=.bundle --jobs 1 --retry 3 --verbose)
    else
      sh %(chef exec bundle install --path .bundle)
    end
  end

  task :berks do
    sh %(chef exec berks install)
  end

end

desc 'Install required Gems and Cookbooks'
task prepare: ['prepare:bundle', 'prepare:berks']

namespace :style do
  task :rubocop do
    sh %(chef exec rubocop)
  end

  task :foodcritic do
    sh %(chef exec foodcritic .)
  end
end

desc 'Run all style checks'
task style: ['style:foodcritic', 'style:rubocop']

namespace :integration do
  task :kitchen do
    sh %(chef exec kitchen test)
  end
end

task integration: ['integration:kitchen']

namespace :unit do
  task :chefspec do
    sh %(chef exec rspec test/unit/spec)
  end
end

desc 'Run all unit tests'
task unit: ['unit:chefspec']
task spec: ['unit']

# Run all tests
desc 'Run all tests'
task test: ['style', 'unit', 'integration']

# The default rake task should just run it all
desc 'Install required Gems and Cookbook then run all tests'
task default: ['prepare', 'test']

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end

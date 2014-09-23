namespace :greetings do
  desc "prints thank you"
    task :thank_you do
    puts "thank you"
  end

  task :hello, [:name] do |cmd, args|
    puts "Hello, #{args[:name]}.  How are you today?"
  end
end

desc "this is the default task"
task :default do
  puts "hello I'm the default task"
end


# Rake -P list all the commands
# Rake -T looks for descriptors

namespace :cake do

  desc "Bake a Cake"
  task :bake => [:mix_up, :go_to_store] do
    puts "Cake is baked"
  end

  task :mix_up => [:add_flower, :add_eggs] do
    puts "Mix up ingredients"
  end

  task :add_flower => :get_flower do
    puts "Adding flower"
  end

  task :add_eggs => :go_to_store do
    puts "Adding Eggs"
  end

  task :get_flower => :go_to_store do
    puts "Get Flower"
  end

  task :go_to_store do
    puts "Go to Store"
  end

  task :learn_how_to_spell, [:word] do |cmd, args|
    puts "need to learn how to spell, #{args[:word]}"
  end

end

namespace :dozer do
  desc "prints env"
  task :env do
    #executed in bash shell
    sh("ENV")
  end

  desc "print PWD"
  task :pwd do
    # both do the same
    sh("pwd")
    system("pwd")
  end

  desc "adds views for a resource"
  task :make_views, [:resource] do |cmd, args|
    system("mkdir views/#{args[:resource]}")
    system("touch views/#{args[:resource]}/index.erb")
    system("touch views/#{args[:resource]}/new.erb")
    system("touch views/#{args[:resource]}/show.erb")
    system("touch views/#{args[:resource]}/edit.erb")
  end

end

namespace :db do
  desc "creates a database"
  task :create, [:database_name] do |cmd, args|
    system("createdb #{args[:database_name]}")
  end
end

namespace :bundler do
  task :setup do
    require 'rubygems'
    require 'bundler'
  end
end

task :environment, [:env] => 'bundler:setup' do |cmd, args|
  ENV["RACK_ENV"] = args[:env] || "development"
  Bundler.require(:default, ENV["RACK_ENV"])
  require "./config/boot"
end




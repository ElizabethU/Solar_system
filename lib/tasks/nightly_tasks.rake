require 'update_positions.rb'
require 'httparty'

namespace "cronjob" do
  desc 'This is the description shown when you run "rake -T"'
  task 'nightly' => :environment do |t|
    updater = Updater.new
    updater.update
  end
end
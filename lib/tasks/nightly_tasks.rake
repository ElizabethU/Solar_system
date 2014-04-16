namespace "cronjob" do
  desc 'This is the description shown when you run "rake -T"'
  task 'nightly' => :environment do |t|
    updater = Updater.new
    updater.print_test
  end
end
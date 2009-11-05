APPLICATION_ROOT = File.join(File.dirname(__FILE__))
DATA_FILE_URI    = URI.parse('http://spreadsheets.google.com/pub?key=tR91dVfDVlRz1XGC5fVwkfw&single=true&gid=0&output=csv')

require 'net/http'

desc "Deploy application to Heroku"
task :deploy do
  `git push heroku master`
end

desc "Push to Github"
task :share do
  `git push github master`
end

desc "Grab the latest copy of the CSV data from Google"
task :cron do
  File.open(File.join(APPLICATION_ROOT, 'data', 'members.csv'), 'w') do |io|
    response = Net::HTTP.get_response(DATA_FILE_URI)
    if response.code.to_i == 200
      io.write(response.body)
    end
  end
end

task :default => :deploy
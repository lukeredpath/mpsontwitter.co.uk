desc "Deploy application to Heroku"
task :deploy do
  `git push heroku master`
end

desc "Merge changes into public branch and push to Github"
task :share do
  `git checkout public && git merge master && git push github`
end

task :default => :deploy
# README

Step 1
> docker-compose up --build
Step 2
> docker-compose up -d
Step 3
> docker-compose exec app bundle exec rake db:setup db:migrate
Step 4
> docker-compose exec app bundle exec rake db:seed



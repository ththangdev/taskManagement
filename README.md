# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
START docker
docker run --name postgresql -e POSTGRES_USER=test -e POSTGRES_PASSWORD=test -p 5432:5432 -v /data:/var/lib/postgresql/data -d postgres
docker run --name my-pgadmin -p 82:80 -e 'PGADMIN_DEFAULT_EMAIL=test@gmail.com' -e 'PGADMIN_DEFAULT_PASSWORD=test' -d dpage/pgadmin4
netstat -aof | findstr :3000
taskkill /PID 26552 /F
* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

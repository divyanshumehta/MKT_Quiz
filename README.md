# README

To run this app on localhost install ruby version 2.3.1 and rails version 5.0.0
http://railsapps.github.io/installrubyonrails-ubuntu.html

Also install PostgreSQL
https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-14-04

then in the terminal browse to the app directory run 
 `$bundle install`

If u already had Postgre installed then go on and make changes to
`config/database.yml`
Else replace `  #username: myapp` on Line 32 in `config/databse.yml` with `#username:postgres`

then run
 `$rake db:create`
 `$rake db:migrate`
 
after that run 
 `$rails s`

in the browser go to
 http://localhost:3000/



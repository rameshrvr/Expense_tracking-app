# Expense Tracking app

This webapp will help you in tracking and managing your daily and monthly expenses.
Consolidated monthly report generation is in progress

Things you may want to do:

* Clone this to your local directory
```
git clone https://github.com/rameshrvr/Expense_tracking-app.git
```

* Make sure you have ruby version above 2.2.5 then follow the below steps
```
$ bundle install
```
Configuration:
	* Make sure you have MySql server installed in your local machine.
	If you are using mysql please change the credentials in database.yml
```
username: #{your mysql username}
password: #{your mysql password}
```
	* If not please change the `config\database.yml` as given below
	Replace `gem 'mysql2', '>= 0.3.18', '< 0.5'` with `gem 'sqlite3'` in your Gemfile
	(These commads will create a local db inside your directory)
```
default: &default
  adapter: sqlite3
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000

development:
  <<: *default
  database: db/development.sqlite3

test:
  <<: *default
  database: db/test.sqlite3
```

Database creation:
	* Those db commands will help in creating and migrating database related stuffs.
```
$ rake db:create db:migrate
```

How to run the test suite:
	* Currently there are no tests has been written yet. will be doing that soon.

How to start the application:
	* Using the below command you can start your local server
```
$ rails s
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rameshrvr/Expense_tracking-app.git

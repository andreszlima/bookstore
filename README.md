# Bookstore Application

# Project description & features

  - Browse books by category
  - Books have authors and publishers
  - Bootstrap layout is used
  - Books, categories, author and publishers can be added, edited and removed from the frontend

## What I learned with this project

 - Rails & MySQL setup
 - Controllers & Views
 - Application layout
 - Models & databases
 - Creating all elements (authors, publishers, books and categories)

This app can be built either on Windows or Linux workspaces. There are a few differences, though, as explained below:

### Linux installation

Install the dependencies and devDependencies and start the server.

```sh
$ sudo apt-get update
$ apt-get upgrade
$ apt-get install curl
$ \curl -L https://get.rvm.io | bash -s stable
```

Now it's required to put user and password of your root user (Run as bash). After that, run

```sh
$ source ~/.rvm/scipts/rvm
$ rvm requirements
$ rvm install ruby
$ rvm use ruby --default
$ rvm rubygems current
$ gem install rails
```

Now check if Ruby and Rails are installed:

```sh
$ ruby -v
$ rails -v
```

### Setting up the envinroment

I installed an apache server along with PHP and MySQL, but they are not required. I used only to have access to MySQL database (which is not required) and to access phpMyAdmin, to manage the database. But it's up to you.

```sh
$ sudo apt-get install lamp-server^
$ apt-get install libmysqlclient-dev
$ apt-get install phpmyadmin
```

To fix a warning about ServerName localhost, do this:

```sh
$ sudo nano /etc/hosts
```

Check the host name and copy it.

Open this

```sh
$ sudo nano /etc/hapache2/apache2.conf
```
Scroll down to the last line and add these two lines:

```sh
$ Include /etc/phpmyadmin/apache.conf
$ ServerName ubuntu
```

Restart apache:

```sh
$ sudo service apache2 restart
```

Get inside MySQL now to create databases or do this inside phpMyAdmin. I created: 

| Databases |
| ------ | 
| bookstore_development | 
| bookstore_test | 

| User |
| ------ | 
| bookstore | 

### Development

Use bash permanently inside terminal:

Open Profile preferences > Title and commmand
Enable: Run command as login shell

Now install mysql adapter

```sh
$ gem install mysql2
$ gem install therubyracer
$ gem install libv8 --version=3.11.8.3
$ gem install execjs
```

### Create application

With the terminal, get into a folder to host the project and run

```sh
$ rails new bookstore
$ cd bookstore
$ bundle install
```

Edit the file "Gemfile" now. Uncomment therubyracer line, comment sqlite3 line and use instead

```sh
gem 'mysql2'
```

Edit database configurations. Change from :

bookstore/config/locales/database.yml

```sh
default: &default
  adapter: mysql2
  pool: 5
  timeout: 5000

development:
  <<: *default
  adapter: mysql2
  database: bookstore_development
  username: bookstore
  password: bookstore
  
test:
  <<: *default
  adapter: mysql2
  database: bookstore_test
  username: bookstore
  password: bookstore
```

Run bunlde install again from terminal

```sh
$ bundle install
$ rails server
```

Verify the deployment by navigating to your server address in your preferred browser.

```sh
localhost:3000
```

Run the code below to create tables inside the databases that were created above

```sh
$ rake db:migrate
```

Now you can run the application from this repository without any problem

### Todos

 - Write MORE Tests
 - Add tutorial for installation on Windows 10
 - Add a translated version of this README to portuguese

License
----

GPL v3


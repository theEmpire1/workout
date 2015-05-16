== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
- If you have just cloned the project you need to `bundle exec rake db:create db:migrate`

* Database initialization
- Make sure that your socket exist at `/run/mysqld/mysqld.sock`
- You must have a `/etc/my.cnf` file. You may need to run the command `sudo cp /etc/mysql/my.cnf /etc`
- To start the mysql daemon, execute the command `sudo systemctl start mysqld`
- Use `mysql -u root` to use mysql within the project directory


* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.

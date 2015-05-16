## Workout

#### Ruby version
  - 2.2.0p0

#### System dependencies

#### Configuration

#### Database creation
  - If you have just cloned the project you need to `bundle exec rake db:create db:migrate`

#### Database initialization
  - Make sure that your socket exist at `/run/mysqld/mysqld.sock`
  - There could be an issue with your user or group permissions for `/var/lib/mysql` and `/var/lib/mysql/mysql`. Check out the [Troubleshooting: MYSQL daemon cannot start section of the ArchWiki](https://wiki.archlinux.org/index.php/MySQL) for more info. If both user/group are not mysql:

```chown mysql:mysql /var/lib/mysql -R
```

  - You must have a `/etc/my.cnf` file. You may need to copy your configuration file manually.

```sudo cp /etc/mysql/my.cnf /etc```

  - To start the mysql daemon, execute the command `sudo systemctl start mysqld`
  - Use `mysql -u root` to use mysql within the project directory


#### How to run the test suite

#### Services (job queues, cache servers, search engines, etc.)

#### Deployment instructions

User story:

As a time-pressed user
So that I can quickly go to web sites I regularly visit
I would like to see a list of bookmarks

## Domain Model

![Domain Model](public/bookmark_manager_1.png)

## How to use

### To set up the project

Clone this repository and then run:

```
bundle
```

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.


### To run the Bookmark Manager app:

```
rackup -p 4567
```
To view bookmarks navigate to page 'localhost:4567/bookmarks'

### To run tests:

```
rspec
```

### To run linting:

```
rubocop
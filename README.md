# Library API

## Overview

A library API that will allow you to view, add, update and remove nonfiction books. The book data comes from the [Open Library](https://openlibrary.org/) API and is stored in a Postgres database.

> **Status: work in progress.** This project is still being built, so some features described below are planned and not yet finished. See [Progress](#progress).

## Getting Started

### Prerequisites

- __Node.js__

- __npm__

- A Postgres database, for example a cloud-hosted one on [Supabase](https://supabase.com/), or a local Postgres installation

### Installation requirements

1. Clone the repo by running: `git clone your_github_url`

2. `cd` into the project folder

3. Install all the dependencies by running `npm install` in your terminal
    - This project uses:

        - __Express__

        - __Cors__

        - __dotenv__

        - __nodemon__

        - __pg__

4. Set up your database

    - Create a Postgres database (on Supabase or locally) and copy its connection URL

    - Create a `.env` file in the root directory with the following:
        - `DB_URL=<your_database_url>`

    - Replace `<your_database_url>` with the connection URL you copied

    - Keep your `.env` file private and out of GitHub (it is listed in `.gitignore`)

    - Run `npm run db-setup` to create and populate the database table

5. Set up your port

    - Add a `PORT` key to the `.env` file, assigned to the port of your choice:
        - `PORT=<port_of_your_choice>`

6. Run the server

    - Run `npm run dev` to start the server in __development mode__ (restarts automatically when you save changes)

## Project Structure

| Folder / file | Purpose |
|---------------|---------|
| `index.js`    | Loads the `.env` file and starts the server on the chosen port |
| `app.js`      | Creates the Express app, sets up middleware (`cors`, `express.json`) and mounts the routes at `/library` |
| `routes/`     | Maps each URL and HTTP method to a controller function |
| `controllers/`| Handles the request and response, including status codes |
| `models/`     | The `Book` class, which sends queries to the database and shapes the data |
| `db/`         | The database connection pool, the setup script and the SQL for the table |

## Database Schema

This database was created with __Postgres__.

`library_books` - table name

```sql
id INT GENERATED ALWAYS AS IDENTITY,
title VARCHAR(250) NOT NULL,
author VARCHAR(250),
pub_year INT,
avg_rating FLOAT,
read_count INT,
category VARCHAR(100),
PRIMARY KEY (id)
```

| Column       | Description |
|--------------|-------------|
| `id`         | Generated automatically by Postgres |
| `title`      | The title of the book |
| `author`     | The author, or authors (several authors are stored together in one text field) |
| `pub_year`   | The first publication year recorded by Open Library, which is the earliest edition it holds and may not be the original publication date |
| `avg_rating` | The average reader rating from Open Library |
| `read_count` | How many Open Library readers have the book in their reading log |
| `category`   | A category assigned by hand (for example Psychology, Science, Business & Finance) |

### Data source

The seed data was adapted from the [Open Library](https://openlibrary.org/) search API (`subject:nonfiction`). It was tidied before use: results that were not nonfiction were removed, English titles were used, and a category was added to each book by hand.

## API

### Base URL

`http://localhost:<port>/library`

### Planned endpoints

These are the endpoints the API is being built towards. They are not all working yet.

| Method | Endpoint           | Description                  |
|--------|--------------------|------------------------------|
| GET    | /library           | Retrieves all books          |
| GET    | /library/:title    | Retrieves a single book      |
| POST   | /library           | Adds a new book              |
| PATCH  | /library/:title    | Updates a book               |
| DELETE | /library/:title    | Deletes a book               |

### Example requests

Example requests and responses will be added once the endpoints are finished.

## Progress

## Progress

- [x] Express app and server set up
- [x] Database table created and populated with seed data
- [x] Database connection (connection pool)
- [ ] `Book` model methods
- [ ] Controllers
- [ ] Routes for each endpoint
- [ ] Error handling and status codes
- [ ] Testing
- [ ] Front end

# codex_sample

This repository contains a minimal Docker setup for a Ruby on Rails environment.

## Requirements
- Docker
- Docker Compose

## Usage
1. Build the Docker image:
   ```
   docker-compose build
   ```
2. Run the Rails server (this installs gems on startup):
   ```
   docker-compose up
   ```

If you don't yet have a Rails application, you can create one inside the container:

```
docker-compose run --rm web rails new . --force --database=sqlite3
```

Then run `docker-compose up` to start the server on <http://localhost:3000>.

The Dockerfile installs Ruby 3.3 and Rails 8.0.

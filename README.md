# My Virtual School

[![Build Status](https://travis-ci.com/JuanVqz/my_school.svg?branch=master)](https://travis-ci.com/JuanVqz/my_school)

This is a virtual school where we will have teachers, classrooms, students, and more...

## Installation

- Clone the repository.

  ```sh
  git clone https://github.com/JuanVqz/my_school.git
  ```

- Set the environment variables.

  you can change the value but it is not required

  ```sh
  cp .env/development/db.example .env/development/db

  cp .env/development/web.example .env/development/web
  ```

- Creates my school image.

  ```sh
  docker-compose build
  ```

- Install javascript dependencies

  ```sh
  docker run -it --rm -v ${PWD}:/usr/src/app my_school_web sh
  ```

- Onces inside the container execute the following command.

  ```sh
  yarn install
  ```
  then `ctrl+c` to stop the container.

- Start the application as daemon

  ```sh
  docker-compose up -d
  ```

- Create the development and test database

  ```sh
  docker-compose exec web rails db:create
  ```

- Enjoy!

## Testing

- Run all rspec test.

```sh
docker-compose exec web rspec
```

- Run a specific rspec test file.

```sh
docker-compose exec web rspec spec/models/user.rb
```

- Run a specific line rspec test.

```sh
docker-compose exec web rspec spec/models/user.rb:10
```

## Some interesting docker commands

- Seeing the running containers.

```sh
docker-compose ps
```

- Stopping the docker containers

```sh
docker-compose down
```

- Viewing the rails logs

```sh
docker-compose logs -f
```

- Using the rails console

```sh
docker-compose run web rails console
```

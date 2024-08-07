* Create a empty repo and clone.
* Add the 
  1. dev.Dockerfile
  2. docker-compose.yml
  3. entrypoint.sh
  4. .env
  5. .gitignore
* In volumes change as below.
      ```
        volumes:
          - ./:/web
      ```
* run: docker-compose run -it web /bin/sh
  ```
    gem install rails
    rails new ai_study --database=postgresql --javascript=esbuild --css=sass
    exit
  ```
* Change the docker-compose file
  * In volumes change as below.
      ```
        volumes:
          - ./ai_study:/web
          - bundle:/bundle
      ```
* run: docker-compose run -it web /bin/sh
  ```
    bundle install
    rails db:create
    exit
  ```
* run: docker-compose run --service-ports web
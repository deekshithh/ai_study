1. Setup
  * Add the dev.Dockerfile
  * Add the .env file
  * Add the docker-compose file
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
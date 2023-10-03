# Chatbot

To start your Phoenix server:

  * Run `docker compose up --build` if you have docker installed

If you do not have docker desktop installed, you can check this link to install it: https://docs.docker.com/get-docker/

After running docker compose, you will have 3 containers running:
  * The chatbot: [`0.0.0.0:4000`](http://0.0.0.0:4000)
  * postgresSQL: The database is running in port 5432, you can connect to it using the following credentials:
    * host: db
    * port: 5432
    * username: postgres
    * password: postgres
    
  * Adminer (a web interface to manage the database): [`localhost:8080`](http://localhost:8080). If you don't have 127.0.0.0 pointing to localhost, you can use [`127.0.0.1:8080`](http://127.0.0.1:8080)

You can change credentials in the docker-compose.yml file.

The chatbot needs an OpenAI API key, you can get it here: https://platform.openai.com/account/api-keys
Once you have one, you need to add your OpenAI API key to the `OPEN_AI_API_KEY` environment variable. You can do it in the docker-compose.yml file.

After running the docker compose command and accessing the chatbot, click the "run mix.migrate" button to create the database tables.

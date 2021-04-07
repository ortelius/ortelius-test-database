# test-database docker image

## Local test database for development of Ortelius.

Default userid and password are admin/admin.

## Running the image

1. Pull the image  
   `docker pull quay.io/ortelius/test-database:latest`

2. Find the image id  
   `docker image ls quay.io/ortelius/test-database:latest --format "{{.ID}}"`

3. Create the volume to persist the database  
   `docker volume create pdata`

4. Run the image a expose the Postgres port to the outside world  
   `docker run -it -p 9876:5432 -v pgdata:/var/lib/postgresql/data <id_from_step_2>`

The database in the above example will be accessible on port 9876.

- Userid: postgres
- Password: postgres
- Database: postgres
- Schema: dm

## Container Structure TEsts
The image also has a minimal [container-structure-test](https://github.com/GoogleContainerTools/container-structure-test) setup.

This is run as part of the cloud build, and can also be run locally on MacOS/Linux/WSL:
`container-structure-test test --image=quay.io/ortelius/test-database:latest --config=cst/config.yaml`

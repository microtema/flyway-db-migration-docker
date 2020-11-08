
# build docker with tag

docker build . -t microtema/flyway-db-migration

# run docker

docker run --name fyway-db-migration microtema/flyway-db-migration

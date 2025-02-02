.PHONY: all

db:
	docker run --name postgres \
	  -e POSTGRES_PASSWORD=postgres \
	  -e POSTGRES_HOST_AUTH_METHOD=trust \
	  -e PGDATA=/var/lib/postgresql/data/pgdata \
	  -v postgres:/var/lib/postgresql/data \
	  -d postgres:15

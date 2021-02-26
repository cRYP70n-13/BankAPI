createdb:
	createdb -h localhost -p 5432 -U postgres anothersimplebankdb

dropdb:
	dropdb -h localhost -p 5432 -U postgres anothersimplebankdb

migrateup:
	migrate -path db/migration -database "postgresql://postgres:otmanekimdil@localhost:5432/anothersimplebankdb?sslmode=disable" -verbose up

migratedown:
	migrate -path db/migration -database "postgresql://postgres:otmanekimdil@localhost:5432/anothersimplebankdb?sslmode=disable" -verbose down

.PHONY: createdb dropdb migrateup migratedown
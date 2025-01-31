# PostgreSQL with pgvector Extension

This repository provides a Docker setup to run a PostgreSQL server with the pgvector extension.

How to Get This Running
Step 1: Clone the Repository
```bash
git clone https://github.com/The-AI-Republic/PostgresqlVectorDocker.git
cd <repository-directory>
```
Step 2: Build the Docker Image
```bash
docker build -t postgres-pgvector .
```
Step 3: Run the Docker Container

```bash
docker run -d \
  --name postgres-pgvector \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_DB=postgres \
  -p 5432:5432 \
  postgres-pgvector
  ```
Step 4: Connect to the PostgreSQL Server
Use psql or any PostgreSQL client to connect to the server:

```bash
psql -h localhost -U postgres -d postgres
```
Step 5: Create the pgvector Extension
Once connected to the PostgreSQL server, run the following command:

```sql
CREATE EXTENSION vector;
```
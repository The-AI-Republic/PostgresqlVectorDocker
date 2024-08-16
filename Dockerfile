FROM postgres:latest

# Install the necessary packages, including git
RUN apt-get update && apt-get install -y \
    postgresql-server-dev-all \
    gcc \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*

# Clone the pgvector repository
RUN git clone https://github.com/pgvector/pgvector /usr/src/pgvector

# Build and install the extension
RUN cd /usr/src/pgvector && make && make install

# Clean up unnecessary files
RUN rm -rf /usr/src/pgvector

# Set the default command to run PostgreSQL
CMD ["postgres"]

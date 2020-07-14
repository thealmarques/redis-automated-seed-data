# start server in background and wait for 1 sec
redis-server --daemonize yes && sleep 1 

# Execute seed data script
redis-cli < /scripts/seed.redis 

# Persist data
redis-cli save 

# Close client after seed is completed
redis-cli shutdown 

# Run server
redis-server
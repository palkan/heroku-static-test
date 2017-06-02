## Instructions

```sh
# Clone buildpack to the project root
git clone https://github.com/evilmartians/heroku-buildpack-static

# Build docker image
docker build --tag herstatic:latest .

# Run image
docker run -t -i -p 8081:5000 --name hstatic --rm herstatic

# Visit website
open http://localhost:8081

# Connect to the running container
docker exec -it hstatic bash